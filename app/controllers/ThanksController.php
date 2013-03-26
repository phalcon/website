<?php

class ThanksController extends \Ph\Controller
{
    public function initialize()
    {
        \Phalcon\Tag::setTitle('Thanks');
        parent::initialize();
    }

    public function indexAction()
    {
    }
}
