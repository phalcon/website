{% include 'pages/head.volt' %}
<section class="about">
    {% include 'pages/header.volt' %}
        <div class="row">
            <div class="col-lg-12">
                <p>{{ tr('about_description_1') }}</p>
                <p>{{ tr('about_description_2') }}</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <h3 class="text-uppercase">{{ tr('documentation_upper') }}</h3>
                <p>{{ tr('about_documentation_1', 'https://github.com/phalcon/docs', 'https://readthedocs.org') }}</p>
            </div>

            <div class="col-lg-6">
                <h3 class="text-uppercase">{{ tr('translations') }}</h3>
                <p>{{ tr('about_translations_1', 'http://www.transifex.com', 'Transifex', 'https://www.transifex.com/projects/p/phalcon') }}</p>
                <script type="text/javascript" src="https://www.google.com/jsapi"></script>
                <script type="text/javascript" src="https://www.transifex.com/projects/p/phalcon/resource/website/chart/inc_js/"></script>
                <div id="txchart-phalcon-website">Loading chart...</div>
            </div>
        </div>

        <div class="hr"></div>

        <div class="row">
            <div class="col-lg-6">
                <h3 class="text-uppercase">{{ tr('tests') }}</h3>
                <p>{{ tr('about_tests_1', 'https://travis-ci.org/phalcon/cphalcon') }}</p>
            </div>

            <div class="col-lg-6">
                <h3 class="text-uppercase">{{ tr('screencasts') }}</h3>
                <p>{{ tr('about_screencasts_1', 'https://vimeo.com/user10964377') }}</p>
            </div>
        </div>

        <div class="hr"></div>

        <div class="row">
            <div class="col-lg-6">
                <h3 class="text-uppercase">{{ tr('evangelism') }}</h3>
                <p>{{ tr('about_evangelism_1') }}</p>
            </div>

            <div class="col-lg-6">
                <h3 class="text-uppercase">{{ tr('sample_applications') }}</h3>
                <p>{{ tr('about_sample_apps_1') }}</p>
            </div>
        </div>

        <div class="hr"></div>

        <div class="row">
            <div class="col-lg-6">
                <h3 class="text-uppercase">{{ tr('blog') }}</h3>
                <p>{{ tr('about_blog_1', 'http://blog.phalconphp.com') }}</p>
            </div>

            <div class="col-lg-6">
                <h3 class="text-uppercase">{{ tr('share_your_experiences') }}</h3>
                <p>{{ tr('about_share_experiences_1') }}</p>
            </div>
        </div>

        <div class="hr"></div>

        <div class="row">
            <div class="col-lg-6">
                <h3 class="text-uppercase">{{ tr('social_networks') }}</h3>

                <p>{{ tr('about_social_networks_1') }}</p>
                <p>{{ tr('about_social_networks_2') }}</p>

                <ul class="dash-list">
                    <li><a href="http://twitter.com/phalconphp">{{ tr('follow_on_twitter') }}</a></li>
                    <li><a href="http://www.facebook.com/pages/Phalcon/134230726685897">{{ tr('facebook_page') }}</a></li>
                    <li><a href="https://plus.google.com/102376109340560896457">{{ tr('google_plus_page') }}</a></li>
                    <li><a href="http://blog.phalconphp.com">{{ tr('official_blog') }}</a></li>
                    <li><a href="http://github.com/phalcon/cphalcon">{{ tr('star_on_github') }}</a></li>
                </ul>

            </div>

            <div class="col-lg-6">
                <h3 class="text-uppercase">{{ tr('donations_sponsoring') }}</h3>
                <p>{{ tr('about_sponsoring_1') }}</p>
            </div>
        </div>

        <div class="hr"></div>

        <div class="row">
            <div class="col-lg-12">
                <h3 class="text-uppercase">{{ tr('thank_you') }}</h3>

                <p>{{ tr('about_thank_you_1') }}</p>

                <p><span class="strong">{{ tr('flying_with_phalcon') }}</span></p>
            </div>
        </div>
    </div>
</section>
