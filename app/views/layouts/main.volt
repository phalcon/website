<!DOCTYPE html>
<html lang="{{ language }}">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

{% include 'partials/head.volt' %}
<body>

{% block content %} {% endblock %}

{% include 'partials/footer.volt' %}

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="{{ cdnUrl }}/js/plugins/jquery.lazyload.min.js"></script>
    <script src="{{ cdnUrl }}/js/plugins/jquery.magnific-popup.min.js"></script>
    <script src="{{ cdnUrl }}/js/plugins/highlight.pack.js"></script>
    <script src="{{ cdnUrl }}/js/plugins/jquery.ajaxchimp.min.js"></script>
    <script src="{{ cdnUrl }}/js/plugins/jquery.backstretch.min.js"></script>
    <script src="{{ cdnUrl }}/js/custom.js"></script>
</body>
</html>
