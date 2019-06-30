<?php

$pageSlugs     = 'roadmap|sponsors|support|consulting|about|team|testimonials|hosting';
$downloadSlugs = 'linux|windows|tools|docker|stubs';

return [
    'app'           => [
        'version'         => '3.4.4',
        'timezone'        => getenv('APP_TIMEZONE'),
        'debug'           => getenv('APP_DEBUG'),
        'env'             => getenv('APP_ENV'),
        'url'             => getenv('APP_URL'),
        'name'            => getenv('APP_NAME'),
        'project'         => getenv('APP_PROJECT'),
        'description'     => getenv('APP_DESCRIPTION'),
        'keywords'        => getenv('APP_KEYWORDS'),
        'repo'            => getenv('APP_REPO'),
        'docs'            => getenv('APP_DOCS'),
        'baseUri'         => getenv('APP_BASE_URI'),
        'staticUrl'       => getenv('APP_STATIC_URL'),
        'lang'            => getenv('APP_LANG'),
        'supportEmail'    => getenv('APP_SUPPORT_EMAIL'),
    ],
    'cache'         => [
        'driver'          => getenv('CACHE_DRIVER'),
        'viewDriver'      => getenv('VIEW_CACHE_DRIVER'),
        'prefix'          => getenv('CACHE_PREFIX'),
        'lifetime'        => getenv('CACHE_LIFETIME'),
    ],
    'memcached'     => [
        'host'            => getenv('MEMCACHED_HOST'),
        'port'            => getenv('MEMCACHED_PORT'),
        'weight'          => getenv('MEMCACHED_WEIGHT'),
    ],
    'logger'        => [
        'defaultFilename' => getenv('LOGGER_DEFAULT_FILENAME'),
        'format'          => getenv('LOGGER_FORMAT'),
        'level'           => getenv('LOGGER_LEVEL'),
    ],
    'google'        => [
        'analytics'       => getenv('GOOGLE_ANALYTICS'),
    ],
    'routes'        => [
        [
            'class'   => Website\Controllers\IndexController::class,
            'methods' => [
                'get'      => [
                    '/'                        => 'redirectAction',
                    '/404'                     => 'redirectAction',
                    '/{language:[a-z]{2}}'     => 'indexAction',
                    '/{language:[a-z]{2}}/404' => 'notfoundAction',
                ],
            ],
        ],
        [
            'class'   => Website\Controllers\PagesController::class,
            'methods' => [
                'get' => [
                    "/{slug:({$pageSlugs})}"                     => 'redirectAction',
                    "/{language:[a-z]{2}}/{slug:({$pageSlugs})}" => 'pageAction',
                ],
            ],
        ],
        [
            'class'   => Website\Controllers\DownloadController::class,
            'methods' => [
                'get' => [
                    '/download'                                               => 'redirectAction',
                    "/download/{slug:({$downloadSlugs})}"                     => 'redirectAction',
                    '/{language:[a-z]{2}}/download'                           => 'pageAction',
                    "/{language:[a-z]{2}}/download/{slug:({$downloadSlugs})}" => 'pageAction',
                ],
            ],
        ],
        [
            'class'   => Website\Controllers\UtilsController::class,
            'methods' => [
                'get' => [
                    '/sitemap'      => 'sitemapAction',
                ],
            ],
        ],
    ],
    'middleware'    => [
        [
            'event' => 'before',
            'class' => Website\Middleware\EnvironmentMiddleware::class,
        ],
        [
            'event' => 'before',
            'class' => Website\Middleware\NotFoundMiddleware::class,
        ],
        [
            'event' => 'before',
            'class' => Website\Middleware\RedirectMiddleware::class,
        ],
        [
            'event' => 'before',
            'class' => Website\Middleware\AssetsMiddleware::class,
        ],
        [
            'event' => 'after',
            'class' => Website\Middleware\ViewMiddleware::class,
        ],
    ],
    'languages'     => [
        'ar' => 'Arabic',
        'bg' => 'Bulgarian',
        'ca' => 'Catalan',
        'cs' => 'Český',
        'da' => 'Danish',
        'de' => 'Deutsch',
        'el' => 'Ελληνικά',
        'en' => 'English',
        'es' => 'Spanish',
        'fr' => 'French',
        'hu' => 'Hungarian',
        'hy' => 'Armenian',
        'id' => 'Indonesian',
        'it' => 'Italian',
        'ja' => 'Japanese',
        'kk' => 'Kazakh',
        'km' => 'Khmer',
        'ko' => 'Korean',
        'lt' => 'Lietuvos',
        'lv' => 'Latvian',
        'nl' => 'Nederlands',
        'no' => 'Norwegian',
        'pl' => 'Polski',
        'pt' => 'Português',
        'ro' => 'Română',
        'ru' => 'Pусский',
        'sk' => 'Slovak',
        'sr' => 'Српски',
        'sv' => 'Svenska',
        'th' => 'ภาษาไทย',
        'tr' => 'Türkçe',
        'uk' => 'Ukranian',
        'vi' => 'Tiếng Việt',
        'zh' => '简体中文',
    ],
    'languages_map' => [
        'sv' => 'se',
        'vi' => 'vn',
        'uk' => 'ua',
        'hy' => 'am',
        'da' => 'dk',
        'kk' => 'kz',
    ],
    'doc_languages' => [
        'en',
        'es',
        'fa',
        'fr',
        'id',
        'ja',
        'pl',
        'pt',
        'ru',
        'uk',
        'zh',
    ],
    'sitemap'       => [
        'roadmap',
        'sponsors',
        'support',
        'consulting',
        'about',
        'team',
        'testimonials',
        'hosting',
        'download/linux',
        'download/windows',
        'download/tools',
        'download/docker',
        'download/stubs',
    ]
];
