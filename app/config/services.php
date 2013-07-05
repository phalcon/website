<?php

use Phalcon\DI\FactoryDefault ,
    Phalcon\Mvc\View ,
    Phalcon\Mvc\Url as UrlResolver ,
    Phalcon\Db\Adapter\Pdo\Mysql as DbAdapter ,
    Phalcon\Mvc\View\Engine\Volt as VoltEngine ,
    Phalcon\Mvc\Model\Metadata\Memory as MetaDataAdapter ,
    Phalcon\Session\Adapter\Files as SessionAdapter ,
    Phalcon\Cache\Frontend\Output as PhCacheFront ,
    Phalcon\Cache\Backend\File as PhCacheFiles ,
    Phalcon\Cache\Backend\Apc as PhCacheApc;

/**
 * The FactoryDefault Dependency Injector automatically register the right services providing a full stack framework
 */
$di = new FactoryDefault();

/**
 * The URL component is used to generate all kind of urls in the application
 */
$di->set(
    'url' ,
    function () use ($config) {
        $url = new UrlResolver();
        $url->setBaseUri($config->application->baseUri);

        return $url;
    } ,
    true
);

/**
 * Setting up the view component
 */
$di->set(
    'view' ,
    function () use ($config) {

        $view = new View();

        $view->setViewsDir($config->application->viewsDir);

        $view->registerEngines(
            array(
                 '.volt'  => function ($view , $di) use ($config) {

                     $volt = new VoltEngine($view , $di);

                     $volt->setOptions(
                         array(
                              'compiledPath'      => $config->cache->cacheDir ,
                              'compiledSeparator' => '_'
                         )
                     );

                     return $volt;
                 } ,
                 '.phtml' => 'Phalcon\Mvc\View\Engine\Php' , // Generate Template files uses PHP itself as the template engine
                 //'.html'  => 'Phalcon\Mvc\View\Engine\Php' // Generate Template files uses PHP itself as the template engine
            )
        );

        return $view;
    } ,
    true
);

/**
 * Database connection is created based in the parameters defined in the configuration file
 */
$di->set(
    'db' ,
    function () use ($config) {
        return new DbAdapter([
                                  'host'     => $config->database->host ,
                                  'username' => $config->database->username ,
                                  'password' => $config->database->password ,
                                  'dbname'   => $config->database->dbname
                             ]);
    }
);

/**
 * If the configuration specify the use of metadata adapter use it or use memory otherwise
 */
$di->set(
    'modelsMetadata' ,
    function () use ($config) {
        return new MetaDataAdapter();
    }
);

/**
 * Start the session the first time some component request the session service
 */
$di->set(
    'session' ,
    function () {
        $session = new SessionAdapter();
        $session->start();

        return $session;
    }
);

/**
 * Router
 */
$di->set(
    'router' ,
    function () {
        return require __DIR__ . '/routes.php';
    } ,
    true
);

/**
 * Initializes the cache
 */
$di->set(
    'viewCache' ,
    function () use ($config) {

        $frontCache = new PhCacheFront([ 'lifetime' => $config->cache->lifetime ]);

        if ( function_exists('apc_store') ) {

            $cache = new PhCacheApc($frontCache);
        } else {

            $backEndOptions = [ 'cacheDir' => $config->cache->cacheDir ];
            $cache          = new PhCacheFiles($frontCache , $backEndOptions);
        }

        return $cache;
    }
);
