<?php

class ControllerBase extends Phalcon\Controller
{
    public function initialize()
    {
        Phalcon\Tag::prependTitle('Phalcon PHP | ');
    }
}
