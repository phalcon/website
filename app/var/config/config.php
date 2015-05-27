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
        'cdn'            => 'http://static.phalconphp.com/'
    ];

    $cache = [
        'lifetime' => 86400 ,
        'cacheDir' => ROOT_PATH . '/app/var/cache/' ,
    ];

    $routes = [

        // Index (Redirect)
        '/' => [
            'params' => [
                'controller' => 'index',
                'action'     => 'redirectIndex',
            ],
            'name'   => 'index-redirect',
        ],
        '/index' => [
            'params' => [
                'controller' => 'index',
                'action'     => 'redirectIndex',
            ],
            'name'   => 'index-redirect',
        ],

        // Pages
        '/{pageSlug:(models|about|team|roadmap|hosting|examples|support|api|ui|powered)}' => [
            'params' => [
                'controller' => 'index',
                'action'     => 'redirectPages',
            ],
            'name'   => 'pages-redirect',
        ],

        '/contributors' => [
            'params' => [
                'controller' => 'utils',
                'action'     => 'contributors',
            ],
            'name'   => 'contributors',
        ],

        '/sitemap' => [
            'params' => [
                'controller' => 'utils',
                'action'     => 'sitemap',
            ],
            'name'   => 'index-sitemap',
        ],

        // Download
        '/download' => [
            'params' => [
                'controller' => 'index',
                'action'     => 'redirectDownload'
            ],
            'name'   => 'download-redirect',
        ],
        '/download/{type:(tools|stubs)}' => [
            'params' => [
                'controller' => 'index',
                'action'     => 'redirectDownloadType',
            ],
            'name'   => 'download-type-redirect',
        ],
        '/download/windows' => [
            'params' => [
                'controller' => 'index',
                'action'     => 'redirectDownloadWindows',
            ],
            'name'   => 'download-windows-redirect',
        ],
        '/download/vagrant' => [
            'params' => [
                'controller' => 'index',
                'action'     => 'redirectDownloadVagrant',
            ],
            'name'   => 'download-vagrant-redirect',
        ],

        // Documentation
        '/(documentation|reference)' => [
            'params' => [
                'controller' => 'documentation',
                'action'     => 'index',
            ],
            'name'   => 'documentation',
        ],

        // Donate
        '/donate' => [
            'params' => [
                'controller' => 'index',
                'action'     => 'redirectDonate',
            ],
            'name'   => 'donate-redirect',
        ],


        // Index
        '/{language:[a-z]{2}}' => [
            'params' => [
                'controller' => 'index',
                'action'     => 'index',
            ],
            'name'   => 'index',
        ],
        '/{language:[a-z]{2}}/index' => [
            'params' => [
                'controller' => 'index',
                'action'     => 'index',
            ],
            'name'   => 'index',
        ],

        // Pages
        '/{language:[a-z]{2}}/{pageSlug:(models|about|team|roadmap|consulting|hosting|testimonials|examples|support|api|ui|powered)}' => [
            'params' => [
                'controller' => 'pages',
                'action'     => 'page',
            ],
            'name'   => 'pages',
        ],

        // Download
        '/{language:[a-z]{2}}/download' => [
            'params' => [
                'controller' => 'download'
            ],
            'name'   => 'download',
        ],
        '/{language:[a-z]{2}}/download/{type:(tools|stubs)}' => [
            'params' => [
                'controller' => 'download',
                'action'     => 'index',
            ],
            'name'   => 'download-type',
        ],
        '/{language:[a-z]{2}}/download/windows' => [
            'params' => [
                'controller' => 'download',
                'action'     => 'windows',
            ],
            'name'   => 'download-windows',
        ],
        '/{language:[a-z]{2}}/download/vagrant' => [
            'params' => [
                'controller' => 'download',
                'action'     => 'vagrant',
            ],
            'name'   => 'download-vagrant',
        ],

        // Documentation
        '/{language:[a-z]{2}}/(documentation|reference)' => [
            'params' => [
                'controller' => 'documentation',
                'action'     => 'index',
            ],
            'name'   => 'documentation',
        ],

        // Donate
        '/{language:[a-z]{2}}/donate' => [
            'params' => [
                'controller' => 'index',
                'action'     => 'donate',
            ],
            'name'   => 'donate',
        ],

        //Humans
        '/humans.txt' => [
            'params' => [
                'controller' => 'utils',
                'action'     => 'humans',
            ],
            'name'   => 'humans',
        ]
    ];

    /**
     * These languages appear at the top select box
     * allowing the user to easily change the language of the site
     */
    $languages = [
        'bg' => 'български',
        'cz' => 'Český',
        'de' => 'Deutsch',
        'el' => 'Ελληνικά',
        'en' => 'English',
        'es' => 'Español',
        'fa' => 'فارسی',
        'fr' => 'Français',
        'hu' => 'Magyar',
        'ja' => '日本語',
        'it' => 'Italiano',
        'ko' => '한국어',
        'lt' => 'Lietuvos',
        'mk' => 'македонски',
        'nl' => 'Nederlands',
        'pl' => 'Polski',
        'pt' => 'Português',
        'ro' => 'Română',
        'ru' => 'Pусский',
        'sr' => 'српски',
        'sv' => 'Svenska',
        'th' => 'ภาษาไทย',
        'tr' => 'Türkçe',
        'vi' => 'Việt',
        'zh' => '简体中文',
    ];

    /**
     * These are all the pages of the site. This is used to generate the
     * sitemap.xml
     */
    $pages = [
        '',
        'download',
        'support',
        'donate',
        'hosting',
        'team',
        'about',
        'roadmap',
        'windows',
        'tools',
        'stubs',
    ];

return [
    'application' => $application,
    'database'    => $database,
    'cache'       => $cache,
    'routes'      => $routes,
    'languages'   => $languages,
    'pages'       => $pages,
];
