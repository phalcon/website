<?php

use Website\Constants\Environment;

$pageSlugs     = 'roadmap|sponsors|support|consulting|about|team|testimonials|hosting';
$downloadSlugs = 'linux|windows|tools|docker|vagrant|stubs';

return [
    'app'           => [
        'version'         => '3.0.3',
        'timezone'        => getenv(Environment::APP_TIMEZONE),
        'debug'           => getenv(Environment::APP_DEBUG),
        'env'             => getenv(Environment::APP_ENV),
        'url'             => getenv(Environment::APP_URL),
        'name'            => getenv(Environment::APP_NAME),
        'project'         => getenv(Environment::APP_PROJECT),
        'description'     => getenv(Environment::APP_DESCRIPTION),
        'keywords'        => getenv(Environment::APP_KEYWORDS),
        'repo'            => getenv(Environment::APP_REPO),
        'docs'            => getenv(Environment::APP_DOCS),
        'baseUri'         => getenv(Environment::APP_BASE_URI),
        'staticUrl'       => getenv(Environment::APP_STATIC_URL),
        'lang'            => getenv(Environment::APP_LANG),
        'supportEmail'    => getenv(Environment::APP_SUPPORT_EMAIL),
    ],
    'cache'         => [
        'driver'          => getenv(Environment::CACHE_DRIVER),
        'viewDriver'      => getenv(Environment::VIEW_CACHE_DRIVER),
        'prefix'          => getenv(Environment::CACHE_PREFIX),
        'lifetime'        => getenv(Environment::CACHE_LIFETIME),
    ],
    'memcached'     => [
        'host'            => getenv(Environment::MEMCACHED_HOST),
        'port'            => getenv(Environment::MEMCACHED_PORT),
        'weight'          => getenv(Environment::MEMCACHED_WEIGHT),
    ],
    'logger'        => [
        'defaultFilename' => getenv(Environment::LOGGER_DEFAULT_FILENAME),
        'format'          => getenv(Environment::LOGGER_FORMAT),
        'level'           => getenv(Environment::LOGGER_LEVEL),
    ],
    'google'        => [
        'analytics'       => getenv(Environment::GOOGLE_ANALYTICS),
    ],
    'routes'        => [
        [
            'class'   => Website\Controllers\IndexController::class,
            'methods' => [
                'get'      => [
                    '/'                      => 'redirectAction',
                    '/{language:[a-z]{2}}'   => 'indexAction',
                ],
            ],
        ],
        [
            'class'   => Website\Controllers\PagesController::class,
            'methods' => [
                'get' => [
                    '/{slug:({$pageSlugs})}'                     => 'redirectAction',
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
                    '/contributors' => 'contributorsAction',
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
        'bg' => 'Български',
        'ca' => 'Catalan',
        'cs' => 'Czech',
        'cz' => 'Český',
        'da' => 'Danish',
        'de' => 'Deutsch',
        'el' => 'Ελληνικά',
        'en' => 'English',
        'es' => 'Español',
        'fa' => 'فارسی',
        'fr' => 'Français',
        'gl' => 'Galician',
        'he' => 'Hebrew',
        'hi' => 'Hindi',
        'hu' => 'Magyar',
        'id' => 'Indonesian',
        'it' => 'Italiano',
        'ja' => '日本語',
        'kk' => 'Kazakh',
        'km' => 'Khmer',
        'ko' => '한국어',
        'lt' => 'Lietuvos',
        'lv' => 'Latvian',
        'mk' => 'Македонски',
        'nl' => 'Nederlands',
        'no' => 'Norwegian',
        'pl' => 'Polski',
        'pt' => 'Português',
        'ro' => 'Română',
        'ru' => 'Pусский',
        'si' => 'Sinhala',
        'sr' => 'Српски',
        'sv' => 'Svenska',
        'th' => 'ภาษาไทย',
        'tr' => 'Türkçe',
        'vi' => 'Tiếng Việt',
        'zh' => '简体中文',
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
];
