<?php

namespace Website\Middleware;

use Phalcon\Mvc\Micro;
use Phalcon\Mvc\Micro\MiddlewareInterface;

use Website\Constants\Registry;

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
        $language     = $registry->offsetGet(Registry::LANGUAGE);
        $slug         = $registry->offsetGet(Registry::SLUG);
        $contributors = $registry->offsetGet(Registry::CONTRIBUTORS);
        $languages    = $registry->offsetGet(Registry::MENU_LANGUAGES);
        $releases     = $registry->offsetGet(Registry::RELEASES);
        $version      = $registry->offsetGet(Registry::VERSION);
        $viewName     = $registry->offsetGet(Registry::VIEW);

        if ('production' === $application->config->get('env')) {
            $application->viewSimple->cache(['key' => $cacheKey]);
        }

        $contents = $application
                        ->viewSimple
                        ->render(
                            $viewName,
                            [
                                'page'         => $slug,
                                'language'     => $language,
                                'contributors' => $contributors,
                                'languages'    => $languages,
                                'releases'     => $releases,
                                'version'      => $version,
                            ]
                        );

        $application->response->setContent($contents);
        $application->response->send();

        return true;
    }
}
