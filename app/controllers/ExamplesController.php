<?php

class ExamplesController extends \ControllerBase
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
