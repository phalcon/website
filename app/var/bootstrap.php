<?php
/**
 * Bootstraps the application
 */
use Phalcon\DI\FactoryDefault as PhDi,
    Phalcon\Config as PhConfig,
    Phalcon\Session\Adapter\Files as PhSession,
    Phalcon\Loader as PhLoader,
    Phalcon\Mvc\Url as PhUrl,
    Phalcon\Mvc\Router as PhRouter,
    Phalcon\Db\Adapter\Pdo\Mysql as PhMysql,
    Phalcon\Exception as PhException,
    Phalcon\Mvc\Application as PhApplication,
    Phalcon\Mvc\View as PhView,
    Phalcon\Mvc\View\Engine\Volt as PhVolt,
    Phalcon\Mvc\Model\Metadata\Memory as PhMetadataMemory,
    Phalcon\Cache\Frontend\Output as PhCacheFront,
    Phalcon\Cache\Backend\File as PhCacheBackFile,
    Phalcon\Cache\Backend\Apc as PhCacheBackApc;

class Bootstrap
{
    private $di;

    /**
     * Constructor
     *
     * @param $di
     */
    public function __construct($di)
    {
        $this->di = $di;
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
            'session',
            'config',
            'loader',
            'url',
            'router',
            'view',
            'cache',
        );

        foreach ($loaders as $service) {
            $function = 'init' . ucfirst($service);
            $this->$function();
        }

        $application = new PhApplication();
        $application->setDI($this->di);

        return $application->handle()->getContent();
    }

    // Protected functions
    /**
     * Initializes the session
     *
     * @param array $options
     */
    protected function initSession($options = array())
    {
        $this->di['session'] = function () {

            $session = new PhSession();
            $session->start();

            return $session;

        };
    }

    /**
     * Initializes the config. Reads it from its location and
     * stores it in the Di container for easier access
     *
     * @param array $options
     */
    protected function initConfig($options = array())
    {
        $configFile  = require(ROOT_PATH . '/app/var/config/config.php');

        // Create the new object
        $config = new PhConfig($configFile);

        // Store it in the Di container
        // Settings cones from the include
        $this->di['config'] = $config;
    }

    /**
     * Initializes the loader
     *
     * @param array $options
     */
    protected function initLoader($options = array())
    {
        $config = $this->di['config'];

        // Creates the autoloader
        $loader = new PhLoader();

        $loader->registerDirs(
            array(
                $config->application->controllersDir,
                $config->application->modelsDir
            )
        );

        $loader->register();

        // Dump it in the DI to reuse it
        $this->di['loader'] = $loader;
    }

    /**
     * Initializes the baseUrl
     *
     * @param array $options
     */
    protected function initUrl($options = array())
    {
        $config = $this->di['config'];

        /**
         * The URL component is used to generate all kind of urls in the
         * application
         */
        $this->di['url'] = function () use ($config) {
            $url = new PhUrl();
            $url->setBaseUri($config->application->baseUri);
            return $url;
        };
    }

    /**
     * Initializes the router
     *
     * @param array $options
     */
    protected function initRouter($options = array())
    {
        $config = $this->di['config'];

        $this->di['router'] = function () use ($config) {

            $router = new PhRouter(false);

            $router->notFound(
                array(
                    "controller" => "index",
                    "action"     => "notFound",
                )
            );
            $router->removeExtraSlashes(true);

            foreach ($config['routes'] as $route => $items) {
                $router->add($route, $items->params->toArray())
                       ->setName($items->name);
            }

            return $router;
        };
    }

    /**
     * Initializes the database
     *
     * @param array $options
     */
    protected function initDatabase($options = array())
    {
        $config = $this->di['config'];

        $this->di['db'] = function () use ($config) {
            return new DbAdapter(
                array(
                    'host'     => $config->database->host,
                    'username' => $config->database->username,
                    'password' => $config->database->password,
                    'dbname'   => $config->database->dbname,
                )
            );
        };
    }

    /**
     * Initializes the models metadata
     *
     * @param array $options
     */
    protected function initModelsMetadata($options = array())
    {
        $this->di['modelsMetadata'] = function () {
                return new PhMetadataMemory();
        };
    }

    /**
     * Initializes the view and Volt
     *
     * @param array $options
     */
    protected function initView($options = array())
    {
        $config = $this->di['config'];
        $di     = $this->di;

        /**
         * Setup the view service
         */
        $this->di['view'] = function () use ($config, $di) {

            $view = new PhView();
            $view->setViewsDir($config->application->viewsDir);
            $view->registerEngines(
                array(
                    '.volt' => function ($view , $di) use ($config) {
                        $volt        = new PhVolt($view , $di);
                        $voltOptions = array(
                            'compiledPath'      => $config->application->voltDir ,
                            'compiledSeparator' => '_',
                        );

                        if ('1' == $config->application->debug) {
                            $voltOptions['compileAlways'] = true;
                        }

                        $volt->setOptions($voltOptions);
                        $volt->getCompiler()->addFunction(
                            'tr',
                            function ($key) {
                                return "Bootstrap::translate({$key})";
                            }
                        );

                        return $volt;
                    },
                    '.phtml' => 'Phalcon\Mvc\View\Engine\Php', // Generate Template files uses PHP itself as the template engine
                )
            );

            return $view;
        };
    }

    /**
     * Initializes the cache
     *
     * @param array $options
     */
    protected function initCache($options = array())
    {
        $config = $this->di['config'];

        $this->di['viewCache'] = function () use ($config) {

            // Get the parameters
            $frontCache      = new PhCacheFront(array('lifetime' => $config->cache->lifetime));

            if (function_exists('apc_store')) {
                $cache = new PhCacheBackApc($frontCache);
            } else {
                $backEndOptions = array('cacheDir' => $config->cache->cacheDir);
                $cache          = new PhCacheBackFile($frontCache, $backEndOptions);
            }

            return $cache;
        };
    }

    /**
     * Translates a string
     *
     * @return string
     */
    public static function translate()
    {
        $return     = '';
        $messages   = array();
        $argCount   = func_num_args();
        $di         = PhDi::getDefault();
        $session    = $di['session'];
        $config     = $di['config'];
        $dispatcher = $di['dispatcher'];
        $lang       = $dispatcher->getParam('language');

        if (function_exists('apc_store')) {
            $phrases    = apc_fetch($lang . '-phrases');
            $language   = apc_fetch($lang . '-language');
        } else {
            $phrases    = $session->get('phrases');
            $language   = $session->get('language');
        }

        $changed = false;
        if (!$phrases || $language != $lang || ('1' == $config->application->debug)) {

            require ROOT_PATH . '/app/var/languages/en.php';

            /**
             * Messages comes from the above require statement. Not the best
             * way of doing it but we need this for Transilex
             */
            $english = $messages;
            $phrases = $english;
            if ('en' !== $lang) {
                if (file_exists(ROOT_PATH . '/app/var/languages/' . $lang . '.php')) {

                    /**
                     * Cleanup
                     */
                    $messages = array();
                    require ROOT_PATH . '/app/var/languages/' . $lang . '.php';

                    /**
                     * Messages comes from the above require statement. Not
                     * the best way of doing it but we need this for Transilex
                     */
                    $custom  = $messages;

                    foreach ($english as $key => $value) {
                        $phrases[$key] = (!empty($custom[$key])) ? $custom[$key] : $value;
                    }
                }

                $changed = true;
            }

            if ($changed) {
                if (function_exists('apc_store')) {
                    apc_store($lang . '-phrases', $phrases);
                    apc_store($lang . '-language', $lang);
                } else {
                    $session->set('phrases', $phrases);
                    $session->set('language', $lang);
                }
            }

        }

        // If parameters were passed process them, otherwise return an
        // empty string
        if ($argCount > 0) {
            $arguments = func_get_args();

            // The first argument is the key
            $key = $arguments[0];

            if (isset($phrases[$key])) {
                $return = $phrases[$key];

                // Any subsequent arguments need to replace placeholders
                // in the target string. Unset the key and process the
                // rest of the arguments one by one.
                unset($arguments[0]);

                foreach ($arguments as $key => $argument) {
                    $return = str_replace(":{$key}:", $argument, $return);
                }
            }
        }

        return $return;
    }
}
