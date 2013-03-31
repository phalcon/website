<?php

class DocumentationController extends \Ph\Controller
{
    public function initialize()
    {
        \Phalcon\Tag::setTitle('Documentation');
        parent::initialize();
    }

    public function indexAction()
    {

    }

    public function redirectAction($name = null)
    {
        $name = $this->dispatcher->getParam("name");
        $name = $this->filter->sanitize($name, "string");
        if ($name){
            $this->response->redirect("http://docs.phalconphp.com/en/latest/reference/" . $name . ".html", true, 302);
        } else {
            $this->response->redirect("http://docs.phalconphp.com/", true);
        }
    }

}
