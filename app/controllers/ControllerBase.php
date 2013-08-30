<?php

use Phalcon\Mvc\Controller,
    Phalcon\Mvc\Dispatcher;

class ControllerBase extends Controller
{
    public function initialize()
    {
        /**
         * Dev environment or production?
         */
        $cdn_url = ('1' == $this->config->application->debug) ? '/' : 'http://static.phalconphp.com/';

        /**
         * Docs path and CDN url
         */
        $lang = $this->getUriParameter('language');

        $lang = ($lang) ? $lang : 'en';

        /**
         * Find the languages available
         */
        $languages           = $this->config->languages;
        $languages_available = '';
        $selected            = '';
        $url                 = $this->request->getScheme() . '://'
                             . $this->request->getHttpHost();
        $uri                 = $this->router->getRewriteUri();
        foreach ($languages as $key => $value) {
            $selected = ($key == $lang) ? " selected='selected'" : '';
            $href     = $url .  str_replace("/{$lang}", "/{$key}", $uri);
            $languages_available .= "<option value='{$href}'{$selected}>{$value}</option>";
        }

        $this->view->setVar('language', $lang);
        $this->view->setVar('languages_available', $languages_available);
        $this->view->setVar('docs_root', 'http://docs.phalconphp.com/' . $lang . '/latest/');
        $this->view->setVar('cdn_url', '/phalconphp/');
    }

    /**
     * @param Dispatcher $dispatcher
     *
     * @return bool
     */
    public function beforeExecuteRoute(Dispatcher $dispatcher)
    {
        if ('1' != $this->config->application->debug) {
            $key = preg_replace(
                '/[^a-zA-Z0-9\_]/',
                '',
                $dispatcher->getControllerName() . '-' . $dispatcher->getActionName()
            );
            $key .= implode('-' , $dispatcher->getParams());

            $this->view->cache(array('key' => $key));

            if ($this->view->getCache()->exists($key)) {
                return false;
            }
        }

        return true;
    }

    protected function getUriParameter($parameter)
    {
        return $this->dispatcher->getParam($parameter);
    }

}
