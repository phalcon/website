<!DOCTYPE html>
<html lang="{{ language }}">

{% include 'partials/head.volt' %}
<body>

{% block content %} {% endblock %}

{% include 'partials/footer.volt' %}

    {{ assets.outputJs('footer_js') }}
</body>
</html>
