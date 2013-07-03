<?php


class DocumentationController extends \ControllerBase
{

    public function initialize()
    {

        $this->response->redirect('http://docs.phalconphp.com/en/latest/index.html',true,302);

    }

    public function indexAction()
    {

    }

    public function showAction($pageSlug)
    {

        $pageTitle = \Phalcon\Text::camelize($pageSlug);
        \Phalcon\Tag::setTitle($pageTitle);

        $this->view->pick('documentation/'.$pageSlug);
    }

}

