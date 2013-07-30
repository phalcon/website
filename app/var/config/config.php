<?php

    $database = [
        'adapter'     => 'Mysql',
        'host'        => 'localhost',
        'username'    => 'root',
        'password'    => '',
        'dbname'      => 'test',
    ];

    $application = [
        'controllersDir' => ROOT_PATH . '/app/controllers/',
        'modelsDir'      => ROOT_PATH . '/app/models/',
        'viewsDir'       => ROOT_PATH . '/app/views/',
        'pluginsDir'     => ROOT_PATH . '/app/plugins/',
        'libraryDir'     => ROOT_PATH . '/app/library/',
        'voltDir'        => ROOT_PATH . '/app/var/volt/',
        'baseUri'        => '/',
        'debug'          => '1',
    ];

    $cache = [
        'lifetime' => 86400 ,
        'cacheDir' => ROOT_PATH . '/app/var/cache/' ,
    ];

    $routes = [
        '/' => [
            'params' => [
                'controller' => 'index',
                'action'     => 'index',
            ],
            'name'   => 'index',
        ],
        '/index' => [
            'params' => [
                'controller' => 'index',
                'action'     => 'index',
            ],
            'name'   => 'index',
        ],
        '/{pageSlug:(models|about|team|roadmap|consulting|hosting|examples|support|api|ui|powered)}' => [
            'params' => [
                'controller' => 'pages',
                'action'     => 'page',
            ],
            'name'   => 'pages',
        ],
        '/download' => [
            'params' => [
                'controller' => 'download'
            ],
            'name'   => 'download',
        ],
        '/download/{type:(tools|stubs)}' => [
            'params' => [
                'controller' => 'download',
                'action'     => 'index',
            ],
            'name'   => 'download-type',
        ],
        '/download/windows' => [
            'params' => [
                'controller' => 'download',
                'action'     => 'windows',
            ],
            'name'   => 'download-windows',
        ],
        '/(documentation|reference)' => [
            'params' => [
                'controller' => 'documentation',
                'action'     => 'index',
            ],
            'name'   => 'documentation',
        ],
        '/donate' => [
            'params' => [
                'controller' => 'index',
                'action'     => 'donate',
            ],
            'name'   => 'donate',
        ],
    ];


    return [
        'application' => $application,
        'database'    => $database,
        'cache'       => $cache,
        'routes'      => $routes,
    ];
