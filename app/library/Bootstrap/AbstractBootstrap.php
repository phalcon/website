<?php

namespace Website\Bootstrap;

use Dotenv\Dotenv;
use Phalcon\Cache\Frontend\Output as PhCacheFront;
use Phalcon\Cache\Backend\File as PhCacheBackFile;
use Phalcon\Cli\Console as PhCliConsole;
use Phalcon\Cli\Dispatcher as PhCliDispatcher;
use Phalcon\Di as PhDI;
use Phalcon\Di\FactoryDefault as PhFactoryDefault;
use Phalcon\Events\Manager as PhEventsManager;
use Phalcon\Http\Request as PhRequest;
use Phalcon\Http\Response as PhResponse;
use Phalcon\Loader as PhLoader;
use Phalcon\Logger\Adapter\File as PhFileLogger;
use Phalcon\Logger\Formatter\Line as PhLoggerFormatter;
use Phalcon\Mvc\Application as PhApplication;
use Phalcon\Mvc\Micro as PhMicro;
use Phalcon\Mvc\Micro\Collection as PhMicroCollection;
use Phalcon\Mvc\Router as PhRouter;
use Phalcon\Mvc\View\Simple as PhViewSimple;
use Phalcon\Mvc\View\Engine\Volt as PhVolt;
use Phalcon\Mvc\Url as PhUrl;

use Website\Constants;
use Website\Locale;
use Website\Middleware\CacheMiddleware;
use Website\Middleware\NotFoundMiddleware;
use Website\Utils;
use Website\View\Engine\Volt\Extensions\Php;

/**
 * AbstractBootstrap
 *
 * @property PhDI $diContainer
 */
abstract class AbstractBootstrap
{
    private $memory    = 0;
    private $execution = 0;

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
            ->initEnvironment()
            ->initApplication()
            ->initUtils()
            ->initCache()
            ->initLogger()
            ->initLocale()
            ->initRoutes()
            ->initView();

        return $this->runApplication();
    }

    /**
     * Initializes the application
     *
     * @return $this;
     */
    protected function initApplication()
    {
        $this->application = new PhMicro($this->diContainer);

        return $this;
    }

    /**
     * Initializes the Cache
     *
     * @return $this;
     */
    protected function initCache()
    {
        /**
         * viewCache
         */
        /** @var \Website\Utils $utils */
        $utils      = $this->diContainer->getShared('utils');
        $frontCache = new PhCacheFront(
            [
                'lifetime' => $utils->env(Constants::CACHE_LIFETIME, 3600)
            ]
        );

        $backEndOptions = [
            'cacheDir' => APP_PATH . '/storage/cache/view'
        ];
        $cache          = new PhCacheBackFile($frontCache, $backEndOptions);

        $this->diContainer->setShared(Constants::SRV_VIEW_CACHE, $cache);

        /**
         * cacheData
         */
        $backEndOptions = [
            'cacheDir' => APP_PATH . '/storage/cache/data'
        ];
        $cache          = new PhCacheBackFile($frontCache, $backEndOptions);

        $this->diContainer->setShared(Constants::SRV_CACHE_DATA, $cache);

        return $this;
    }

    /**
     * Initializes the Di container
     *
     * @return $this;
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
     * @return $this;
     */
    protected function initEnvironment()
    {
        date_default_timezone_set('US/Eastern');

        $this->memory    = memory_get_usage();
        $this->execution = microtime(true);

        (new Dotenv(APP_PATH))->load();

        return $this;
    }

    /**
     * Initializes the error handlers
     */
    protected function initErrorHandler()
    {
        $logger = $this->diContainer->getShared(Constants::SRV_LOGGER);
        $utils  = $this->diContainer->getShared(Constants::SRV_UTILS);
        $mode   = $utils->env(Constants::APP_ENV, 'development');

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

//        $timezone = $config->get('app_timezone', 'US/Eastern');
//        date_default_timezone_set($timezone);

        return $this;
    }

    /**
     * Initializes the autoloader
     *
     * @return $this;
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
     * @return $this;
     */
    protected function initLocale()
    {
        $this->diContainer->setShared(Constants::SRV_LOCALE, new Locale());

        return $this;
    }

    /**
     * Initializes the loggers
     *
     * @return $this;
     */
    protected function initLogger()
    {
        /** @var \Website\Utils $utils */
        $utils     = $this->diContainer->getShared(Constants::SRV_UTILS);
        $logFile   = sprintf(
            '%s/storage/logs/%s-%s.log',
            APP_PATH,
            date('Ymd'),
            $utils->env('LOGGER_DEFAULT_FILENAME', 'application')
        );
        $format    = $utils->env(
            Constants::LOGGER_FORMAT,
            '[%date%][%type%] %message%'
        );
        $formatter = new PhLoggerFormatter($format);
        $logger    = new PhFileLogger($logFile);
        $logger->setFormatter($formatter);

        $this->diContainer->setShared(Constants::SRV_LOGGER, $logger);

        return $this;
    }

    /**
     * Initializes the routes
     *
     * @return $this
     */
    protected function initRoutes()
    {
        $routes = [
            [
                'class'   => 'Website\Controllers\IndexController',
                'methods' => [
                    'get' => [
                        '/'    => 'indexAction',
                        '/404' => 'notfoundAction',
                     ],
                ],
            ],
            [
                'class'   => 'Website\Controllers\UtilsController',
                'methods' => [
                    'get' => [
                        '/contributors' => 'contributorsAction',
                        '/sitemap'      => 'sitemapAction',
                    ],
                ],
            ],
        ];

        foreach ($routes as $route) {
            $collection = new PhMicroCollection();
            $collection->setHandler($route['class'], true);

            foreach ($route['methods'] as $verb => $methods) {
                foreach ($methods as $endpoint => $action) {
                    $collection->$verb($endpoint, $action);
                }
            }
            $this->application->mount($collection);
        }

        $eventsManager = $this->diContainer->getShared(Constants::SRV_EVENTS_MANAGER);

        $eventsManager->attach(Constants::SRV_MICRO, new NotFoundMiddleware());

        $this->application->before(new NotFoundMiddleware());

        $this->application->setEventsManager($eventsManager);

        return $this;
    }

    /**
     * Initializes the utils service and stores it in the DI
     *
     * @return $this;
     */
    protected function initUtils()
    {
        $this->diContainer->setShared(Constants::SRV_UTILS, new Utils());

        return $this;
    }

    /**
     * Initializes the View services and Volt
     *
     * @return $this
     */
    protected function initView()
    {
        /** @var \Website\Utils $utils */
        $utils = $this->diContainer->getShared(Constants::SRV_UTILS);
        $mode  = $utils->env(Constants::APP_ENV, 'development');

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

        $this->diContainer->setShared(Constants::SRV_VIEW, $view);

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


/******************************************************************************/
/******************************************************************************/
/******************************************************************************/
/******************************************************************************/
/******************************************************************************/



    /**
     * Sets the debug mode (development) and provides access to the debug
     * functions if necessary
     */
    protected function initDebug()
    {
        $registry = $this->diContainer->get(CCS::REGISTRY);
        $config   = $this->diContainer->get(CCS::CONFIG);

        $registry->devmode = intval($config->get('app')->get('devmode', 0));
        if (0 !== $registry->devmode) {
            require_once $registry->base_path.'/library/Common/Debug.php';
        }
    }




}
