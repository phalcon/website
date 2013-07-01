<div class="header-line">
    <div class="size-wrap">
        <h1 class="header-line-title title-white">Phalcon for Windows</h1>
    </div>
</div>

<div class="size-wrap">

    <ul class="tabs clear-fix">
        <li><a class="tab-link" href="{{ url(['for': 'download']) }}"><u>Linux/Unix/Mac</u></a></li>
        <li><a class="tab-link active" href="{{ url(['for': 'download-type', 'type': 'windows']) }}"><u>Windows DLLs</u></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-type', 'type': 'tools']) }}"><u>Developer Tools</u></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-type', 'type': 'stubs']) }}"><u>IDE stubs</u></a></li>
    </ul>


    <div class="note">Phalcon is a C extension so you need to download a binary for your platform or compile it from source code.</div>

    To use phalcon on Windows you can download a DLL library.
    Edit your php.ini and append at the end:

    <pre class="language-ini">
        <code>extension=php_phalcon.dll</code>
    </pre>

    Restart your webserver to load the extension.

    <br/> <br/>

    <div class="note-orange">
        We highly recommend you to use the latest version of PHP so as
        to take advantage of the full feature set of Phalcon.
    </div>

    <br/>

    <table class="api-table constants-table">

        <tr>
            <td colspan="4">
                <h2>Stable/Master versions</h2>
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <h3>x86</h3>
            </td>
            <td colspan="2">
                <h3>x64</h3>
            </td>
        </tr>

        {% for key, value in current['x86'] %}
            <tr>
                <td>
                    {{ current['x86'][key]['name'] }}
                    <br/>
                    <span style="font-size:10px">{{ current['x86'][key]['date'] }} / sha1: {{ current['x86'][key]['checksum'] }}</span>
                </td>
                <td class="text-right">
                    {{ link_to(current['x86'][key]['file'], 'download', 'target': '_download', 'title': current['x86'][key]['name']) }}
                </td>
                <td>
                    {{ current['x64'][key]['name'] }}
                    <br/>
                    <span style="font-size:10px">{{ current['x64'][key]['date'] }} / sha1: {{ current['x64'][key]['checksum'] }}</span>
                </td>
                <td class="text-right">
                    {{ link_to(current['x64'][key]['file'], 'download', 'target': '_download', 'title': current['x64'][key]['name']) }}
                </td>
            </tr>
        {% endfor %}

        <tr>
            <td colspan="2">
                Source Code: <a target="_download" href="https://github.com/phalcon/cphalcon/tree/master" title="GitHub Repo">github</a>
            </td>
        </tr>

    </table>

</div>
