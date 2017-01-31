<?php

return [
    'routes'        => [
        [
            'class'   => 'Website\Controllers\IndexController',
            'prefix'  => '',
            'methods' => [
                'get' => [
                    '/'                                 => 'indexRedirectAction',
                    '/{language:[a-z]{2}}'              => 'indexAction',
                ],
            ],
        ],
        [
            'class'   => 'Website\Controllers\PagesController',
            'prefix'  => '',
            'methods' => [
                'get' => [
                    '/{language:[a-z]{2}}/{slug:(about|team|roadmap|testimonials)}' => 'pageAction',
                ],
            ],
        ],
        [
            'class'   => 'Website\Controllers\DownloadController',
            'prefix'  => 'download',
            'methods' => [
                'get' => [
                    '/'                            => 'indexRedirectAction',
                    '/{language:[a-z]{2}}'         => 'indexAction',
                    '/{language:[a-z]{2}}/windows' => 'windowsAction',
                    '/{language:[a-z]{2}}/tools'   => 'toolsAction',
                    '/{language:[a-z]{2}}/vagrant' => 'vagrantAction',
                    '/{language:[a-z]{2}}/stubs'   => 'stubsAction',
                ],
            ],
        ],
        [
            'class'   => 'Website\Controllers\UtilsController',
            'prefix'  => '',
            'methods' => [
                'get' => [
                    '/contributors' => 'contributorsAction',
                    '/sitemap'      => 'sitemapAction',
                ],
            ],
        ],
    ],
    'middleware'    => [
        'Website\Middleware\NotFoundMiddleware',
    ],
    'languages'     => [
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
    ],
    'doc_languages' => [
        'en',
        'es',
        'fr',
        'ja',
        'pl',
        'pt',
        'ru',
    ],
];

/**
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
 */
