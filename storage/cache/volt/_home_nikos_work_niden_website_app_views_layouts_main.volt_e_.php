a:3:{i:0;s:2139:"<!DOCTYPE html>
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

    <?php if ((empty(!$this->utils->env('GOOGLE_ANALYTICS', '')))) { ?>
    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

        ga('create', '<?= $this->utils->env('GOOGLE_ANALYTICS') ?>', 'auto');
        ga('send', 'pageview');

    </script>
    <?php } ?>

</head>

<body>

";s:7:"content";a:1:{i:0;a:4:{s:4:"type";i:357;s:5:"value";s:1:" ";s:4:"file";s:58:"/home/nikos/Work/niden/website/app/views/layouts/main.volt";s:4:"line";i:8;}}i:1;s:3217:"

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
</body>
</html>
";}