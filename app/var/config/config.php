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
        'debug'          => '0',
    );

    $cache = array(
        'lifetime' => 86400 ,
        'cacheDir' => ROOT_PATH . '/app/var/cache/' ,
    );

    $routes = array(

        // Index (Redirect)
        '/' => array(
            'params' => array(
                'controller' => 'index',
                'action'     => 'redirectIndex',
            ),
            'name'   => 'index-redirect',
        ),
        '/index' => array(
            'params' => array(
                'controller' => 'index',
                'action'     => 'redirectIndex',
            ),
            'name'   => 'index-redirect',
        ),

        // Pages
        '/{pageSlug:(models|about|team|roadmap|hosting|examples|support|api|ui|powered)}' => array(
            'params' => array(
                'controller' => 'index',
                'action'     => 'redirectPages',
            ),
            'name'   => 'pages-redirect',
        ),

        '/contributors' => array(
            'params' => array(
                'controller' => 'utils',
                'action'     => 'contributors',
            ),
            'name'   => 'contributors',
        ),

        '/sitemap' => array(
            'params' => array(
                'controller' => 'utils',
                'action'     => 'sitemap',
            ),
            'name'   => 'index-sitemap',
        ),

        // Download
        '/download' => array(
            'params' => array(
                'controller' => 'index',
                'action'     => 'redirectDownload'
            ),
            'name'   => 'download-redirect',
        ),
        '/download/{type:(tools|stubs)}' => array(
            'params' => array(
                'controller' => 'index',
                'action'     => 'redirectDownloadType',
            ),
            'name'   => 'download-type-redirect',
        ),
        '/download/windows' => array(
            'params' => array(
                'controller' => 'index',
                'action'     => 'redirectDownloadWindows',
            ),
            'name'   => 'download-windows-redirect',
        ),
        '/download/vagrant' => array(
            'params' => array(
                'controller' => 'index',
                'action'     => 'redirectDownloadVagrant',
            ),
            'name'   => 'download-vagrant-redirect',
        ),

        // Documentation
        '/(documentation|reference)' => array(
            'params' => array(
                'controller' => 'documentation',
                'action'     => 'index',
            ),
            'name'   => 'documentation',
        ),

        // Donate
        '/donate' => array(
            'params' => array(
                'controller' => 'index',
                'action'     => 'redirectDonate',
            ),
            'name'   => 'donate-redirect',
        ),


        // Index
        '/{language:[a-z]{2}}' => array(
            'params' => array(
                'controller' => 'index',
                'action'     => 'index',
            ),
            'name'   => 'index',
        ),
        '/{language:[a-z]{2}}/index' => array(
            'params' => array(
                'controller' => 'index',
                'action'     => 'index',
            ),
            'name'   => 'index',
        ),

        // Pages
        '/{language:[a-z]{2}}/{pageSlug:(models|about|team|roadmap|consulting|hosting|testimonials|examples|support|api|ui|powered)}' => array(
            'params' => array(
                'controller' => 'pages',
                'action'     => 'page',
            ),
            'name'   => 'pages',
        ),

        // Download
        '/{language:[a-z]{2}}/download' => array(
            'params' => array(
                'controller' => 'download'
            ),
            'name'   => 'download',
        ),
        '/{language:[a-z]{2}}/download/{type:(tools|stubs)}' => array(
            'params' => array(
                'controller' => 'download',
                'action'     => 'index',
            ),
            'name'   => 'download-type',
        ),
        '/{language:[a-z]{2}}/download/windows' => array(
            'params' => array(
                'controller' => 'download',
                'action'     => 'windows',
            ),
            'name'   => 'download-windows',
        ),
        '/{language:[a-z]{2}}/download/vagrant' => array(
            'params' => array(
                'controller' => 'download',
                'action'     => 'vagrant',
            ),
            'name'   => 'download-vagrant',
        ),

        // Documentation
        '/{language:[a-z]{2}}/(documentation|reference)' => array(
            'params' => array(
                'controller' => 'documentation',
                'action'     => 'index',
            ),
            'name'   => 'documentation',
        ),

        // Donate
        '/{language:[a-z]{2}}/donate' => array(
            'params' => array(
                'controller' => 'index',
                'action'     => 'donate',
            ),
            'name'   => 'donate',
        ),

        //Humans
        '/humans.txt' => array(
            'params' => array(
                'controller' => 'utils',
                'action'     => 'humans',
            ),
            'name'   => 'humans',
        )
    );

    /**
     * These languages appear at the top select box
     * allowing the user to easily change the language of the site
     */
    $languages = array(
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
    );

    /**
     * These are all the pages of the site. This is used to generate the
     * sitemap.xml
     */
    $pages = array(
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
    );

return array(
    'application' => $application,
    'database'    => $database,
    'cache'       => $cache,
    'routes'      => $routes,
    'languages'   => $languages,
    'pages'       => $pages,
);
