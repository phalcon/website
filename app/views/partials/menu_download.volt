{%-
    set pages = [
        'linux'   : 'download_linux',
        'windows' : 'download_windows',
        'tools'   : 'download_developer_tools',
        'docker'  : 'download_docker',
        'stubs'   : 'download_ide_stubs'
    ]
-%}
        <div class="row">
            <ul class="nav nav-pills">
                {% for currentPage, label in pages %}
                <li{% if page === currentPage %} class="active"{% endif %}>
                    <a href="/{{ language }}/download/{{ currentPage }}">
                        <span class="span-ul">{{ locale.translate(label) }}</span>
                    </a>
                </li>
                {% endfor %}
            </ul>
        </div>
