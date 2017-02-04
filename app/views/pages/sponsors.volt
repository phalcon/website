{% extends 'layouts/main.volt' %}

{% block content %}

{% include 'partials/page_head.volt' %}

<section class="team">
    <div class="container">
        {% include 'pages/sponsors_menu.volt' %}

        <div class="row">
            <div class="col-lg-10">
                <p>{{ locale.translate('sponsors_description_1') }}</p>
            </div>
            <div class="col-lg-2">
                <div class="widget">
                    <a href="https://www.patreon.com/bePatron?u=4653615"
                       data-patreon-widget-type="become-patron-button">
                        {{ locale.translate('sponsors_become_patron') }}
                    </a>
                    <script async src="https://cdn6.patreon.com/becomePatronButton.bundle.js"></script>
                </div>
            </div>
        </div>
        <hr/>
        <div class="row">
            <div class="col-lg-12">
                <h3 class="text-uppercase">{{ locale.translate('sponsors_and_supporters') }}</h3>
                <div>
                    <a href="https://pdffiller.com/" target="_blank">
                        <img width="240px"
                             src="https://raw.githubusercontent.com/phalcon/cphalcon/master/backers/pdffiller-240x60.png">
                    </a>
                    <a href="https://pdffiller.com/" target="_blank">
                        <img width="240px"
                             src="https://raw.githubusercontent.com/phalcon/cphalcon/master/backers/mctekk-240x60.png">
                    </a>
                    <a href="https://abits.com/" target="_blank">
                        <img width="240px"
                             src="https://raw.githubusercontent.com/phalcon/cphalcon/master/backers/abits-240x60.png">
                    </a>
                </div>
            </div>
        </div>

        <div class="hr"></div>

    </div>
</section>
{% endblock %}