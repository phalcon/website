<?php

class ExamplesController extends \Ph\Controller
{
    public function initialize()
    {
        \Phalcon\Tag::setTitle('Examples');
        parent::initialize();
    }

    public function indexAction()
    {
    }
}
