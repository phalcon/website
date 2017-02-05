<?php

namespace Website\Controllers;

use Phalcon\Text;
use Website\Constants\Registry;
use Website\Controller as WController;

/**
 * Class PagesController
 *
 * @package Website\Controllers
 *
 * @property \Phalcon\Registry $registry
 */
class PagesController extends WController
{
    public function pageAction()
    {
        $slug = $this->registry->offsetGet(Registry::SLUG);
        $this->tag->setTitle(ucfirst(Text::humanize($slug)));
        $this->registry->offsetSet(
            Registry::VIEW,
            sprintf('pages/%s', $slug)
        );
    }
}
