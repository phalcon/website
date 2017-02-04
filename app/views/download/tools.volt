{% extends 'layouts/main.volt' %}

{% block content %}

{% include 'partials/page_head.volt' %}

<section class="download">
    <div class="container">

        {% include 'partials/menu_download.volt' %}

        <h2>{{ locale.translate('download_developer_tools') }}</h2>
        <p>{{ locale.translate('download_devtools_1') }}</p>
        <p>{{ locale.translate('download_devtools_docs', utils.getDocsUrl(language) ~ '/reference/tools.html') }}</p>

        <br />
        <h3>{{ locale.translate('download_devtools_composer') }}</h3>
        <p>{{ locale.translate('download_devtools_composer_1') }}</p>

        <pre><code>curl -s http://getcomposer.org/installer | php</code></pre>

        <p>{{ locale.translate('download_devtools_composer_2') }}</p>

<pre><code>{
    "require": {
        "phalcon/devtools": "dev-master"
    }
}
</code></pre>

        <p>{{ locale.translate('download_devtools_composer_3') }}</p>

        <pre><code>php composer.phar install</code></pre>

        <p>{{ locale.translate('download_devtools_composer_4') }}</p>

<pre><code>ln -s ~/devtools/phalcon.php /usr/bin/phalcon
chmod ugo+x /usr/bin/phalcon</code></pre>

        <br />
        <h3>{{ locale.translate('download') }}</h3>
        <p>{{ locale.translate('download_devtools_download', 'https://github.com/phalcon/phalcon-devtools') }}</p>

    </div>
</section>
{% endblock %}