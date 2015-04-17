<header class="page-header">
    <nav class="navbar" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu-container">
                    <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                </button>
                <a class="phalcon-logo" href="/{{ language }}/">
                    <img id="mascot" src="/images/logo.png" alt="Phalcon PHP"/>
                    <img src="/images/phalcon-logo-text.png" alt="Phalcon PHP"/>
                </a>
            </div>

            <div class="collapse navbar-collapse navbar-right" id="main-menu-container">
                {% include 'partials/topmenu.volt' %}
            </div>
        </div>
    </nav>
</header>
<div class="heading">
    <div class="container">
        <h2>
            {% if dispatcher.getControllerName() === 'download' %}
                {% if isPage === 'index' %}
                    {{ tr('download_phalcon') }}
                {% elseif isPage === 'windows' %}
                    Phalcon for windows
                {% elseif isPage === 'tools' %}
                    {{ tr('download_developer_tools') }}
                {% elseif isPage === 'vagrant' %}
                    Vagrant boxes
                {% elseif isPage === 'stubs' %}
                    Phalcon IDE Stubs
                {% endif %}
            {% elseif isPage === 'about' %}
                {{ tr('get_involved') }}
            {% elseif isPage === 'team' %}
                {{ tr('phalcon_team') }}
            {% elseif isPage === 'testimonials' %}
                {{ tr('get_involved') }}
            {% elseif isPage === 'consulting' %}
                {{ tr('consulting') }}
            {% elseif isPage === 'hosting' %}
                {{ tr('hosting') }}
                {% elseIf isPage === 'roadmap' %}
                Roadmap
            {% elseif isPage === 'support' %}
                {{ tr('support') }}
            {% elseif isPage === 404 %}
                Not Found
            {% else %}
                Documentation - {{ dispatcher.getControllerName() }} - {{ dispatcher.getActionName() }}
            {% endif %}
        </h2>
    </div>
</div>