<div class="main-teaser">

    <div class="size-wrap fixed clear-fix">

        <div class="main-teaser-title title-white">{{ tr('the_fastest_php_framework') }}</div>

        <div class="main-teaser-left">

            <div class="teser-chart-wrap">
                <img src="{{ cdn_url }}assets/chart.png" alt="" />
            </div>

            <a href="/download"><span class="button-large">{{ tr('download') }}</span></a>

        </div>

        <div class="main-teaser-right">

            <div class="teaser-video-wrap">
                <a href="http://vimeo.com/63022489"><img src="{{ cdn_url }}assets/video.png" alt=""/></a>
            </div>
            <a href="http://try.phalconphp.com/"><span class="button-medium">{{ tr('try_online') }}</span></a>
            <a href="http://vimeo.com/phalconphp" target="_blank"><span class="button-medium">{{ tr('see_screencasts') }}</span></a>
        </div>

    </div>

</div>

<div class="size-wrap">
    <div class="features-wrap">

	<a name="features" href="#"></a>
        <div class="title-huge">{{ tr('everything_you_need_upper') }}</div>

        <table class="features-table">
            <tr>
                <td>
                    <div class="h4">{{ tr('full_mvc_applications', docs_root ~ 'reference/applications.html') }}</div>
                    <ul class="dash-list small">
                        <li><a class="link-black" href="{{ docs_root }}reference/applications.html#single-module">{{ tr('single_module') }}</a></li>
                        <li><a class="link-black" href="{{ docs_root }}reference/applications.html#multi-module">{{ tr('multi_module') }}</a></li>
                        <li><a class="link-black" href="{{ docs_root }}reference/micro.html">{{ tr('micro_applications') }}</a></li>
                    </ul>
                    <div class="h4">{{ tr('orm') }}</div>
                    <ul class="two-columns dash-list small">
                        <li><a class="link-black" href="{{ docs_root }}reference/models.html#transactions">{{ tr('transactions') }}</a></li>

                        <li><a class="link-black" href="{{ docs_root }}reference/models.html#behaviors">{{ tr('behaviors') }}</a></li>
                        <li><a class="link-black" href="{{ docs_root }}reference/models.html#relationships-between-models">{{ tr('relations') }}</a></li>
                        <li><a class="link-black" href="{{ docs_root }}reference/phql.html">{{ tr('phql') }}</a></li>
                        <li><a class="link-black" href="{{ docs_root }}reference/models.html#events-and-events-manager">{{ tr('events') }}</a></li>
                        <li><a class="link-black" href="{{ docs_root }}reference/models.html#validation-failed-events">{{ tr('validations') }}</a></li>
                        <li><a class="link-black" href="{{ docs_root }}reference/models.html#hydration-modes">{{ tr('hydration') }}</a></li>
                        <li><a class="link-black" href="{{ docs_root }}reference/models.html#logging-low-level-sql-statements">{{ tr('logging') }}</a></li>
                        <li><a class="link-black" href="{{ docs_root }}reference/models.html#profiling-sql-statements">{{ tr('profiling') }}</a></li>
                        <li><a class="link-black" href="{{ docs_root }}reference/models.html#setting-multiple-databases">{{ tr('sharding') }}</a></li>
                    </ul>
                </td>
                <td>
                    <ul class="unstyled">
                        <li><a class="link-black" href="{{ docs_root }}reference/odm.html">{{ tr('odm_for_mongo') }}</a></li>
                        <li><a class="link-black" href="{{ docs_root }}reference/volt.html">{{ tr('template_engine_volt') }}</a></li>
                        <li><a class="link-black" href="{{ docs_root }}reference/di.html">{{ tr('di_ioc') }}</a></li>
                        <li><a class="link-black" href="{{ docs_root }}reference/events.html">{{ tr('events_management') }}</a></li>
                        <li><a class="link-black" href="{{ docs_root }}reference/crypt.html">{{ tr('encryption') }}</a></li>
                        <li>
                            <a class="link-black" href="{{ docs_root }}reference/request.html">{{ tr('http_request') }}</a>
                            / <a class="link-black" href="{{ docs_root }}reference/response.html">{{ tr('http_response') }}</a>
                            / <a class="link-black" href="{{ docs_root }}reference/cookies.html">{{ tr('http_cookies') }}</a></li>
                    </ul>
                </td>
                <td>

                    <ul class="unstyled">
                        <li><a class="link-black" href="{{ docs_root }}reference/escaper.html">{{ tr('escaping') }}</a> / <a class="link-black" href="{{ docs_root }}reference/filter.html">{{ tr('filtering') }}</a></li>
                        <li><a class="link-black" href="{{ docs_root }}reference/forms.html">{{ tr('forms_builder') }}</a> / <a class="link-black" href="{{ docs_root }}reference/validation.html">{{ tr('forms_validation') }}</a></li>
                        <li><a class="link-black" href="{{ docs_root }}reference/flash.html">{{ tr('flash_messages') }}</a></li>
                        <li><a class="link-black" href="{{ docs_root }}reference/cache.html">{{ tr('cache') }}</a></li>
                        <li><a class="link-black" href="{{ docs_root }}reference/pagination.html">{{ tr('pagination') }}</a></li>
                        <li><a class="link-black" href="{{ docs_root }}reference/annotations.html">{{ tr('annotations') }}</a></li>
                    </ul>

                </td>
                <td>
                    <ul class="unstyled">
                        <li><a class="link-black" href="{{ docs_root }}reference/security.html">{{ tr('security') }}</a></li>
                        <li><a class="link-black" href="{{ docs_root }}reference/translate.html">{{ tr('translations') }}</a></li>
                        <li><a class="link-black" href="{{ docs_root }}reference/assets.html">{{ tr('assets_management') }}</a></li>
                        <li><a class="link-black" href="{{ docs_root }}reference/loader.html">{{ tr('universal_auto_loader') }}</a></li>
                        <li><a class="link-black" href="{{ docs_root }}reference/logging.html">{{ tr('logging') }}</a></li>
                        <li><a class="link-black" href="{{ docs_root }}reference/cli.html">{{ tr('cli') }}</a></li>
                    </ul>
                </td>
            </tr>
        </table>
        <div class="documentation-button-wrap">
            <a href="http://docs.phalconphp.com/en/latest/index.html"><span class="button black">{{ tr('documentation') }}</span></a>
        </div>
    </div>

</div>


<div class="green-block">
    <div class="size-wrap useful-links-wrap clear-fix">

        <div class="services-links-wrap">
            <div class="services-links">
                <a class="service-link" href="http://forum.phalconphp.com">
                    <i class="icon-large icon-forum"></i>
                    <span class="service-link-text">{{ tr('phalcon_forum_upper') }}</span>
                </a>
                <a class="service-link" href="http://stackoverflow.com/questions/tagged/phalcon">
                    <i class="icon-large icon-so"></i>
                    <span class="service-link-text">{{ tr('stack_overflow_upper') }}</span>
                </a>
                <a class="service-link" href="https://github.com/phalcon/cphalcon">
                    <i class="icon-large icon-github"></i>
                    <span class="service-link-text">{{ tr('github_upper') }}</span>
                </a>
                <a class="service-link" href="mailto:team@phalconphp.com">
                    <i class="icon-large icon-email"></i>
                    <span class="service-link-text">{{ tr('email_us_upper') }}</span>
                </a>
            </div>
        </div>

        <div class="services-block">
            <div class="services-block-title">{{ tr('services') }}</div>

            {{ link_to(['for': 'pages', 'pageSlug': 'consulting', 'language': language], tr('consulting_upper'), 'class' : 'services-block-link') }}
            <br />
            {{ tr('requirements_analysis') }}
            <br />
            {{ tr('implementation') }}
            <br />
            {{ tr('ongoing_support') }}
            <br />
            <p>{{ link_to(['for': 'pages', 'pageSlug': 'support', 'language': language], tr('read_more'), 'class' : 'button button-small orange') }}</p>
            {{ link_to(['for': 'pages', 'pageSlug': 'hosting', 'language': language], tr('hosting_upper'), 'class' : 'services-block-link') }}

        </div>

    </div>
</div>

<div class="hosting-providers">

    <em>{{ tr('phalcon_can_be_installed') }}</em>

    <p><a href="{{ url(language ~ '/hosting') }}">
        <img src="{{ cdn_url }}images/hosting/fortrabbit-gray.png" alt="Fortrabbit" />
        <img src="{{ cdn_url }}images/hosting/amazon-gray.png" alt="Amazon" />
        <img src="{{ cdn_url }}images/hosting/linode-gray.png" alt="Linode" />
        <img src="{{ cdn_url }}images/hosting/rackspace-gray.png" alt="Rackspace" />
        <img src="{{ cdn_url }}images/hosting/digital-ocean-gray.png" alt="Digital Ocean" />
        <img src="{{ cdn_url }}images/hosting/webfaction-gray.png" alt="WebFaction" />
    </a></p>

</div>
