<?php

class DownloadController extends ControllerBase
{
    public function initialize()
    {
        $this->view->setTemplateAfter('main');
        Phalcon\Tag::setTitle('Downloads');
        parent::initialize();
    }

    public function indexAction()
    {
    }
}
