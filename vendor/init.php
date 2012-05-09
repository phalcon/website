<?php

require '../vendor/otro.php';

function phalcon_autoload($className){
	$path = str_replace('_', '/', $className);
	$libs = '../Library/'.$path.'.php';
	if(is_file($libs)){
		require_once $libs;
	}
}

spl_autoload_register('phalcon_autoload');
