{% extends 'layouts/main.volt' %}

{% block content %}

    <!-- =========================
         Background Images
    ============================== -->

    <ul class="bg-slideshow">
        <li><span></span></li>
        <li><span></span></li>
        <li><span></span></li>
        <li><span></span></li>
        <li><span></span></li>
        <li><span></span></li>
    </ul>

    <!-- =========================
         Section1 - Header
    ============================== -->
    <div class="jumbotron">
        <div class="container">
            <div class="row">
                {% include 'partials/header_top.volt' %}
            </div>
            <div class="row">
                <!-- Header Content -->
                <div class="col-sm-12">
                    <div align="center">
                        <div style="max-width: 600px">
                            <h1>{{ locale.translate('header_tagline') }}</h1>
                        </div>
                    </div>

                    <p>
                        {{ locale.translate('header_slogan') }}
                        <a id="bench-link" href="https://phalcon.link/docs/{{language}}" target="_blank">
                            {{ locale.translate('see_for_yourself') }}
                        </a>
                    </p>

                    <a href="{{ url(language ~ '/download/linux') }}"
                       class="btn btn-lg btn-phalcon btn-download">
                        <button class="view-detail btn">
                            <i class="fa fa-download"></i> {{ locale.translate('get_phalcon', version) }}
                        </button>
                    </a>
                    <div class="sublinks">
                        <a href="https://phalcon.link/fund"
                           class="btn btn-lg btn-info btn-support">
                            <button class="btn">
                                <i class="fa fa-money"></i> {{ locale.translate('support_us') }}
                            </button>
                        </a>
                    </div>
                </div>
                <!-- /End Header Content -->
            </div>
        </div>
    </div>

    <!-- =========================
         Section2 - Advertised
    ============================== -->
    <div id="advertised-section">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="advertised red">
                        <div class="arrow-left"></div>
                        <div class="arrow-down-2"></div>
                        <p>
                            <img src='{{ utils.getCdnUrl('images/professor.png') }}'
                                 title='{{ locale.translate('learn') }}'
                                 alt='{{ locale.translate('learn') }}' />
                            {{ locale.translate('learn') }}
                        </p>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="advertised">
                        <p>
                            <a href="{{ utils.getDocsUrl(language) ~ '/tutorial-base' }}">
                                <img src='{{ utils.getCdnUrl('images/chemistry.png') }}'
                                     title='{{ locale.translate('try_phalcon') }}'
                                     alt='{{ locale.translate('try_phalcon') }}' />
                                {{ locale.translate('try_phalcon') }}
                            </a>
                        </p>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="advertised">
                        <p>
                            <a href="https://zephir-lang.com">
                                <img src='{{ utils.getCdnUrl('images/zephir_logo.png') }}'
                                     title='{{ locale.translate('zephir') }}'
                                     alt='{{ locale.translate('zephir') }}' />
                            </a>
                        </p>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="advertised">
                        <p>
                            <a href="{{ url(language ~ '/about') }}">
                                <img src='{{ utils.getCdnUrl('images/drop.png') }}'
                                     title='{{ locale.translate('contribute') }}'
                                     alt='{{ locale.translate('contribute') }}' />
                            {{ locale.translate('contribute') }}
                            </a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- =========================
         Section5 - Sponsors
    ============================== -->
    <section>
        <div class="container" id="sponsors">
            <div class="col-md-12 white-bg">
                <h4>
                    {{ locale.translate('sponsored_by') }}
                </h4>


               <a href="https://www.pdffiller.com/" target="_blank">
                    <img width="240px" src="https://assets.phalcon.io/phalcon/images/backers/pdffiller-164x34.svg" alt="Pdffiller">
                </a>
                <a href="https://mctekk.com/phalcon" target="_blank">
                    <img width="240px" src="https://assets.phalcon.io/phalcon/images/backers/mctekk-149x34.svg" alt="Mctekk">
                </a>
                <a href="https://abits.com/" target="_blank">
                    <img width="240px" src="https://assets.phalcon.io/phalcon/images/backers/abits-100x34.svg" alt="Abits">
                </a>
                <a href="https://algolia.com/" target="_blank">
                    <img width="240px" src="https://assets.phalcon.io/phalcon/images/backers/algolia-725x360.svg" alt="Algolia">
                </a>
                <a href="https://netlify.com/" target="_blank">
                    <img width="240px" src="https://assets.phalcon.io/phalcon/images/backers/netlify-147x40.svg" alt="Netlify">
                </a>
                <a href="https://odva.pro/" target="_blank">
                    <svg width="36" height="30" viewBox="0 0 38 31" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M15.375 29.3529C22.9283 29.3529 29.0514 23.2298 29.0514 15.6765C29.0514 8.12317 22.9283 2 15.375 2C7.82165 2 1.69849 8.12317 1.69849 15.6765C1.69849 23.2298 7.82165 29.3529 15.375 29.3529Z" stroke="#273646" stroke-opacity="0.7" stroke-width="3"></path>
                        <path d="M33.9044 23.6177H32.1397V30.6765H33.9044V23.6177Z" fill="#273646" fill-opacity="0.7"></path>
                        <path d="M37.4338 23.6177H35.6691V30.6765H37.4338V23.6177Z" fill="#273646" fill-opacity="0.7"></path>
                    </svg>
                </a>
                <a href="https://crowdin.com/" target="_blank">
                    <img width="240px" src="https://assets.phalcon.io/phalcon/images/backers/crowdin.png" alt="Crowdin">
                </a>
            </div>
        </div>
    </section>

    <!--
    =========================
         Section3 - Features
    =========================
    -->

    <section id="feature-section" class="codesamples">
        <div class="container">
            <div class="col-md-12 white-bg">
                <!-- Features Left -->
                <div class="col-sm-5">
                    <h2 class="verticle-line">
                        {{ locale.translate('basic_features') }}
                    </h2>
                    <ul class="feature-list">
                        <li class="basic_features low_overhead">
                            <div class="feature-bullet">
                                <img src='{{ utils.getCdnUrl('images/favorite.png') }}'
                                     title='{{ locale.translate('low_overhead') }}'
                                     alt='{{ locale.translate('low_overhead') }}'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3>{{ locale.translate('low_overhead') }}</h3>
                                <p>
                                    {{ locale.translate('low_overhead_description') }}
                                </p>
                            </div>
                        </li>
                        <li class="basic_features mvc">
                            <div class="feature-bullet">
                                <img src='{{ utils.getCdnUrl('images/favorite.png') }}'
                                     title='{{ locale.translate('mvc_hmvc') }}'
                                     alt='{{ locale.translate('mvc_hmvc') }}'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3>{{ locale.translate('mvc_hmvc') }}</h3>
                                <p>
                                    {{ locale.translate('mvc_hmvc_description') }}
                                </p>
                            </div>
                        </li>
                        <li class="basic_features di">
                            <div class="feature-bullet">
                                <img src='{{ utils.getCdnUrl('images/favorite.png') }}'
                                     title='{{ locale.translate('dependency_injection') }}'
                                     alt='{{ locale.translate('dependency_injection') }}'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3>{{ locale.translate('dependency_injection') }}</h3>
                                <p>
                                    {{ locale.translate('dependency_injection_description') }}
                                </p>
                            </div>
                        </li>
                        <li class="basic_features rest">
                            <div class="feature-bullet">
                                <img src='{{ utils.getCdnUrl('images/favorite.png') }}'
                                     title='{{ locale.translate('rest') }}'
                                     alt='{{ locale.translate('rest') }}'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3>{{ locale.translate('rest') }}</h3>
                                <p>
                                    {{ locale.translate('rest_description') }}
                                </p>
                            </div>
                        </li>
                        <li class="basic_features autoloader">
                            <div class="feature-bullet">
                                <img src='{{ utils.getCdnUrl('images/favorite.png') }}'
                                     title='{{ locale.translate('autoloader') }}'
                                     alt='{{ locale.translate('autoloader') }}'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3>{{ locale.translate('autoloader') }}</h3>
                                <p>
                                    {{ locale.translate('autoloader_description') }}
                                </p>
                            </div>
                        </li>
                        <li class="basic_features router">
                            <div class="feature-bullet">
                                <img src='{{ utils.getCdnUrl('images/favorite.png') }}'
                                     title='{{ locale.translate('router') }}'
                                     alt='{{ locale.translate('router') }}'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3>{{ locale.translate('router') }}</h3>
                                <p>
                                    {{ locale.translate('router_description') }}
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
                <!-- /End Features Left -->

                <!-- Features Right -->
                <div class="col-sm-7">
                    {% include "partials/components/lowOverhead.volt" %}
                    {% include "partials/components/mvc.volt" %}
                    {% include "partials/components/di.volt" %}
                    {% include "partials/components/rest.volt" %}
                    {% include "partials/components/autoloader.volt" %}
                    {% include "partials/components/router.volt" %}
                </div>
                <!-- /End Features Right -->
            </div>
        </div>
    </section>

    <!-- =========================
         Section3 - Features
    ============================== -->
    <section id="feature-section" class="codesamples">
        <div class="container">
            <div class=" col-md-12 white-bg">
                <!-- Features Left -->
                <div class="col-sm-5">
                    <h2 class="verticle-line">
                        Data & storage
                    </h2>
                    <ul class="feature-list">
                        <li class="data_storage orm">
                            <div class="feature-bullet">
                                <img src='{{ utils.getCdnUrl('images/favorite.png') }}'
                                     title='{{ locale.translate('orm') }}'
                                     alt='{{ locale.translate('orm') }}'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3>{{ locale.translate('orm') }}</h3>
                                <p>
                                    {{ locale.translate('orm_description') }}
                                </p>
                            </div>
                        </li>
                        <li class="data_storage phql">
                            <div class="feature-bullet">
                                <img src='{{ utils.getCdnUrl('images/favorite.png') }}'
                                     title='{{ locale.translate('phql') }}'
                                     alt='{{ locale.translate('phql') }}'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3>{{ locale.translate('phql') }}</h3>
                                <p>
                                    {{ locale.translate('phql_description') }}
                                </p>
                            </div>
                        </li>
                        <li class="data_storage odm">
                            <div class="feature-bullet">
                                <img src='{{ utils.getCdnUrl('images/favorite.png') }}'
                                     title='{{ locale.translate('odm_for_mongo') }}'
                                     alt='{{ locale.translate('odm_for_mongo') }}'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3>{{ locale.translate('odm_for_mongo') }}</h3>
                                <p>
                                    {{ locale.translate('odm_for_mongo_description') }}
                                </p>
                            </div>
                        </li>
                        <li class="data_storage transactions">
                            <div class="feature-bullet">
                                <img src='{{ utils.getCdnUrl('images/favorite.png') }}'
                                     title='{{ locale.translate('transactions') }}'
                                     alt='{{ locale.translate('transactions') }}'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3>{{ locale.translate('transactions') }}</h3>
                                <p>
                                    {{ locale.translate('transactions_description') }}
                                </p>
                            </div>
                        </li>
                        <li class="data_storage cache">
                            <div class="feature-bullet">
                                <img src='{{ utils.getCdnUrl('images/favorite.png') }}'
                                     title='{{ locale.translate('cache') }}'
                                     alt='{{ locale.translate('cache') }}'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3>{{ locale.translate('cache') }}</h3>
                                <p>
                                    {{ locale.translate('cache_description') }}
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>

                <div class="col-sm-7">
                    {% include "partials/components/orm.volt" %}
                    {% include "partials/components/phql.volt" %}
                    {% include "partials/components/odm.volt" %}
                    {% include "partials/components/transactions.volt" %}
                    {% include "partials/components/cache.volt" %}
                </div>
            </div>
        </div>
    </section>

    <!-- =========================
         Section3 - Features
    ============================== -->
    <section id="feature-section" class="codesamples">
        <div class="container">
            <div class=" col-md-12 white-bg">
                <!-- Features Left -->
                <div class="col-sm-5">

                    <h2 class="verticle-line">
                        {{ locale.translate('views_and_frontend') }}
                    </h2>

                    <ul class="feature-list">
                        <li class="views_front_end templates">
                            <div class="feature-bullet">
                                <img src='{{ utils.getCdnUrl('images/favorite.png') }}'
                                     title='{{ locale.translate('template_engines') }}'
                                     alt='{{ locale.translate('template_engines') }}'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3>{{ locale.translate('template_engines') }}</h3>
                                <p>
                                    {{ locale.translate('template_engines_description') }}
                                </p>
                            </div>
                        </li>
                        <li class="views_front_end volt">
                            <div class="feature-bullet">
                                <img src='{{ utils.getCdnUrl('images/favorite.png') }}'
                                     title='{{ locale.translate('template_engine_volt') }}'
                                     alt='{{ locale.translate('template_engine_volt') }}'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3>
                                    {{ locale.translate('template_engine_volt') }}
                                </h3>
                                <p>
                                    {{ locale.translate('template_engine_volt_description') }}
                                </p>
                            </div>
                        </li>
                        <li class="views_front_end i18n">
                            <div class="feature-bullet">
                                <img src='{{ utils.getCdnUrl('images/favorite.png') }}'
                                     title='{{ locale.translate('i18n') }}'
                                     alt='{{ locale.translate('i18n') }}'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3>{{ locale.translate('i18n') }}</h3>
                                <p>
                                    {{ locale.translate('i18n_description') }}
                                </p>
                            </div>
                        </li>
                        <li class="views_front_end forms">
                            <div class="feature-bullet">
                                <img src='{{ utils.getCdnUrl('images/favorite.png') }}'
                                     title='{{ locale.translate('forms_builder') }}'
                                     alt='{{ locale.translate('forms_builder') }}'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3>
                                    {{ locale.translate('forms_builder') }}
                                </h3>
                                <p>
                                    {{ locale.translate('forms_builder_description') }}
                                </p>
                            </div>
                        </li>
                        <li class="views_front_end flash">
                            <div class="feature-bullet">
                                <img src='{{ utils.getCdnUrl('images/favorite.png') }}'
                                     title='{{ locale.translate('flash_messages') }}'
                                     alt='{{ locale.translate('flash_messages') }}'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3>
                                    {{ locale.translate('flash_messages') }}
                                </h3>
                                <p>
                                    {{ locale.translate('flash_messages_description') }}
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
                <!-- /End Features Left -->

                <!-- Features Right -->
                <div class="col-sm-7">
                    {% include "partials/components/templates.volt" %}
                    {% include "partials/components/volt_template.volt" %}
                    {% include "partials/components/i18n.volt" %}
                    {% include "partials/components/forms.volt" %}
                    {% include "partials/components/flashmessages.volt" %}
                </div>
                <!-- /End Features Right -->
            </div>
        </div>
    </section>

    <!-- =========================
         Section3 - Features
    ============================== -->
    <section id="feature-section" class="codesamples">
        <div class="container">
            <div class=" col-md-12 white-bg">
                <!-- Features Left -->
                <div class="col-sm-5">
                    <h2 class="verticle-line">{{ locale.translate('more') }}</h2>

                    <ul class="feature-list">
                        <li class="more_components acl">
                            <div class="feature-bullet">
                                <img src='{{ utils.getCdnUrl('images/favorite.png') }}'
                                     title='{{ locale.translate('acl') }}'
                                     alt='{{ locale.translate('acl') }}'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3>{{ locale.translate('acl') }}</h3>
                                <p>
                                    {{ locale.translate('acl_description') }}
                                </p>
                            </div>
                        </li>
                        <li class="more_components sharding">
                            <div class="feature-bullet">
                                <img src='{{ utils.getCdnUrl('images/favorite.png') }}'
                                     title='{{ locale.translate('sharding') }}'
                                     alt='{{ locale.translate('sharding') }}'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3>{{ locale.translate('sharding') }}</h3>
                                <p>
                                    {{ locale.translate('sharding_description') }}
                                </p>
                            </div>
                        </li>
                        <li class="more_components crypt">
                            <div class="feature-bullet">
                                <img src='{{ utils.getCdnUrl('images/favorite.png') }}'
                                     title='{{ locale.translate('crypt') }}'
                                     alt='{{ locale.translate('crypt') }}'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3>{{ locale.translate('crypt') }}</h3>
                                <p>
                                    {{ locale.translate('crypt_description') }}
                                </p>
                            </div>
                        </li>
                        <li class="more_components events">
                            <div class="feature-bullet">
                                <img src='{{ utils.getCdnUrl('images/favorite.png') }}'
                                     title='{{ locale.translate('events') }}'
                                     alt='{{ locale.translate('events') }}'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3>{{ locale.translate('events') }}</h3>
                                <p>
                                    {{ locale.translate('events_description') }}
                                </p>
                            </div>
                        </li>
                        <li class="more_components queueing">
                            <div class="feature-bullet">
                                <img src='{{ utils.getCdnUrl('images/favorite.png') }}'
                                     title='{{ locale.translate('queueing') }}'
                                     alt='{{ locale.translate('queueing') }}'
                                     class="img-star" />
                            </div>
                            <div class="feature-content">
                                <h3>{{ locale.translate('queueing') }}</h3>
                                <p>
                                    {{ locale.translate('queueing_description') }}
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
                <!-- /End Features Left -->

                <!-- Features Right -->
                <div class="col-sm-7">
                    {% include "partials/components/acl.volt" %}
                    {% include "partials/components/sharding.volt" %}
                    {% include "partials/components/crypt.volt" %}
                    {% include "partials/components/events.volt" %}
                    {% include "partials/components/queueing.volt" %}
                </div>
                <!-- /End Features Right -->
            </div>
        </div>
    </section>

    <!-- =========================
         Section4 - Design
    ============================== -->
    <section>
        <div class="container">
            <div class="col-md-12 red-bg">

                <!-- HEADING -->
                <h2>{{ locale.translate('polling_app') }}</h2>
                <p>{{ locale.translate('watch_demo') }}</p>
                <div class="separator"></div>

                <!-- Video -->
                <div class="video-img">
                    <img alt="" src="{{ utils.getCdnUrl('images/flat_v3/laptop.png') }}">
                    <div class="video">
                        <iframe src="https://player.vimeo.com/video/63022489?color=ffffff" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- =========================
         Section5 - Contributors
    ============================== -->
    <section>
        <div class="container">
            <div class="white-bg">

                <!-- Section Heading -->
                <h2>
                    {{ locale.translate('join_our_community') }}
                </h2>
                <p>
                    {{ locale.translate('join_our_community_description') }}
                </p>
                <br>
                <div class="clearfix">

                    <!-- Benefit1 -->
                    <div class="col-md-4 community">
                        <a href="https://phalcon.link/forum">
                            <div class="benifit-icon">
                                <img alt=""
                                     src="{{ utils.getCdnUrl('images/chat.png') }}"
                                     width="60"
                                     height="60">
                            </div>
                            <h3>
                                {{ locale.translate('forum') }}
                            </h3>
                        </a>
                    </div>

                    <div class="col-md-4 community">
                        <a href="https://phalcon.link/github">
                            <div class="benifit-icon">
                                <img alt=""
                                     src="{{ utils.getCdnUrl('images/github_black.png') }}"
                                     width="60"
                                     height="60"
                                     style="border-radius: 25px;">
                            </div>
                            <h3>
                                {{ locale.translate('github') }}
                            </h3>
                        </a>
                    </div>
                    <!-- /End Benefit1 -->

                    <!-- Benefit2 -->
                    <div class="col-md-4 community">
                        <a href="https://stackoverflow.com/questions/tagged/phalcon">
                            <div class="benifit-icon">
                                <img alt=""
                                     src="{{ utils.getCdnUrl('images/stackoverflow.png') }}"
                                     width="60"
                                     height="60"
                                     style="border-radius: 25px;">
                            </div>
                            <h3>
                                {{ locale.translate('stack_overflow') }}
                            </h3>
                        </a>
                    </div>
                    <!-- /End Benefit2 -->
                </div>
            </div>
        </div>
    </section>

    <!-- =========================
         Section7 - Clients
    ============================== -->
    <section>
        <div class="container">
            <div class="col-md-12 white-bg">
                <h2>{{ locale.translate('contributors') }}</h2>
                <p>
                    {{ locale.translate('contributors_description') }}
                </p>
                {{ partial('partials/contributors') }}
            </div>
        </div>
    </section>

{% endblock %}
