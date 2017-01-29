<?php

namespace Website\Controllers;

use Phalcon\Mvc\Controller as PhController;
use Website\Controller as WController;

/**
 * Class UtilsController
 *
 * @package Website\Controllers
 *
 * @property \Phalcon\Mvc\View\Simple $viewSimple
 */
class UtilsController extends WController
{
    public function contributors()
    {
        $repositories = [
            'cphalcon'         => 4,
            'zephir'           => 4,
            'docs'             => 2.5,
            'website'          => 2.5,
            'blog'             => 2.5,
            'phalcon-devtools' => 2,
            'incubator'        => 2,
            'zephir-docs'      => 1.5,
            'forum'            => 1.5,
            'vokuro'           => 1,
            'invo'             => 0.9,
            'album-o-rama'     => 0.9,
            'php-site'         => 0.9,
            'mvc'              => 0.9,
            'dasshy'           => 0.9,
        ];


        $opts         = [
            'http' => [
                'method' => "GET",
                'header' => "Accept-language: en\r\n" .
                    "User-Agent: Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b Safari/531.21.102011-10-16 20:23:10\r\n",
            ]
        ];
        $context      = stream_context_create($opts);
        $contributors = [];
        $weights      = [];
        foreach ($repositories as $repository => $weight) {
            $response = file_get_contents(
                sprintf(
                    'https://api.github.com/repos/phalcon/%s/contributors',
                    $repository
                ),
                false,
                $context
            );

            if ($response) {
                $results = json_decode($response, true);
                if (true === is_array($results)) {
                    foreach ($results as $result) {
                        $login = $result['login'];
                        if (true !== array_key_exists($login, $contributors)) {
                            $contributors[$login] = [
                                'weight' => 0,
                                'avatar' => $result['avatar_url'],
                                'html'   => $result['html_url'],
                            ];
                        }

                        $contributors[$login]['weight'] += ($result['contributions'] * $weight);

                        $weights[$login] = $contributors[$login]['weight'];
                    }
                }
            }
        }

//        var_dump($weights);
//        asort($weights, SORT_NUMERIC & SORT_DESC);
        array_multisort($contributors['weight'], SORT_NUMERIC & SORT_DESC);

        var_dump($contributors);
        die();
//        if (count($c)) {
//            arsort($c);
//            file_put_contents('../app/var/data/contributors.php', '<?php return ' . var_export(array($c, $p, $l), true) . ';');
//        }
    }

    /**
     * Generates the sitemap based on the routes
     */
    public function sitemapAction()
    {
        /** @var \Phalcon\Mvc\Router $router */
        $routes = $this->router->getRoutes();
        $pages  = [];
        foreach ($routes as $route) {
            $pages[] = $route->getCompiledPattern();
        }

        $sitemap = $this->viewSimple->render(
            'sitemap',
            [
                'languages' => ['en' => 'English',],
                'pages'     => $pages,
            ]
        );

        $this
            ->response
            ->setContentType('text/xml')
            ->setContent($sitemap)
            ->send();
    }
}
