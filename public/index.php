<?php

error_reporting(E_ALL);
date_default_timezone_set('US/Eastern');

if (!defined('ROOT_PATH')) {
    define('ROOT_PATH', dirname(dirname(__FILE__)));
}

try {
    include ROOT_PATH . "/app/var/bootstrap.php";

    /**
     * Handle the request
     */
    $app = new Bootstrap(new \Phalcon\DI\FactoryDefault());
    echo $app->run(array());
} catch (\Exception $e) {
    echo $e->getMessage();
}
