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
        $isCdnLocal = $application->utils->isCdnLocal();

        if (true !== empty($slug) && 'index' !== $slug) {
            $application
                ->assets
                ->collection('header_css')
                ->addCss($application->utils->getAsset('css/style.css'), $isCdnLocal)
                ->addCss($application->utils->getAsset('css/phalconPage.css'), $isCdnLocal);
        } else {
            $application
                ->assets
                ->collection('header_css')
                ->addCss($application->utils->getAsset('css/flags.css'), $isCdnLocal)
                ->addCss($application->utils->getAsset('css/highlight.js.css'), $isCdnLocal)
                ->addCss($application->utils->getAsset('css/phalcon.min.css'), $isCdnLocal)
                ->addCss($application->utils->getAsset('css/style.css'), $isCdnLocal);
        }

        return true;
    }
}
