{% extends 'layouts/main.volt' %}

{% block content %}

{% include 'partials/page_head.volt' %}

<section class="download">
    <div class="container">

        {% include 'partials/menu_download.volt' %}

        <div class="alert alert-warning">
            {{ locale.translate('download_windows_note') }}
        </div>

        <h3>{{ locale.translate('download_windows_download') }}</h3>

        <p>{{ locale.translate('download_windows_dlls', 'https://github.com/phalcon/cphalcon/releases/latest') }}</p>

        <br>

        <h3>{{ locale.translate('download_windows_installation') }}</h3>

        <p>{{ locale.translate('download_windows_installation', utils.getDocsUrl(language) ~ '/install.html#windows') }}</p>
        <pre class="language-ini"><code>extension=php_phalcon.dll</code></pre>

        <br/><br/>

        <h3>{{ locale.translate('download_windows_guides') }}</h3>

        <p>
        <ul class="dash-list">
            <li>
                <a href="{{ utils.getDocsUrl(language) ~ '/webserver-xampp' }}">
                    {{ locale.translate('download_windows_guides_xampp') }}
                </a>
            </li>
            <li>
                <a href="{{ utils.getDocsUrl(language) ~ '/webserver-wamp' }}">
                    {{ locale.translate('download_windows_guides_wamp') }}
                </a>
            </li>
        </ul>
    </div>
</section>

{% endblock %}
