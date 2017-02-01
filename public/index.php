<?php

use Website\Bootstrap\Main;

if (true !== defined('APP_PATH')) {
    define('APP_PATH', dirname(dirname(__FILE__)));
}

try {
    require_once APP_PATH . '/app/library/Bootstrap/AbstractBootstrap.php';
    require_once APP_PATH . '/app/library/Bootstrap/Main.php';

    /**
     * We don't want a global scope variable for this
     */
    (new Main())->run();

} catch (\Exception $e) {
    echo $e->getMessage() . PHP_EOL . $e->getTraceAsString();
}
