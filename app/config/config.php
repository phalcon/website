<?php

return new \Phalcon\Config([
	'database' => [
		'adapter'     => 'Mysql',
		'host'        => 'localhost',
		'username'    => 'root',
		'password'    => '',
		'dbname'      => 'test',
	],
	'application' => [
		'controllersDir' => ROOT_PATH . '/app/controllers/',
		'modelsDir'      => ROOT_PATH . '/app/models/',
		'viewsDir'       => ROOT_PATH . '/app/views/',
		'pluginsDir'     => ROOT_PATH . '/app/plugins/',
		'libraryDir'     => ROOT_PATH . '/app/library/',
		'baseUri'        => '/',
	],
    'cache' => [
        'lifetime' => 86400 ,
        'cacheDir' => ROOT_PATH . '/app/cache/' ,
    ]
]);
