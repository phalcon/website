<?php

namespace Website\Middleware;

use Phalcon\Mvc\Micro;
use Phalcon\Mvc\Micro\MiddlewareInterface;

/**
 * Class EnvironmentMiddleware
 *
 * @package Website\Middleware
 */
class ViewMiddleware implements MiddlewareInterface
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
        $cacheKey = str_replace(
            '/',
            '_',
            $application->router->getRewriteUri()
        ) . '.cache';

        /** @var \Phalcon\Registry $registry */
        $registry     = $application->registry;
        $viewName     = $registry->view;

        if ('production' === $application->config->get('app')->get('env')) {
            $application->viewSimple->cache(['key' => $cacheKey]);
        }

        if (true === $application->viewCache->exists($cacheKey)) {
            $contents = $application->viewCache->get($cacheKey);
        } else {
            $application->viewSimple->setVars(
                [
                    'page'          => $registry->slug,
                    'language'      => $registry->language,
                    'imageLanguage' => $registry->imageLanguage,
                    'contributors'  => $registry->contributors,
                    'languages'     => $registry->menuLanguages,
                    'noindex'       => $registry->noindex,
                    'releases'      => $registry->releases,
                    'version'       => $registry->version,
                ]
            );

            $contents = $application->viewSimple->render($viewName);
        }
        $application->response->setContent($contents);
        $application->response->send();

        return true;
    }
}
