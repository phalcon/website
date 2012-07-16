<?php

error_reporting(E_ALL);

try {

    require __DIR__.'/../app/controllers/ControllerBase.php';

    $config = new Phalcon\Config(array(
        'database' => array(
            'adapter' => 'Mysql',
            'host' => 'localhost',
            'username' => 'user',
            'password' => 'password',
            'name' => 'site'
        ),
        'phalcon' => array(
            'controllersDir' => __DIR__.'/../app/controllers/',
            'modelsDir' => __DIR__.'/../app/models/',
            'viewsDir' => __DIR__.'/../app/views/'
        ),
        'views' => array(
            'cache' => array(
                'adapter' => 'File',
                'cacheDir' => __DIR__.'/../app/cache/',
                'lifetime' => 172800
            )
        )
    ));

    $router = new Phalcon\Router\Regex();

    $router->add("/documentation/([a-zA-Z0-9_]+)", array(
        "controller" => "index",
        "action" => "docs",
        "name" => 1,
    ));

    $router->add("/documentation", array(
        "controller" => "index",
        "action" => "docs"        
    ));

    $router->handle();

    $front = Phalcon\Controller\Front::getInstance();
    $front->setRouter($router);
    $front->setConfig($config);
    echo $front->dispatchLoop()->getContent();

} catch (Phalcon\Exception $e) {
    echo 'PhalconException: ', $e->getMessage(), PHP_EOL;
}
