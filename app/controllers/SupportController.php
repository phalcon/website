<?php

class SupportController extends ControllerBase
{
    public function initialize()
    {
        $this->view->setTemplateAfter('main');
        Phalcon\Tag::setTitle('Support');
        parent::initialize();
    }

    public function indexAction()
    {
    }
}
