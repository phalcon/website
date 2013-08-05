<!DOCTYPE html>
<html lang="{{ language }}">
{% include 'partials/head.volt' %}
<body>

<div class="wrapper">

    <div class="size-wrap">

        <div class="header">
            <a class="header-logo" href="/{{ language }}/"><span class="logo-text">Phalcon</span></a>

            <div class="header-right">
                <iframe src="http://ghbtns.com/github-btn.html?user=phalcon&amp;repo=cphalcon&amp;type=watch&amp;count=true&amp;size=large" allowtransparency="true" frameborder="0" scrolling="0" width="152px" height="30px"></iframe>
            </div>

            {% include 'partials/topmenu.volt' %}

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
</body>
</html>
