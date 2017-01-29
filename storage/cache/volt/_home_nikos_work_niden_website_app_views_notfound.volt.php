<!DOCTYPE html>
<html lang="<?= $language ?>">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <meta name="keyword" content="<?= $this->utils->env('APP_KEYWORDS', '') ?>">
    <meta name="description" content="<?= $this->utils->env('APP_DESCRIPTION', '') ?>">
    <meta name=generator content="Phalcon Framework 3.0.3">

    <meta property="og:url" content="https://phalconphp.com/">
    <meta property="og:site_name" content="Phalcon Website">

    <link rel="canonical" href="https://phalconphp.com/">
    <link rel="author" href="https://github.com/tobispace">
    <link rel="publisher" href="https://phalconphp.com/">

    <link href="/images/favicon.ico" rel="icon" type="image/x-ico"/>

    <title>Phalcon - High Performance PHP Framework</title>

    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type='text/css'>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Open+Sans:700,400' rel='stylesheet' type='text/css'>
    <link href="/css/flags.css" rel='stylesheet' type='text/css'>
    <link href="/css/highlight.js.css" rel='stylesheet' type='text/css'>

    <link href="/css/phalcon.min.css" rel='stylesheet' type='text/css'>

</head>

<body>


    <div class="jumbotron">
        <div class="container">
            <div class="row">
                                <!-- Header top -->
                <div class="col-sm-3 logo">
                    <a href="<?= $this->url->get() ?>">
                        <img alt="" class="logo-phalcon" src="<?= $cdnUrl ?>images/phalcon1.png">
                    </a>
                </div>
                <div class="col-sm-7 menu-phalcon">
                    <div class="center">
                        <ul class="nav navbar-nav main-menu">
    <li class="first">
        
    </li>
    <li><a href="https://docs.phalconphp.com/" class="header-nav-link" target="_blank"><?= $this->locale->translate('documentation') ?></a></li>
    <li><a href="https://forum.phalconphp.com/" class="header-nav-link" target="_blank"><?= $this->locale->translate('forum') ?></a></li>
    <li><a href="https://slack.phalconphp.com/" class="header-nav-link" target="_blank"><?= $this->locale->translate('Slack') ?></a></li>
    <li><a href="https://blog.phalconphp.com/" class="header-nav-link" target="_blank"><?= $this->locale->translate('blog') ?></a></li>
    <li><a href="https://api.phalconphp.com/" class="header-nav-link" target="_blank"><?= $this->locale->translate('API') ?></a></li>
    <li><a href="http://phalconist.com/" class="header-nav-link" target="_blank"><?= $this->locale->translate('resources') ?></a></li>
    
    <li class="dropdown" style="margin-left:3px;">
        <a href="javascript:;" class="dropdown-toggle" id="dropdownLanguageMenu" data-toggle="dropdown"><img src="<?= $cdnUrl ?>/images/flags/<?= $language ?>.gif" alt="" />&nbsp;<span class="caret"></span></a>
        <ul class="dropdown-menu" id="dropdown-language" role="menu" style="color:black" aria-labelledby="dropdownLanguageMenu">
            <li role="presentation" class="dropdown-link" style="color:black;"><?= $languages_available ?></li>
        </ul>
    </li>
</ul>

                    </div>
                </div>
                <div class="col-sm-2 social-icons-align" style="margin-top:15px;">
                    <a href="https://twitter.com/phalconphp">
                        <img alt="" src="<?= $cdnUrl ?>images/twitter.png">
                    </a>
                    <a href="https://github.com/phalcon/cphalcon/">
                        <img alt="" src="<?= $cdnUrl ?>images/github.png">
                    </a>
                </div>
                <!-- /End Header Top -->

                <!-- Header Content -->
                <div class="col-sm-12">
                    <div align="center">
                        <div style="max-width: 600px">
                            <h1><?= $this->locale->translate('oops') ?></h1>
                            <br>
                            <br>
                            <h2><?= $this->locale->translate('something_went_wrong') ?></h2>
                        </div>
                    </div>
                </div>
                <!-- /End Header Content -->
            </div>
        </div>
    </div>


<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-xs-4 col-sm-3">
                <h4><?= $this->locale->translate('download') ?></h4>
                <ul>
                    <li><a href="/download"><?= $this->locale->translate('installing_phalcon_php') ?></a></li>
                    <li><a href="<?= $docsRoot ?>index.html" class="header-nav-link" target="_blank"><?= $this->locale->translate('documentation') ?></a></li>
                    <li><a href="http://api.phalconphp.com">API</a></li>
                    <li><a href="<?= $docsRoot ?>reference/tutorial.html"><?= $this->locale->translate('tutorial') ?></a></li>
                    <li><a href="<?= $docsRoot ?>reference/tutorial.html#sample-applications"><?= $this->locale->translate('sample_applications') ?></a></li>
                </ul>
            </div>
            <div class="col-xs-4 col-sm-3">
                <h4><?= $this->locale->translate('community') ?></h4>
                <ul>
                    <li><a href="http://forum.phalconphp.com/" class="header-nav-link" target="_blank"><?= $this->locale->translate('forum') ?></a></li>
                    <li><a href="https://github.com/phalcon/cphalcon">GitHub</a></li>
                    <li><a href="https://github.com/phalcon/cphalcon/issues"><?= $this->locale->translate('issue_tracker') ?></a></li>
                    <li><a href="http://stackoverflow.com/questions/tagged/phalcon"><?= $this->locale->translate('stack_overflow') ?></a></li>
                    
                    <li><a href="http://builtwith.phalconphp.com/"><?= $this->locale->translate('built_with_phalcon') ?></a></li>
                    <li><a href="http://store.phalconphp.com/"><?= $this->locale->translate('store') ?></a></li>
                </ul>
            </div>
            <div class="col-xs-4 col-sm-2">
                <h4><?= $this->locale->translate('about') ?></h4>
                <ul>
                    <li><a class="link-black" href="http://blog.phalconphp.com/"><?= $this->locale->translate('blog') ?></a></li>
                    
                    
                    
                    
                    
                    
                </ul>
            </div>
            <div id="license-spaccer" class="visible-xs"></div>
            <div id="license-wrapper" class="col-xs-12 col-sm-4">
                <p class="license">
                    <?= $this->locale->translate('license_new_bsd') ?>
                </p>
            </div>
        </div>
    </div>
</footer>


    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="<?= $cdnUrl ?>js/plugins/jquery.lazyload.min.js"></script>
    <script src="<?= $cdnUrl ?>js/plugins/jquery.magnific-popup.min.js"></script>
    <script src="<?= $cdnUrl ?>js/plugins/highlight.pack.js"></script>
    <script src="<?= $cdnUrl ?>js/plugins/jquery.ajaxchimp.min.js"></script>
    <script src="<?= $cdnUrl ?>js/plugins/jquery.backstretch.min.js"></script>
    <script src="<?= $cdnUrl ?>js/custom.js"></script>
<?php if ((empty(!$config->application->googleAnalytics))) { ?>
    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

        ga('create', '<?= $this->utils->env('GOOGLE_ANALYTICS') ?>', 'auto');
        ga('send', 'pageview');

    </script>
<?php } ?>
</body>
</html>
