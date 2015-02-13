<!DOCTYPE html>
<html lang="{{ language }}">
{% include 'partials/head.volt' %}
<body>

<header class="homepage-header">
    <div class="container">
        <nav class="navbar" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu-container">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand phalcon-logo" href="#">
                        <span itemprop="name" class="sr-only">Phalcon PHP</span>
                    </a>
                </div>

                <div class="collapse navbar-collapse navbar-right" id="main-menu-container">
                    {% include 'partials/topmenu.volt' %}
                </div>
            </div>
        </nav>

        <div class="tagline">
            <h1>Phalcon is a robust PHP Framework built as a C-extension.</h1>
            <p>It makes it <a href="#" class="hypechart">the fastest PHP framework</a> around*</p>

            {{ link_to(['for': 'pages', 'pageSlug': 'download', 'language': language], tr('download'), 'class' : 'btn btn-lg btn-phalcon') }}

            <div class="sublinks">
                <a href="https://github.com/phalcon/cphalcon/tree/2.0.0">Clone on GitHub</a> |
                <a href="#">Download v.1.3.3</a> |
                {{ link_to(['for': 'pages', 'pageSlug': 'download', 'language': language], 'Install instructions') }}
            </div>
        </div>

        <div class="anim">

            <div id="phalcon_hype_container" style="position:relative;overflow:hidden;width:100%;height:400px;">
                <script type="text/javascript" charset="utf-8" src="/anim/phalcon_hype_generated_script.js?26024"></script>
            </div>

        </div>
    </div>
</header>
<a class="video btn-video" href="http://vimeo.com/63022489"><i class="icon-youtube"></i>{{ tr('demo_video') }}</a>






<div class="wrapper">

    <div class="size-wrap">

        {% if this.getDi().get('router').getControllerName() == 'index' and this.getDi().get('router').getActionName() == 'index' %}
        <blockquote class="header-intro">
            {{ tr('phalcon_description', docs_root ~ 'reference/benchmark.html') }}
        </blockquote>
        {% endif %}

    </div>

    {{ content() }}

    {% include 'partials/footer.volt' %}

</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="/js/plugins/jquery.backstretch.min.js"></script>
<script src="/js/plugins/jquery.magnific-popup.min.js"></script>
<script src="/js/plugins/highlight.pack.js"></script>
<script src="/js/phalcon.min.js"></script>

</body>
</html>
