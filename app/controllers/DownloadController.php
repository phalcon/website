<?php

namespace Website\Controllers;

use Website\Controller as WController;
use Website\Constants\Registry;

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
        $slug     = $this->registry->offsetGet(Registry::SLUG);
        $viewName = sprintf('download/%s', $slug);

        $this->tag->setTitle($this->locale->translate('download'));
        $this->registry->offsetSet(Registry::VIEW, $viewName);
    }
}
