<div class="header-line"></div>

<div class="size-wrap content-wrap">

    <div class="note">Phalcon is a C extension so you need to download a binary for your platform or compile it from source code.</div>

    <ul class="tabs clear-fix">
        <li><a class="tab-link active" href="#true"><u>Linux/Unix/Mac</u></a></li>
        <li><a class="tab-link" href="#windows"><u>Windows DLLs</u></a></li>
        <li><a class="tab-link" href="#devtools"><u>Developer Tools</u></a></li>
        <li><a class="tab-link" href="#stubs"><u>IDE stubs</u></a></li>
    </ul>

    <h2>Compilation</h2>

    <p>On platform Linux you can easily compile and install the extension from source code.</p>

    <h3>Requirements</h3>

    <p class="strong">We need some packages previously installed:</p>

    <ul>
        <li>PHP 5.x development resources</li>
        <li>GCC compiler</li>
    </ul>

    <p>

    <div class="highlight">
            <pre>
#Ubuntu
sudo apt-get install php5-dev php5-mysql gcc

#Suse
yast2 -i php5-pear php5-devel php5-mysql gcc
            </pre>
    </div>
    </p>


    <h3>Compilation</h3>

    <p>1. To create the extension from C source follow the next steps:</p>

    <p>

    <div class="highlight">
            <pre>
git clone git://github.com/phalcon/cphalcon.git

cd cphalcon/build

sudo ./install
            </pre>
    </div>
    </p>

    <p>2. Add the extension to your php.ini:</p>

    <p>

    <div class="highlight">
            <pre>
extension=phalcon.so
            </pre>
    </div>
    </p>


    <p>3. Finally restart the webserver</p>

    <h2>Debian</h2>

    <p>There is a repo graciously offered by <a href="#">FortRabbit here</a></p>

    <h2>Arch Linux</h2>

    <p>There is a PKGBUILD for ArchLinux, available <a href="#">here</a></p>

    <p>

    <div class="highlight">
            <pre>
# pkg_add -r phalcon
            </pre>
    </div>
    </p>

    <p>or</p>

    <p>

    <div class="highlight">
            <pre>
# cd /usr/ports/www/phalcon && make install clean
            </pre>
    </div>
    </p>

    <h2>Dependencies</h2>

    <p>Although Phalcon does not binary link to other extensions it does use some of them to offer functionality. The extensions used are:</p>

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

    <p>It is not necessary for all the above extensions to be present in the system that has Phalcon installed. You can only install the ones that meet your needs. For instance if you use a MySQL
        database, then you can only load PDO and PDO/MySQL ignoring the Oracle, SQlite, Postgresql and Mongo.</p>

    <h2>Need help?</h2>

    <p>Have a look at our <a href="#">support page</a> for ways to get support. We will do our best to help you.</p>


</div>
