<?php

namespace Website\Controllers;

use Phalcon\Mvc\Controller as PhController;

/**
 * Class UtilsController
 *
 * @package Website\Controllers
 *
 * @property \Phalcon\Config          $config
 * @property \Phalcon\Http\Response   $response
 * @property \Phalcon\Registry        $registry
 * @property \Phalcon\Mvc\View\Simple $viewSimple
 */
class UtilsController extends PhController
{
    /**
     * Generates the sitemap based on the routes
     */
    public function sitemapAction()
    {
        $this->response->setHeader('Content-Type', 'application/xml');
        $this->registry->view = 'utils/sitemap';
    }
}
