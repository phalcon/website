<?php

error_reporting(E_ALL);

$loader = new \Phalcon\Loader();        

$loader->registerDirs(array('../app/controllers/', '../app/models/'))->register();

$di = new \Phalcon\DI();

$di->set('router', function(){

    $router = new Phalcon\Mvc\Router();

    $router->add("/documentation/([a-zA-Z0-9_]+)", array(
        "controller" => "index",
        "action" => "docs",
        "name" => 1,
    ));

    $router->add("/documentation", array(
        "controller" => "index",
        "action" => "docs"        
    ));

    return $router;
});   

$di->set('dispatcher', function(){
    return new Phalcon\Mvc\Dispatcher();
});

$di->set('url', function(){
    return new Phalcon\Mvc\Url();
});

$di->set('filter', function(){
    return new Phalcon\Filter();
});

$di->set('response', 'Phalcon\Http\Response');

$di->set('request', 'Phalcon\Http\Request');

$di->set('view', function(){
    $view = new \Phalcon\Mvc\View();
    $view->setViewsDir('../app/views/');
    return $view;
});
        
$di->set('db', function(){
    return new \Phalcon\Db\Adapter\Pdo\Mysql(array(
        "host" => "localhost",
        "username" => "root",
        "password" => "secret",
        "dbname" => "phalcon_site"
    ));
});

$di->set('modelsMetadata', 'Phalcon\Mvc\Model\Metadata\Memory');

$di->set('modelsManager', 'Phalcon\Mvc\Model\Manager');

try {
    $application = new \Phalcon\Mvc\Application();
    $application->setDI($di);
    echo $application->handle()->getContent();
}
catch(Phalcon\Exception $e){
    echo $e->getMessage();
}

