{% include 'partials/page.volt' %}

<section class="download">
    <div class="container">
        <div class="row">
            <ul class="nav nav-pills">
                <li role="presentation"{% if isPage === 'index' %} class="active" {% endif %}><a href="{{ url(['for': 'download', 'language': language]) }}"><span class="span-ul">{{ tr('download_linux') }}</span></a></li>
                <li role="presentation"{% if isPage === 'windows' %} class="active" {% endif %}><a href="{{ url(['for': 'download-type', 'type': 'windows', 'language': language]) }}"><span class="span-ul">{{ tr('download_windows') }}</span></a></li>
                <li role="presentation"{% if isPage === 'tools' %} class="active" {% endif %}><a href="{{ url(['for': 'download-type', 'type': 'tools', 'language': language]) }}"><span class="span-ul">{{ tr('download_developer_tools') }}</span></a></li>
                <li role="presentation"{% if isPage === 'vagrant' %} class="active" {% endif %}><a href="{{ url(['for': 'download-type', 'type': 'vagrant', 'language': language]) }}"><span class="span-ul">Vagrant</span></a></li>
                <li role="presentation"{% if isPage === 'stubs' %} class="active" {% endif %}><a href="{{ url(['for': 'download-type', 'type': 'stubs', 'language': language]) }}"><span class="span-ul">{{ tr('download_ide_stubs') }}</span></a></li>
            </ul>
