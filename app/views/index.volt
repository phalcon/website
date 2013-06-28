<!DOCTYPE html>
<html lang="ru">
{% include 'partials/head.volt' %}
<body>

<div class="wrapper">

    <div class="size-wrap">

        <div class="header">
            <a class="header-logo" href="/"><span class="logo-text">Phalcon</span></a>

            <div class="header-right">
                <iframe src="http://ghbtns.com/github-btn.html?user=phalcon&amp;repo=cphalcon&amp;type=watch&amp;count=true&amp;size=large"
                        allowtransparency="true" frameborder="0" scrolling="0" width="130px" height="30px"></iframe>
            </div>

            {% include 'partials/topmenu.volt' %}

        </div>

        {% if this.getDi().get('router').getControllerName() == 'index' %}
        <blockquote class="header-intro">
            <strong>Phalcon</strong> is a web framework implemented as a C extension offering <a href="#">high performance</a> and lower resource consumption
        </blockquote>
        {% endif %}

    </div>

    {{ content() }}

    {% include 'partials/footer.volt' %}

</div>

</body>
</html>
