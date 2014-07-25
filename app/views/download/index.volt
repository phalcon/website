<div class="header-line">
    <div class="size-wrap">
        <h1 class="header-line-title title-white">{{ tr('download_phalcon') }}</h1>
    </div>
</div>

<div class="size-wrap">

    <ul class="tabs clear-fix">
        <li><a class="tab-link active" href="{{ url(['for': 'download', 'language': language]) }}"><span class="span-ul">{{ tr('download_linux') }}</span></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-type', 'type': 'windows', 'language': language]) }}"><span class="span-ul">{{ tr('download_windows') }}</span></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-type', 'type': 'tools', 'language': language]) }}"><span class="span-ul">{{ tr('download_developer_tools') }}</span></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-type', 'type': 'vagrant', 'language': language]) }}"><span class="span-ul">Vagrant</span></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-type', 'type': 'stubs', 'language': language]) }}"><span class="span-ul">{{ tr('download_ide_stubs') }}</span></a></li>
    </ul>

    <div class="note">{{ tr('download_note') }}</div>


    <h2>Ubuntu</h2>
    <p>
        {{ tr('download_ubuntu') }}
    </p>
    <div class="highlight1">
<pre><code class="bash">sudo apt-add-repository ppa:phalcon/stable

sudo apt-get update

sudo apt-get install php5-phalcon</code></pre>
    </div>

    <p>
        {{ tr('download_ubuntu_1') }}


    <div class="highlight1">
<pre><code class="bash">sudo apt-get-install python-software-properties</code></pre>
    </div>

    </p>

    <h2>{{ tr('download_compilation') }}</h2>
    <p>{{ tr('download_compilation_1') }}</p>

    <h3>{{ tr('download_requirements') }}</h3>

    <p class="strong">{{ tr('download_requirements_1') }}</p>

    <ul>
        <li>{{ tr('download_requirements_2') }}</li>
        <li>{{ tr('download_requirements_3') }}</li>
    </ul>

    <p>

    <div class="highlight1">
<pre><code class="bash">#Ubuntu
sudo apt-get install php5-dev php5-mysql gcc libpcre3-dev

#Fedora
sudo yum install php-devel php-mysqlnd gcc libtool

#RHEL
sudo yum install php-devel php-mysql gcc libtool

#Suse
yast2 -i php5-pear php5-devel php5-mysql gcc
</code></pre>
    </div>
    </p>


    <h3>{{ tr('download_compilation') }}</h3>
    <p>{{ tr('download_compilation_11') }}</p>

    <p>

<pre><code class="bash">git clone --depth=1 git://github.com/phalcon/cphalcon.git
cd cphalcon/build
sudo ./install
</code></pre>
    </p>

    <p>{{ tr('download_compilation_12') }}</p>
    <pre><code class="ini">extension=phalcon.so</code></pre>
    <p>{{ tr('download_compilation_13') }}</p>

    <h2>{{ tr('download_debian') }}</h2>
    <p>{{ tr('download_debian_1', 'http://www.fortrabbit.com/', 'http://debrepo.frbit.com/') }}</p>
    <p>{{ tr('download_debian_2') }}</p>

    <h2>{{ tr('download_arch') }}</h2>
    <p>{{ tr('download_arch_1', 'http://aur.archlinux.org/packages.php?ID=61950') }}</p>

    <h2>{{ tr('download_opensuse') }}</h2>
    <p>{{ tr('download_opensuse_1', 'http://software.opensuse.org/package/php5-phalcon', 'https://github.com/mruz') }}</p>

    <h2>{{ tr('download_freebsd') }}</h2>
    <p>{{ tr('download_freebsd_1') }}
        <pre><code># pkg_add -r phalcon</code></pre>
        {{ tr('or') }}
        <pre><code># cd /usr/ports/www/phalcon && make install clean</code></pre>
    </p>

    <h2>{{ tr('download_dependencies') }}</h2>
    <p>{{ tr('download_dependencies_1') }}</p>
    <ul>
        <li>mbstring</li>
        <li>mcrypt</li>
        <li>openssl</li>
        <li>PDO</li>
        <li>PDO/Mysql</li>
        <li>PDO/Postgresql</li>
        <li>PDO/Sqlite</li>
        <li>PDO/Oracle</li>
        <li>Mongo</li>
    </ul>
    <p>{{ tr('download_dependencies_2') }}</p>

    <h2>{{ tr('download_need_help') }}</h2>
    <p>{{ tr('download_need_help_1', url(['for': 'pages', 'pageSlug': 'support', 'language': language])) }}</p>

</div>
