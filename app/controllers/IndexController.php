<?php

use \Phalcon\Mvc\View as PhView;

class IndexController extends \ControllerBase
{

	public function indexAction()
	{
		$this->tag->setTitle('High performance PHP framework');
	}

	public function notFoundAction()
	{
		$this->response->setHeader(404 , 'Not Found');
		$this->view->pick('404/404');
	}

	public function subscribeAction()
	{
		$subscriber        = new Subscribers();
		$subscriber->email = $this->request->getPost('email' , 'email');
		if ($subscriber->save() == false) {
			$this->flash->error("At this moment you can't subscribe, the following problem happen:");
			foreach ($subscriber->getMessages() as $message) {
				$this->flash->error($message);
			}
		} else {
			$this->flash->success('Thanks for subscribing!');
		}

		return $this->dispatcher->forward(
			array(
				'controller' => 'index' ,
				'action'     => 'index'
			)
		);
	}

	public function donateAction()
	{
		$this->tag->setTitle('Donate');
	}

	public function sitemapAction()
	{
		$this->view->setRenderLevel(PhView::LEVEL_ACTION_VIEW);
		$this->response->setContentType('text/xml');

		$output = <<<EOF
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
EOF;
		$languages = $this->config->languages;
		$pages     = $this->config->pages;
		$template  = "
<url>
<loc>http://www.phalconphp.com/%s/%s</loc>
<changefreq>daily</changefreq>
</url>";

		foreach ($languages as $language => $languageName) {

			foreach ($pages as $page) {

				$output .= sprintf($template, $language, $page);
			}
		}

		$output .= "
</urlset>";

		echo $output;
	}

	/**
	 * Redirects for old links
	 */
	public function redirectIndexAction()
	{
		return $this->response->redirect('en/', 301);
	}

	public function redirectPagesAction()
	{
		$slug = $this->getUriParameter('pageSlug');

		$slug = ($slug) ? $slug : '';
		$this->response->redirect('en/' . $slug, 301);
	}

	public function redirectDownloadAction()
	{
		return $this->response->redirect("en/download", 301);
	}

	public function redirectDownloadTypeAction()
	{
		$slug = $this->getUriParameter('type');
		$slug = ($slug) ? '/' . $slug : '';

		$this->response->redirect("en/download" . $slug, 301);
	}

	public function redirectDownloadWindowsAction()
	{
		return $this->response->redirect("en/download/windows", 301);
	}

	public function redirectDonateAction()
	{
		return $this->response->redirect('en/donate', 301);
	}
}
