<?php

namespace Website\Controllers;

use Phalcon\Text;
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
        $slug = $this->registry->slug;
        $this->tag->setTitle(ucfirst(Text::humanize($slug)));
        $this->registry->view = sprintf('pages/%s', $slug);
    }
}
