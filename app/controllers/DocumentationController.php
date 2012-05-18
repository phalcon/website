<?php

require "../helpers/hyperlight/hyperlight.php";
require "../vendor/tags.php";

class DocumentationController extends ControllerBase {

	public function initialize(){
		$this->view->setTemplateAfter('main');
		Phalcon_Tag::setTitle('Documentation');
		parent::initialize();
	}

	/*public function beforeDispatch($controllerName, $actionName){
		$viewPath = '../app/views/documentation/'.$actionName.'.phtml';
		$cachePath = '../app/cache/docs-'.$actionName;
		if(filemtime($viewPath)<filemtime($cachePath)){
			$this->view->setRenderLevel(Phalcon_View::LEVEL_LAYOUT);
		}
	}*/

	public function indexAction(){

	}

	public function tocAction(){

	}

	public function motivationAction(){

	}

	public function installAction(){

	}

	public function xamppAction(){

	}

	public function wampAction(){

	}

	public function tutorialAction(){

	}

	public function mvcAction(){

	}

	public function controllersAction(){

	}

	public function modelsAction(){

	}

	public function viewsAction(){

	}

	public function filterAction(){

	}

	public function configAction(){

	}

	public function benchmarkAction(){

	}

	public function paginationAction(){

	}

	public function namespacesAction(){

	}

	public function tagsAction(){

	}

	public function toolsAction(){

	}

	public function wintoolsAction(){

	}

	public function mactoolsAction(){

	}

	public function linuxtoolsAction(){

	}

	public function cacheAction(){

	}

	public function aclAction(){

	}

	public function intlAction(){

	}

	public function dbAction(){

	}

	public function loggingAction(){

	}

	public function loaderAction(){

	}

	public function migrationsAction(){

	}

	public function settingsAction(){

	}

	public function testAction(){
		//$this->view->setParamToView('errors' , array('value1' => array('value1-1' => 'test'), 'value2' => 'test'));
	}

}
