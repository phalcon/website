<?php

require '../vendor/Website/Tag.php';

class ApiController extends ControllerBase
{
    public function initialize()
    {
        $this->view->setTemplateAfter('main');
        Phalcon_Tag::setTitle('Framework API');
        parent::initialize();
    }

    public function beforeDispatch($controllerName, $actionName)
    {

    	$params = $this->dispatcher->getParams();
    	if(isset($params[0])){
    		$className = $this->filter->sanitize($params[0], 'string');
    		if($className){
    			$this->view->cache(array('key' => $className.'-cache'));
	    		if(file_exists('../app/cache/'.$className.'-cache')){
					return;
				}
    		}
    	}

		require '../vendor/Refactor/data.php';
		$this->view->setVar('refactor', $refactor);
    }

    public function indexAction()
    {
    }

    public function classAction($className)
    {
        $className = $this->filter->sanitize($className, 'string');
        $this->view->setParamToView('className', $className);
    }
}
