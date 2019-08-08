{% extends 'layouts/main.volt' %}

{% block content %}

{% include 'partials/page_head.volt' %}

<section class="team">
    <div class="container">

        {% include 'partials/menu_download.volt' %}

        <div class="note">{{ locale.translate('download_note') }}</div>
        <h2>{{ locale.translate('download_ubuntu_or_debian') }}</h2>
        <p>
            {{ locale.translate('download_ubuntu') }}
        </p>

        <div class="highlight1">
            <pre><code class="bash">curl -s "https://packagecloud.io/install/repositories/phalcon/stable/script.deb.sh" | sudo bash

sudo apt-get install php5-phalcon

# Ubuntu 16.04+, Debian 9+
sudo apt-get install php7.0-phalcon</code></pre>
        </div>

        <p>
            {{ locale.translate('download_ubuntu_2') }}
        </p>
        <div class="highlight1">
            <pre><code class="bash">sudo apt-add-repository ppa:phalcon/legacy</code></pre>
        </div>
        <p>{{ locale.translate('download_ubuntu_1') }}</p>
        <div class="highlight1">
            <pre><code class="bash"># Ubuntu 14.04+
sudo apt-get install software-properties-common

# Ubuntu 12.04
sudo apt-get install python-software-properties</code></pre>
        </div>

        <h2>{{ locale.translate('download_compilation') }}</h2>

        <p>{{ locale.translate('download_compilation_1') }}</p>

        <h3>{{ locale.translate('download_requirements') }}</h3>

        <p class="strong">{{ locale.translate('download_requirements_1') }}</p>

        <ul>
            <li>{{ locale.translate('download_requirements_2') }}</li>
            <li>{{ locale.translate('download_requirements_3') }}</li>
        </ul>

        <div class="highlight1">
            <pre><code class="bash"># Ubuntu
sudo apt-get install php5-dev php5-mysql gcc libpcre3-dev

# Fedora
sudo dnf install php-devel php-mysqlnd gcc libtool pcre-devel re2c

# RHEL
sudo yum install php-devel php-mysql gcc libtool pcre-devel

# Suse
yast2 -i php5-pear php5-devel php5-mysql gcc libtool pcre-devel

# macOS (Homebrew)
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/php
brew install php5x php5x-phalcon # php55, php56, ...

# macOS (MacPorts)
sudo port install php73-phalcon # php72, php71, php56, ...</code></pre>
        </div>


        <h3>{{ locale.translate('download_compilation') }}</h3>

        <p>{{ locale.translate('download_compilation_11') }}</p>

        <p>
            <pre><code class="bash">git clone --depth=1 "git://github.com/phalcon/cphalcon.git"
cd cphalcon/build
sudo ./install</code></pre>
        </p>

        <p>{{ locale.translate('download_compilation_12') }}</p>
        <pre><code class="ini">extension=phalcon.so</code></pre>
        <p>{{ locale.translate('download_compilation_13') }}</p>

        <h2>{{ locale.translate('download_arch') }}</h2>

        <p>{{ locale.translate('download_arch_1', 'https://aur.archlinux.org/packages/php-phalcon/') }}</p>

        <h2>{{ locale.translate('download_opensuse') }}</h2>

        <p>{{ locale.translate('download_opensuse_1', 'http://software.opensuse.org/package/php5-phalcon', 'https://github.com/mruz') }}</p>

        <h2>{{ locale.translate('download_freebsd') }}</h2>

        <p>{{ locale.translate('download_freebsd_1') }}</p>
        <pre><code class="bash">pkg_add -r phalcon</code></pre>
        <p>{{ locale.translate('or') }}</p>
        <pre><code class="bash">cd /usr/ports/www/phalcon && make install clean</code></pre>

        <h2>{{ locale.translate('download_cpanel') }}</h2>

        <p>{{ locale.translate('download_cpanel_1', 'https://documentation.cpanel.net/display/EA/Custom+Modules', 'https://github.com/thecpaneladmin/EA-PhalconPHP') }}</p>

        <h2>{{ locale.translate('download_dependencies') }}</h2>

        <p>{{ locale.translate('download_dependencies_1') }}</p>
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
        <p>{{ locale.translate('download_dependencies_2') }}</p>

        <h2>{{ locale.translate('download_need_help') }}</h2>

        <p>{{ locale.translate('download_need_help_1', url('/' ~ language ~ '/support')) }}</p>

    </div>
</section>
{% endblock %}
