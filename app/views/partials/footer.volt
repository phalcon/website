<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-xs-4 col-sm-3">
                <h4>{{ locale.translate('download') }}</h4>
                <ul>
                    <li><a href="/download">{{ locale.translate('installing_phalcon_php') }}</a></li>
                    <li><a href="{{ docsRoot }}index.html" class="header-nav-link" target="_blank">{{ locale.translate('documentation') }}</a></li>
                    <li><a href="http://api.phalconphp.com">API</a></li>
                    <li><a href="{{ docsRoot }}reference/tutorial.html">{{ locale.translate('tutorial') }}</a></li>
                    <li><a href="{{ docsRoot }}reference/tutorial.html#sample-applications">{{ locale.translate('sample_applications') }}</a></li>
                </ul>
            </div>
            <div class="col-xs-4 col-sm-3">
                <h4>{{ locale.translate('community') }}</h4>
                <ul>
                    <li><a href="http://forum.phalconphp.com/" class="header-nav-link" target="_blank">{{ locale.translate('forum') }}</a></li>
                    <li><a href="https://github.com/phalcon/cphalcon">GitHub</a></li>
                    <li><a href="https://github.com/phalcon/cphalcon/issues">{{ locale.translate('issue_tracker') }}</a></li>
                    <li><a href="http://stackoverflow.com/questions/tagged/phalcon">{{ locale.translate('stack_overflow') }}</a></li>
                    {#<li>{{ link_to(['for': 'pages', 'pageSlug': 'testimonials', 'language': language], locale.translate('testimonials')) }}</li>#}
                    <li><a href="http://builtwith.phalconphp.com/">{{ locale.translate('built_with_phalcon') }}</a></li>
                    <li><a href="http://store.phalconphp.com/">{{ locale.translate('store') }}</a></li>
                </ul>
            </div>
            <div class="col-xs-4 col-sm-2">
                <h4>{{ locale.translate('about') }}</h4>
                <ul>
                    <li><a class="link-black" href="http://blog.phalconphp.com/">{{ locale.translate('blog') }}</a></li>
                    {#<li>{{ link_to(['for': 'pages', 'pageSlug': 'about', 'language': language], locale.translate('about')) }}</li>#}
                    {#<li>{{ link_to(['for': 'pages', 'pageSlug': 'team', 'language': language], locale.translate('team')) }}</li>#}
                    {#<li>{{ link_to(['for': 'pages', 'pageSlug': 'roadmap', 'language': language], locale.translate('roadmap')) }}</li>#}
                    {#<li>{{ link_to(['for': 'pages', 'pageSlug': 'donate', 'language': language], locale.translate('donate')) }}</li>#}
                    {#<li>{{ link_to(['for': 'pages', 'pageSlug': 'consulting', 'language': language], locale.translate('consulting')) }}</li>#}
                    {#<li>{{ link_to(['for': 'pages', 'pageSlug': 'hosting', 'language': language], locale.translate('hosting')) }}</li>#}
                </ul>
            </div>
            <div id="license-spaccer" class="visible-xs"></div>
            <div id="license-wrapper" class="col-xs-12 col-sm-4">
                <p class="license">
                    {{ locale.translate('license_new_bsd') }}
                </p>
            </div>
        </div>
    </div>
</footer>
