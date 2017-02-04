{% extends 'layouts/main.volt' %}

{% block content %}

{% include 'partials/page_head.volt' %}

<section class="team">
    <div class="container">
        {% include 'pages/sponsors_menu.volt' %}

        <div class="row">
            <div class="col-lg-12">
                <p>{{ locale.translate('sponsors_description_1') }}</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <h3 class="text-uppercase">{{ locale.translate('documentation_upper') }}</h3>
                <p>{{ locale.translate('about_documentation_1', 'https://github.com/phalcon/docs', 'https://readthedocs.org') }}</p>
            </div>
        </div>

        <div class="hr"></div>

    </div>
</section>
{% endblock %}