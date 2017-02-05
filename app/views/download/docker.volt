{% extends 'layouts/main.volt' %}

{% block content %}

{% include 'partials/page_head.volt' %}

<section class="download">
    <div class="container">

        {% include 'partials/menu_download.volt' %}

        <h2>{{ locale.translate(language, 'download_docker') }}</h2>
        <p>{{ locale.translate(language, 'download_docker_1') }}</p>

        <br>
        <br>
    </div>
</section>

{% endblock %}