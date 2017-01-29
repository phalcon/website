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
    public function indexAction($language)
    {
        $contributors = [];
        $fileName     = APP_PATH . '/storage/cache/data/contributors.json';
        if (true == file_exists($fileName)) {
            $contributors = file_get_contents($fileName);
            $contributors = json_decode($contributors, true);
        }

        echo $this->viewSimple->render(
            'index',
            [
                'version'             => '3.0.3',
                'language'            => $language,
                'cdnUrl'              => $this->utils->env('APP_STATIC_URL', '/'),
                'languages_available' => '',
                'contributors'        => $contributors,
            ]
        );
    }

    public function indexRedirectAction()
    {
        return $this->response->redirect('/en/', true);
    }
}
