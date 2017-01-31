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

    public function pageAction($language, $slug)
    {
        $this
            ->assets
            ->collection('header_css')
            ->addCss($this->getCdnUrl() . 'css/src/styles.css', $this->isCdnLocal())
            ->addCss($this->getCdnUrl() . 'css/phalconPage.css', $this->isCdnLocal());

        switch ($slug) {
            case 'roadmap':
                return $this->response->redirect('https://github.com/phalcon/cphalcon/wiki/Roadmap');
        }

        $cacheKey = str_replace('/', '_', $this->router->getRewriteUri()) . '.cache';

        $this->tag->setTitle(Text::camelize($slug));

        echo $this
                ->viewSimple
                ->cache(['key' => $cacheKey])
                ->render(
                    'pages/' . $slug,
                    [
                        'page'                => $slug,
                        'language'            => $language,
                        'cdnUrl'              => $this->getCdnUrl(),
                        'contributors'        => $this->getContributors(),
                        'languages_available' => '',
                        'docsRoot'            => '',
                    ]
                );
    }


    public function aboutAction($language)
    {

        echo $this->viewSimple->render(
            'pages/team',
            [
                'page'                => 'about',
                'language'            => $language,
                'cdnUrl'              => $this->getCdnUrl(),
                'contributors'        => $this->getContributors(),
                'languages_available' => '',
                'docsRoot'            => '',
            ]
        );
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
                'page'                => 'team',
                'language'            => $language,
                'cdnUrl'              => $this->getCdnUrl(),
                'contributors'        => $this->getContributors(),
                'languages_available' => '',
                'docsRoot'            => '',
            ]
        );
    }
}
