<?php

/**
 * Controller.php
 * \Ph\Controller
 *
 * The base controller and its actions
 *
 * @author Nikos Dimopoulos <nikos@niden.net>
 * @since 2012-11-01
 * @category Controllers
 */

namespace Ph;

use \Phalcon\Tag as Tag;

class Controller extends \Phalcon\Mvc\Controller
{

    /**
	 * Initializes the controller
	 */
    public function initialize()
    {
        Tag::prependTitle('Phalcon PHP | ');
        $this->view->setVar('config', $this->config);
    }

    public function beforeExecuteRoute($dispatcher)
    {

        $key = preg_replace('/[^a-zA-Z0-9\_]/', '', $dispatcher->getControllerName() . '-' . $dispatcher->getActionName());

    	$this->view->cache(array('key' => $key));

    	if ($this->view->getCache()->exists($key)) {
    		return false;
    	}

        return true;
    }

}