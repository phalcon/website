<?php

class AboutController extends \Ph\Controller
{
    public function initialize()
    {
        \Phalcon\Tag::setTitle('About');
        parent::initialize();
    }

    public function indexAction()
    {
    }
}
