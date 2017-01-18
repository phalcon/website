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
        'debug'          => true,
        'cdn'            => 'https://static.phalconphp.com/www/',
        'googleAnalytics' => 'UA-90300500-2',
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
        '/{pageSlug:(about|team|roadmap|consulting|hosting|testimonials|support)}' => array(
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
        '/{language:[a-z]{2}}/{pageSlug:(about|team|roadmap|consulting|hosting|testimonials|support)}' => array(
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
        'vi' => 'Tiếng Việt',
        'zh' => '简体中文',
    );

    /**
     * Some ISO 639-1 language codes needs to be mapped to a
     * suitable ISO 3166-2 country code in order for language
     * visualisation by flag to function, e.g. without this
     * mapping the Swedish language will be visualised by the
     * flag of El Salvador
     */
    $countryCodes = array(
        'sv' => 'se',
    );

    /**
     * These are all languages our documentation is available in.
     */
    $documentationLanguages = array(
        'en',
        'es',
        'fr',
        'ja',
        'pl',
        'pt',
        'ru'
    );
    /**
     * These are all the pages of the site. This is used to generate the
     * sitemap.xml
     */
    $pages = array(
        '',
        'about',
        'team',
        'testimonials',
        'download',
        'download/windows',
        'download/tools',
        'download/vagrant',
        'download/stubs',
        'roadmap',
        'consulting',
        'hosting',
        'support',
        'donate'
    );
return array(
    'application'  => $application,
    'database'     => $database,
    'cache'        => $cache,
    'routes'       => $routes,
    'languages'    => $languages,
    'countryCodes' => $countryCodes,
    'doclanguages' => $documentationLanguages,
    'pages'        => $pages,
);
