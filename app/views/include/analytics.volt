{%- if (not config.get('google').get('analytics', '') is empty) -%}
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-133802124-3"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-133802124-3');
    </script>
    <!-- End Google Analytics -->
{%- endif -%}
