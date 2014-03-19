<div class="header-line" xmlns="http://www.w3.org/1999/html">
    <div class="size-wrap">
        <h1 class="header-line-title title-white">{{ tr('download_developer_tools') }}</h1>
    </div>
</div>

<div class="size-wrap">

    <ul class="tabs clear-fix">
        <li><a class="tab-link" href="{{ url(['for': 'download', 'language': language]) }}"><span class="span-ul">{{ tr('download_linux') }}</span></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-type', 'type': 'windows', 'language': language]) }}"><span class="span-ul">{{ tr('download_windows') }}</span></a></li>
        <li><a class="tab-link active" href="{{ url(['for': 'download-type', 'type': 'tools', 'language': language]) }}"><span class="span-ul">{{ tr('download_developer_tools') }}</span></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-type', 'type': 'vagrant', 'language': language]) }}"><span class="span-ul">Vagrant</span></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-type', 'type': 'stubs', 'language': language]) }}"><span class="span-ul">{{ tr('download_ide_stubs') }}</span></a></li>
    </ul>

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
