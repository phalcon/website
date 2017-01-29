<?php

namespace Website;

use Phalcon\Mvc\Controller as PhController;
use	Phalcon\Mvc\Dispatcher as PhDispatcher;

use Website\Constants;

/**
 * Class Controller
 *
 * @property \Website\Utils           $utils
 */
class Controller extends PhController
{

//	public function onConstruct()
//	{
//		if (!$release = $this->cacheData->get('gh_release')) {
//			$options = [
//				CURLOPT_RETURNTRANSFER => true,
//				CURLOPT_AUTOREFERER    => true,
//				CURLOPT_FOLLOWLOCATION  => true,
//				CURLOPT_MAXREDIRS       => 20,
//				CURLOPT_HEADER          => true,
//				CURLOPT_PROTOCOLS       => CURLPROTO_HTTP | CURLPROTO_HTTPS,
//				CURLOPT_REDIR_PROTOCOLS => CURLPROTO_HTTP | CURLPROTO_HTTPS,
//				CURLOPT_USERAGENT       => 'Phalcon HTTP/' . \Phalcon\Version::get() . ' (Curl)',
//				CURLOPT_CONNECTTIMEOUT  => 30,
//				CURLOPT_TIMEOUT         => 30,
//				CURLOPT_URL             => 'https://api.github.com/repos/phalcon/cphalcon/releases/latest',
//				CURLOPT_HTTPGET         => true,
//				CURLOPT_CUSTOMREQUEST   => 'GET'
//			];
//
//			$ch = curl_init();
//
//			curl_setopt_array($ch, $options);
//
//			$content    = curl_exec($ch);
//			$headerSize = curl_getinfo($ch, CURLINFO_HEADER_SIZE);
//			$body       = substr($content, $headerSize);
//
//			if ($errno = curl_errno($ch)) {
//				error_log("Get GitHub release error: " . curl_error($ch));
//			}
//
//			curl_close($ch);
//
//			$response = json_decode($body);
//
//			if (JSON_ERROR_NONE !== json_last_error()) {
//				error_log("Decode GitHub response error: " . json_last_error_msg());
//			}
//
//			if (isset($response->tag_name)) {
//				$release = str_replace('phalcon-v', '', strtolower(trim($response->tag_name)));
//
//				$this->cacheData->save('gh_release', $release, 60 * 60 * 24);
//			}
//		}
//
//		$this->view->setVar('release', $release);
//	}
//
//	public function requestInitialize()
//	{
//		if ($this->config->application->debug) {
//            $cdnUrl = $this->config->application->baseUri;
//		} else {
//            $cdnUrl = $this->config->application->cdn;
//		}
//
//		$baseUrl = $this->config->application->baseUri;
//
//		/**
//		 * Docs path and CDN url
//		 */
//		$lang = $this->getLang();
//
//		/**
//		 * Find the languages available
//		 */
//		$languages              = $this->config->languages;
//		$documentationLanguage  = $this->config->doclanguages->get(0,$lang);
//		$languagesAvailable     = '';
//		$selected               = '';
//		$url                    = $this->request->getScheme() . '://'
//							    . $this->request->getHttpHost()
//							    . $this->config->application->baseUri;
//		$uri                    = $this->router->getRewriteUri();
//		foreach ($languages as $key => $value) {
//			$selected = ($key == $lang) ? " selected='selected'" : '';
//			$href     = $url .  str_replace("/{$lang}", "{$key}", $uri);
//			$languagesAvailable .= "<a role='menuitem' tabindex='-1' href='{$href}' class='flag-{$key}'>{$value}</a>";
//
//			#$languagesAvailable .= "<option value='{$href}'{$selected}>{$value}</option>"; // old way to do it
//		}
//
//		$this->view->setVar('language', $lang);
//		$this->view->setVar('baseurl', $baseUrl);
//		$this->view->setVar('languages_available', $languagesAvailable);
//		$this->view->setVar('docs_root', 'http://docs.phalconphp.com/'.$documentationLanguage.'/latest/');
//		$this->view->setVar('cdn_url', $cdnUrl);
//        $this->view->setVar('isFrontpage', true);
//	}
//
//
//	protected function getUriParameter($parameter)
//	{
//		return $this->dispatcher->getParam($parameter);
//	}

//    protected function getLang()
//    {
//        $lang = $this->getUriParameter('language');
//
//        if (!$lang) {
//            $languagesAvailable = array_keys($this->config->languages->toArray());
//
//            foreach ($this->request->getLanguages() as $httpLang) {
//                $httpLang = mb_strtolower(substr($httpLang['language'], 0, 2));
//                if (in_array($httpLang, $languagesAvailable)) {
//                    return $httpLang;
//                }
//            }
//        } else {
//            return $lang;
//        }
//
//        return 'en';
//    }
}
