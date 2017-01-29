<?php

namespace Website\Controllers;

use Website\Controller as WController;

/**
 * Class IndexController
 *
 * @package Website\Controllers
 *
 * @property \Phalcon\Mvc\View\Simple $viewSimple
 */
class IndexController extends WController
{
    public function indexAction()
    {
        echo $this->viewSimple->render(
            'index',
            [
                'version' => '3.0.3',
                'language' => 'en_US',
                'cdnUrl'   => '',
                'docsRoot' => '',
                'languages_available' => '',
            ]
        );
    }
}
