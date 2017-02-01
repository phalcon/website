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
            ->addCss($this->utils->getCdnUrl() . 'css/flags.css', $this->utils->isCdnLocal())
            ->addCss($this->utils->getCdnUrl() . 'css/highlight.js.css', $this->utils->isCdnLocal())
            ->addCss($this->utils->getCdnUrl() . 'css/phalcon.min.css', $this->utils->isCdnLocal());

        return $this
                ->viewSimple
                //->cache(true)
                ->render(
                    'index/index',
                    [
                        'version'      => '3.0.3',
                        'language'     => $language,
                        'languages'    => $this->getLanguages($language),
                        'contributors' => $this->getContributors(),
                        'docsRoot'     => '',
                    ]
                );
    }

    /**
     * @param string $slug
     *
     * @return \Phalcon\Http\Response|\Phalcon\Http\ResponseInterface
     */
    public function indexRedirectAction($slug = '')
    {
        return $this->response->redirect('/en/' . $slug, true);
    }
}
