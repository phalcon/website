{% include 'download/header.volt' %}

{{ content() }}

            <div class="alert alert-warning">
                {{ tr('download_windows_note') }}
            </div>

            <h2>{{ tr('download_windows_stable') }}</h2>
            <table class="table">

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
                            <span class="small">{{ current['x86'][key]['date'] }}
                                / sha1: {{ current['x86'][key]['checksum'] }}</span>
                        </td>
                        <td class="text-right">
                            <a href="{{ current['x86'][key]['file'] }}" title="{{ current['x86'][key]['name'] }}"
                               class="btn btn-success" target="_download">{{ tr('download') }}</a>
                        </td>
                        {% if current['x64'][key]['name'] is defined %}
                        <td>
                            {{ current['x64'][key]['name'] }}
                            <br/>
                            <span class="small">{{ current['x64'][key]['date'] }}
                                / sha1: {{ current['x64'][key]['checksum'] }}</span>
                        </td>
                        <td class="text-right">
                            <a href="{{ current['x64'][key]['file'] }}" title="{{ current['x64'][key]['name'] }}"
                               class="btn btn-success" target="_download">{{ tr('download') }}</a>
                        </td>
                        {% else %}
                        <td>
                            Missing x64 {{ key }}
                        </td>
                        <td class="text-right">
                            <a href="#" class="btn btn-default disabled" target="_download">{{ tr('download') }}</a>
                        </td>
                        {% endif %}
                    </tr>
                {% endfor %}

                <tr>
                    <td colspan="4">
                        {{ tr('download_source_code', 'https://github.com/phalcon/cphalcon/tree/master') }}
                    </td>
                </tr>

            </table>

            <br/><br/><br/>

            <h3>{{ tr('download_windows_installation') }}</h3>

            <p>{{ tr('download_windows_installation', docs_root ~ 'install.html#windows') }}</p>
            <pre class="language-ini"><code>extension=php_phalcon.dll</code></pre>

            <br/><br/>

            <h3>{{ tr('download_windows_guides') }}</h3>

            <p>
                <ul class="dash-list">
                    <li><a href="{{ docs_root ~ 'reference/xampp.html' }}">{{ tr('download_windows_guides_xampp') }}</a></li>
                    <li><a href="{{ docs_root ~ 'reference/wamp.html' }}">{{ tr('download_windows_guides_wamp') }}</a></li>
                </ul>
            </p>

            <br/> <br/>

            <h2>{{ tr('download_windows_alpha') }}</h2>
            <table class="table">

                <tr>
                    <th colspan="2">
                        <h3>x86</h3>
                    </th>
                    <th colspan="2">
                        <h3>x64</h3>
                    </th>
                </tr>

                {% if alpha['x64'] is defined %}
                    {% for key, value in alpha['x86'] %}
                        <tr>
                            <td>
                                {{ alpha['x86'][key]['name'] }}
                                <br/>
                                <span class="small">{{ alpha['x86'][key]['date'] }}
                                    / sha1: {{ alpha['x86'][key]['checksum'] }}</span>
                            </td>
                            <td class="text-right">
                                <a href="{{ alpha['x86'][key]['file'] }}" title="{{ alpha['x86'][key]['name'] }}"
                                   class="btn btn-success" target="_download">{{ tr('download') }}</a>
                            </td>
                            {% if alpha['x64'][key] is defined %}
                                <td>
                                    {{ alpha['x64'][key]['name'] }}
                                    <br/>
                                    <span class="small">{{ alpha['x64'][key]['date'] }}
                                        / sha1: {{ alpha['x64'][key]['checksum'] }}</span>
                                </td>
                                <td class="text-right">
                                    <a href="{{ alpha['x64'][key]['file'] }}" title="{{ alpha['x64'][key]['name'] }}"
                                       class="btn btn-success" target="_download">{{ tr('download') }}</a>
                                </td>
                            {% else %}
                                <td colspan="2"></td>
                            {% endif %}
                        </tr>
                    {% endfor %}
                    <tr>
                        <td colspan="4">
                            {{ tr('download_source_code_switch', 'https://github.com/phalcon/cphalcon/') }}
                        </td>
                    </tr>
                {% else %}
                    <tr>
                        <td colspan="4">{{ tr('download_no_alpha_beta') }}</td>
                    </tr>
                {% endif %}

            </table>

            <br/><br/>

            <h2>{{ tr('download_windows_older') }}</h2>
            <table class="table">

                <tr>
                    <th colspan="2">
                        <h3>x86</h3>
                    </th>
                    <th colspan="2">
                        <h3>x64</h3>
                    </th>
                </tr>

                {% if old['x86'] is defined %}
                    {% for key, value in old['x86'] %}
                        <tr>
                            <td>
                                {{ old['x86'][key]['name'] }}
                                <br/>
                                <span class="small">{{ old['x86'][key]['date'] }}
                                    / sha1: {{ old['x86'][key]['checksum'] }}</span>
                            </td>
                            <td class="text-right">
                                <a href="{{ old['x86'][key]['file'] }}" title="{{ old['x86'][key]['name'] }}"
                                   class="btn btn-success" target="_download">{{ tr('download') }}</a>
                            </td>
                            {% if old['x64'][key] is defined %}
                                <td>
                                    {{ old['x64'][key]['name'] }}
                                    <br/>
                                    <span class="small">{{ old['x64'][key]['date'] }}
                                        / sha1: {{ old['x64'][key]['checksum'] }}</span>
                                </td>
                                <td class="text-right">
                                    <a href="{{ old['x64'][key]['file'] }}" title="{{ old['x64'][key]['name'] }}"
                                       class="btn btn-success" target="_download">{{ tr('download') }}</a>
                                </td>
                            {% else %}
                                <td colspan="2"></td>
                            {% endif %}
                        </tr>
                    {% endfor %}
                {% endif %}
                <tr>
                    <td colspan="4">
                        {{ tr('download_source_code_switch', 'https://github.com/phalcon/cphalcon/') }}
                    </td>
                </tr>
            </table>
        </div>
    </div>
</section>
