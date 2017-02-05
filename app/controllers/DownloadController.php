<?php

namespace Website\Controllers;

use Website\Controller as WController;

/**
 * Class DownloadController
 *
 * @package Website\Controllers
 *
 * @property \Phalcon\Mvc\View\Simple $viewSimple
 */
class DownloadController extends WController
{
    /**
     * @param $language
     * @param $slug
     *
     * @return \Phalcon\Http\Response|\Phalcon\Http\ResponseInterface
     */
    public function pageAction($language, $slug = '')
    {
        $this->tag->setTitle("Download");

        return $this->preparePages($language, $slug, 'download');
    }
}
