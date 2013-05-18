<!DOCTYPE html>
<html lang="en">
    {% include 'partials/header.volt' %}
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
            </div>
        </div>

        {% include 'partials/footer.volt' %}

        {% if config.app.env.devel %}
        {{ javascript_include(config.app.js.jquery, false) }}
        {{ javascript_include(config.app.js.bootstrap, false) }}
        {{ javascript_include(config.app.js.bootstrap_tab, false) }}
        {{ javascript_include(config.app.js.highlight, false) }}
        {{ javascript_include(config.app.js.helper, false) }}
        {%- else -%}
        {{ javascript_include(config.app.js.compiled) }}
        {% endif %}

        <script>format()</script>
	</body>
</html>
