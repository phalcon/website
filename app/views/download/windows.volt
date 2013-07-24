<div class="header-line">
    <div class="size-wrap">
        <h1 class="header-line-title title-white">Phalcon for Windows</h1>
    </div>
</div>

<div class="size-wrap">

    <ul class="tabs clear-fix">
        <li><a class="tab-link" href="{{ url(['for': 'download']) }}"><span style="text-decoration: underline">Linux/Unix/Mac</span></a></li>
        <li><a class="tab-link active" href="{{ url(['for': 'download-type', 'type': 'windows']) }}"><span style="text-decoration: underline">Windows DLLs</span></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-type', 'type': 'tools']) }}"><span style="text-decoration: underline">Developer Tools</span></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-type', 'type': 'stubs']) }}"><span style="text-decoration: underline">IDE stubs</span></a></li>
    </ul>

    <div class="note-orange">
        We highly recommend you to use the latest version of PHP so as to take advantage of the full feature set of Phalcon.
    </div>

    <h2>Stable/Master versions</h2>
    <table class="api-table constants-table">

        <tr>
            <th colspan="2">
                <h3>x86</h3>
            </th>
            <th colspan="2">
                <h3>x64</h3>
            </th>
        </tr>

        {% for key, value in current['x86'] %}
            <tr>
                <td>
                    {{ current['x86'][key]['name'] }}
                    <br/>
                    <span style="font-size:10px">{{ current['x86'][key]['date'] }} / sha1: {{ current['x86'][key]['checksum'] }}</span>
                </td>
                <td class="text-right">
                    <a href="{{ current['x86'][key]['file'] }}" target="_download" title="{{ current['x86'][key]['name'] }}" class="button button-small green">download</a>
                </td>
                <td>
                    {{ current['x64'][key]['name'] }}
                    <br/>
                    <span style="font-size:10px">{{ current['x64'][key]['date'] }} / sha1: {{ current['x64'][key]['checksum'] }}</span>
                </td>
                <td class="text-right">
                    <a href="{{ current['x64'][key]['file'] }}" target="_download" title="{{ current['x64'][key]['name'] }}" class="button button-small green">download</a>
                </td>
            </tr>
        {% endfor %}

        <tr>
            <td colspan="4">
                Source Code: <a target="_download" href="https://github.com/phalcon/cphalcon/tree/master" title="GitHub Repo">github</a>
            </td>
        </tr>

    </table>

    <br/><br/><br/>

    <h3>Installation</h3>

    <p>To use phalcon on Windows you can download a DLL library. Edit your php.ini, append at the end, and restart your webserver to load the extension. <a
                href="http://docs.phalconphp.com/en/latest/reference/install.html#windows">More</a>.</p>
    <pre class="language-ini"><code>extension=php_phalcon.dll</code></pre>

    <br/><br/>

    <h3>Related Guides</h3>
    <p>
        <ul class="dash-list">
            <li><a href="http://docs.phalconphp.com/en/latest/reference/xampp.html">Installation on XAMPP</a></li>
            <li><a href="http://docs.phalconphp.com/en/latest/reference/wamp.html">Installation on WAMP</a></li>
        </ul>
    </p>

    <br/> <br/>
    <h2>Alpha/Beta versions</h2>
    <table class="api-table constants-table">

        <tr>
            <th colspan="2">
                <h3>x86</h3>
            </th>
            <th colspan="2">
                <h3>x64</h3>
            </th>
        </tr>

        {% for key, value in alpha['x86'] %}
            <tr>
                <td>
                    {{ alpha['x86'][key]['name'] }}
                    <br/>
                    <span style="font-size:10px">{{ alpha['x86'][key]['date'] }} / sha1: {{ alpha['x86'][key]['checksum'] }}</span>
                </td>
                <td class="text-right">
                    <a href="{{ alpha['x86'][key]['file'] }}" target="_download" title="{{ alpha['x86'][key]['name'] }}" class="button button-small green">download</a>
                </td>
                <td>
                    {{ alpha['x64'][key]['name'] }}
                    <br/>
                    <span style="font-size:10px">{{ alpha['x64'][key]['date'] }} / sha1: {{ alpha['x64'][key]['checksum'] }}</span>
                </td>
                <td class="text-right">
                    <a href="{{ alpha['x64'][key]['file'] }}" target="_download" title="{{ alpha['x64'][key]['name'] }}" class="button button-small green">download</a>
                </td>
            </tr>
        {% endfor %}

        <tr>
            <td colspan="4">
                Source Code (please switch to the relevant branch): <a target="_download" href="https://github.com/phalcon/cphalcon/" title="GitHub Repo">github</a>
            </td>
        </tr>

    </table>

    <br /><br />
    <h2>Older versions</h2>
    <table class="api-table constants-table">

        <tr>
            <th colspan="2">
                <h3>x86</h3>
            </th>
            <th colspan="2">
                <h3>x64</h3>
            </th>
        </tr>

        {% for key, value in old['x86'] %}
            <tr>
                <td>
                    {{ old['x86'][key]['name'] }}
                    <br/>
                    <span style="font-size:10px">{{ old['x86'][key]['date'] }} / sha1: {{ old['x86'][key]['checksum'] }}</span>
                </td>
                <td class="text-right">
                    <a href="{{ old['x86'][key]['file'] }}" target="_download" title="{{ old['x86'][key]['name'] }}" class="button button-small green">download</a>
                </td>
                {% if old['x64'][key] is defined %}
                    <td>
                        {{ old['x64'][key]['name'] }}
                        <br/>
                        <span style="font-size:10px">{{ old['x64'][key]['date'] }} / sha1: {{ old['x64'][key]['checksum'] }}</span>
                    </td>
                    <td class="text-right">
                        <a href="{{ old['x64'][key]['file'] }}" target="_download" title="{{ old['x64'][key]['name'] }}" class="button button-small green">download</a>
                    </td>
                {% else %}
                    <td colspan="2"></td>
                {% endif %}
            </tr>
        {% endfor %}

        <tr>
            <td colspan="4">
                Source Code (please switch to the relevant branch): <a target="_download" href="https://github.com/phalcon/cphalcon/" title="GitHub Repo">github</a>
            </td>
        </tr>

    </table>

</div>
