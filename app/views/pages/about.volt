{% extends 'layouts/main.volt' %}

{% block content %}

{% include 'partials/page_head.volt' %}

<section class="about">
    <div class="container">
        {% include 'partials/menu_about.volt' %}
        <div class="row">
            <div class="col-lg-12">
                <p>{{ locale.translate('about_description_1') }}</p>
                <p>{{ locale.translate('about_description_2') }}</p>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-6">
                <h3>{{ locale.translate('about_documentation') }}</h3>
                <p>
                    {{ locale.translate('about_documentation_1', 'https://github.com/phalcon/docs', 'https://crowdin.com', 'Crowdin', 'https://crowdin.com/project/phalcon-documentation') }}
                </p>
            </div>

            <div class="col-lg-6">
                <h3>{{ locale.translate('about_translations') }}</h3>
                <p>{{ locale.translate('about_translations_1', 'https://crowdin.com', 'Crowdin', 'https://crowdin.com/project/phalcon-website') }}
                    <br />
                    <br />
                    <a href="https://crowdin.com/project/phalcon-website">
                        <img src="/images/crowdin-logo.png" alt="Crowdin" style="width: 400px;">
                    </a>
                </p>
            </div>
        </div>

        <div class="hr"></div>

        <div class="row">
            <div class="col-lg-6">
                <h3>{{ locale.translate('about_tests') }}</h3>
                <p>{{ locale.translate('about_tests_1', 'https://travis-ci.org/phalcon/cphalcon') }}</p>
            </div>

            <div class="col-lg-6">
                <h3>{{ locale.translate('about_screencasts') }}</h3>
                <p>{{ locale.translate('about_screencasts_1', 'https://vimeo.com/user10964377') }}</p>
            </div>
        </div>

        <div class="hr"></div>

        <div class="row">
            <div class="col-lg-6">
                <h3>{{ locale.translate('about_evangelism') }}</h3>
                <p>{{ locale.translate('about_evangelism_1') }}</p>
            </div>

            <div class="col-lg-6">
                <h3>{{ locale.translate('about_sample_applications') }}</h3>
                <p>{{ locale.translate('about_sample_apps_1') }}</p>
            </div>
        </div>

        <div class="hr"></div>

        <div class="row">
            <div class="col-lg-6">
                <h3>{{ locale.translate('about_blog') }}</h3>
                <p>{{ locale.translate('about_blog_1', 'http://blog.phalcon.io') }}</p>
            </div>

            <div class="col-lg-6">
                <h3>{{ locale.translate('about_share_your_experiences') }}</h3>
                <p>{{ locale.translate('about_share_experiences_1') }}</p>
            </div>
        </div>

        <div class="hr"></div>

        <div class="row">
            <div class="col-lg-6">
                <h3>{{ locale.translate('about_social_networks') }}</h3>
                <p>{{ locale.translate('about_social_networks_1') }}</p>
                <p>{{ locale.translate('about_social_networks_2') }}</p>

                <ul class="dash-list">
                    <li><a href="https://twitter.com/phalconphp">{{ locale.translate('about_follow_on_twitter') }}</a></li>
                    <li><a href="https://gab.ai/phalcon">{{ locale.translate('about_follow_on_gab') }}</a></li>
                    <li><a href="https://www.facebook.com/pages/Phalcon/134230726685897">{{ locale.translate('about_facebook_page') }}</a></li>
                    <li><a href="https://blog.phalcon.io">{{ locale.translate('about_official_blog') }}</a></li>
                    <li><a href="http://github.com/phalcon/cphalcon">{{ locale.translate('about_star_on_github') }}</a></li>
                </ul>

            </div>

            <div class="col-lg-6">
                <h3>{{ locale.translate('about_donations_sponsoring') }}</h3>
                <p>{{ locale.translate('about_sponsoring_1') }}</p>
            </div>
        </div>

        <div class="hr"></div>

        <div class="row">
            <div class="col-lg-12">
                <h3>{{ locale.translate('about_thank_you') }}</h3>
                <p>{{ locale.translate('about_thank_you_1') }}</p>
                <p><span class="strong">{{ locale.translate('about_flying_with_phalcon') }}</span></p>
            </div>
        </div>
    </div>
</section>

{% endblock %}
