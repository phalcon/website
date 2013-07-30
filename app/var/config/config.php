<?php

    $database = array(
        'adapter'     => 'Mysql',
        'host'        => 'localhost',
        'username'    => 'root',
        'password'    => '',
        'dbname'      => 'test',
    );

    $application = array(
        'controllersDir' => ROOT_PATH . '/app/controllers/',
        'modelsDir'      => ROOT_PATH . '/app/models/',
        'viewsDir'       => ROOT_PATH . '/app/views/',
        'pluginsDir'     => ROOT_PATH . '/app/plugins/',
        'libraryDir'     => ROOT_PATH . '/app/library/',
        'voltDir'        => ROOT_PATH . '/app/var/volt/',
        'baseUri'        => '/',
        'debug'          => '1',
    );

    $cache = array(
        'lifetime' => 86400 ,
        'cacheDir' => ROOT_PATH . '/app/var/cache/' ,
    );

    $routes = array(
        '/' => array(
            'params' => array(
                'controller' => 'index',
                'action'     => 'index',
            ),
            'name'   => 'index',
        ),
        '/index' => array(
            'params' => array(
                'controller' => 'index',
                'action'     => 'index',
            ),
            'name'   => 'index',
        ),
        '/{pageSlug:(models|about|team|roadmap|consulting|hosting|examples|support|api|ui|powered)}' => array(
            'params' => array(
                'controller' => 'pages',
                'action'     => 'page',
            ),
            'name'   => 'pages',
        ),
        '/download' => array(
            'params' => array(
                'controller' => 'download'
            ),
            'name'   => 'download',
        ),
        '/download/{type:(tools|stubs)}' => array(
            'params' => array(
                'controller' => 'download',
                'action'     => 'index',
            ),
            'name'   => 'download-type',
        ),
        '/download/windows' => array(
            'params' => array(
                'controller' => 'download',
                'action'     => 'windows',
            ),
            'name'   => 'download-windows',
        ),
        '/(documentation|reference)' => array(
            'params' => array(
                'controller' => 'documentation',
                'action'     => 'index',
            ),
            'name'   => 'documentation',
        ),
        '/donate' => array(
            'params' => array(
                'controller' => 'index',
                'action'     => 'donate',
            ),
            'name'   => 'donate',
        ),
    );


    return array(
        'application' => $application,
        'database'    => $database,
        'cache'       => $cache,
        'routes'      => $routes,
    );
