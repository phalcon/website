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
    public function pageAction()
    {
        $slug     = $this->registry->offsetGet(Registry::SLUG);
        $action   = $this->registry->offsetGet(Registry::ACTION);
        $viewName = sprintf('%s/%s', $slug, $action);

        $this->tag->setTitle($this->locale->translate('download'));
        $this->registry->offsetSet(Registry::VIEW, $viewName);
    }
}
