<?php

namespace Website\Middleware;

use Phalcon\Mvc\Micro;
use Phalcon\Mvc\Micro\MiddlewareInterface;
use Phalcon\Tag;

use function var_dump;
use Website\Traits\LanguageTrait;

/**
 * Class EnvironmentMiddleware
 *
 * @package Website\Middleware
 */
class EnvironmentMiddleware implements MiddlewareInterface
{
    use LanguageTrait;

    /**
     * Call me
     *
     * @param Micro $application
     *
     * @return bool
     */
    public function call(Micro $application)
    {
        /**
         * This is where we calculate what language we need to work with
         * and what slug has been requested
         */
        $params   = $application->router->getParams();
        $language = $this->getLang($application, 'en');
        $slug     = $params['slug'] ?? 'index';
        $imageMap = $this->getImageMap($application);
        $image    = $imageMap[$language] ?? 'en';

        /**
         * These are needed for all pages
         */
        $application->registry->language      = $language;
        $application->registry->slug          = $slug;
        $application->registry->imageLanguage = $image;
        $application->registry->menuLanguages = $this->getMenuLanguages($application, $language);
        $application->registry->version       = $application->config->get('app')->get('version');

        switch ($slug) {
            /**
             * Contributors are needed only in the front page or 'team'
             */
            case 'team':
            case 'index':
            case '':
                $application->registry->contributors = $this->getContributors();
                break;
        }

        return true;
    }


    /**
     * Gets the contributors from the cached file
     *
     * @return array
     */
    private function getContributors()
    {
        $contributors = [];
        $fileName     = APP_PATH . '/storage/cache/data/contributors.json';
        if (true == file_exists($fileName)) {
            $contributors = file_get_contents($fileName);
            $contributors = json_decode($contributors, true);
        }

        return $contributors;
    }

    /**
     * Returns the image map for languages
     *
     * @param Micro  $application
     *
     * @return array
     */
    private function getImageMap(Micro $application)
    {
        /**
         * Find the languages available
         */
        $languages   = $application->config->get('languages');
        $keys        = array_keys($languages->toArray());
        $languageMap = $application->config->get('languages_map')->toArray();
        $images      = array_combine($keys, $keys);
        $images      = array_merge($images, $languageMap);


        return $images;
    }

    /**
     * Returns the available languages for the top menu
     *
     * @param Micro  $application
     * @param string $language
     *
     * @return string
     */
    private function getMenuLanguages(Micro $application, $language)
    {
        /**
         * Find the languages available
         */
        $languages          = $application->config->get('languages');
        $languagesAvailable = '';
        $url                = $application->request->getScheme() . '://'
                            . $application->request->getHttpHost()
                            . $application->config->get('app')->get('baseUri');
        $uri                = $application->router->getRewriteUri();
        $images             = $this->getImageMap($application);

        foreach ($languages as $key => $value) {
            $link = [
                'action'   => $url . str_replace("/{$language}", $key, $uri),
                'text'     => $value,
                'tabindex' => -1,
                'role'     => 'menuitem',
                'class'    => "flag-item flag-{$images[$key]}",
                'local'    => false
            ];

            if ($key == $language) {
                $link['selected'] = "'selected'";
            }

            $languagesAvailable .= Tag::linkTo($link);
        }

        return $languagesAvailable;
    }

    /**
     * Returns the available releases (windows dlls)
     *
     * @return array
     */
    private function getReleases()
    {
        $releases    = [];
        $releaseName = APP_PATH . '/storage/files/releases.json';
        if (true === file_exists($releaseName)) {
            $releases = json_decode(file_get_contents($releaseName), true);
        }

        return $releases;
    }
}
