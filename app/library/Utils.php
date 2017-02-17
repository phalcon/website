<?php

namespace Website;

use Phalcon\Mvc\User\Component;

/**
 * Class Utils
 *
 * @package Website
 *
 * @property \Phalcon\Config $config
 */
class Utils extends Component
{
    /**
     * Checks an object or an array if an element exists. If yes it returns
     * the value of the element, otherwise the $default value
     *
     * @param object|array $data
     * @param string       $element
     * @param string       $default
     *
     * @return string
     */
    public function fetch($data, $element, $default = '')
    {
        $version = intval(substr(phpversion(), 0, 1));
        $return  = $default;

        /**
         * PHP7 goodies!
         */
        if (7 === $version) {
            if (true === is_object($data)) {
                $return = $data->$element ?? $default;
            } elseif (true === is_array($data)) {
                $return = $data[$element] ?? $default;
            }
        } else {
            if (true === is_object($data) && true === isset($data->$element)) {
                $return = $data->$element;
            } elseif (true === is_array($data) && true === isset($data[$element])) {
                $return = $data[$element];
            }
        }

        return $return;
    }

    /**
     * Returns the language parameter if passed, otherwise defaults to the
     * application default
     *
     * @param $lang
     *
     * @return mixed|string
     */
    protected function getLang($lang)
    {
        $return    = 'en';
        $languages = $this->config->get('languages')->toArray();

        if (true === empty($lang)) {
            foreach ($this->request->getLanguages() as $httpLang) {
                $httpLang = mb_strtolower(substr($httpLang['language'], 0, 2));
                if (true === array_key_exists($httpLang, $languages)) {
                    $return = $httpLang;
                }
            }
        } else {
            if (true === array_key_exists($lang, $languages)) {
                $return = $lang;
            }
        }

        return $return;
    }

    public function getDocsUrl($lang)
    {
        $return    = 'en';
        $languages = $this->config->get('doc_languages')->toArray();

        if (true !== empty($lang)) {
            if (true === array_key_exists($lang, $languages)) {
                $return = $lang;
            }
        }

        return sprintf('https://docs.phalconphp.com/%s/latest', $return);
    }

    /**
     * Returns the CDN URL
     *
     * @param string $resource
     *
     * @return string
     */
    public function getCdnUrl($resource = '')
    {
        return $this->config->get('app')->get('staticUrl', '/') . $resource;
    }

    /**
     * Is the CDN local or not
     *
     * @return bool
     */
    public function isCdnLocal()
    {
        return boolval('/' === $this->getCdnUrl());
    }

    /**
     * Converts milliseconds to human readable format
     *
     * @param float $microseconds
     * @param int   $precision
     *
     * @return string
     */
    public function timeToHuman($microseconds, $precision = 3)
    {
        $units = ['μs', 'ns', 'ms', 's'];
        $micro = max($microseconds, 0);
        $pow   = 0;
        if (1000 < $micro) {
            $pow    = floor(($micro ? log($micro) : 0) / log(1000));
            $pow    = min($pow, count($units) - 1);
            $micro /= (1 << (10 * $pow));
        }
        return round($micro, $precision) . ' ' . $units[$pow];
    }

    /**
     * Converts bytes to a human readable format
     *
     * @param int $bytes
     * @param int $precision
     *
     * @return string
     */
    public function bytesToHuman($bytes, $precision = 2)
    {
        $units  = ['B', 'KB', 'MB', 'GB', 'TB', 'PB'];
        $bytes  = max($bytes, 0);
        $pow    = floor(($bytes ? log($bytes) : 0) / log(1024));
        $pow    = min($pow, count($units) - 1);
        $bytes /= (1 << (10 * $pow));
        return round($bytes, $precision) . ' ' . $units[$pow];
    }
}
