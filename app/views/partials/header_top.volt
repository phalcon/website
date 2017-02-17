                <!-- Header top -->
                <div class="col-sm-3 logo">
                    <a href="{{ url() }}">
                        {{ image(utils.getCdnUrl('images/phalcon1.png'), 'class': 'logo-phalcon', 'alt': '') }}
                    </a>
                </div>
                <div class="col-sm-8 menu-phalcon">
                    {% include 'partials/topmenu.volt' %}
                </div>
                <div class="col-sm-1 social-icons-align" style="margin-top:15px;padding:0">
                    <a href="https://twitter.com/phalconphp">
                        <img alt="" src="{{ utils.getCdnUrl('images/social/twitter.png') }}">
                    </a>
                    <a href="https://github.com/phalcon/cphalcon/">
                        <img alt="" src="{{ utils.getCdnUrl('images/social/github.png') }}">
                    </a>
                </div>
                <!-- /End Header Top -->
