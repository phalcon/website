<?php


class DocumentationController extends \ControllerBase
{

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

