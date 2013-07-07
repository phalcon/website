<?php

class DocumentationController extends \ControllerBase
{

    public function indexAction()
    {
        return $this->response->redirect('http://docs.phalconphp.com/en/latest/index.html', true, 302)
    }

    public function showAction($pageSlug)
    {
        return $this->response->redirect('http://docs.phalconphp.com/en/latest/index.html', true, 302);

        $pageTitle = \Phalcon\Text::camelize($pageSlug);
        $this->tag->setTitle($pageTitle);

        $this->view->pick('documentation/' . $pageSlug);
    }

}

