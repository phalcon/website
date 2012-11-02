<?php

error_reporting(E_ALL);

if (!defined('ROOT_PATH')) {
    define('ROOT_PATH', dirname(dirname(__FILE__)));
}

// Using require once because I want to get the specific
// bootloader class here. The loader will be initialized
// in my bootstrap class
require_once ROOT_PATH . '/app/library/Ph/Bootstrap.php';
require_once ROOT_PATH . '/app/library/Ph/Error.php';

$di  = new \Phalcon\DI\FactoryDefault();
$app = new \Ph\Bootstrap($di);

echo $app->run(array());

