<div class="header-line">
    <div class="size-wrap">
        <h1 class="header-line-title title-white">{{ tr('get_involved') }}</h1>
    </div>
</div>

<div class="size-wrap">

    <ul class="tabs clear-fix">
        <li><a class="tab-link" href="{{ url(['for': 'pages', 'pageSlug': 'team', 'language': language]) }}"><span class="span-ul">{{ tr('team') }}</span></a></li>
        <li><a class="tab-link active" href="{{ url(['for': 'pages', 'pageSlug': 'about', 'language': language]) }}"><span class="span-ul">{{ tr('about') }}</span></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'pages', 'pageSlug': 'testimonials', 'language': language]) }}"><span class="span-ul">{{ tr('testimonials') }}</span></a></li>
    </ul>

    <p>{{ tr('about_description_1') }}</p>
    <p>{{ tr('about_description_2') }}</p>

    <div class="columns-2">
        <div class="column">
            <div class="h3 upper">{{ tr('documentation_upper') }}</div>
            <p>{{ tr('about_documentation_1', 'https://github.com/phalcon/docs', 'https://readthedocs.org') }}</p>
        </div>

        <div class="column">
            <div class="h3 upper">{{ tr('translations') }}</div>
            <p>{{ tr('about_translations_1', 'http://www.transifex.com', 'Transifex', 'https://www.transifex.com/projects/p/phalcon') }}</p>
            <script type="text/javascript" src="https://www.google.com/jsapi"></script>
            <script type="text/javascript" src="https://www.transifex.com/projects/p/phalcon/resource/website/chart/inc_js/"></script>
            <div id="txchart-phalcon-website">Loading chart...</div>
        </div>
    </div>

    <div class="hr"></div>

    <div class="columns-2">
        <div class="column">
            <div class="h3 upper">{{ tr('tests') }}</div>
            <p>{{ tr('about_tests_1', 'https://travis-ci.org/phalcon/cphalcon') }}</p>
        </div>

        <div class="column">
            <div class="h3 upper">{{ tr('screencasts') }}</div>
            <p>{{ tr('about_screencasts_1', 'https://vimeo.com/user10964377') }}</p>
        </div>
    </div>

    <div class="hr"></div>

    <div class="columns-2">
        <div class="column">
            <div class="h3 upper">{{ tr('evangelism') }}</div>
            <p>{{ tr('about_evangelism_1') }}</p>
        </div>

        <div class="column">
            <div class="h3 upper">{{ tr('sample_applications') }}</div>
            <p>{{ tr('about_sample_apps_1') }}</p>
        </div>
    </div>

    <div class="hr"></div>

    <div class="columns-2">
        <div class="column">
            <div class="h3 upper">{{ tr('blog') }}</div>
            <p>{{ tr('about_blog_1', 'http://blog.phalconphp.com') }}</p>
        </div>

        <div class="column">
            <div class="h3 upper">{{ tr('share_your_experiences') }}</div>
            <p>{{ tr('about_share_experiences_1') }}</p>
        </div>
    </div>

    <div class="hr"></div>

    <div class="columns-2">
        <div class="column">
            <div class="h3 upper">{{ tr('social_networks') }}</div>

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

        <div class="column">
            <div class="h3 upper">{{ tr('donations_sponsoring') }}</div>
            <p>{{ tr('about_sponsoring_1') }}</p>
        </div>
    </div>

    <div class="hr"></div>

    <div class="one-column">
        <div class="h3 upper">{{ tr('thank_you') }}</div>

        <p>{{ tr('about_thank_you_1') }}</p>

        <p><span class="strong">{{ tr('flying_with_phalcon') }}</span></p>
    </div>

</div>
