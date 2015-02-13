<!DOCTYPE html>
<html lang="{{ language }}">
{% include 'partials/head.volt' %}
<body>

<header class="homepage-header">
    <div class="container">
        <div class="navbar" role="navigation">
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
        </div>
    </div>
</header>







<div class="wrapper">

    <div class="size-wrap">

        <div class="header">
            <a class="header-logo" href="{{ baseurl }}{{ language }}"><span class="logo-text">Phalcon</span></a>

            <div class="header-right">
                <iframe src="http://ghbtns.com/github-btn.html?user=phalcon&amp;repo=cphalcon&amp;type=watch&amp;count=true&amp;size=large" allowtransparency="true" frameborder="0" scrolling="0" width="152px" height="30px"></iframe>
            </div>


        </div>

        {% if this.getDi().get('router').getControllerName() == 'index' and this.getDi().get('router').getActionName() == 'index' %}
        <blockquote class="header-intro">
            {{ tr('phalcon_description', docs_root ~ 'reference/benchmark.html') }}
        </blockquote>
        {% endif %}

    </div>

    {{ content() }}

    {% include 'partials/footer.volt' %}

</div>
<script>hljs.initHighlightingOnLoad();</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="/js/plugins/jquery.backstretch.min.js"></script>
<script src="/js/plugins/jquery.magnific-popup.min.js"></script>
<script src="/js/plugins/highlight.pack.js"></script>
<script src="/js/phalcon.min.js"></script>

</body>
</html>
