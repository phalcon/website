<head>
    <meta charset="utf-8">
    {{ get_title() }}
    {{ stylesheet_link(config.app.css.font_sans, false) }}
    {{ stylesheet_link(config.app.css.font_rosario, false) }}
    {{ stylesheet_link(config.app.css.site) }}
    {{ stylesheet_link(config.app.css.fork) }}
    <!--[if IE]>
    {{ stylesheet_link(config.app.css.fork_ie) }}
    <![endif]-->

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="PhalconPHP is a web framework delivered as a C extension providing high performance and lower resource consumption"/>
    <meta name="author" content="PhalconPHP Team" />
</head>
