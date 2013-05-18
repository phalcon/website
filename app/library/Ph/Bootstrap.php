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

use Phalcon\Config\Adapter\Ini as PhConfig,
	Phalcon\Loader as PhLoader,
	Phalcon\Flash\Direct as PhFlash,
	Phalcon\Logger\Adapter\File as PhLogger,
	Phalcon\Db\Adapter\Pdo\Mysql as PhMysql,
	Phalcon\Session\Adapter\Files as PhSession,
	Phalcon\Cache\Frontend\Output as PhCacheFront,
	Phalcon\Cache\Backend\File as PhCacheFiles,
	Phalcon\Cache\Backend\Apc as PhCacheApc,
	Phalcon\Mvc\Application as PhApplication,
	Phalcon\Mvc\Dispatcher as PhDispatcher,
	Phalcon\Mvc\Router as PhRouter,
	Phalcon\Mvc\Url as PhUrl,
	Phalcon\Mvc\View as PhView,
	Phalcon\Mvc\View\Engine\Volt as PhVolt,
	Phalcon\Mvc\Model\Metadata\Memory as PhMetadataMemory,
	Phalcon\Events\Manager as PhEventsManager,
	Phalcon\Exception as PhException;

class Bootstrap
{
	private $_di;

	private $_config;

	/**
	 * Constructor
	 *
	 * @param $di
	 */
	public function __construct($di)
	{


		$configFile = ROOT_PATH . '/app/config/config.ini';

		// Create the new object
		$config = new PhConfig($configFile);

		// Store it in the Di container
		$di->setShared('config', $config);

		$this->_di = $di;
		$this->_config = $config;
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

		$config = $this->_config;

		$this->initloader($config, $options);
		$this->initenvironment($config, $options);
		$this->initurl($config, $options);
		$this->initdispatcher($config, $options);
		$this->initrouter($config, $options);
		$this->initview($config, $options);
		$this->initlogger($config, $options);
		$this->initdatabase($config, $options);
		$this->initcache($config, $options);

		$application = new PhApplication($this->_di);

		return $application->handle()->getContent();
	}

	// Protected functions

	/**
	 * Initializes the loader
	 *
	 * @param array $options
	 */
	protected function initLoader($config)
	{
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
	 * @param Phalcon\Config $config
	 */
	protected function initEnvironment($config)
	{
		set_error_handler(array('\Ph\Error', 'normal'));
		set_exception_handler(array('\Ph\Error', 'exception'));
	}

	/**
	 * Initializes the baseUrl
	 *
	 * @param Phalcon\Config $config
	 */
	protected function initUrl($config)
	{
		/**
		 * The URL component is used to generate all kind of urls in the
		 * application
		 */
		$this->_di->set('url', function() use ($config) {
			$url = new PhUrl();
			$url->setBaseUri($config->app->baseUri);
			return $url;
		});
	}

	/**
	 * Initializes the dispatcher
	 *
	 * @param Phalcon\Config $config
	 */
	protected function initDispatcher($config)
	{
		$di = $this->_di;

		$di->set('dispatcher', function() use ($di) {

			$evManager = new PhEventsManager();

			$evManager->attach("dispatch:beforeException", function($event, $dispatcher, $exception){
				switch ($exception->getCode()) {
					case PhDispatcher::EXCEPTION_HANDLER_NOT_FOUND:
					case PhDispatcher::EXCEPTION_ACTION_NOT_FOUND:
						$dispatcher->forward(array(
							'controller' => 'index',
							'action' => 'show404'
						));
						return false;
				}
			});

			$dispatcher = new PhDispatcher();
			$dispatcher->setEventsManager($evManager);
			return $dispatcher;
		});
	}

	public function initRouter()
	{
		$this->_di->set('router', function() {

			$router = new PhRouter();

			$router->add("/documentation/([a-zA-Z0-9_]+)", array(
				"controller" => "documentation",
				"action" => "redirect",
				"name" => 1,
			));

			$router->add("/documentation/index", array(
				"controller" => "documentation",
				"action" => "index"
			));

			$router->add("/documentation", array(
				"controller" => "documentation",
				"action" => "index"
			));

			return $router;
		});
	}

	/**
	 * Initializes the view
	 *
	 * @param Phalcon\Config $config
	 */
	protected function initView($config)
	{
		$di     = $this->_di;

		/**
		 * Setup the view service
		 */
		$this->_di->set('view', function() use ($config, $di) {
			$view = new PhView();
			$view->setViewsDir(ROOT_PATH . $config->app->path->views);
			$view->registerEngines(array(
				'.volt' => function($view, $di) use ($config) {
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
				}));
				return $view;
			}
		);
	}
	/**
	 * Initializes the logger
	 *
	 * @param Phalcon\Config $config
	 */
	protected function initLogger($config)
	{
		$this->_di->set('logger', function() use ($config) {
			$logger = new PhLogger(ROOT_PATH . $config->app->logger->file);
			return $logger;
		}, true);
	}

	/**
	 * Initializes the database and metadata adapter
	 *
	 * @param array $options
	 */
	protected function initDatabase($config)
	{

		$this->_di->set('db', function() use ($config) {

			$connection = new PhMysql(array(
				"host"     => $config->database->host,
				"username" => $config->database->username,
				"password" => $config->database->password,
				"dbname"   => $config->database->name,
			));

			return $connection;
		});
	}

	/**
	 * Initializes the session
	 *
	 * @param array $options
	 */
	protected function initSession()
	{
		$this->_di->set('session', function() {
			$session = new PhSession();
			$session->start();
			return $session;
		}, true);
	}

	/**
	 * Initializes the cache
	 *
	 * @param array $options
	 */
	protected function initCache($config)
	{
		$this->_di->set('viewCache', function() use ($config) {

			// Get the parameters
			$frontCache = new PhCacheFront(array('lifetime' => $config->app->cache->lifetime));

			if (function_exists('apc_store')) {
				$cache      = new PhCacheApc($frontCache);
			} else {
				$backEndOptions  = array('cacheDir' => ROOT_PATH . $config->app->cache->cacheDir);
				$cache      = new PhCacheFiles($frontCache, $backEndOptions);
			}

			return $cache;
		});
	}

}
