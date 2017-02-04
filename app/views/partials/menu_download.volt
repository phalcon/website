        <div class="row">
            <ul class="nav nav-pills">
                <li{% if page === 'index' %} class="active"{% endif %}>
                    <a href="/{{ language }}/download">
                        <span class="span-ul">{{ locale.translate('download_linux') }}</span>
                    </a>
                </li>
                <li{% if page === 'windows' %} class="active"{% endif %}>
                    <a href="/{{ language }}/download/windows">
                        <span class="span-ul">{{ locale.translate('download_windows') }}</span>
                    </a>
                </li>
                <li{% if page === 'tools' %} class="active"{% endif %}>
                    <a href="/{{ language }}/download/tools">
                        <span class="span-ul">{{ locale.translate('download_developer_tools') }}</span>
                    </a>
                </li>
                <li{% if page === 'docker' %} class="active"{% endif %}>
                    <a href="/{{ language }}/download/docker">
                        <span class="span-ul">{{ locale.translate('download_docker') }}</span>
                    </a>
                </li>
                <li{% if page === 'vagrant' %} class="active"{% endif %}>
                    <a href="/{{ language }}/download/language">
                        <span class="span-ul">{{ locale.translate('download_vagrant') }}</span>
                    </a>
                </li>
                <li{% if page === 'stubs' %} class="active"{% endif %}>
                    <a href="/{{ language }}/download/language">
                        <span class="span-ul">{{ locale.translate('download_ide_stubs') }}</span>
                    </a>
                </li>
            </ul>
        </div>
