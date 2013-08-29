<?php

class PagesController extends \ControllerBase
{

    public function pageAction()
    {
        $pageSlug  = $this->getUriParameter('pageSlug');
        $pageTitle = \Phalcon\Text::camelize($pageSlug);
        $this->tag->setTitle( $pageTitle );
        $this->view->pick('pages/' . $pageSlug);
    }
}

