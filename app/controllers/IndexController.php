<?php

/**
 * IndexController
 */
class IndexController extends ControllerBase
{
    public function initialize()
    {
        $this->view->setTemplateAfter('main');
        Phalcon_Tag::setTitle('High performance PHP framework');
        parent::initialize();
    }

    public function indexAction()
    {
    }

    public function subscribeAction()
    {
        $email = $this->request->getPost('email', 'email');
        if (!$email) {
            Phalcon_Flash::error('Please provide a valid email');

            return $this->_forwardToAction('index');
        }

        $exists = $this->Subscribers->count("email='$email'");
        if ($exists==false) {
            $subscriber = new Subscribers();
            $subscriber->email = $email;
            $subscriber->created_at = new Phalcon_Db_RawValue('now()');
            if ($subscriber->save()==false) {
                foreach ($subscriber->getMessages() as $message) {
                    Phalcon_Flash::error("At this moment you can\'t subscribe");
                }
            } else {
                Phalcon_Flash::success('Thanks for subscribing!');
            }
        } else {
            Phalcon_Flash::success("You are already subscribed!");
        }

        return $this->_forward('index/index');
    }
}
