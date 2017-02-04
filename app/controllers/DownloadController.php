<?php

namespace Website\Controllers;

use Phalcon\Text;

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
        $this
            ->assets
            ->collection('header_css')
            ->addCss($this->utils->getCdnUrl() . 'css/src/styles.css', $this->utils->isCdnLocal())
            ->addCss($this->utils->getCdnUrl() . 'css/phalconPage.css', $this->utils->isCdnLocal());

        if (true === empty($slug)) {
            $slug = 'index';
        }

        switch ($slug) {
            case 'roadmap':
                return $this->response->redirect('https://github.com/phalcon/cphalcon/wiki/Roadmap');
        }

        $cacheKey = str_replace('/', '_', $this->router->getRewriteUri()) . '.cache';

        $this->tag->setTitle(Text::camelize($slug));

        /**
         * Only for download/windows page
         */
        $releases = [];
        if ('windows' === $slug) {
            $releaseName = APP_PATH . '/storage/files/releases.json';
            if (true === file_exists($releaseName)) {
                $releases = json_decode(file_get_contents($releaseName), true);
            }
        }


        return $this
                ->viewSimple
//                ->cache(['key' => $cacheKey])
                ->render(
                    'download/' . $slug,
                    [
                        'page'         => $slug,
                        'language'     => $language,
                        'contributors' => $this->getContributors(),
                        'languages'    => $this->getLanguages($language),
                        'releases'     => $releases,
                        'docsRoot'     => '',
                    ]
                );
    }
}
