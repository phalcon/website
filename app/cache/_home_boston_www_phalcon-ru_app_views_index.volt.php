<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">

    <?php echo Phalcon\Tag::getTitle(); ?>

    <link href='http://fonts.googleapis.com/css?family=Ubuntu&amp;subset=latin,cyrillic-ext' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" media="all" href="css/style.css?v=1"/>

    <meta name="description" content="Phalcon is a web framework delivered as a C extension providing high performance and lower resource consumption"/>
    <meta name="author" content="Phalcon Team" />

</head>

<body>

<div class="wrapper">

    <div class="size-wrap">

        <div class="header">
            <a class="header-logo" href="/">Phalcon</a>

            <div class="header-right">
                <iframe src="http://ghbtns.com/github-btn.html?user=phalcon&amp;repo=cphalcon&amp;type=watch&amp;count=true&amp;size=large"
                        allowtransparency="true" frameborder="0" scrolling="0" width="130px" height="30px"></iframe>
            </div>

            <ul class="header-nav">
    <li><?php echo Phalcon\Tag::linkTo(array(array('for' => 'pages', 'pageSlug' => 'reference'), 'Reference', 'class' => 'header-nav-link')); ?></li>
    <li><?php echo Phalcon\Tag::linkTo(array(array('for' => 'pages', 'pageSlug' => 'download'), 'Download', 'class' => 'header-nav-link')); ?></li>
    <li><?php echo Phalcon\Tag::linkTo(array(array('for' => 'pages', 'pageSlug' => 'api'), 'API', 'class' => 'header-nav-link')); ?></li>
    <li><?php echo Phalcon\Tag::linkTo(array(array('for' => 'pages', 'pageSlug' => 'forum'), 'Forum', 'class' => 'header-nav-link')); ?></li>
    <li><?php echo Phalcon\Tag::linkTo(array(array('for' => 'pages', 'pageSlug' => 'blog'), 'Blog', 'class' => 'header-nav-link')); ?></li>
    <li><?php echo Phalcon\Tag::linkTo(array(array('for' => 'pages', 'pageSlug' => 'examples'), 'Examples', 'class' => 'header-nav-link')); ?></li>
    <!--
    <li><?php echo Phalcon\Tag::linkTo(array(array('for' => 'pages', 'pageSlug' => 'support'), 'Support', 'class' => 'header-nav-link')); ?></li>
    <li><?php echo Phalcon\Tag::linkTo(array(array('for' => 'pages', 'pageSlug' => 'donate'), 'Donate', 'class' => 'header-nav-link')); ?></li>
    <li><?php echo Phalcon\Tag::linkTo(array(array('for' => 'pages', 'pageSlug' => 'store'), 'Store', 'class' => 'header-nav-link')); ?></li>
    <li><?php echo Phalcon\Tag::linkTo(array(array('for' => 'pages', 'pageSlug' => 'github'), 'Github', 'class' => 'header-nav-link')); ?></li>
    -->
</ul>


        </div>

        <?php if ($this->getDi()->get('router')->getControllerName() == 'index') { ?>
        <blockquote class="header-intro">
            <strong>Phalcon</strong> is a web framework implemented as a C extension offering <a href="#">high performance</a> and lower resource consumption
        </blockquote>
        <?php } ?>

    </div>

    <?php echo $this->getContent(); ?>

    <div class="size-wrap footer-wrap">

    <table class="footer-links">
        <tr>
            <td>
                <div class="footer-links-title">Main</div>
                <ul class="footer-links-list unstyled">
                    <li><?php echo Phalcon\Tag::linkTo(array(array('for' => 'download'), 'Download', 'class' => 'link-black')); ?></li>
                    <li><?php echo Phalcon\Tag::linkTo(array(array('for' => 'documentation'), 'Documentation', 'class' => 'link-black')); ?></li>
                    <li><?php echo Phalcon\Tag::linkTo(array(array('for' => 'pages', 'pageSlug' => 'github'), 'Blog', 'class' => 'link-black')); ?></li>
                </ul>
            </td>
            <td>
                <div class="footer-links-title">Services</div>
                <ul class="footer-links-list unstyled">
                    <li><?php echo Phalcon\Tag::linkTo(array(array('for' => 'pages', 'pageSlug' => 'consulting'), 'Consulting', 'class' => 'link-black')); ?></li>
                    <li><?php echo Phalcon\Tag::linkTo(array(array('for' => 'pages', 'pageSlug' => 'hosting'), 'Hosting', 'class' => 'link-black')); ?></li>
                    <li><?php echo Phalcon\Tag::linkTo(array(array('for' => 'pages', 'pageSlug' => 'support'), 'Support', 'class' => 'link-black')); ?></li>

                </ul>
            </td>
            <td>
                <div class="footer-links-title">Support</div>
                <ul class="footer-links-list unstyled">
                    <li><?php echo Phalcon\Tag::linkTo(array(array('for' => 'pages', 'pageSlug' => 'github'), 'Forum/Community', 'class' => 'link-black')); ?></li>
                    <li><?php echo Phalcon\Tag::linkTo(array(array('for' => 'pages', 'pageSlug' => 'github'), 'Stack Overflow', 'class' => 'link-black')); ?></li>
                    <li><?php echo Phalcon\Tag::linkTo(array(array('for' => 'pages', 'pageSlug' => 'github'), 'Issue Tracker', 'class' => 'link-black')); ?></li>
                </ul>
            </td>
            <td>
                <div class="footer-links-title">Get Involved</div>
                <ul class="footer-links-list unstyled">
                    <li><?php echo Phalcon\Tag::linkTo(array(array('for' => 'pages', 'pageSlug' => 'team'), 'Team', 'class' => 'link-black')); ?></li>
                    <li><?php echo Phalcon\Tag::linkTo(array(array('for' => 'pages', 'pageSlug' => 'about'), 'About', 'class' => 'link-black')); ?></li>
                    <li><?php echo Phalcon\Tag::linkTo(array(array('for' => 'pages', 'pageSlug' => 'roadmap'), 'Roadmap', 'class' => 'link-black')); ?></li>
                </ul>
            </td>
        </tr>
    </table>

    <div class="donate-wrap">
        Donate to Phalcon: <a href="#" class="button button-small orange">Flattr</a> or <a href="#" class="button button-small orange">via PayPal</a>
    </div>

    <div class="social-links">
        <a href="#" class="social-link tw">Twitter</a>
        <a href="#" class="social-link fb">Facebook</a>
        <a href="#" class="social-link gp">Google Plus</a>
        <a href="#" class="social-link vm">Vimeo</a>
    </div>

</div>


</div>

</body>
</html>
