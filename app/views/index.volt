<!DOCTYPE html>
<html lang="en">
    {% include 'partials/header.volt' %}
    <body>

        <div id="content" class="container">
    
            <div class="row main-block">
            {{ partial('partials/navbar') }}
    
                <section>
                        {{ content() }}
                    <div class="clearfix"></div>
                </section>
            
             {% include 'partials/footer.volt' %}
            </div>

        </div>
        
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
