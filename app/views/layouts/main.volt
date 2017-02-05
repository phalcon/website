<!doctype html>
<!--[if IE 8]> <html lang="{{ language }}" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="{{ language }}" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="{{ language }}" class="no-js">
<!--<![endif]-->
<head>
    {%- include "include/meta.volt" -%}
    {%- include "include/icons.volt" -%}
    {%- include "include/analytics.volt" -%}

    {{- assets.outputCss('header_css') -}}

    <title>{{ locale.translate(language, get_title(false)) ~ " - " ~ config.get('app').get('name', 'Phalcon Framework') }}</title>
</head>
<body>
    {%- block content %} {% endblock -%}

    {%- include "include/footer.volt" -%}

    {{- assets.outputJs('footer_js') -}}
</body>
</html>
