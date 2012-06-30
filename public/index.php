<?php

error_reporting(E_ALL);

try {

    require __DIR__.'/../app/controllers/ControllerBase.php';

    $config = new Phalcon_Config(array(
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

    $front = Phalcon_Controller_Front::getInstance();
    $front->setConfig($config);
    echo $front->dispatchLoop()->getContent();

} catch (Phalcon_Exception $e) {
    echo 'PhalconException: '.$e->getMessage(), PHP_EOL;
}
