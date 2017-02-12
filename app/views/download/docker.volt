{% extends 'layouts/main.volt' %}

{% block content %}

{% include 'partials/page_head.volt' %}

<p class="download">
    <div class="container">

        {% include 'partials/menu_download.volt' %}

        <h2>{{ locale.translate('download_docker') }}</h2>
        <p>There are many ways that you can use Phalcon with Docker.</p>
        <h3>Docker Hub</h3>
        <p>Our official images are located <a href="https://hub.docker.com/r/phalconphp/">here</a>. We always welcome pull requests and improvements. The repository for the docker files is located here: <a href="https://github.com/phalcon/dockerfiles">https://github.com/phalcon/dockerfiles</a>.
        </p>
        <h3>Phalcon Compose</h3>
        <p>
            With Phalcon-compose you can create an isolated environment with docker, that will allow you to use Phalcon without any additional installations. Note that using Phalcon Compose, requires <a href="https://docs.docker.com/installation/">Docker Engine</a> >= 1.10.0 and <a href="https://docs.docker.com/compose/install/">Docker Compose</a> >= 1.6.2
        </p>
        <h4>Services</h4>
        <p>Phalcon Compose offers the following services by default:
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
            Phalcon Compose is very easy to use. Assume that you need to create an application that will be located in: <code class="bash">/home/website</code>. We will now need to run the following command for our container application can be created:
            <pre><code class="bash">composer create-project sergeyklay/phalcon-compose --prefer-dist /home/website</code></pre>
            The above command will download the skeleton of the docker environment.
        </p>
        <h4>Variables</h4>
        <p>
            You will need to create a new file called <code>variables.env</code> in <code>/home/website</code>. A sample file has been provided called <code>variables.env.example</code>.
            <pre><code class="bash">cd /home/website
cp variables.env.example variables.env
nano variables.env</code></pre>
        Adjust the variables in that file to suit your needs. The most important variable is the <code>WEB_ALIAS_DOMAIN</code>. Change the name to something you will be able to use. In our case we just leave the default called <code>phalcon.local</code>.
        </p>
        <p>
            Open your hosts file (/etc/hosts) and enter a new line like this:
<pre><code class="bash">127.0.0.1 phalcon.local</code></pre>
        </p>

        <h4>docker-compose.yml</h4>
        <p>
            You might want to edit the docker-compose.yml file and remove services that you will not be using. Phalcon Compose offers a lot of services as mentioned above, so your application might not need some of them. Removing the relevant services from the <code>docker-compose.yml</code> file will reduce memory usage of your environment.
        </p>
        <h4>Build</h4>
        <p>
            You can now build the application.
<pre><code class="bash">docker-compose build</code></pre>
        Containers will be downloaded as needed and set up on your environment.
        </p>
        <h4>Launch</h4>
        <p>
            You can now launch the environment:
<pre><code class="bash">cd /home/website
docker-compose up -d</code></pre>
        <p>
            Go to <code>http://phalcon.local</code> in your browser and you will see your environment is set up. You can now develop your application in the app folder.
        </p>
        <h4>Shutdown</h4>
        <p>
            To shut down the environment when is no longer needed you can issue the following command:
<pre><code class="bash">cd /home/website
docker-compose down</code></pre>
        Additional information can be found at: <a href="https://phalcon.link/compose">https://phalcon.link/compose</a>
        </p>
    </div>
</section>

{% endblock %}