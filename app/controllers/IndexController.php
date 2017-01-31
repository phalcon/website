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
        /**
         * Add more needed assets
         */
        $this
            ->assets
            ->collection('header_css')
            ->addCss($this->getCdnUrl() . 'css/flags.css', $this->isCdnLocal())
            ->addCss($this->getCdnUrl() . 'css/highlight.js.css', $this->isCdnLocal())
            ->addCss($this->getCdnUrl() . 'css/phalcon.min.css', $this->isCdnLocal());

        echo $this
                ->viewSimple
                ->cache(true)
                ->render(
                    'index',
                    [
                        'version'             => '3.0.3',
                        'language'            => $language,
                        'cdnUrl'              => $this->utils->env('APP_STATIC_URL', '/'),
                        'languages_available' => '',
                        'contributors'        => $this->getContributors(),
                        'docsRoot'            => '',
                    ]
                );
    }

    public function indexRedirectAction()
    {
        return $this->response->redirect('/en/', true);
    }

    public function teamAction($language)
    {
        $this
            ->assets
            ->collection('header_css')
            ->addCss($this->getCdnUrl() . 'css/src/styles.css', $this->isCdnLocal())
            ->addCss($this->getCdnUrl() . 'css/phalconPage.css', $this->isCdnLocal());

        echo $this->viewSimple->render(
            'pages/team',
            [
                'language'            => $language,
                'cdnUrl'              => $this->getCdnUrl(),
                'contributors'        => $this->getContributors(),
                'languages_available' => '',
                'docsRoot'            => '',
            ]
        );
    }
}
