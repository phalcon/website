{%- if (not config.get('google').get('analytics', '') is empty) -%}
    <!-- Google Analytics -->
    <script type="application/javascript">
        window.ga=window.ga||function(){(ga.q=ga.q||[]).push(arguments)};ga.l=+new Date;
        ga("create", "{{ config.get('google').get('analytics', '') }}", "auto");
        ga("send", "pageview", {
            "page": "https://phalconphp.com",
            "title": "Phalcon - High Performance PHP Framework"
        });
    </script>
    <script async src='https://www.google-analytics.com/analytics.js'></script>
    <!-- End Google Analytics -->
{%- endif -%}
