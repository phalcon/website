<?php

error_reporting(E_ALL);

try {

    require '../app/controllers/ControllerBase.php';

    $config = new Phalcon_Config(array(
        'database' => array(
            'adapter' => 'Mysql',
            'host' => 'localhost',
            'username' => 'user',
            'password' => 'password',
            'name' => 'site'
        ),
        'phalcon' => array(
            'controllersDir' => '../app/controllers/',
            'modelsDir' => '../app/models/',
            'viewsDir' => '../app/views/'
        )
    ));

    $front = Phalcon_Controller_Front::getInstance();
    $front->setConfig($config);
    echo $front->dispatchLoop()->getContent();

} catch (Phalcon_Exception $e) {
    echo 'PhalconException: '.$e->getMessage(), PHP_EOL;
}
