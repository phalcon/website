<?php

use Phalcon\Flash as Flash;

/**
 * IndexController
 */
class IndexController extends ControllerBase
{
    public function initialize()
    {
        $this->view->setTemplateAfter('main');
        Phalcon\Tag::setTitle('High performance PHP framework');
        parent::initialize();
    }

    public function indexAction()
    {
    }

    public function docsAction($name=null){
        $name = $this->dispatcher->getParam("name");
        $name = $this->filter->sanitize($name, "string");
        if($name){
            $this->response->redirect("http://docs.phalconphp.com/en/latest/reference/".$name.".html", true);
        } else {
            $this->response->redirect("http://docs.phalconphp.com/", true);
        }
    }

    public function subscribeAction()
    {
        $email = $this->request->getPost('email', 'email');
        if (!$email) {
            Flash::error('Please provide a valid email');
            return $this->_forwardToAction('index');
        }

        $exists = Subscribers::count("email='$email'");
        if ($exists==false) {
            $subscriber = new Subscribers();
            $subscriber->email = $email;
            $subscriber->created_at = new Phalcon\Db\RawValue('now()');
            if ($subscriber->save()==false) {
                foreach ($subscriber->getMessages() as $message) {
                    Flash::error("At this moment you can\'t subscribe");
                }
            } else {
                Flash::success('Thanks for subscribing!');
            }
        } else {
            Flash::success("You are already subscribed!");
        }

        return $this->dispatcher->forward(array('controller' => 'index', 'action' => 'index'));
    }
}
