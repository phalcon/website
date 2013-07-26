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
        $this->view->setVar('docs_root', 'http://docs.phalconphp.com/en/latest/');
        $this->view->setVar('cdn_url', $cdn_url);
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

}
