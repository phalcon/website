<?php

namespace Website\Controllers;

use Website\Controller as WController;

/**
 * Class IndexController
 *
 * @package Website\Controllers
 *
 * @property \Phalcon\Registry $registry
 */
class IndexController extends WController
{
    public function indexAction()
    {
        $this->tag->setTitle(
            $this->locale->translate('high_performance_php_framework')
        );
        $this->registry->view = 'index/index';
    }

    public function notfoundAction()
    {
        $this->tag->setTitle(
            $this->locale->translate('not_found')
        );
        $this->response->setStatusCode(404, 'Not Found');

        $this->registry->noindex = true;
        $this->registry->view    = 'utils/notfound';
    }
}
