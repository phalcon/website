<!DOCTYPE html>
<html lang="{{ language }}">

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
                            <a class="navbar-brand phalcon-logo" href="/">
                                <span itemprop="name" class="sr-only">Phalcon</span>
                            </a>
                        </div>

                        <div class="collapse navbar-collapse navbar-right" id="main-menu-container">
                            {% include 'partials/topmenu.volt' %}
                        </div>
                    </div>
                </nav>
                <div class="container">
                    <div class="tagline">
                        <h1>Phalcon is a robust PHP Framework built as a C-extension.</h1>
                        <p>It makes it <a href="#" class="hypechart">the fastest PHP framework</a> around
                            <a href="http://docs.phalconphp.com/en/latest/reference/benchmark.html" target="_blank" class="super">
                                <i class="icon-asterisk"></i>
                            </a>
                        </p>
                        {{ link_to(['for': 'pages', 'pageSlug': 'download', 'language': language], tr('download'), 'class' : 'btn btn-lg btn-phalcon') }}

                        <div class="sublinks">
                            <a href="https://github.com/phalcon/cphalcon">Clone on GitHub</a> |
                            <a href="#">Download v.2.0.0</a> |
                            {{ link_to(['for': 'pages', 'pageSlug': 'download', 'language': language], 'Install instructions') }}
                        </div>
                    </div>

                    <div class="anim">

                        <div id="phalcon_hype_container" style="position:relative;overflow:hidden;width:100%;height:400px;">
                            <script type="text/javascript" charset="utf-8" src="/anim/phalcon_hype_generated_script.js"></script>
                        </div>
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
        <script src="/js/plugins/jquery.backstretch.min.js"></script>
        <script src="/js/plugins/jquery.magnific-popup.min.js"></script>
        <script src="/js/plugins/highlight.pack.js"></script>
        <script src="/js/phalcon.min.js"></script>
    </body>
</html>
