<?php

class PagesController extends \ControllerBase
{

    public function pageAction($pageSlug)
    {

        $pageTitle = \Phalcon\Text::camelize($pageSlug);
        \Phalcon\Tag::setTitle( $pageTitle );

        $this->view->pick('pages/' . $pageSlug);
    }
}

