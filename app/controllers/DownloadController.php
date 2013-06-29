<?php

class DownloadController extends \ControllerBase
{

    public function indexAction()
    {

    }

    public function typeAction($type)
    {

        $this->view->pick('download/' . $type);
    }

}

