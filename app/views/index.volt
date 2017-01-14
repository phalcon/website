<!DOCTYPE html>
<html lang="{{ language }}">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

        {% include 'partials/head.volt' %}

        {{ content() }}

        {% include 'partials/footer.volt' %}

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
        <script src="{{ cdn_url }}js/plugins/jquery.lazyload.min.js"></script>
        <script src="{{ cdn_url }}js/plugins/jquery.magnific-popup.min.js"></script>
        <script src="{{ cdn_url }}js/plugins/highlight.pack.js"></script>
        <script src="{{ cdn_url }}js/plugins/jquery.ajaxchimp.min.js"></script>
        <script src="{{ cdn_url }}js/plugins/jquery.backstretch.min.js"></script>
        <script src="{{ cdn_url }}js/custom.js"></script>

{% if (not config.application.googleAnalytics is empty) %}
        <script>
            (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
            })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

            ga('create', '{{ config.application.googleAnalytics }}', 'auto');
            ga('send', 'pageview');

        </script>
{% endif %}

    </body>
</html>
