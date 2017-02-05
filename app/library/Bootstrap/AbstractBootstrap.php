<?php

namespace Website\Bootstrap;

use Dotenv\Dotenv;
use Phalcon\Assets\Manager;
use Phalcon\Cache\Frontend\Data as PhCacheFrontData;
use Phalcon\Cache\Frontend\Output as PhCacheFrontOutput;
use Phalcon\Config as PhConfig;
use Phalcon\Cli\Console as PhCliConsole;
use Phalcon\Di as PhDI;
use Phalcon\Di\FactoryDefault as PhFactoryDefault;
use Phalcon\Events\Event;
use Phalcon\Loader as PhLoader;
use Phalcon\Logger\Adapter\File as PhFileLogger;
use Phalcon\Logger\Formatter\Line as PhLoggerFormatter;
use Phalcon\Mvc\Application as PhApplication;
use Phalcon\Mvc\Micro as PhMicro;
use Phalcon\Mvc\Micro\Collection as PhMicroCollection;
use Phalcon\Mvc\View\Simple as PhViewSimple;
use Phalcon\Mvc\View\Engine\Volt as PhVolt;
use Phalcon\Registry as PhRegistry;

use Website\Constants\Environment;
use Website\Constants\Registry;
use Website\Constants\Services;
use Website\Exception;
use Website\Locale;
use Website\Utils;
use Website\View\Engine\Volt\Extensions\Php;

/**
 * AbstractBootstrap
 *
 * @property PhDI $diContainer
 */
abstract class AbstractBootstrap
{
    /**
     * @var null|PhDI
     */
    protected $diContainer = null;

    /**
     * @var null|PhMicro|PhCliConsole
     */
    protected $application = null;

    public function run()
    {
        $this
            ->initDi()
            ->initLoader()
            ->initRegistry()
            ->initEnvironment()
            ->initApplication()
            ->initUtils()
            ->initConfig()
            ->initCache()
            ->initLogger()
            ->initLocale()
            ->initRoutes()
            ->initView()
            ->initAssets();

        return $this->runApplication();
    }

    /**
     * Initializes the application
     *
     * @return $this
     */
    protected function initApplication()
    {
        $this->application = new PhMicro($this->diContainer);

        return $this;
    }

    /**
     * Initializes the Assets manager
     *
     * @return $this
     */
    protected function initAssets()
    {
        /** @var \Website\Utils $utils */
        $utils = $this->diContainer->getShared(Services::UTILS);

        $assets = new Manager();

        /**
         * Collections
         */
        $assets->collection("header_js");
        $assets
            ->collection('header_css')
            ->addCss('//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css', false)
            ->addCss('//netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css', false)
            ->addCss('//fonts.googleapis.com/css?family=Open+Sans:700,400', false);

        $assets
            ->collection('footer_js')
            ->addJs('//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js', false)
            ->addJs('//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js', false)
            ->addJs($utils->getCdnUrl() . 'js/plugins/jquery.lazyload.min.js', $utils->isCdnLocal())
            ->addJs($utils->getCdnUrl() . 'js/plugins/jquery.magnific-popup.min.js', $utils->isCdnLocal())
            ->addJs($utils->getCdnUrl() . 'js/plugins/highlight.pack.js', $utils->isCdnLocal())
            ->addJs($utils->getCdnUrl() . 'js/plugins/jquery.ajaxchimp.min.js', $utils->isCdnLocal())
            ->addJs($utils->getCdnUrl() . 'js/plugins/jquery.backstretch.min.js', $utils->isCdnLocal())
            ->addJs($utils->getCdnUrl() . 'js/custom.js');

        $this->diContainer->setShared(Services::ASSETS, $assets);

        return $this;
    }

    /**
     * Initializes the Cache
     *
     * @return $this
     */
    protected function initCache()
    {
        /**
         * viewCache
         */
        /** @var \Phalcon\Config $config */
        $config   = $this->diContainer->getShared(Services::CONFIG);
        $lifetime = $config->get('cache')->get('lifetime', 3600);
        $driver   = $config->get('cache')->get('viewDriver', 'file');
        $frontEnd = new PhCacheFrontOutput(['lifetime' => $lifetime]);
        $backEnd  = ['cacheDir' => APP_PATH . '/storage/cache/view/'];
        $class    = sprintf('\Phalcon\Cache\Backend\%s', ucfirst($driver));
        $cache    = new $class($frontEnd, $backEnd);

        $this->diContainer->set(Services::VIEW_CACHE, $cache);

        /**
         * cacheData
         */
        $driver   = $config->get('cache')->get('driver', 'file');
        $frontEnd = new PhCacheFrontData(['lifetime' => $lifetime]);
        $backEnd  = ['cacheDir' => APP_PATH . '/storage/cache/data/'];
        $class    = sprintf('\Phalcon\Cache\Backend\%s', ucfirst($driver));
        $cache    = new $class($frontEnd, $backEnd);

        $this->diContainer->setShared(Services::CACHE_DATA, $cache);

        return $this;
    }

    /**
     * Initializes the Config container
     *
     * @return $this
     * @throws Exception
     */
    protected function initConfig()
    {
        $fileName = APP_PATH . '/app/config/config.php';
        if (true !== file_exists($fileName)) {
            throw new Exception('Configuration file not found');
        }

        $configArray = require_once($fileName);
        $config = new PhConfig($configArray);

        $this->diContainer->setShared(Services::CONFIG, $config);

        return $this;
    }

    /**
     * Initializes the Di container
     *
     * @return $this
     */
    protected function initDi()
    {
        $this->diContainer = new PhFactoryDefault();
        PhDI::setDefault($this->diContainer);

        return $this;
    }

    /**
     * Initializes the environment
     *
     * @return $this
     */
    protected function initEnvironment()
    {
        /** @var \Phalcon\Registry $registry */
        $registry = $this->diContainer->getShared(Services::REGISTRY);
        $registry->offsetSet(Registry::MEMORY, memory_get_usage());
        $registry->offsetSet(Registry::EXECUTION_TIME, microtime(true));

        (new Dotenv(APP_PATH))->load();

        return $this;
    }

    /**
     * Initializes the error handlers
     */
    protected function initErrorHandler()
    {
        $logger = $this->diContainer->getShared(Services::LOGGER);
        $utils  = $this->diContainer->getShared(Services::UTILS);
        $mode   = $utils->env(Environment::APP_ENV, 'development');

        ini_set('display_errors', boolval('development' === $mode));
        error_reporting(E_ALL);

        set_error_handler(
            function ($errorNumber, $errorString, $errorFile, $errorLine) use ($logger) {
                if (0 === $errorNumber & 0 === error_reporting()) {
                    return;
                }

                $logger->error(
                    sprintf(
                        "[%s] [%s] %s - %s",
                        $errorNumber,
                        $errorLine,
                        $errorString,
                        $errorFile
                    )
                );
            }
        );

        set_exception_handler(
            function () use ($logger) {
                $logger->error(json_encode(debug_backtrace()));
            }
        );

        register_shutdown_function(
            function () use ($logger, $utils, $mode) {
                $memory    = memory_get_usage() - $this->memory;
                $execution = microtime(true) - $this->execution;

                if ('development' === $mode) {
                    $logger->info(
                        sprintf(
                            'Shutdown completed [%s] - [%s]',
                            $utils->timeToHuman($execution),
                            $utils->bytesToHuman($memory)
                        )
                    );
                }
            }
        );

        return $this;
    }

    /**
     * Initializes the autoloader
     *
     * @return $this
     */
    protected function initLoader()
    {
        /**
         * Get the PSR4 loaders from composer and register them. This way we keep
         * only one loader for the application
         */
        $composerFile = APP_PATH . '/vendor/composer/autoload_psr4.php';
        if (true !== file_exists($composerFile)) {
            throw new \InvalidArgumentException(
                'Composer autoloader file cannot be found/read. Please update composer'
            );
        }

        /**
         * The composer namespaces have an extra '\' at the end. We need to remove it.
         */
        $composerNamespaces = require_once($composerFile);

        $namespaces = [];
        foreach ($composerNamespaces as $namespace => $path) {
            $key = substr($namespace, 0, -1);
            $namespaces[$key] = $path[0];
        }

        /**
         * Not using a variable here to remove the loader from the global space
         */
        (new PhLoader())->registerNamespaces($namespaces)->register();

        return $this;
    }

    /**
     * Initializes the Locale service
     *
     * @return $this
     */
    protected function initLocale()
    {
        $config = $this->diContainer->getShared(Services::CONFIG);

        date_default_timezone_set($config->get('app')->get('timezone', 'US/Eastern'));

        $this->diContainer->setShared(Services::LOCALE, new Locale());

        return $this;
    }

    /**
     * Initializes the loggers
     *
     * @return $this
     */
    protected function initLogger()
    {
        /** @var \Phalcon\Config $config */
        $config   = $this->diContainer->getShared(Services::CONFIG);
        $fileName = $config->get('logger')
                           ->get('defaultFilename', 'application');
        $format   = $config->get('logger')
                           ->get('format', '[%date%][%type%] %message%');

        $logFile   = sprintf(
            '%s/storage/logs/%s-%s.log',
            APP_PATH,
            date('Ymd'),
            $fileName
        );
        $formatter = new PhLoggerFormatter($format);
        $logger    = new PhFileLogger($logFile);
        $logger->setFormatter($formatter);

        $this->diContainer->setShared(Services::LOGGER, $logger);

        return $this;
    }

    /**
     * Initializes the registry
     *
     * @return $this
     */
    protected function initRegistry()
    {
        /**
         * Fill the registry with elements we will need
         */
        $registry = new PhRegistry();
        $registry->offsetSet(Registry::ACTION, '');
        $registry->offsetSet(Registry::CONTRIBUTORS, []);
        $registry->offsetSet(Registry::EXECUTION_TIME, 0);
        $registry->offsetSet(Registry::LANGUAGE, 'en');
        $registry->offsetSet(Registry::MEMORY, 0);
        $registry->offsetSet(Registry::MENU_LANGUAGES, []);
        $registry->offsetSet(Registry::SLUG, '');
        $registry->offsetSet(Registry::RELEASES, []);
        $registry->offsetSet(Registry::VERSION, '3.0.0');
        $registry->offsetSet(Registry::VIEW, 'index/index');

        $this->diContainer->setShared(Services::REGISTRY, $registry);

        return $this;
    }

    /**
     * Initializes the routes
     *
     * @return $this
     */
    protected function initRoutes()
    {
        /** @var PhConfig $config */
        $config     = $this->diContainer->getShared(Services::CONFIG);
        $routes     = $config->get('routes')->toArray();
        $middleware = $config->get('middleware')->toArray();

        foreach ($routes as $route) {
            $collection = new PhMicroCollection();
            $collection->setHandler($route['class'], true);
            if (true !== empty($route['prefix'])) {
                $collection->setPrefix($route['prefix']);
            }

            foreach ($route['methods'] as $verb => $methods) {
                foreach ($methods as $endpoint => $action) {
                    $collection->$verb($endpoint, $action);
                }
            }
            $this->application->mount($collection);
        }

        $eventsManager = $this->diContainer->getShared(Services::EVENTS_MANAGER);

        foreach ($middleware as $element) {
            $class = $element['class'];
            $event = $element['event'];
            $eventsManager->attach(Services::MICRO, new $class());
            $this->application->$event(new $class());
        }

        $this->application->setEventsManager($eventsManager);

        return $this;
    }

    /**
     * Initializes the utils service and stores it in the DI
     *
     * @return $this
     */
    protected function initUtils()
    {
        $this->diContainer->setShared(Services::UTILS, new Utils());

        return $this;
    }

    /**
     * Initializes the View services and Volt
     *
     * @return $this
     */
    protected function initView()
    {
        /** @var \Phalcon\Config $config */
        $config = $this->diContainer->getShared(Services::CONFIG);
        $mode   = $config->get('app')->get('env', 'development');

        $view  = new PhViewSimple();
        $view->setViewsDir(APP_PATH . '/app/views/');
        $view->registerEngines(
            [
                '.volt' => function ($view) use ($mode) {
                    $volt  = new PhVolt($view, $this->diContainer);
                    $volt->setOptions(
                        [
                            'compiledPath'      => APP_PATH . '/storage/cache/volt/',
                            'compiledSeparator' => '_',
                            'compiledExtension' => '.php',
                            'compileAlways'     => boolval('development' === $mode),
                            'stat'              => true,
                        ]
                    );

                    /**
                     * Register the PHP extension, to be able to use PHP
                     * functions in Volt
                     */

                    $volt->getCompiler()->addExtension(new Php());

                    return $volt;
                },
            ]
        );

        $this->diContainer->setShared(Services::VIEW, $view);

        return $this;
    }

    /**
     * Runs the main application
     *
     * @return PhApplication
     */
    protected function runApplication()
    {
        return $this->application->handle();
    }
}
