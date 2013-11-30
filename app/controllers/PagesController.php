<?php

class PagesController extends \ControllerBase
{

    public function pageAction()
    {
        $pageSlug  = $this->getUriParameter('pageSlug');
        $pageTitle = \Phalcon\Text::camelize($pageSlug);
        $this->tag->setTitle( $pageTitle );
        $this->view->pick('pages/' . $pageSlug);
    }

    public function contributorsAction()
    {

        $opts = array(
            'http' => array(
                'method' => "GET",
                'header' => "Accept-language: en\r\n" . "User-Agent: Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b Safari/531.21.102011-10-16 20:23:10\r\n"
            )
        );

        $context = stream_context_create($opts);

        $repositories = array(
            'cphalcon' => 4,
            'docs' => 2.5,
            'website' => 2.5,
            'phalcon-devtools' => 2,
            'invo' => 0.9,
            'album-o-rama' => 0.9,
            'zephir' => 4,
            'vokuro' => 1,
            'forum' => 1.5,
            'incubator' => 2,
            'zephir-docs' => 1.5,
            'php-phalcon' => 1.0,
            'php-site' => 0.9,
            'mvc' => 0.9,
            'dasshy' => 0.9
        );
        $c = array();
        $p = array();
        $l = array();
        foreach ($repositories as $repository => $weight) {
            $contributorsJson = file_get_contents('https://api.github.com/repos/phalcon/' . $repository . '/contributors', false, $context);
            $d = json_decode($contributorsJson, true);
            if (is_array($d)) {
                foreach ($d as $contributor) {
                    $login = $contributor['login'];
                    if (!isset($c[$login])) {
                        $c[$login] = 0;
                        $p[$login] = $contributor['avatar_url'];
                        $l[$login] = $contributor['html_url'];
                    }
                    $c[$login] += ($contributor['contributions'] * $weight);
                }
            }
        }

        if (count($c)) {
            arsort($c);
            file_put_contents('../app/var/data/contributors.php', '<?php return ' . var_export(array($c, $p, $l), true) . ';');
        }
    }
}

