<?php

use Phalcon\Text;

class PagesController extends \ControllerBase
{

    public function pageAction()
    {
        $pageSlug  = $this->getUriParameter('pageSlug');

        switch ($pageSlug) {

            case 'roadmap':
                return $this->response->redirect('https://github.com/phalcon/cphalcon/wiki/Roadmap');                
        }

        $pageTitle = Text::camelize($pageSlug);
        $this->tag->setTitle($pageTitle);
        $this->view->pick('pages/' . $pageSlug);
        $this->view->setVar('isFrontpage', false);
        $this->view->setVar('isPage', $pageSlug);
    }
}
