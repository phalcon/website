{% include 'download/header.volt' %}

    <h2>{{ tr('download_developer_tools') }}</h2>
    <p>{{ tr('download_devtools_1') }}</p>
    <p>{{ tr('download_devtools_docs', docs_root ~ 'reference/tools.html') }}</p>

    <br />
    <h3>{{ tr('download_devtools_composer') }}</h3>
    <p>{{ tr('download_devtools_composer_1') }}</p>

    <pre><code>curl -s http://getcomposer.org/installer | php</code></pre>

    <p>{{ tr('download_devtools_composer_2') }}</p>

<pre><code>{
    "require": {
        "phalcon/devtools": "dev-master"
    }
}
</code></pre>

    <p>{{ tr('download_devtools_composer_3') }}</p>

    <pre><code>php composer.phar install</code></pre>

    <p>{{ tr('download_devtools_composer_4') }}</p>

<pre><code>ln -s ~/devtools/phalcon.php /usr/bin/phalcon
chmod ugo+x /usr/bin/phalcon</code></pre>

    <br /> <br />
    <h3>{{ tr('download') }}</h3>
    <p>{{ tr('download_devtools_download', 'https://github.com/phalcon/phalcon-devtools') }}</p>

</div>
</div>
    </section>