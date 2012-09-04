<?php

error_reporting(E_ALL);

$loader = new \Phalcon\Loader();

$loader->registerDirs(array('../app/controllers/', '../app/models/'))->register();

$di = new \Phalcon\DI\FactoryDefault();

$di->set('router', function(){

    $router = new Phalcon\Mvc\Router();

//    $router->add("/documentation/([a-zA-Z0-9_]+)", array(
//        "controller" => "index",
//        "action" => "docs",
//        "name" => 1,
//    ));
//
//    $router->add("/documentation", array(
//        "controller" => "index",
//        "action" => "docs"
//    ));

    return $router;
});

$di->set('url', function(){
    $url = new Phalcon\Mvc\Url();
    $url->setBaseUri('/phalconphp/');
    return $url;
});

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

try {

    $application = new \Phalcon\Mvc\Application();
    $application->setDI($di);
    echo $application->handle()->getContent();

} catch(Phalcon\Exception $e){
    echo $e->getMessage();
} catch(PDOException $e){
    echo $e->getMessage();
}

