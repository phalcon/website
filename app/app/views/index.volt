<!DOCTYPE html>
<html lang="{{ language }}">
<head>
    {% include 'partials/head.volt' %}
</head>

<body>

<!-- =========================
     Pre-loader
============================== -->

<div id="loading">
    <div id="loading-center">
        <div id="loading-center-absolute">
            <div id="object"></div>
        </div>
    </div>
</div>

{{ content() }}

<!-- =========================
     Section8 - Subscribe
============================== -->

{% include 'partials/footer.volt' %}

<!-- =========================
     Section9 - Copyright
============================== -->
<footer class="copyright-section">
  <div class="container">
    <div class="col-md-12 ">
      <P>© Copyright 2016 <a href="#"></a>Developed By <a href="#">Louder Tech</a></P>
    </div>
  </div>
</footer>

<!-- =========================
     Scripts
============================== -->

<!--
<script src="js/jquery.min.js"></script>
<script src="js/jquery.ajaxchimp.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script src="js/jquery.vide.min.js"></script>
<script src="js/custom.js"></script>
<script src="{{ cdn_url }}js/phalcon.min.js"></script>
-->

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="{{ cdn_url }}js/jquery.ajaxchimp.min.js"></script>
<script src="{{ cdn_url }}js/jquery.vide.min.js"></script>
<script src="{{ cdn_url }}js/custom.js"></script>
<script src="{{ cdn_url }}js/plugins/highlight.pack.js"></script>


</body>
</html>
