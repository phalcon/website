<?php

namespace Website\Cli\Tasks;

use const APP_PATH;
use function file_put_contents;
use Phalcon\CLI\Task as PhTask;
use Dariuszp\CliProgressBar as CliProgressBar;
use GuzzleHttp\Client as GClient;

/**
 * FetchContributorsTask
 */
class FetchContributorsTask extends PhTask
{
    /**
     * This provides the main menu of commands if an command is not entered
     */
    public function mainAction()
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
        ];

        $steps = count($repositories);
        $bar   = new CliProgressBar($steps);
        $bar
            ->setColorToGreen()
            ->display();

        $agent   = 'Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) '
                 . 'AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 '
                 . 'Mobile/7B334b Safari/531.21.102011-10-16 20:23:10';
        $headers = [
            'User-Agent'      => $agent,
            'Accept'          => 'application/json',
            'Accept-language' => 'en',
        ];

        $client       = new GClient(['headers' => $headers]);
        $contributors = [];
        $weights      = [];
        foreach ($repositories as $repository => $weight) {
            $bar->progress();
            $response = $client->get(
                sprintf(
                    'https://api.github.com/repos/phalcon/%s/contributors',
                    $repository
                )
            );

            if (200 === $response->getStatusCode()) {
                $body    = $response->getBody();
                $results = json_decode($body->getContents(), true);
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

        arsort($weights);
        $length  = intval(count($weights) / 18) * 18;
        $weights = array_splice($weights, 0, $length);
        $results = [];
        foreach ($weights as $login => $weight) {
            $results[$login] = $contributors[$login];

            /**
             * Get the images also from Github
             */
            $avatar = $contributors[$login]['avatar'] . '&s=90';
            $image = file_get_contents($avatar);
            file_put_contents(
                APP_PATH . '/public/images/contributors/' . $login . '.jpg',
                $image
            );
        }

        file_put_contents(
            APP_PATH . '/storage/cache/data/contributors.json',
            json_encode($results, JSON_PRETTY_PRINT)
        );

        $bar->end();
    }
}
