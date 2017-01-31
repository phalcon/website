<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <meta name="author" content="Phalcon Framework Team">
    <meta name="generator" content="Phalcon Framework Website">
    <meta name="application-name" content="Phalcon Website">
    <meta name="keyword" content="{{ utils.env('APP_KEYWORDS', '') }}">
    <meta name="description" content="{{ utils.env('APP_DESCRIPTION', '') }}">

    <meta http-equiv="x-dns-prefetch-control" content="off">

    <meta property="og:url" content="https://phalconphp.com/">
    <meta property="og:locale" content="en_US">
    <meta property="og:type" content="object">
    <meta property="og:title" content="Phalcon Website">
    <meta property="og:description" content="">
    <meta property="og:site_name" content="Phalcon Website">
    <meta property="og:image" content="https://phalconphp.com/images/phalcon1.png">

    <meta name="twitter:image:alt" content="Phalcon Website">
    <meta name="twitter:title" content="Phalcon Website">
    <meta name="twitter:description" content="">
    <meta name="twitter:image" content="https://phalconphp.com/images/phalcon1.png">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:site" content="@phalconphp">

    <link rel="canonical" href="https://phalconphp.com/">
    <link rel="publisher" href="https://phalconphp.com/">
    <link rel="author" href="https://phalconphp.com/en/team">

    <link href="/images/favicon.ico" rel="icon" type="image/x-ico"/>

    <title>Phalcon - High Performance PHP Framework</title>

    {{ assets.outputCss('header_css') }}

    {% if (not utils.env('GOOGLE_ANALYTICS', '') is empty) %}
    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

        ga('create', '{{ utils.env('GOOGLE_ANALYTICS') }}', 'auto');
        ga('send', 'pageview');

    </script>
    {% endif %}

</head>
