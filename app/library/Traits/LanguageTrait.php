<?php

namespace Website\Traits;

use Phalcon\Mvc\Micro;

/**
 * Website\Traits\LanguageTrait
 *
 * @package Website\Traits
 */
trait LanguageTrait
{
    /**
     * Language auto detect
     *
     * @param Micro  $application
     * @param string $default
     *
     * @return string
     */
    protected function getLang(Micro $application, $default = 'en')
    {
        $params = $application->router->getParams();
        $lang   = $application->utils->fetch($params, 'language', '');

        if (true === empty($lang) && true === $application->request->hasQuery('_url')) {
            if ($query = $application->request->getQuery('_url')) {
                $lang = mb_strtolower(explode('/', ltrim($query, '/'))[0]);
            }
        }

        $languages = $application->config->languages;
        if (true === empty($lang) || false === $languages->offsetExists($lang)) {
            foreach ($application->request->getLanguages() as $httpLang) {
                $httpLang = mb_strtolower(substr($httpLang['language'], 0, 2));
                if (true === $languages->offsetExists($httpLang)) {
                    return $httpLang;
                }
            }

            return $default;
        }

        return $lang;
    }
}
