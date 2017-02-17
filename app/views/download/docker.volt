{% extends 'layouts/main.volt' %}

{% block content %}

{% include 'partials/page_head.volt' %}

<p class="download">
    <div class="container">

        {% include 'partials/menu_download.volt' %}

        <h2>{{ locale.translate('download_docker') }}</h2>
        <p>{{ locale.translate('download_docker_1') }}</p>
        <h3>Docker Hub</h3>
        <p>{{ locale.translate('download_docker_2', 'https://hub.docker.com/r/phalconphp/') }} <a href="https://github.com/phalcon/dockerfiles">https://github.com/phalcon/dockerfiles</a>.
        </p>
        <h3>Phalcon Compose</h3>
        <p>
            {{ locale.translate('download_docker_3') }} <a href="https://docs.docker.com/installation/">Docker Engine</a> >= 1.10.0 {{ locale.translate('download_docker_4') }} <a href="https://docs.docker.com/compose/install/">Docker Compose</a> >= 1.6.2
        </p>
        <h4>{{ locale.translate('download_docker_5') }}</h4>
        <p>{{ locale.translate('download_docker_6') }}
            <ul>
                <li>Aerospike</li>
                <li>Apache 2</li>
                <li>Beanstalk</li>
                <li>Composer</li>
                <li>Elasticsearch</li>
                <li>Memcached</li>
                <li>MongoDB</li>
                <li>MySQL</li>
                <li>PHP 7</li>
                <li>phpMyAdmin</li>
                <li>PostgreSQL</li>
                <li>Redis</li>
            </ul>
        </p>
        <p>
            {{ locale.translate('download_docker_7') }} <code class="bash">/home/website</code>. {{ locale.translate('download_docker_8') }}
            <pre><code class="bash">composer create-project sergeyklay/phalcon-compose --prefer-dist /home/website</code></pre>
            {{ locale.translate('download_docker_9') }}
        </p>
        <h4>{{ locale.translate('download_docker_10') }}</h4>
        <p>
            {{ locale.translate('download_docker_11') }} <code>variables.env</code> {{ locale.translate('download_docker_12') }} <code>/home/website</code>. {{ locale.translate('download_docker_13') }} <code>variables.env.example</code>.
            <pre><code class="bash">cd /home/website
cp variables.env.example variables.env
nano variables.env</code></pre>
    {{ locale.translate('download_docker_14') }} <code>WEB_ALIAS_DOMAIN</code>. {{ locale.translate('download_docker_15') }} <code>phalcon.local</code>.
        </p>
        <p>
            {{ locale.translate('download_docker_16') }}
<pre><code class="bash">127.0.0.1 phalcon.local</code></pre>
        </p>

        <h4>docker-compose.yml</h4>
        <p>
            {{ locale.translate('download_docker_17') }}
        </p>
        <h4>{{ locale.translate('download_docker_18') }}</h4>
        <p>
            {{ locale.translate('download_docker_19') }}
<pre><code class="bash">docker-compose build</code></pre>
            {{ locale.translate('download_docker_20') }}
        </p>
        <h4>{{ locale.translate('download_docker_21') }}</h4>
        <p>
            {{ locale.translate('download_docker_22') }}
<pre><code class="bash">cd /home/website
docker-compose up -d</code></pre>
        <p>
            {{ locale.translate('download_docker_23', '<code>http://phalcon.local</code>') }}
        </p>
        <h4>{{ locale.translate('download_docker_24') }}</h4>
        <p>
            {{ locale.translate('download_docker_25') }}
<pre><code class="bash">cd /home/website
docker-compose down</code></pre>
            {{ locale.translate('download_docker_26') }} <a href="https://phalcon.link/compose">https://phalcon.link/compose</a>
        </p>

        <p class="text-center">
            <iframe width="560"
                    height="315"
                    src="https://www.youtube.com/embed/3JOFChJoNBw"
                    frameborder="0"
                    allowfullscreen></iframe>
        </p>
    </div>
</section>

{% endblock %}