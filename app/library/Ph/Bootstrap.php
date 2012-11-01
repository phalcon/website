<?php
/**
 * \Ph\Bootstrap
 * Bootstrap.php
 *
 * Bootstraps the application
 *
 * @author      Nikos Dimopoulos <nikos@niden.net>
 * @since       2012-11-01
 * @category    Library
 *
 */

namespace Ph;

use \Phalcon\Config\Adapter\Ini as PhConfig;
use \Phalcon\Loader as PhLoader;
use \Phalcon\Flash\Session as PhFlash;
use \Phalcon\Logger\Adapter\File as PhLogger;
use \Phalcon\Db\Adapter\Pdo\Mysql as PhMysql;
use \Phalcon\Session\Adapter\Files as PhSession;
use \Phalcon\Cache\Frontend\Data as PhCacheFront;
use \Phalcon\Cache\Backend\File as PhCacheBack;
use \Phalcon\Mvc\Application as PhApplication;
use \Phalcon\Mvc\Dispatcher as PhDispatcher;
use \Phalcon\Mvc\Router as PhRouter;
use \Phalcon\Mvc\Url as PhUrl;
use \Phalcon\Mvc\View as PhView;
use \Phalcon\Mvc\View\Engine\Volt as PhVolt;
use \Phalcon\Mvc\Model\Metadata\Memory as PhMetadataMemory;
use \Phalcon\Events\Manager as PhEventsManager;
use \Phalcon\Exception as PhException;

class Bootstrap
{
    private $_di;

    /**
     * Constructor
     * 
     * @param $di
     */
    public function __construct($di)
    {
        $this->_di = $di;
    }

    /**
     * Runs the application performing all initializations
     * 
     * @param $options
     *
     * @return mixed
     */
    public function run($options)
    {
        $loaders = array(
            'config',
            'loader',
            'environment',
            'timezone',
            'flash',
            'url',
            'dispatcher',
            'router',
            'view',
            'logger',
            'database',
            'session',
            'cache',
            'debug',
        );


        foreach ($loaders as $service)
        {
            $function = 'init' . ucfirst($service);

            $this->$function($options);
        }

        $application = new PhApplication();
        $application->setDI($this->_di);

        return $application->handle()->getContent();
    }

    // Protected functions

    /**
     * Initializes the config. Reads it from its location and
     * stores it in the Di container for easier access
     *
     * @param array $options
     */
    protected function initConfig($options = array())
    {
        $configFile = ROOT_PATH . '/app/config/config.ini';

        // Create the new object
        $config = new PhConfig($configFile);

        // Store it in the Di container
        $this->_di->set('config', $config);
    }

    /**
     * Initializes the loader
     *
     * @param array $options
     */
    protected function initLoader($options = array())
    {
        $config = $this->_di->get('config');

        // Creates the autoloader
        $loader = new PhLoader();

        $loader->registerDirs(
            array(
                ROOT_PATH . $config->app->path->controllers,
                ROOT_PATH . $config->app->path->models,
                ROOT_PATH . $config->app->path->library,
            )
        );

        // Register the namespace
        $loader->registerNamespaces(
            array("Ph" => $config->app->path->library)
        );

        $loader->register();
    }

    /**
     * Initializes the environment
     *
     * @param array $options
     */
    protected function initEnvironment($options = array())
    {
        $config = $this->_di->get('config');

        $debug = (isset($config->app->debug)) ?
                 (bool) $config->app->debug   :
                 false;

        if ($debug)
        {
            ini_set('display_errors', true);
            error_reporting(E_ALL);
        }
        else
        {
            ini_set('display_errors', false);
//            error_reporting( -1 );
        }

        set_error_handler(array('\Ph\Error', 'normal'));
        set_exception_handler(array('\Ph\Error', 'exception'));
        register_shutdown_function(array('\Ph\Error', 'shutdown'));
    }

    /**
     * Initializes the timezone
     *
     * @param array $options
     */
    protected function initTimezone($options = array())
    {
        $config = $this->_di->get('config');

        $timezone = (isset($config->app->timezone)) ?
                    $config->app->timezone      :
                    'US/Eastern';

        date_default_timezone_set($timezone);

        $this->_di->set('timezone_default', $timezone);
    }

    /**
     * Initializes the flash messenger
     *
     * @param array $options
     */
    protected function initFlash($options = array())
    {
        $this->_di->set(
            'flash',
            function()
            {
                $params = array(
                    'error'   => 'alert alert-error',
                    'success' => 'alert alert-success',
                    'notice'  => 'alert alert-info',
                );

                return new PhFlash($params);
            }
        );
    }

    /**
     * Initializes the baseUrl
     *
     * @param array $options
     */
    protected function initUrl($options = array())
    {
        $config = $this->_di->get('config');

        /**
         * The URL component is used to generate all kind of urls in the
         * application
         */
        $this->_di->set(
            'url',
            function() use ($config)
            {
                $url = new PhUrl();
                $url->setBaseUri($config->app->baseUri);
                return $url;
            }
        );
    }

    /**
     * Initializes the dispatcher
     *
     * @param array $options
     */
    protected function initDispatcher($options = array())
    {
        $di = $this->_di;

        $this->_di->set(
            'dispatcher',
            function() use ($di) {

                $evManager = $di->getShared('eventsManager');

                /**
                 * Listening to events in the dispatcher using the
                 * Acl plugin
                 */
                $evManager->attach(
                    "dispatch:beforeException",
                    function($event, $dispatcher, $exception)
                    {
                        switch ($exception->getCode())
                        {
                            case PhDispatcher::EXCEPTION_HANDLER_NOT_FOUND:
                            case PhDispatcher::EXCEPTION_ACTION_NOT_FOUND:

                            // Get the 404 page
                            $page = file_get_contents(ROOT_PATH . '/app/views/404/404.html');
                            $page = str_replace('[ERROR]', $exception->getMessage(), $page);

                            echo $page;
                        }
                    }
                );
                $dispatcher = new PhDispatcher();
                $dispatcher->setEventsManager($evManager);

                return $dispatcher;
            }
        );
    }


    public function initRouter($options = array())
    {
        $this->_di->set(
            'router',
            function()
            {
                $router = new PhRouter();

                $router->add(
                    "/documentation/([a-zA-Z0-9_]+)",
                    array(
                        "controller" => "documentation",
                        "action" => "redirect",
                        "name" => 1,
                    )
                );

                $router->add(
                    "/documentation/index",
                    array(
                        "controller" => "documentation",
                        "action" => "index"
                    )
                );

                $router->add(
                    "/documentation",
                    array(
                        "controller" => "documentation",
                        "action" => "index"
                    )
                );

                return $router;
            }
        );
    }

    /**
     * Initializes the view
     *
     * @param array $options
     */
    protected function initView($options = array())
    {
        $config = $this->_di->get('config');
        $di     = $this->_di;

        $this->_di->set(
            'volt',
            function($view, $di) use($config)
            {
                $volt = new PhVolt($view, $di);
                $volt->setOptions(
                    array(
                        'compiledPath'      => ROOT_PATH . $config->app->volt->path,
                        'compiledExtension' => $config->app->volt->extension,
                        'compiledSeparator' => $config->app->volt->separator,
                        'stat'              => (bool) $config->app->volt->stat,
                    )
                );
                return $volt;
            }
        );

        /**
         * Setup the view service
         */
        $this->_di->set(
            'view',
            function() use ($config, $di)
            {
                $view = new PhView();
                $view->setViewsDir(ROOT_PATH . $config->app->path->views);
                $view->registerEngines(array('.volt' => 'volt'));
                return $view;
            }
        );
    }
    /**
     * Initializes the logger
     *
     * @param array $options
     */
    protected function initLogger($options = array())
    {
        $config = $this->_di->get('config');

        $this->_di->set(
            'logger',
            function() use ($config)
            {
                $logger = new PhLogger(ROOT_PATH . $config->app->logger->file);
                $logger->setFormat($config->app->logger->format);
                return $logger;
            }
        );
    }

    /**
     * Initializes the database and netadata adapter
     *
     * @param array $options
     */
    protected function initDatabase($options = array())
    {
        $config = $this->_di->get('config');
        $logger = $this->_di->get('logger');
        $debug  = (isset($config->app->debug)) ?
                  (bool) $config->app->debug   :
                  false;

        $this->_di->set(
            'db',
            function() use ($debug, $config, $logger)
            {

                if ($debug)
                {
                    $eventsManager = new PhEventsManager();

                    // Listen all the database events
                    $eventsManager->attach(
                        'db',
                        function($event, $connection) use ($logger) {
                            if ($event->getType() == 'beforeQuery') {
                                $logger->log(
                                    $connection->getSQLStatement(),
                                    PhLogger::INFO
                                );
                            }
                        }
                    );
                }

                $params = array(
                    "host"     => $config->database->host,
                    "username" => $config->database->username,
                    "password" => $config->database->password,
                    "dbname"   => $config->database->name,
                );

                $conn = new PhMysql($params);

                if ($debug)
                {
                    // Assign the eventsManager to the db adapter instance
                    $conn->setEventsManager($eventsManager);
                }

                return $conn;
            }
        );

        /**
         * If the configuration specify the use of metadata adapter use it or use memory otherwise
         */
        $this->_di->set(
            'modelsMetadata',
            function() use ($config)
            {
                if (isset($config->models->metadata))
                {
                    $metaDataConfig  = $config->models->metadata;
                    $metadataAdapter = 'Phalcon\Mvc\Model\Metadata\\'
                                     . $metaDataConfig->adapter;
                    return new $metadataAdapter();
                }
                else
                {
                    return new PhMetadataMemory();
                }
            }
        );
    }

    /**
     * Initializes the session
     *
     * @param array $options
     */
    protected function initSession($options = array())
    {
        $this->_di->set(
            'session',
            function()
            {
                $session = new PhSession();
                if (!$session->isStarted())
                {
                    $session->start();
                }
                return $session;
            }
        );
    }

    /**
     * Initializes the cache
     *
     * @param array $options
     */
    protected function initCache($options = array())
    {
        $config = $this->_di->get('config');

        $this->_di->set(
            'cache',
            function() use ($config)
            {
                // Get the parameters
                $lifetime        = $config->app->cache->lifetime;
                $cacheDir        = $config->app->cache->cacheDir;
                $frontEndOptions = array('lifetime' => $lifetime);
                $backEndOptions  = array('cacheDir' => ROOT_PATH . $cacheDir);

                $frontCache = new PhCacheFront($frontEndOptions);
                $cache      = new PhCacheBack($frontCache, $backEndOptions);

                return $cache;
            }
        );

    }

    /**
     * Initializes the debugging functions
     *
     * @param array $options
     */
    protected function initDebug($options = array())
    {
        $config = $this->_di->get('config');
        $debug  = (isset($config->app->debug)) ?
                  (bool) $config->app->debug   :
                  false;

        if ($debug)
        {
            require_once ROOT_PATH . '/app/library/Ph/Debug.php';
        }
    }
}
