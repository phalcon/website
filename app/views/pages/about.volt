{% extends 'layouts/main.volt' %}

{% block content %}

{% include 'partials/page_head.volt' %}

<section class="about">
    <div class="container">
        {% include 'partials/menu_about.volt' %}
        <div class="row">
            <div class="col-lg-12">
                <p>{{ locale.translate(language, 'about_description_1') }}</p>
                <p>{{ locale.translate(language, 'about_description_2') }}</p>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-6">
                <h3 class="text-uppercase">{{ locale.translate(language, 'about_documentation_upper') }}</h3>
                <p>{{ locale.translate(language, 'about_documentation_1', 'https://github.com/phalcon/docs', 'https://readthedocs.org') }}</p>
            </div>

            <div class="col-lg-6">
                <h3 class="text-uppercase">{{ locale.translate(language, 'about_translations') }}</h3>
                <p>{{ locale.translate(language, 'about_translations_1', 'http://www.transifex.com', 'Transifex', 'https://www.transifex.com/projects/p/phalcon') }}</p>
                <script type="text/javascript" src="https://www.google.com/jsapi"></script>
                <script type="text/javascript" src="https://www.transifex.com/projects/p/phalcon/resource/phalcon-website/chart/inc_js/"></script>
                <div id="txchart-phalcon-website">Loading chart...</div>
            </div>
        </div>

        <div class="hr"></div>

        <div class="row">
            <div class="col-lg-6">
                <h3 class="text-uppercase">{{ locale.translate(language, 'about_tests') }}</h3>
                <p>{{ locale.translate(language, 'about_tests_1', 'https://travis-ci.org/phalcon/cphalcon') }}</p>
            </div>

            <div class="col-lg-6">
                <h3 class="text-uppercase">{{ locale.translate(language, 'about_screencasts') }}</h3>
                <p>{{ locale.translate(language, 'about_screencasts_1', 'https://vimeo.com/user10964377') }}</p>
            </div>
        </div>

        <div class="hr"></div>

        <div class="row">
            <div class="col-lg-6">
                <h3 class="text-uppercase">{{ locale.translate(language, 'about_evangelism') }}</h3>
                <p>{{ locale.translate(language, 'about_evangelism_1') }}</p>
            </div>

            <div class="col-lg-6">
                <h3 class="text-uppercase">{{ locale.translate(language, 'about_sample_applications') }}</h3>
                <p>{{ locale.translate(language, 'about_sample_apps_1') }}</p>
            </div>
        </div>

        <div class="hr"></div>

        <div class="row">
            <div class="col-lg-6">
                <h3 class="text-uppercase">{{ locale.translate(language, 'about_blog') }}</h3>
                <p>{{ locale.translate(language, 'about_blog_1', 'http://blog.phalconphp.com') }}</p>
            </div>

            <div class="col-lg-6">
                <h3 class="text-uppercase">{{ locale.translate(language, 'about_share_your_experiences') }}</h3>
                <p>{{ locale.translate(language, 'about_share_experiences_1') }}</p>
            </div>
        </div>

        <div class="hr"></div>

        <div class="row">
            <div class="col-lg-6">
                <h3 class="text-uppercase">{{ locale.translate(language, 'about_social_networks') }}</h3>

                <p>{{ locale.translate(language, 'about_social_networks_1') }}</p>
                <p>{{ locale.translate(language, 'about_social_networks_2') }}</p>

                <ul class="dash-list">
                    <li><a href="https://twitter.com/phalconphp">{{ locale.translate(language, 'about_follow_on_twitter') }}</a></li>
                    <li><a href="https://gab.ai/phalcon">{{ locale.translate(language, 'about_follow_on_gab') }}</a></li>
                    <li><a href="https://www.facebook.com/pages/Phalcon/134230726685897">{{ locale.translate(language, 'about_facebook_page') }}</a></li>
                    <li><a href="https://plus.google.com/102376109340560896457">{{ locale.translate(language, 'about_google_plus_page') }}</a></li>
                    <li><a href="https://blog.phalconphp.com">{{ locale.translate(language, 'about_official_blog') }}</a></li>
                    <li><a href="http://github.com/phalcon/cphalcon">{{ locale.translate(language, 'about_star_on_github') }}</a></li>
                </ul>

            </div>

            <div class="col-lg-6">
                <h3 class="text-uppercase">{{ locale.translate(language, 'about_donations_sponsoring') }}</h3>
                <p>{{ locale.translate(language, 'about_sponsoring_1') }}</p>
            </div>
        </div>

        <div class="hr"></div>

        <div class="row">
            <div class="col-lg-12">
                <h3 class="text-uppercase">{{ locale.translate(language, 'about_thank_you') }}</h3>

                <p>{{ locale.translate(language, 'about_thank_you_1') }}</p>

                <p><span class="strong">{{ locale.translate(language, 'about_flying_with_phalcon') }}</span></p>
            </div>
        </div>
    </div>
</section>

{% endblock %}
