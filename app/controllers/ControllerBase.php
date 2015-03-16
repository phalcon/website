<?php

use Phalcon\Mvc\Controller,
	Phalcon\Mvc\Dispatcher;

class ControllerBase extends Controller
{
	public function requestInitialize()
	{
		/**
		 * Dev environment or production?
		 */
		if ('0' == $this->config->application->debug) {
			$cdnUrl = 'http://static.phalconphp.com/';
		} else {
			$cdnUrl = $this->config->application->baseUri;
		}
		$baseUrl = $this->config->application->baseUri;

		/**
		 * Docs path and CDN url
		 */
		$lang = $this->getUriParameter('language');

		/**
		 * Localization
		 */
		$lang = ($lang) ? $lang : 'en';
		$uri = $this->router->getRewriteUri();
		$cleanUri = preg_replace('/^\/[a-z]{2}\//', '', $uri);
		$languages           = $this->config->languages;

		$this->view->setVar('language', $lang);
		$this->view->setVar('baseurl', $baseUrl);
		$this->view->setVar('cleanUri', $cleanUri);
		$this->view->setVar('languages', $languages);
		$this->view->setVar('docs_root', 'http://docs.phalconphp.com/'.$lang.'/latest/');
		$this->view->setVar('cdn_url', $cdnUrl);
        $this->view->setVar('isFrontpage', true);
	}

	/**
	 * @param Dispatcher $dispatcher
	 *
	 * @return bool
	 */
	public function beforeExecuteRoute(Dispatcher $dispatcher)
	{
		if ('1' != $this->config->application->debug) {

			$lang = $this->getUriParameter('language');
        	$lang = ($lang) ? $lang : 'en';

			$key = preg_replace(
				'/[^a-zA-Z0-9\_]/',
				'',
				$lang . '-' . $dispatcher->getControllerName() . '-' . $dispatcher->getActionName() . '-' . implode('-' , $dispatcher->getParams())
			);
			$this->view->cache(array('key' => $key));
			if ($this->view->getCache()->exists($key)) {
				return false;
			}
		}


		$this->requestInitialize();
		return true;
	}

	protected function getUriParameter($parameter)
	{
		return $this->dispatcher->getParam($parameter);
	}

}
