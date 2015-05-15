<!DOCTYPE html>
<html lang="{{ language }}">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    {% include 'partials/head.volt' %}

    <body>
        {% if isFrontpage == 1 %}
            <header class="homepage-header">
                <nav class="navbar" role="navigation">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu-container">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="phalcon-logo" href="/{{ language }}/">
                                <!--<img src="/images/phalcon-logo-text.png" alt="Phalcon PHP"/>-->
                            </a>
                        </div>

                        <div class="collapse navbar-collapse navbar-right" id="main-menu-container">
                            {% include 'partials/topmenu.volt' %}
                        </div>
                    </div>
                </nav>
                <div id="">
                    <div class="tagline">
                        <h1>{{ tr('header_tagline') }}</h1>
                        <p>
                            {{ tr('header_slogan') }}
                            <a id="bench-link" href="http://docs.phalconphp.com" target="_blank">
                                {{ tr('see_for_youself') }}
                            </a>
                        </p>

                        <div class="home-button-container">
                            {{ link_to(['for': 'pages', 'id': 'the-difference-tm', 'pageSlug': 'download', 'language': language], '<i class="fa fa-download"></i> '~ tr('get_phalcon'), 'class': 'btn btn-lg btn-phalcon') }}
                            <div class="sublinks">
                                {{ link_to(['for': 'pages', 'pageSlug': 'download', 'language': language], tr('download')~' v.2.0.0') }} |
                                {{ link_to(['for': 'pages', 'pageSlug': 'download', 'language': language], tr('install_instructions')) }}
                            </div>
                        </div>

                        <div class="home-button-container">
                            <a id="the-difference-tm" href="http://vimeo.com/63022489" class="btn btn-lg btn-phalcon">
                                <i class="fa fa-youtube-play"></i> {{ tr('watch_the_demo') }}
                            </a>
                            <div class="sublinks">
                                <a href="https://vimeo.com/phalconphp">{{ tr('see_all_screencasts') }}</a>
                            </div>
                        </div>
                    </div>

                    <div id="mountains">
                        {# SVG HERE #}
                    </div>
                </div>
            </header>
            <a class="video btn-video" href="http://vimeo.com/63022489"><i class="icon-youtube"></i>{{ tr('demo_video') }}</a>
        {% else %}
                {% include 'partials/page.volt' %}
        {% endif %}
        {{ content() }}

        {% include 'partials/footer.volt' %}

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
        <script src="/js/plugins/jquery.lazyload.min.js"></script>
        <script src="/js/plugins/jquery.magnific-popup.min.js"></script>
        <script src="/js/plugins/highlight.pack.js"></script>
        <script src="/js/plugins/jquery.backstretch.min.js"></script>
        <script src="/js/phalcon.min.js"></script>
    </body>
</html>
