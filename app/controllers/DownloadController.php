<?php

namespace Website\Controllers;

use Website\Controller as WController;

/**
 * Class DownloadController
 *
 * @package Website\Controllers
 *
 * @property \Phalcon\Registry $registry
 */
class DownloadController extends WController
{
    public function indexAction()
    {
        return $this->response->redirect('download/linux');
    }

    public function pageAction()
    {
        $slug     = $this->registry->slug;
        $viewName = sprintf('download/%s', $slug);

        $this->tag->setTitle($this->locale->translate('download'));
        $this->registry->view = $viewName;
    }
}
