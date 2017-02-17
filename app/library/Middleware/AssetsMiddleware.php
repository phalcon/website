<?php

namespace Website\Middleware;

use Phalcon\Mvc\Micro;
use Phalcon\Mvc\Micro\MiddlewareInterface;

/**
 * Class AssetsMiddleware
 *
 * @package Website\Middleware
 */
class AssetsMiddleware implements MiddlewareInterface
{
    /**
     * Call me
     *
     * @param Micro $application
     *
     * @return bool
     */
    public function call(Micro $application)
    {
        /**
         * Adds relevant assets to the assets manager
         */
        $slug       = $application->registry->slug;
        $cdnUrl     = $application->utils->getCdnUrl();
        $isCdnLocal = $application->utils->isCdnLocal();

        if (true !== empty($slug) && 'index' !== $slug) {
            $application
                ->assets
                ->collection('header_css')
                ->addCss($cdnUrl . 'css/style.css', $isCdnLocal)
                ->addCss($cdnUrl . 'css/phalconPage.css', $isCdnLocal);
        } else {
            $application
                ->assets
                ->collection('header_css')
                ->addCss($cdnUrl . 'css/flags.css', $isCdnLocal)
                ->addCss($cdnUrl . 'css/highlight.js.css', $isCdnLocal)
                ->addCss($cdnUrl . 'css/phalcon.min.css', $isCdnLocal)
                ->addCss($cdnUrl . 'css/style.css', $isCdnLocal);
        }

        return true;
    }
}
