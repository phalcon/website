<?php

class IndexController extends \ControllerBase
{

    public function indexAction()
    {

        \Phalcon\Tag::setTitle('High performance PHP framework');
    }

    public function notFoundAction()
    {
        $this->response->setHeader(404 , 'Not Found');
        $this->view->pick('404/404');
    }

}

