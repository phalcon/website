<?php

use \Phalcon\Mvc\View as PhView;

class IndexController extends \ControllerBase
{

    public function indexAction()
    {
        $this->tag->setTitle('Phalcon - High Performance PHP Framework');
    }

    public function notFoundAction()
    {
        $this->response->setStatusCode(404, 'Not Found');
        $this->view->pick('404/404');
        $this->view->setVar('isFrontpage', false);
        $this->view->setVar('isPage', 404);
    }

    public function subscribeAction()
    {
        $subscriber = new Subscribers();
        $subscriber->email = $this->request->getPost('email', 'email');
        if ($subscriber->save() == false) {
            $this->flash->error("At this moment you can't subscribe, the following problem happen:");
            foreach ($subscriber->getMessages() as $message) {
                $this->flash->error($message);
            }
        } else {
            $this->flash->success('Thanks for subscribing!');
        }

        return $this->dispatcher->forward(
            array(
                'controller' => 'index',
                'action' => 'index'
            )
        );
    }

    public function donateAction()
    {
        $this->tag->setTitle('Donate');
    }

    /**
     * Redirects for old links
     */
    public function redirectIndexAction()
    {
        return $this->response->redirect('en/', 301);
    }

    public function redirectPagesAction()
    {
        $slug = $this->getUriParameter('pageSlug');

        $slug = ($slug) ? $slug : '';
        $this->response->redirect('en/' . $slug, 301);
    }

    public function redirectDownloadAction()
    {
        return $this->response->redirect("en/download", 301);
    }

    public function redirectDownloadTypeAction()
    {
        $slug = $this->getUriParameter('type');
        $slug = ($slug) ? '/' . $slug : '';

        $this->response->redirect("en/download" . $slug, 301);
    }

    public function redirectDownloadWindowsAction()
    {
        return $this->response->redirect("en/download/windows", 301);
    }

    public function redirectDonateAction()
    {
        return $this->response->redirect('en/donate', 301);
    }
}
