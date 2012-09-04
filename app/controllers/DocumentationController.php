<?php

class DocumentationController extends ControllerBase
{
    public function initialize()
    {
        $this->view->setTemplateAfter('main');
        Phalcon\Tag::setTitle('Documentation');
        parent::initialize();
    }

    public function indexAction()
    {

    }

    public function redirectAction($name=null){
        $name = $this->dispatcher->getParam("name");
        $name = $this->filter->sanitize($name, "string");
        if($name){
            $this->response->redirect("http://docs.phalconphp.com/en/latest/reference/".$name.".html", true);
        } else {
            $this->response->redirect("http://docs.phalconphp.com/", true);
        }
    }

}
