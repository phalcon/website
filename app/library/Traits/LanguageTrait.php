<?php

namespace Website\Traits;

/**
 * Website\Traits\LanguageTrait
 *
 * @property \Phalcon\Mvc\Dispatcher|\Phalcon\Mvc\DispatcherInterface $dispatcher
 * @property \Phalcon\Mvc\Router|\Phalcon\Mvc\RouterInterface         $router
 * @property \Phalcon\Http\Request|\Phalcon\Http\RequestInterface     $request
 * @property \Phalcon\Config                                          $config
 *
 * @package Website\Traits
 */
trait LanguageTrait
{
    /**
     * Gets current language.
     *
     * @param  string $default
     * @return string
     */
    protected function getLang($default = "en")
    {
        $params = $this->router->getParams();

        if (!empty($params['language'])) {
            $lang = $params['language'];
        } else {
            $lang = $this->getUriParameter('language');
        }

        if (!$lang && $query = $this->request->getQuery('_url')) {
            $lang = mb_strtolower(substr(ltrim($query, '/'), 0, 2));
        }

        $languagesAvailable = array_keys($this->config->get('languages')->toArray());

        if (!$lang || !in_array($lang, $languagesAvailable, true)) {
            foreach ($this->request->getLanguages() as $httpLang) {
                $httpLang = mb_strtolower(substr($httpLang['language'], 0, 2));
                if (in_array($httpLang, $languagesAvailable)) {
                    return $httpLang;
                }
            }

            return $default;
        }

        return $lang;
    }
}
