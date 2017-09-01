{% extends 'layouts/main.volt' %}

{% block content %}

{% include 'partials/page_head.volt' %}

<section class="download">
    <div class="container">

        {% include 'partials/menu_download.volt' %}

        <h2>{{ locale.translate('download_ide_stubs') }}</h2>
        <p>{{ locale.translate('download_ide_stubs_1') }}</p>
        <div align="center">
            <iframe src="https://player.vimeo.com/video/43455647" width="960" height="443" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen=""></iframe>
        </div>
    </div>
</section>
{% endblock %}
