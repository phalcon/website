<?php

namespace Website;

class Constants
{
    /**
     * Services
     */
    const SRV_CACHE_DATA     = 'cacheData';
    const SRV_CONFIG         = 'config';
    const SRV_DISPATCHER     = 'dispatcher';
    const SRV_EVENTS_MANAGER = 'eventsManager';
    const SRV_LOCALE         = 'locale';
    const SRV_LOGGER         = 'logger';
    const SRV_MICRO          = 'micro';
    const SRV_REQUEST        = 'request';
    const SRV_RESPONSE       = 'response';
    const SRV_ROUTER         = 'router';
    const SRV_URL            = 'url';
    const SRV_UTILS          = 'utils';
    const SRV_VIEW           = 'viewSimple';
    const SRV_VIEW_CACHE     = 'viewCache';

    /**
     * Environment variables
     */
    const APP_DEBUG               = 'APP_DEBUG';
    const APP_ENV                 = 'APP_ENV';
    const APP_URL                 = 'APP_URL';
    const APP_NAME                = 'APP_NAME';
    const APP_PROJECT             = 'APP_PROJECT';
    const APP_DESCRIPTION         = 'APP_DESCRIPTION';
    const APP_KEYWORDS            = 'APP_KEYWORDS';
    const APP_REPO                = 'APP_REPO';
    const APP_DOCS                = 'APP_DOCS';
    const APP_BASE_URI            = 'APP_BASE_URI';
    const APP_STATIC_URL          = 'APP_STATIC_URL';
    const APP_SUPPORT_EMAIL       = 'APP_SUPPORT_EMAIL';

    const CACHE_DRIVER            = 'CACHE_DRIVER';
    const VIEW_CACHE_DRIVER       = 'VIEW_CACHE_DRIVER';
    const CACHE_PREFIX            = 'CACHE_PREFIX';
    const CACHE_LIFETIME          = 'CACHE_LIFETIME';

    const MEMCACHED_HOST          = 'MEMCACHED_HOST';
    const MEMCACHED_PORT          = 'MEMCACHED_PORT';
    const MEMCACHED_WEIGHT        = 'MEMCACHED_WEIGHT';

    const LOGGER_DEFAULT_FILENAME = 'LOGGER_DEFAULT_FILENAME';
    const LOGGER_FORMAT           = 'LOGGER_FORMAT';
    const LOGGER_LEVEL            = 'LOGGER_LEVEL';

    const GOOGLE_ANALYTICS        = 'GOOGLE_ANALYTICS';
}