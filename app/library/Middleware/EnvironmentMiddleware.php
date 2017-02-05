<?php

namespace Website\Middleware;

use Phalcon\Mvc\Micro;
use Phalcon\Mvc\Micro\MiddlewareInterface;
use Phalcon\Tag;

use Website\Constants\Registry;
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
        $slug     = $application->utils->fetch($params, 'slug', 'index');

        /**
         * These are needed for all pages
         */
        $application->registry->offsetSet(Registry::LANGUAGE, $language);
        $application->registry->offsetSet(Registry::SLUG, $slug);
        $application->registry->offsetSet(
            Registry::MENU_LANGUAGES,
            $this->getMenuLanguages($application, $language)
        );
        $application->registry->offsetSet(
            Registry::VERSION,
            $application->config->get('app')->get('version')
        );

        switch ($slug) {
            /**
             * Contributors are needed only in the front page or 'team'
             */
            case 'team':
            case 'index':
            case '':
                $application->registry->offsetSet(
                    Registry::CONTRIBUTORS,
                    $this->getContributors()
                );
                break;
            /**
             * Releases are needed in 'windows'
             */
            case 'windows':
                $application->registry->offsetSet(
                    Registry::RELEASES,
                    $this->getReleases()
                );
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
        $languages             = $application->config->get('languages');
        $languagesAvailable    = '';
        $url                   = $application->request->getScheme() . '://'
                               . $application->request->getHttpHost()
                               . $application->config->get('app')->get('baseUri');
        $uri                   = $application->router->getRewriteUri();
        foreach ($languages as $key => $value) {
            $link = [
                'action'   => $url . str_replace("/{$language}", $key, $uri),
                'text'     => $value,
                'tabindex' => -1,
                'role'     => 'menuitem',
                'class'    => "flag-item flag-{$key}",
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
