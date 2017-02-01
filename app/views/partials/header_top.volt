                <!-- Header top -->
                <div class="col-sm-3 logo">
                    <a href="{{ url() }}">
                        {{ image(utils.getCdnUrl('images/phalcon1.png'), 'class': 'logo-phalcon', 'alt': '') }}
                    </a>
                </div>
                <div class="col-sm-7 menu-phalcon">
                    <div class="center">
                        {% include 'partials/topmenu.volt' %}
                    </div>
                </div>
                <div class="col-sm-2 social-icons-align" style="margin-top:15px;">
                    <a href="https://twitter.com/phalconphp">
                        <img alt="" src="{{ utils.getCdnUrl('images/social/twitter.png') }}">
                    </a>
                    <a href="https://github.com/phalcon/cphalcon/">
                        <img alt="" src="{{ utils.getCdnUrl('images/social/github.png') }}">
                    </a>
                </div>
                <!-- /End Header Top -->
