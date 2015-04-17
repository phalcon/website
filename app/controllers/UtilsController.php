<?php

class UtilsController extends \ControllerBase
{

    public function indexAction()
    {
        echo 'eta';
        exit;
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
            'zephir' => 4,
            'docs' => 2.5,
            'website' => 2.5,
            'phalcon-devtools' => 2,
            'incubator' => 2,
            'zephir-docs' => 1.5,
            'forum' => 1.5,
            'vokuro' => 1,
            'phalcon-ppa' => 1.0,
            'invo' => 0.9,
            'album-o-rama' => 0.9,
            'php-site' => 0.9,
            'mvc' => 0.9,
            'dasshy' => 0.9
        );

        $c = array();
        $p = array();
        $l = array();

        foreach ($repositories as $repository => $weight) {
            $responce = file_get_contents('https://api.github.com/repos/phalcon/' . $repository . '/contributors', false, $context);
            if ($responce) {
                $contributors = json_decode($responce, true);

                if (is_array($contributors)) {
                    foreach ($contributors as $contributor) {
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
        }

        if (count($c)) {
            arsort($c);
            file_put_contents('../app/var/data/contributors.php', '<?php return ' . var_export(array($c, $p, $l), true) . ';');
        }
    }

    public function humansAction()
    {

    	$this->view->disable();
    	$this->response->setContentType('text/plain');

    	$contributors = require ROOT_PATH .  '/app/var/data/contributors.php';

    	echo '/* TEAM */' . PHP_EOL;
    	foreach ($contributors[2] as $contributor => $url) {
    		echo $contributor . ' (' . $url . ')' . PHP_EOL;
    	}

    }

}