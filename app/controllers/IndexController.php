<?php

/**
 * IndexController
 */
class IndexController extends \Ph\Controller
{
    public function initialize()
    {
        \Phalcon\Tag::setTitle('High performance PHP framework');
        parent::initialize();
    }

    public function indexAction()
    {

    }

    public function subscribeAction()
    {
        $subscriber = new Subscribers();
        $subscriber->email = $this->request->getPost('email', 'email');
        if ($subscriber->save() == false) {
            $this->flash->error("At this moment you can't subscribe, the following problem happen:");
            foreach($subscriber->getMessages() as $message){
                $this->flash->error($message);
            }
        } else {
            $this->flash->success('Thanks for subscribing!');
        }

        return $this->dispatcher->forward(array(
            'controller' => 'index',
            'action' => 'index'
        ));
    }

    public function show404Action()
    {
        $this->response->setHeader(404, 'Not Found');
        $this->view->pick('404/404');
    }
}
