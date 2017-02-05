<?php

namespace Website\Controllers;

use Phalcon\Text;
use Website\Controller as WController;

/**
 * Class PagesController
 *
 * @package Website\Controllers
 *
 * @property \Phalcon\Mvc\View\Simple $viewSimple
 */
class PagesController extends WController
{
    /**
     * @param $language
     * @param $slug
     *
     * @return \Phalcon\Http\Response|\Phalcon\Http\ResponseInterface
     */
    public function pageAction($language, $slug)
    {
        $this->tag->setTitle(ucfirst(Text::humanize($slug)));

        return $this->preparePages($language, $slug, 'pages');
    }
}
