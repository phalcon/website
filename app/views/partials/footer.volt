<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-xs-6 col-sm-2">
                <h4>Download</h4>
                <ul>
                    <li><a href="#">Installing Phalcon PHP</a></li>
                    <li><a href="{{ docs_root }}index.html" class="header-nav-link" target="_blank">{{ tr('documentation') }}</a></li>
                    <li><a href="#">API</a></li>
                    <li><a href="#">Tutorial</a></li>
                    <li><a href="#">Sample Applications</a></li>
                    <li><a href="#">License</a></li>
                </ul>
            </div>
            <div class="col-xs-6 col-sm-2">
                <h4>Documentation</h4>
                <ul>
                    <li><a href="#">Installing Phalcon PHP</a></li>
                    <li><a href="{{ docs_root }}index.html" class="header-nav-link" target="_blank">{{ tr('documentation') }}</a></li>
                    <li><a href="#">API</a></li>
                    <li><a href="#">Tutorial</a></li>
                    <li><a href="#">Sample Applications</a></li>
                    <li><a href="#">License</a></li>
                </ul>
            </div>
            <div class="col-xs-6 col-sm-2">
                <h4>Community</h4>
                <ul>
                    <li><a href="http://forum.phalconphp.com/" class="header-nav-link" target="_blank">{{ tr('forum') }}</a></li>
                    <li><a href="https://github.com/phalcon/cphalcon">GitHub</a></li>
                    <li><a href="https://github.com/phalcon/cphalcon/issues" class="link-black">{{ tr('issue_tracker') }}</a></li>
                    <li><a href="http://stackoverflow.com/questions/tagged/phalcon" class="link-black">{{ tr('stack_overflow') }}</a></li>
                    <li>{{ link_to(['for': 'pages', 'pageSlug': 'testimonials', 'language': language], tr('testimonials')) }}</li>
                    <li><a href="http://builtwith.phalconphp.com/">Built with Phalcon</a></li>
                    <li><a href="http://store.phalconphp.com/">{{ tr('store') }}</a></li>
                </ul>
            </div>
            <div class="col-xs-6 col-sm-2">
                <h4>About</h4>
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
            <div class="col-xs-12 col-sm-4">
                <p class="license">
                    Phalcon is an open-source PHP framework <br />
                    built as a C-extension. It is available under the <br />
                    <a href="http://opensource.org/licenses/BSD-3-Clause" target="_blank">new BSD License</a>.
                </p>

                <div class="design">
                    <span>Designed by:</span>
                    <a href="http://www.fog-city.net/phalcon-development-team" class="fogcity" target="_blank" title="Phalcon Development Team"><span>Fog City - Phalcon Development Team</span></a>
                </div>
            </div>
        </div>
    </div>
</footer>