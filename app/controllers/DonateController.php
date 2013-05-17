<?php

class DonateController extends \Ph\Controller
{
    public function initialize()
    {
        \Phalcon\Tag::setTitle('Donate');
        parent::initialize();
    }

    public function indexAction()
    {
    }
}
