<?php

use Phalcon\Mvc\Controller,
    Phalcon\Mvc\Dispatcher;

class ControllerBase extends Controller
{

    /**
     * @param Dispatcher $dispatcher
     *
     * @return bool
     */
    public function beforeExecuteRoute(Dispatcher $dispatcher)
    {

        $key = preg_replace('/[^a-zA-Z0-9\_]/' , '' , $dispatcher->getControllerName() . '-' . $dispatcher->getActionName());
        $key .= implode('-' , $dispatcher->getParams());

        $this->view->cache(array('key' => $key));

        if ($this->view->getCache()->exists($key)) {
            return false;
        }

        return true;
    }

}
