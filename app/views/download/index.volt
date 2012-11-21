
<div class="doc-box">
    <table width="60%" align="center">
        <tr>
            <td>{{ image('img/download-sp.png') }}</td>
            <td>
                <h2>Downloads</h2>
                Phalcon is a C extension so you need to download a binary for your platform or compile
                it from source code.
            </td>
        </tr>
    </table>
</div>

<table align="center" class="tableFormat2" width="80%" cellspacing="15">
    <tr>
        <td valign="top">
            <table align="center" class="tableFormat1" valign="top" cellpadding="5" cellspacing="0">

                <tr>
                    <th class="titleContent">Phalcon PHP</th>
                </tr>
                <?php foreach ($current as $version_key => $version) { ?>
                <tr class="cellDown">
                    <td align="left" colspan="2">
                        <strong><?php echo $version_key; ?></strong>
                    </td>
                </tr>
                {% for file in version %}
                <tr class="cellDown downloadCell">
                    <td align="left">
                        {{ file['name'] }}
                        <br />
                        <span>Updated: {{ file['date'] }}</span>
                        {{ link_to(file['file'], 'download', 'target': '_download', 'title': file['name']) }}
                    </td>
                </tr>
                {% endfor %}
                <?php } ?>
                <tr class="cellDown downloadCell">
                    <td align="left">
                        Phalcon 0.6.1 - Source-Code
                        <a target="_download" href="https://github.com/phalcon/cphalcon/" title="GitHub Repo">github</a>
                    </td>
                </tr>

                <tr><td><br /></td></tr>

                <tr>
                    <th class="titleContent">Developer Tools</th>
                </tr>
                <tr class="cellDown downloadCell">
                    <td align="left">
                        Phalcon Developer Tools
                        <a target="_download" href="https://github.com/phalcon/phalcon-devtools/zipball/master" title="GitHub Repo">github</a> <a href="http://pear.phalconphp.com/" title="PEAR Channel">pear</a>
                    </td>
                </tr>

                {% if alpha %}
                <tr><td><br /><br /></td></tr>
                <tr>
                    <th class="titleContent">Alpha versions</th>
                </tr>
                <?php foreach ($alpha as $version_key => $version) { ?>
                <tr class="cellDown">
                    <td align="left">
                        <strong><?php echo $version_key; ?></strong>
                    </td>
                </tr>
                {% for file in version %}
                <tr class="cellDown downloadCell">
                    <td align="left">
                        {{ file['name'] }}
                        <br />
                        <span>Updated: {{ file['date'] }}</span>
                        {{ link_to(file['file'], 'download', 'target': '_download', 'title': file['name']) }}
                    </td>
                </tr>
                {% endfor %}
                <?php } ?>
                <tr class="cellDown downloadCell">
                    <td align="left">
                        Phalcon 0.6.0 - Source-Code
                        <a target="_download" href="https://github.com/phalcon/cphalcon/tree/0.6.0" title="GitHub Repo">github</a>
                    </td>
                </tr>
                {% endif %}

                <tr><td><br /><br /></td></tr>

                <tr>
                    <th class="titleContent">Older versions</th>
                </tr>
                <?php foreach ($old as $version_key => $version) { ?>
                <tr class="cellDown">
                    <td align="left">
                        <strong><?php echo $version_key; ?></strong>
                    </td>
                </tr>
                {% for file in version %}
                <tr class="cellDown downloadCell">
                    <td align="left">
                        {{ file['name'] }}
                        <br />
                        <span>Updated: {{ file['date'] }}</span>
                        {{ link_to(file['file'], 'download', 'target': '_download', 'title': file['name']) }}
                    </td>
                </tr>
                {% endfor %}
                <?php } ?>
                <tr class="cellDown downloadCell">
                    <td align="left">
                        Phalcon 0.5.3 - Source-Code
                        <a target="_download" href="https://github.com/phalcon/cphalcon/" title="GitHub Repo">github</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="highlightb">
                            We highly recommend you to use the latest version of PHP 5.3 to achieve
                            maximum stability with Phalcon.
                        </div>
                    </td>
                </tr>
            </table>
        </td>
        <td width="50%" valign="top" style="padding-left:15px">
            <div valign="top" align="left">

                <div class="titleContent">Get Started</div>
                <br/>
                Phalcon PHP is written in C with platform independence in mind.
                As a result, Phalcon PHP is available on
                <a href="http://www.microsoft.com/windows">Microsoft Windows</a>,
                <a href="http://kernel.org">GNU/Linux</a>,
                <a href="http://www.freebsd.org/">FreeBSD</a> and
                <a href="http://www.apple.com">Mac OS X</a>. You can either
                download a binary package for the system of your choice or
                build it from sources.</p>

                <h3>Windows</h3>
                To use phalcon on Windows you can download a DLL library.
                Edit your php.ini and append at the end:

                <pre class="source-code php">extension=php_phalcon.dll</pre>

                Restart your webserver to load the extension.

                <h3>Linux</h3>
                On platform Linux you can easily compile and install the extension from source code.

                <h4>Requirements</h4>
                We need some packages previously installed

                <ul>
                    <li>PHP 5.x development resources</li>
                    <li>GCC compiler</li>
                </ul>

                <pre class="source-code php">
#Ubuntu
sudo apt-get install php5-dev php5-mysql gcc

#Suse
yast2 -i php5-pear php5-devel php5-mysql gcc</pre>

                <h4>Compilation</h4>
                To create the extension from C source follow the next steps:
                <pre class="source-code php">
git clone git://github.com/phalcon/cphalcon.git
cd cphalcon/build
sudo ./install
</pre>

Add the extension to your php.ini:
<pre class="source-code php">extension=phalcon.so</pre>

                Finally restart the webserver

                <h3>Arch Linux</h3>
                There is a PKGBUILD for ArchLinux, available <a href="http://aur.archlinux.org/packages.php?ID=61950">here</a>

                <h3>FreeBSD</h3>
                A port is available for FreeBSD. Just only need these simple line commands to install it:
                <pre class="source-code php">
# pkg_add -r phalcon
</pre>
or
<pre class="source-code php">
# cd /usr/ports/www/phalcon && make install clean
                </pre>

                <h4>Need help?</h4>
                Have a look at our {{ link_to('support', 'support page') }} for
                ways to get support. We will do our best to help you.
            </div>
        </td>
    </tr>
</table>
