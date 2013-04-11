<head>
    <meta charset="utf-8">
    {{ get_title() }}

    {% if config.app.env.devel %}
    {{ stylesheet_link(config.app.css.bootstrap, false) }}
    {{ stylesheet_link(config.app.css.site, false) }}
    {% else %}
    {{ stylesheet_link(config.app.css.compiled, false) }}
    {% endif %}

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Phalcon is a web framework delivered as a C extension providing high performance and lower resource consumption"/>
    <meta name="author" content="Phalcon Team" />
</head>
