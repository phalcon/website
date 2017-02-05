<?php

namespace Website\Middleware;

use Phalcon\Mvc\Micro;
use Phalcon\Mvc\User\Plugin;
use Website\Constants\Registry;
use Website\Traits\LanguageTrait;
use Phalcon\Mvc\Micro\MiddlewareInterface;

/**
 * Class NotFoundMiddleware
 *
 * @property \Website\Utils           $utils
 * @property \Phalcon\Mvc\View\Simple $viewSimple
 *
 * @package Website\Middleware
 */
class RedirectMiddleware implements MiddlewareInterface
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
        $slug     = $application->registry->offsetGet(Registry::SLUG);
        $uri      = $application->request->getURI();
        $redirect = '';

        if ('roadmap' === $slug) {
            $redirect= 'https://github.com/phalcon/cphalcon/wiki/Roadmap';
        } elseif ('download' === substr($uri, 4) || 'download/' === substr($uri, 4)) {
            $redirect = $uri
                      . ('/' === substr($uri, -1) ? '' : '/')
                      . 'linux';
        }

        if (true !== empty($redirect)) {
            $application->response->redirect($redirect);
            $application->response->send();

            return false;
        }

        return true;
    }
}
