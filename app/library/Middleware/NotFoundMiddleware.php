<?php

namespace Website\Middleware;

use Phalcon\Mvc\Micro;
use Phalcon\Mvc\User\Plugin;
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
class NotFoundMiddleware extends Plugin implements MiddlewareInterface
{
    use LanguageTrait;

    /**
     * If the endpoint has not been found, redirect to the 404
     *
     * @return bool
     */
    public function beforeNotFound()
    {
//        $this
//            ->assets
//            ->collection('header_css')
//            ->addCss($this->utils->getCdnUrl() . 'css/flags.css', $this->utils->isCdnLocal())
//            ->addCss($this->utils->getCdnUrl() . 'css/highlight.js.css', $this->utils->isCdnLocal())
//            ->addCss($this->utils->getCdnUrl() . 'css/phalcon.min.css', $this->utils->isCdnLocal())
//            ->addCss($this->utils->getCdnUrl() . 'css/style.css', $this->utils->isCdnLocal());

        $this->response->setStatusCode(404, 'Not Found');

        echo $this->viewSimple->render(
            'utils/notfound',
            [
                'language' => $this->getLang($this->application),
                'cdnUrl'   => '',
                'docsRoot' => '',
                'languages_available' => '',
            ]
        );

        return false;
    }

    /**
     * Call me
     *
     * @param Micro $application
     *
     * @return bool
     */
    public function call(Micro $application)
    {
        return true;
    }
}
