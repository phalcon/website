<?php

class PagesController extends \ControllerBase
{

    public function pageAction($pageSlug)
    {

        $this->view->pick('pages/' . $pageSlug);
    }
}

