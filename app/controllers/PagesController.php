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
        $this
            ->assets
            ->collection('header_css')
            ->addCss($this->utils->getCdnUrl() . 'css/src/styles.css', $this->utils->isCdnLocal())
            ->addCss($this->utils->getCdnUrl() . 'css/phalconPage.css', $this->utils->isCdnLocal());

        switch ($slug) {
            case 'roadmap':
                return $this->response->redirect('https://phalcon.link/roadmap');
        }

        $cacheKey = str_replace('/', '_', $this->router->getRewriteUri()) . '.cache';

        $this->tag->setTitle(Text::camelize($slug));

        return $this
                ->viewSimple
//                ->cache(['key' => $cacheKey])
                ->render(
                    'pages/' . $slug,
                    [
                        'page'         => $slug,
                        'language'     => $language,
                        'contributors' => $this->getContributors(),
                        'languages'    => $this->getLanguages($language),
                        'docsRoot'     => '',
                    ]
                );
    }
}
