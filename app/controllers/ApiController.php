<?php

require "../vendor/tags.php";

class ApiController extends ControllerBase
{
    public function initialize()
    {
        $this->view->setTemplateAfter('main');
        Phalcon_Tag::setTitle('Framework API');
        parent::initialize();

        require '../refactor.php';
        $this->view->setVar("refactor", $refactor);
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
