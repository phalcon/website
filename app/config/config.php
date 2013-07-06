<?php

return new \Phalcon\Config(array(
	'database' => array(
		'adapter'     => 'Mysql',
		'host'        => 'localhost',
		'username'    => 'root',
		'password'    => '',
		'dbname'      => 'test',
    ),
	'application' => array(
		'controllersDir' => ROOT_PATH . '/app/controllers/',
		'modelsDir'      => ROOT_PATH . '/app/models/',
		'viewsDir'       => ROOT_PATH . '/app/views/',
		'pluginsDir'     => ROOT_PATH . '/app/plugins/',
		'libraryDir'     => ROOT_PATH . '/app/library/',
		'baseUri'        => '/',
    ),
    'cache' => array(
        'lifetime' => 86400 ,
        'cacheDir' => ROOT_PATH . '/app/cache/' ,
    )
));
