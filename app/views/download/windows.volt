{% extends 'layouts/main.volt' %}

{% block content %}

{% include 'pages/head.volt' %}

<section class="download">
    <div class="container">

        {% include 'download/menu.volt' %}

        <div class="alert alert-warning">
            {{ locale.translate('download_windows_note') }}
        </div>

        <h2>{{ locale.translate('download_windows_stable') }}</h2>
        <table class="table">

            <tr>
                <th colspan="2">
                    <h3>x86</h3>
                </th>
                <th colspan="2">
                    <h3>x64</h3>
                </th>
            </tr>
            <tr>
                {% for key,data in releases['latest']['x86'] %}
                <td>
                    {{ data['name'] }}
                    <br/>
                    <span class="small">
                        {{ data['date'] }} / sha1: {{ data['sha1'] }}
                    </span>
                </td>
                <td class="text-right">
                    <a href="#" title="{{ data['name'] }}"
                       class="btn btn-success"
                       target="_download">
                        {{ locale.translate('download') }}
                    </a>
                </td>
                <td>
                    {{ releases['latest']['x64'][key]['name'] }}
                    <br/>
                    <span class="small">
                        {{ releases['latest']['x64'][key]['date'] }} /
                        sha1: {{ releases['latest']['x64'][key]['sha1'] }}
                    </span>
                </td>
                <td class="text-right">
                    <a href="#" title="{{ releases['latest']['x64'][key]['name'] }}"
                       class="btn btn-success"
                       target="_download">
                        {{ locale.translate('download') }}
                    </a>
                </td>
            </tr>
            {% endfor %}

            <tr>
                <td colspan="4">
                    {{ locale.translate('download_source_code', 'https://github.com/phalcon/cphalcon/tree/master') }}
                </td>
            </tr>

        </table>

        <br/><br/><br/>

        <h3>{{ locale.translate('download_windows_installation') }}</h3>

        <p>{{ locale.translate('download_windows_installation', docs_root ~ 'install.html#windows') }}</p>
        <pre class="language-ini"><code>extension=php_phalcon.dll</code></pre>

        <br/><br/>

        <h3>{{ locale.translate('download_windows_guides') }}</h3>

        <p>
            <ul class="dash-list">
                <li><a href="{{ docs_root ~ 'reference/xampp.html' }}">{{ locale.translate('download_windows_guides_xampp') }}</a></li>
                <li><a href="{{ docs_root ~ 'reference/wamp.html' }}">{{ locale.translate('download_windows_guides_wamp') }}</a></li>
            </ul>
        </p>

        <br/> <br/>

        <h2>{{ locale.translate('download_windows_older') }}</h2>
        <table class="table">
            <tr>
                <th colspan="2">
                    <h3>x86</h3>
                </th>
                <th colspan="2">
                    <h3>x64</h3>
                </th>
            </tr>
            {% for key,data in releases['previous']['x86'] %}
            <tr>
                <td>
                    {{ data['name'] }}
                    <br/>
                    <span class="small">
                    {{ data['date'] }} / sha1: {{ data['sha1'] }}
                </span>
                </td>
                <td class="text-right">
                    <a href="#" title="{{ data['name'] }}"
                       class="btn btn-success"
                       target="_download">
                        {{ locale.translate('download') }}
                    </a>
                </td>
                <td>
                    {{ releases['previous']['x64'][key]['name'] }}
                    <br/>
                    <span class="small">
                    {{ releases['previous']['x64'][key]['date'] }} /
                    sha1: {{ releases['previous']['x64'][key]['sha1'] }}
                </span>
                </td>
                <td class="text-right">
                    <a href="#" title="{{ releases['previous']['x64'][key]['name'] }}"
                       class="btn btn-success"
                       target="_download">
                        {{ locale.translate('download') }}
                    </a>
                </td>
            </tr>
            {% endfor %}
            <tr>
                <td colspan="4">
                    {{ locale.translate('download_source_code_switch', 'https://github.com/phalcon/cphalcon/') }}
                </td>
            </tr>
        </table>
    </div>
</section>

{% endblock %}