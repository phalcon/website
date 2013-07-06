<div class="header-line" xmlns="http://www.w3.org/1999/html">
    <div class="size-wrap">
        <h1 class="header-line-title title-white">Developer Tools</h1>
    </div>
</div>

<div class="size-wrap">

    <ul class="tabs clear-fix">
        <li><a class="tab-link" href="{{ url(['for': 'download']) }}"><u>Linux/Unix/Mac</u></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-type', 'type': 'windows']) }}"><u>Windows DLLs</u></a></li>
        <li><a class="tab-link active" href="{{ url(['for': 'download-type', 'type': 'tools']) }}"><u>Developer Tools</u></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-type', 'type': 'stubs']) }}"><u>IDE stubs</u></a></li>
    </ul>

    <h2>Developer Tools</h2>

    <p>These tools are a collection of useful scripts to generate skeleton code. Core components of your application can be generated with a simple command, allowing you to easily develop applications using Phalcon.</p>
    <p>Documentation: <a href="http://docs.phalconphp.com/en/latest/reference/tools.html">Phalcon Developer Tools</a> </p>

    <br />
    <h3>Installing via Composer</h3>

    <p>Install composer in a common location or in your project:</p>

    <pre><code>curl -s http://getcomposer.org/installer | php</code></pre>

    <p>Create the composer.json file as follows:</p>

<pre><code>{
    "require": {
        "phalcon/devtools": "dev-master"
    }
}
</code></pre>

    <p>Run the composer installer:</p>

    <pre><code>php composer.phar install</code></pre>

    <p>Create a symbolink link to the phalcon.php script:</p>

<pre><code>ln -s ~/devtools/phalcon.php /usr/bin/phalcon
chmod ugo+x /usr/bin/phalcon</code></pre>

    <br /> <br />
    <h3>Download</h3>

    <p>You can download or clone a cross platform package containing the developer tools from <a href="https://github.com/phalcon/phalcon-devtools">Github</a>.</p>

</div>
