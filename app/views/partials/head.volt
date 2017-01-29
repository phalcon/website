<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <meta name="keyword" content="{{ utils.env('APP_KEYWORDS', '') }}">
    <meta name="description" content="{{ utils.env('APP_DESCRIPTION', '') }}">
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
