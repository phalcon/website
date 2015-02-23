<header class="page-header">
    <nav class="navbar" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu-container">
                    <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                </button>
                <a class="navbar-brand phalcon-logo" href="/"><span itemprop="name" class="sr-only">Phalcon PHP</span></a>
            </div>

            <div class="collapse navbar-collapse navbar-right" id="main-menu-container">
                {% include 'partials/topmenu.volt' %}
            </div>
        </div>
    </nav>
</header>
<div class="heading">
    <div class="container">
        <div class="row">
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
                {% else %}
                    Documentation - {{ dispatcher.getControllerName() }} - {{ dispatcher.getActionName() }}
                {% endif %}
            </h2>
        </div>
    </div>
</div>