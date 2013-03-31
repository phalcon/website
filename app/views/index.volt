<!DOCTYPE html>
<html lang="en">
    {{ partial('partials/header') }}
    <body>
        {{ partial('partials/navbar') }}

        <div id="content" class="container-fluid">
            <div class="row-fluid">
                <section>
                    <div class="hero-unit">
                        {{ content() }}
                    </div>
                    <div class="clearfix"></div>
                </section>
                {# {{ partial('partials/sidebar') }} #}
            </div>
        </div>

        {{ partial('partials/footer') }}

        {% if config.app.env.devel %}
        {{ javascript_include(config.app.js.jquery, false) }}
        {{ javascript_include(config.app.js.bootstrap, false) }}
        {{ javascript_include(config.app.js.bootstrap_tab, false) }}
        {{ javascript_include(config.app.js.highlight, false) }}
        {{ javascript_include(config.app.js.helper, false) }}
        {% else %}
        {{ javascript_include(config.app.js.compiled) }}
        {% endif %}

        <script>format()</script>
	</body>
</html>
