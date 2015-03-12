<div class="prefooter">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
                <span>Follow along:</span>
                <a href="https://twitter.com/phalconphp" alt="Twitter" class="btn-social btn-social-twitter"><i class="icon-twitter"></i></a>
                <a href="https://www.facebook.com/pages/Phalcon-Framework/134230726685897" alt="Facebook" class="btn-social btn-social-facebook"><i class="icon-facebook"></i></a>
                <a href="https://plus.google.com/102376109340560896457" alt="Google+" class="btn-social btn-social-googleplus"><i class="icon-googleplus"></i></a>
                <a href="https://github.com/phalcon/cphalcon" alt="Github" class="btn-social btn-social-github"><i class="icon-github"></i></a>
            </div>
        </div>
    </div>

</div>
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-xs-6 col-sm-2">
                <h4>Download</h4>
                <ul>
                    <li><a href="/download">Installing Phalcon PHP</a></li>
                    <li><a href="{{ docs_root }}index.html" class="header-nav-link" target="_blank">{{ tr('documentation') }}</a></li>
                    <li><a href="http://api.phalconphp.com">API</a></li>
                    <li><a href="{{ docs_root }}reference/tutorial.html">Tutorial</a></li>
                    <li><a href="{{ docs_root }}reference/tutorial.html#sample-applications">Sample Applications</a></li>
                </ul>
            </div>
            <div class="col-xs-6 col-sm-2">
                <h4>Community</h4>
                <ul>
                    <li><a href="http://forum.phalconphp.com/" class="header-nav-link" target="_blank">{{ tr('forum') }}</a></li>
                    <li><a href="https://github.com/phalcon/cphalcon">GitHub</a></li>
                    <li><a href="https://github.com/phalcon/cphalcon/issues">{{ tr('issue_tracker') }}</a></li>
                    <li><a href="http://stackoverflow.com/questions/tagged/phalcon">{{ tr('stack_overflow') }}</a></li>
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
                    {# #TODO /phalcon-development-team giving 404
                    <a href="http://www.fog-city.net/phalcon-development-team" class="fogcity" target="_blank" title="Phalcon Development Team"><span>Fog City - Phalcon Development Team</span></a>
                    #}
                    <a href="http://www.fog-city.net/" class="fogcity" target="_blank" title="Fog City Software"><span>Fog City Software</span></a>
                </div>
            </div>
        </div>
    </div>
</footer>