<div class="header-line">
    <div class="size-wrap">
        <h1 class="header-line-title title-white">Vagrant Boxes</h1>
    </div>
</div>

<div class="size-wrap">

    <ul class="tabs clear-fix">
        <li><a class="tab-link" href="{{ url(['for': 'download', 'language': language]) }}"><span class="span-ul">{{ tr('download_linux') }}</span></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-type', 'type': 'windows', 'language': language]) }}"><span class="span-ul">{{ tr('download_windows') }}</span></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-type', 'type': 'tools', 'language': language]) }}"><span class="span-ul">{{ tr('download_developer_tools') }}</span></a></li>
        <li><a class="tab-link active" href="{{ url(['for': 'download-type', 'type': 'vagrant', 'language': language]) }}"><span class="span-ul">Vagrant</span></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-type', 'type': 'stubs', 'language': language]) }}"><span class="span-ul">{{ tr('download_ide_stubs') }}</span></a></li>
    </ul>

    <h2>Vagrant Boxes</h2>
    <p>
        <a href="http://www.vagrantup.com/">Vagrant</a> is an excellent tool to create and configure lightweight, reproducible, and portable development environments.
        <p>Use any of the following boxes to test or develop with Phalcon on a pre-configured environment.
    </p>

    <h3>Box #1</h3>

    <ul>
        <li>Ubuntu 12.04 (Precise Pangolin) x86</li>
        <li>Apache 2.2</li>
        <li>Phalcon 1.2.5</li>
        <li>PHP 5.3.10</li>
        <li>MySQL 5.5</li>
    </ul>

    <ul>
        <li>MySQL User: root Password: pass</li>
        <li>Document Root: /var/www/</li>
    </ul>

    <pre style="margin:0px">
        <code>vagrant init phalconbox53 https://s3-eu-west-1.amazonaws.com/phalcon/phalcon125-apache2-php53-mysql55.box
vagrant up</code>
    </pre>

    <h3>Box #2</h3>

    <ul>
        <li>Ubuntu 12.04 (Precise Pangolin) x86</li>
        <li>Apache 2.2</li>
        <li>Phalcon 1.2.5</li>
        <li>PHP 5.4.23</li>
        <li>MySQL 5.5</li>
    </ul>

    <ul>
        <li>MySQL User: root Password: pass</li>
        <li>Document Root: /var/www/</li>
    </ul>

    <pre style="margin:0px">
        <code>vagrant init phalconbox https://s3-eu-west-1.amazonaws.com/phalcon/phalcon125-apache2-php54-mysql55.box
vagrant up</code>
    </pre>

    <h3>Pre-Installed examples:</h3>

    <p>The following examples are pre-installed on each vagrant box:</p>

    <pre style="margin:0px">
    <code>http://&lt;vagrant-box-ip&gt;/website
http://&lt;vagrant-box-ip&gt;/invo</code>
</pre>

</div>
