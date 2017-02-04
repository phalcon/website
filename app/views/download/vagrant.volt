{% extends 'layouts/main.volt' %}

{% block content %}

{% include 'partials/page_head.volt' %}

<section class="download">
    <div class="container">

        {% include 'partials/menu_download.volt' %}

        <h2>{{ locale.translate('download_vagrant_boxes') }}</h2>
        <p>{{ locale.translate('download_vagrant_1', 'http://www.vagrantup.com') }}</p>
        <p>{{ locale.translate('download_vagrant_2') }}</p>

        <h3>{{ locale.translate('download_box_1') }}</h3>

        <ul>
            <li>Ubuntu 12.04 (Precise Pangolin) x86</li>
            <li>Apache 2.2</li>
            <li>Phalcon 1.2.5</li>
            <li>PHP 5.3.10</li>
            <li>MySQL 5.5</li>
        </ul>

        <ul>
            <li>{{ locale.translate('download_box_user_pass', 'root', 'pass') }}</li>
            <li>{{ locale.translate('download_box_doc_root', '/var/www') }}</li>
        </ul>

        <pre style="margin:0px"><code>vagrant init phalconbox53 https://s3-eu-west-1.amazonaws.com/phalcon/phalcon125-apache2-php53-mysql55.box
vagrant up</code></pre>

        <h3>{{ locale.translate('download_box_2') }}</h3>

        <ul>
            <li>Ubuntu 12.04 (Precise Pangolin) x86</li>
            <li>Apache 2.2</li>
            <li>Phalcon 1.2.5</li>
            <li>PHP 5.4.23</li>
            <li>MySQL 5.5</li>
        </ul>

        <ul>
            <li>{{ locale.translate('download_box_user_pass', 'root', 'pass') }}</li>
            <li>{{ locale.translate('download_box_doc_root', '/var/www') }}</li>
        </ul>

        <pre style="margin:0px"><code>vagrant init phalconbox https://s3-eu-west-1.amazonaws.com/phalcon/phalcon125-apache2-php54-mysql55.box
vagrant up</code></pre>

        <h3>{{ locale.translate('download_examples') }}</h3>
        <p>{{ locale.translate('download_examples_1') }}</p>

        <pre style="margin:0px"><code>http://&lt;vagrant-box-ip&gt;/website
http://&lt;vagrant-box-ip&gt;/invo</code></pre>
        <br>
        <br>
    </div>
</section>

{% endblock %}