            <div class="row-fluid featured-specs text-center">
                <div>
                    <h1>Downloads</h1>
                    Phalcon is a C extension so you need to download a binary for your platform or compile
                    it from source code.</p>
                </div>
            </div>

            <div class="row-fluid secondary-block">
                <div class="span12">

                    <div class="featured-specs tabbable tabs-left">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#compiling" data-toggle="tab">Linux/Unix/Mac</a></li>
                            <li><a href="#windows" data-toggle="tab">Windows DLLs</a></li>
                            <li><a href="#devtools" data-toggle="tab">Developer Tools</a></li>
                        </ul>
                        <div class="tab-content">

                            <div class="tab-pane active" id="compiling">

                                <h3>Compilation</h3>
                                On platform Linux you can easily compile and install the extension from source code.

                                <h4>Requirements</h4>
                                We need some packages previously installed

                                <ul>
                                    <li>PHP 5.x development resources</li>
                                    <li>GCC compiler</li>
                                </ul>

                                <pre><code>#Ubuntu
sudo apt-get install php5-dev php5-mysql gcc

#Suse
yast2 -i php5-pear php5-devel php5-mysql gcc</code></pre>

                                <h4>Compilation</h4>
                                To create the extension from C source follow the next steps:
                                <pre><code>git clone git://github.com/phalcon/cphalcon.git
cd cphalcon/build
sudo ./install</code></pre>

                                Add the extension to your php.ini:
                                <pre><code>extension=phalcon.so</code></pre>

                                Finally restart the webserver

                                <h3>Debian</h3>
                                There is a repo graciously offered by <a href='http://www.fortrabbit.com'>FortRabbit</a>
                                <a href="http://debrepo.frbit.com/">here</a>

                                <h3>Arch Linux</h3>
                                There is a PKGBUILD for ArchLinux, available
                                <a href="http://aur.archlinux.org/packages.php?ID=61950">here</a>

                                <h3>FreeBSD</h3>
                                A port is available for FreeBSD. Just only need these
                                simple line commands to install it:
                                <pre><code># pkg_add -r phalcon</code></pre>
                                or
                                <pre><code># cd /usr/ports/www/phalcon && make install clean</code></pre>

                                <h3>Dependencies</h3>
                                Although Phalcon does not binary link to other extensions it does
                                use some of them to offer functionality. The extensions used are:
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
                                It is not necessary for all the above extensions to be present
                                in the system that has Phalcon installed. You can only install
                                the ones that meet your needs. For instance if you use a MySQL
                                database, then you can only load PDO and PDO/MySQL ignoring the
                                Oracle, SQlite, Postgresql and Mongo.

                                <h3>Need help?</h3>
                                Have a look at our {{ link_to('support', 'support page') }} for
                                ways to get support. We will do our best to help you.

                            </div>
                            <div class="tab-pane" id="windows">

                                <h3>Windows</h3>
                                To use phalcon on Windows you can download a DLL library.
                                Edit your php.ini and append at the end:

                                <pre><code>extension=php_phalcon.dll</code></pre>

                                Restart your webserver to load the extension.

                                <hr>

                                <div class="alert alert-info">
                                    We highly recommend you to use the latest version of PHP so as
                                    to take advantage of the full feature set of Phalcon.
                                </div>

                                <table class='table'>

                                    <?php foreach ($current as $version_key => $version) { ?>
                                    <tr>
                                        <td colspan="2">
                                            <strong><?php echo $version_key; ?></strong>
                                        </td>
                                    </tr>
                                    {% for file in version %}
                                    <tr>
                                        <td>
                                            {{ file['name'] }}
                                            <br />
                                            <span>Updated: {{ file['date'] }}</span>
                                        </td>
                                        <td class="text-right">
                                            {{ link_to(file['file'], 'download', 'target': '_download', 'title': file['name']) }}
                                        </td>
                                    </tr>
                                    {% endfor %}
                                    <?php } ?>
                                    <tr>
                                        <td>
                                            Source Code
                                        </td>
                                        <td class="text-right">
                                            <a target="_download" href="https://github.com/phalcon/cphalcon/" title="GitHub Repo">github</a>
                                        </td>
                                    </tr>

                                    <tr><td colspan='2'><br /></td></tr>

                                    {% if alpha|length > 0 %}
                                    <tr>
                                        <td colspan="2">
                                            <strong>Alpha/Beta versions</strong>
                                        </td>
                                    </tr>

                                    {% for version_key, version in alpha %}
                                    <tr>
                                        <td colspan="2">
                                            <strong>{{ version_key }}</strong>
                                        </td>
                                    </tr>
                                    {% for file in version %}
                                    <tr>
                                        <td>
                                            {{ file['name'] }}
                                            <br />
                                            <span>Updated: {{ file['date'] }}</span>
                                        </td>
                                        <td class="text-right">
                                            {{ link_to(file['file'], 'download', 'target': '_download', 'title': file['name']) }}
                                        </td>
                                    </tr>
                                    {% endfor %}
                                    {% endfor %}
                                    <tr>
                                        <td>
                                            Source Code (please switch to the relevant branch)
                                        </td>
                                        <td class="text-right">
                                            <a target="_download" href="https://github.com/phalcon/cphalcon/" title="GitHub Repo">github</a>
                                        </td>
                                    </tr>

                                    <tr><td colspan='2'><br /></td></tr>
                                    {% endif %}
                                    <tr>
                                        <td colspan="2">
                                            <strong>Older versions</strong>
                                        </td>
                                    </tr>
                                    {% for version_key, version in old %}
                                    <tr>
                                        <td colspan='2'>
                                            <strong>{{ version_key }}</strong>
                                        </td>
                                    </tr>
                                    {% for file in version %}
                                    <tr>
                                        <td>
                                            {{ file['name'] }}
                                            <br />
                                            <span>Updated: {{ file['date'] }}</span>
                                        </td>
                                        <td class="text-right">
                                            {{ link_to(file['file'], 'download', 'target': '_download', 'title': file['name']) }}
                                        </td>
                                    </tr>
                                    {% endfor %}
                                    {% endfor %}
                                    <tr>
                                        <td>
                                            Source Code
                                        </td>
                                        <td class="text-right">
                                            <a target="_download" href="https://github.com/phalcon/cphalcon/" title="GitHub Repo">github</a>
                                        </td>
                                    </tr>

                                </table>

                            </div>

                            <div class="tab-pane" id="devtools">

                                <h3>Developer Tools</h3>

                                <p>This tools provide you useful scripts to generate code helping to develop faster and easy applications that use with Phalcon framework.</p>

                                <h4>Installing via Composer</h4>
                                <p>Install composer in a common location or in your project:</p>

<pre><code>curl -s http://getcomposer.org/installer | php</code></pre>

Create the composer.json file as follows:

<pre><code>{
    "require": {
        "phalcon/devtools": "dev-master"
    }
}
</code></pre>

Run the composer installer:

<pre><code>php composer.phar install</code></pre>

Create a symbolink link to the phalcon.php script:

<pre><code>ln -s ~/devtools/phalcon.php /usr/bin/phalcon
chmod ugo+x /usr/bin/phalcon
</code></pre>

                            </div>

                        </div>
                    </div> <!-- /tabbable -->

                </div>
            </div>

