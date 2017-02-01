{%
set downloadPages = [
    'index'   : 'download_linux',
    'windows' : 'download_windows',
    'tools'   : 'download_developer_tools',
    'docker'  : 'download_docker',
    'vagrant' : 'download_vagrant',
    'stubs'   : 'download_ide_stubs'
]
%}
        <div class="row">
            <ul class="nav nav-pills">
                {% for downloadPage,downloadLabel in downloadPages %}
                    <li{% if page === downloadPage %} class="active"{% endif %}>
                        <a href="/{{ language }}/{{ downloadPage }}">
                            <span class="span-ul">{{ locale.translate(downloadLabel) }}</span>
                        </a>
                    </li>
                {% endfor %}
            </ul>
        </div>
