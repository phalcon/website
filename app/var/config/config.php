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
        '/{language:[a-z]{2}}' => array(
            'params' => array(
                'language'   => 1,
                'controller' => 'index',
                'action'     => 'index',
            ),
            'name'   => 'index',
        ),
        '/{language:[a-z]{2}}/index' => array(
            'params' => array(
                'language'   => 1,
                'controller' => 'index',
                'action'     => 'index',
            ),
            'name'   => 'index',
        ),
        '/{language:[a-z]{2}}/{pageSlug:(models|about|team|roadmap|consulting|hosting|examples|support|api|ui|powered)}' => array(
            'params' => array(
                'language'   => 1,
                'controller' => 'pages',
                'action'     => 'page',
            ),
            'name'   => 'pages',
        ),
        '/{language:[a-z]{2}}/download' => array(
            'params' => array(
                'language'   => 1,
                'controller' => 'download'
            ),
            'name'   => 'download',
        ),
        '/{language:[a-z]{2}}/download/{type:(tools|stubs)}' => array(
            'params' => array(
                'language'   => 1,
                'controller' => 'download',
                'action'     => 'index',
            ),
            'name'   => 'download-type',
        ),
        '/{language:[a-z]{2}}/download/windows' => array(
            'params' => array(
                'language'   => 1,
                'controller' => 'download',
                'action'     => 'windows',
            ),
            'name'   => 'download-windows',
        ),
        '/{language:[a-z]{2}}/(documentation|reference)' => array(
            'params' => array(
                'language'   => 1,
                'controller' => 'documentation',
                'action'     => 'index',
            ),
            'name'   => 'documentation',
        ),
        '/{language:[a-z]{2}}/donate' => array(
            'params' => array(
                'language'   => 1,
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
