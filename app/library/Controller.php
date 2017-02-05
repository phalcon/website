<?php

namespace Website;

use Phalcon\Mvc\Controller as PhController;
use Phalcon\Tag;
use Phalcon\Text;

/**
 * Class Controller
 *
 * @property \Website\Locale          $locale
 * @property \Phalcon\Config          $config
 * @property \Website\Utils           $utils
 * @property \Phalcon\Mvc\View\Simple $viewSimple
 */
class Controller extends PhController
{
    /**
     * Initializes the controller
     */
    public function onConstruct()
    {
        $this->viewSimple->setVar('version', $this->config->get('app')->get('version'));
    }

    public function redirectAction()
    {
        $rewriteUri = $this->router->getRewriteUri();
        if ('/' !== substr($rewriteUri, -1)) {
            $rewriteUri .= '/';
        }

        return $this->response->redirect('/' . $this->getLang("en") . $rewriteUri, true);
    }

    protected function getMenuLanguages($language)
    {
        /**
         * Find the languages available
         */
        $languages             = $this->config->get('languages');
        $languagesAvailable    = '';
        $url                   = $this->request->getScheme() . '://'
                               . $this->request->getHttpHost()
                               . $this->config->get('app')->get('baseUri');
        $uri                   = $this->router->getRewriteUri();
        foreach ($languages as $key => $value) {
            $link = [
                "action"   => $url . str_replace("/{$language}", "{$key}", $uri),
                "text"     => $value,
                "tabindex" => -1,
                "role"     => "menuitem",
                "class"    => "flag-item flag-{$key}",
                "local"    => false
            ];

            if ($key == $language) {
                $link["selected"] = '"selected"';
            }

            $languagesAvailable .= Tag::linkTo($link);
        }

        return $languagesAvailable;
    }

    /**
     * @param string $language
     * @param string $slug
     * @param string $viewPrefix
     *
     * @return \Phalcon\Http\Response|\Phalcon\Http\ResponseInterface
     */
    protected function preparePages($language, $slug = '', $viewPrefix = '')
    {
        $this
            ->assets
            ->collection('header_css')
            ->addCss($this->utils->getCdnUrl() . 'css/style.css', $this->utils->isCdnLocal())
            ->addCss($this->utils->getCdnUrl() . 'css/phalconPage.css', $this->utils->isCdnLocal());

        if (true === empty($slug)) {
            $slug = 'index';
        }

        $releases = [];
        switch ($slug) {
            case 'roadmap':
                return $this->response->redirect('https://github.com/phalcon/cphalcon/wiki/Roadmap');
                break;
            case 'windows':
                $releaseName = APP_PATH . '/storage/files/releases.json';
                if (true === file_exists($releaseName)) {
                    $releases = json_decode(file_get_contents($releaseName), true);
                }
                break;
        }

        $viewName = sprintf('%s/%s', $viewPrefix, $slug);

        return $this->returnResponse(
            $language,
            $slug,
            $viewName,
            $releases
        );
    }

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
//  }
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

    /**
     * Gets URI parameter.
     *
     * @param  string $parameter
     * @param  mixed  $default
     *
     * @return mixed
     */
    protected function getUriParameter($parameter, $default = null)
    {
        if (!is_scalar($parameter) || !$this->dispatcher->hasParam($parameter)) {
            return $default;
        }

        return $this->dispatcher->getParam($parameter);
    }

    /**
     * Gets current language.
     *
     * @param  string $default
     * @return string
     */
    protected function getLang($default = "en")
    {
        $params = $this->router->getParams();
        if (!empty($params['language'])) {
            $lang = $params['language'];
        } else {
            $lang = $this->getUriParameter('language');
        }

        $languagesAvailable = array_keys($this->config->get('languages')->toArray());

        if (!$lang || !in_array($lang, $languagesAvailable, true)) {
            foreach ($this->request->getLanguages() as $httpLang) {
                $httpLang = mb_strtolower(substr($httpLang['language'], 0, 2));
                if (in_array($httpLang, $languagesAvailable)) {
                    return $httpLang;
                }
            }

            return $default;
        }

        return $lang;
    }

    /**
     * Gets the contributors from the cached file
     *
     * @return array
     */
    protected function getContributors()
    {
        $contributors = [];
        $fileName     = APP_PATH . '/storage/cache/data/contributors.json';
        if (true == file_exists($fileName)) {
            $contributors = file_get_contents($fileName);
            $contributors = json_decode($contributors, true);
        }

        return $contributors;
    }

    protected function returnResponse($language, $slug, $viewName, $releases = [])
    {
        $cacheKey = str_replace('/', '_', $this->router->getRewriteUri()) . '.cache';

        return $this
            ->viewSimple
//                ->cache(['key' => $cacheKey])
            ->render(
                $viewName,
                [
                    'page'         => $slug,
                    'language'     => $language,
                    'contributors' => $this->getContributors(),
                    'languages'    => $this->getMenuLanguages($language),
                    'releases'     => $releases,
                ]
            );
    }
}
