<?php

use \Phalcon\DI\FactoryDefault as PhDi;

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
    $di  = new PhDi();
    $app = new Bootstrap($di);

    echo $app->run(array());

} catch (\Phalcon\Exception $e) {
	echo $e->getMessage();
} catch (PDOException $e){
	echo $e->getMessage();
}
