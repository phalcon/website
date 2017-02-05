<?php

namespace Website;

use Website\Traits\LanguageTrait;
use Phalcon\Mvc\Controller as PhController;

/**
 * Class Controller
 *
 * @property \Website\Locale          $locale
 *
 * @property \Website\Utils           $utils
 * @property \Phalcon\Mvc\View\Simple $viewSimple
 */
class Controller extends PhController
{
    use LanguageTrait;

    /**
     * Redirects incorrect URLs to the /en/ equivalents
     *
     * @return \Phalcon\Http\Response|\Phalcon\Http\ResponseInterface
     */
    public function redirectAction()
    {
        $rewriteUri = $this->router->getRewriteUri();
        if ('/' !== substr($rewriteUri, -1)) {
            $rewriteUri .= '/';
        }

        return $this->response->redirect(
            '/' . $this->getLang($this->application, 'en') . $rewriteUri,
            true
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
}
