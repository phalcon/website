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

        if ('production' === $application->config->get('env')) {
            $application->viewSimple->cache(['key' => $cacheKey]);
        }

        $params = [
            'page'         => $registry->slug,
            'language'     => $registry->language,
            'contributors' => $registry->contributors,
            'languages'    => $registry->menuLanguages,
            'releases'     => $registry->releases,
            'version'      => $registry->version,
        ];

        if ($registry->offsetExists('noindex') && $registry->offsetGet('noindex')) {
            $params['noindex'] = true;
        }

        $contents = $application->viewSimple->render($viewName, $params);

        $application->response->setContent($contents);
        $application->response->send();

        return true;
    }
}
