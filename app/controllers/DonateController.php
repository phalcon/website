<?php

class DonateController extends \Ph\Controller
{
    public function initialize()
    {
        \Phalcon\Tag::setTitle('Team');
        parent::initialize();
    }

    public function indexAction()
    {
    }
}
