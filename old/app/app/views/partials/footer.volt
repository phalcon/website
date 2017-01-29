<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-xs-4 col-sm-3">
                <h4>{{ tr('download') }}</h4>
                <ul>
                    <li><a href="/download">{{ tr('installing_phalcon_php') }}</a></li>
                    <li><a href="{{ docs_root }}index.html" class="header-nav-link" target="_blank">{{ tr('documentation') }}</a></li>
                    <li><a href="http://api.phalconphp.com">API</a></li>
                    <li><a href="{{ docs_root }}reference/tutorial.html">{{ tr('tutorial') }}</a></li>
                    <li><a href="{{ docs_root }}reference/tutorial.html#sample-applications">{{ tr('sample_applications') }}</a></li>
                </ul>
            </div>
            <div class="col-xs-4 col-sm-3">
                <h4>{{ tr('community') }}</h4>
                <ul>
                    <li><a href="http://forum.phalconphp.com/" class="header-nav-link" target="_blank">{{ tr('forum') }}</a></li>
                    <li><a href="https://github.com/phalcon/cphalcon">GitHub</a></li>
                    <li><a href="https://github.com/phalcon/cphalcon/issues">{{ tr('issue_tracker') }}</a></li>
                    <li><a href="http://stackoverflow.com/questions/tagged/phalcon">{{ tr('stack_overflow') }}</a></li>
                    <li>{{ link_to(['for': 'pages', 'pageSlug': 'testimonials', 'language': language], tr('testimonials')) }}</li>
                    <li><a href="http://builtwith.phalconphp.com/">{{ tr('built_with_phalcon') }}</a></li>
                    <li><a href="http://store.phalconphp.com/">{{ tr('store') }}</a></li>
                </ul>
            </div>
            <div class="col-xs-4 col-sm-2">
                <h4>{{ tr('about') }}</h4>
                <ul>
                    <li><a class="link-black" href="http://blog.phalconphp.com/">{{ tr('blog') }}</a></li>
                    <li>{{ link_to(['for': 'pages', 'pageSlug': 'about', 'language': language], tr('about')) }}</li>
                    <li>{{ link_to(['for': 'pages', 'pageSlug': 'team', 'language': language], tr('team')) }}</li>
                    <li>{{ link_to(['for': 'pages', 'pageSlug': 'roadmap', 'language': language], tr('roadmap')) }}</li>
                    <li>{{ link_to(['for': 'pages', 'pageSlug': 'donate', 'language': language], tr('donate')) }}</li>
                    <li>{{ link_to(['for': 'pages', 'pageSlug': 'consulting', 'language': language], tr('consulting')) }}</li>
                    <li>{{ link_to(['for': 'pages', 'pageSlug': 'hosting', 'language': language], tr('hosting')) }}</li>
                </ul>
            </div>
            <div id="license-spaccer" class="visible-xs"></div>
            <div id="license-wrapper" class="col-xs-12 col-sm-4">
                <p class="license">
                    {{ tr('license_new_bsd') }}
                </p>
            </div>
        </div>
    </div>
</footer>
