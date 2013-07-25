<?php
/**
 * Bootstraps the application
 */
use \Phalcon\DI\FactoryDefault as PhDi;
use \Phalcon\Config as PhConfig;
use \Phalcon\Session\Adapter\Files as PhSession;
use \Phalcon\Loader as PhLoader;
use \Phalcon\Mvc\Url as PhUrl;
use \Phalcon\Mvc\Router as PhRouter;
use \Phalcon\Db\Adapter\Pdo\Mysql as PhMysql;
use \Phalcon\Exception as PhException;
use \Phalcon\Mvc\Application as PhApplication;
use \Phalcon\Mvc\View as PhView;
use \Phalcon\Mvc\View\Engine\Volt as PhVolt;
use \Phalcon\Mvc\Model\Metadata\Memory as PhMetadataMemory;
use \Phalcon\Cache\Frontend\Output as PhCacheFront;
use \Phalcon\Cache\Backend\File as PhCacheBackFile;
use \Phalcon\Cache\Backend\Apc as PhCacheBackApc;

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
            'database',
            'modelsmetadata',
            'view',
            'cache',
        );

        try {

            foreach ($loaders as $service) {

                $function = 'init' . ucfirst($service);

                $this->$function($options);
            }

            $application = new PhApplication();
            $application->setDI($this->di);

            return $application->handle()->getContent();

        } catch (PhException $e) {
            echo $e->getMessage();
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
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
            [
                $config->application->controllersDir,
                $config->application->modelsDir
            ]
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
                [
                    "controller" => "index",
                    "action"     => "notFound",
                ]
            );
            $router->removeExtraSlashes(true);

            $router->add(
                '/',
                'index::index'
            )->setName('index');

            $router->add(
                '/index',
                'index::index'
            )->setName('index');

            $router->add(
                '/{pageSlug:(models|about|team|roadmap|consulting|hosting|examples|support|api|ui|powered)}',
                [
                    'controller' => 'pages',
                    'action'     => 'page',
                ]
            )->setName('pages');

            $router->add(
                '/download',
                [
                    'controller' => 'download'
                ]
            )->setName('download');

            $router->add(
                '/download/{type:(tools|stubs)}',
                [
                    'controller' => 'download',
                    'action'     => 'index',
                ]
            )->setName('download-type');

            $router->add(
                '/download/windows',
                [
                    'controller' => 'download',
                    'action'     => 'windows',
                ]
            )->setName('download-windows');

            $router->add(
                '/(documentation|reference)',
                [
                    'controller' => 'documentation',
                    'action'     => 'index',
                ]
            )->setName('documentation');

            $router->add(
                '/donate',
                [
                    'controller' => 'index',
                    'action'     => 'donate',
                ]
            )->setName('donate');

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
                [
                    'host'     => $config->database->host,
                    'username' => $config->database->username,
                    'password' => $config->database->password,
                    'dbname'   => $config->database->dbname,
                ]
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
                [
                    '.volt' => function ($view , $di) use ($config) {
                        $volt        = new PhVolt($view , $di);
                        $voltOptions = [
                            'compiledPath'      => $config->application->voltDir ,
                            'compiledSeparator' => '_',
                        ];

                        if ('1' != $this->config->application->debug) {
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
		            //'.html'  => 'Phalcon\Mvc\View\Engine\Php' // Generate Template files uses PHP itself as the template engine
	            ]
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
            $frontEndOptions = ['lifetime' => $config->cache->lifetime];
            $frontCache      = new PhCacheFront($frontEndOptions);

            if (function_exists('apc_store')) {
                $cache = new PhCacheBackApc($frontCache);
            } else {
                $backEndOptions = ['cacheDir' => $config->cache->cacheDir];
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
        $return   = '';
        $argCount = func_num_args();
        $di       = PhDi::getDefault();
        $session  = $di['session'];
        $config   = $di['config'];
        $phrases  = $session->get('phrases');
        $lang     = $session->get('lang');

        if (!$phrases || ('1' == $config->application->debug)) {
            $english = require(ROOT_PATH . '/app/var/languages/en.php');
            $phrases = $english;
            if ('en' !== $lang) {
                if (file_exists(ROOT_PATH . '/app/var/languages/' . $lang . '.php')) {
                    $custom = require(ROOT_PATH . '/app/var/languages/' . $lang . '.php');
                    $phrases = array_merge($english, $custom);
                }
            }
            $session->set('phrases', $phrases);
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
