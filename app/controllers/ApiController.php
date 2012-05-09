<?php

class ApiController extends ControllerBase {

	public function initialize(){
		$this->view->setTemplateAfter('main');
		Phalcon_Tag::setTitle('Framework API');
		parent::initialize();
	}

	public function indexAction(){

	}

	public function classAction($className){
		$className = $this->filter->sanitize($className, 'string');
		$this->view->setParamToView('className', $className);
	}

}
