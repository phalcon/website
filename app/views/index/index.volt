
<link href="{{ cdn_url }}css/phalcon.min.css" rel='stylesheet' type='text/css'>

<!-- =========================
     Background Video
============================== -->

<div class="video-background" data-vide-bg="{{ cdn_url }}video/phalcon.mp4"></div>

<!-- =========================
     Section1 - Header
============================== -->
  <div class="jumbotron">
    <div class="container">
      <div class="row">
            <!-- Header top -->
            <div class="col-sm-3 logo">
                <a href="#">
                    <img alt="" class="logo-phalcon" src="{{ cdn_url }}images/phalcon1.png">
                </a>
            </div>
            <div class="col-sm-7 menu-phalcon">
                <div class="center">
                    {% include 'partials/topmenu.volt' %}
                </div>
            </div>
            <div class="col-sm-2 social-icons-align" style="margin-top:15px;">
                <a href="https://github.com/phalcon/cphalcon/">
                    <img alt="" src="{{ cdn_url }}images/twitter.png">
                </a>
                <a href="https://twitter.com/phalconphp">
                    <img alt="" src="{{ cdn_url }}images/github.png">
                </a>
            </div>
            <!-- /End Header Top -->
            <!-- Header Content -->
            <div class="col-sm-12">
                <h1>A full-stack PHP framework delivered</h1>
                <h2>as a C-extension</h2>

                <!--<div class="separator red"></div>-->
                <br>

                <p>
                    Its innovative architecture makes Phalcon the fastest PHP framework ever built! See for yourself
                </p>

                <br>
                <br>
                <br>

                <a href="{{ cdn_url }}download">
                    <button class="view-detail btn">
                        Download
                        <i class="glyphicon glyphicon-save"></i>
                    </button>
                </a>
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
                        <img src='{{ cdn_url ~ 'images/professor.png' }}'
                        title='{{ tr('hosting_fortrabbit_title') }}'
                        alt='{{ tr('hosting_fortrabbit_title') }}' />
                        Learn
                    </p>
                </div>
            </div>

            <div class="col-md-3">
                <div class="advertised">
                    <p>
                        <a href="{{ docs_root }}reference/tutorial.html" style="color:#ffffff">
                            <img src='{{ cdn_url ~ 'images/chemistry.png' }}'
                                title='{{ tr('hosting_fortrabbit_title') }}'
                                alt='{{ tr('hosting_fortrabbit_title') }}' />
                                Try phalcon
                        </a>
                    </p>
                </div>
            </div>

            <div class="col-md-3">
                <div class="advertised">
                    <p>
                        <a href="http://zephir-lang.com">
                            <img src='{{ cdn_url ~ 'images/zephir_logo.png' }}' title='{{ tr('hosting_digital_ocean_title') }}' alt='{{ tr('hosting_digital_ocean_title') }}' />
                        </a>
                    </p>
                </div>
            </div>

            <div class="col-md-3">
                <div class="advertised">
                    <p>
                        <a href="{{ cdn_url }}/es/about" style="color:#ffffff">
                            <img src='{{ cdn_url ~ 'images/drop.png' }}' title='{{ tr('hosting_layershift_title') }}' alt='{{ tr('hosting_layershift_title') }}' />
                            Contribution
                        </a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<!--
=========================
     Section3 - Features
=========================
-->

<section id="feature-section" class="codesamples">
    <div class="container">
        <div class=" col-md-12 white-bg">
            <!-- Features Left -->
            <div class="col-sm-5">
                <h2 class="verticle-line">
                    Basic Features
                </h2>
                <ul class="feature-list">
                    <li class="basic_features low_overhead">
                        <div class="feature-bullet">
                            <img src='{{ cdn_url ~ 'images/favorite.png' }}' title='{{ tr('hosting_layershift_title') }}' alt='{{ tr('hosting_layershift_title') }}' class="img-star" />
                        </div>
                        <div class="feature-content">
                            <h3>Low overhead</h3>
                            <p>
                                Less memory consumption and CPU
                            </p>
                        </div>
                    </li>
                    <li class="basic_features mvc">
                        <div class="feature-bullet">
                            <img src='{{ cdn_url ~ 'images/favorite.png' }}' title='{{ tr('hosting_layershift_title') }}' alt='{{ tr('hosting_layershift_title') }}' class="img-star" />
                        </div>
                        <div class="feature-content">
                            <h3>MVC & HMVC</h3>
                            <p>
                                Modules, Components, Models, View, Controlles
                            </p>
                        </div>
                    </li>
                    <li class="basic_features di">
                        <div class="feature-bullet">
                            <img src='{{ cdn_url ~ 'images/favorite.png' }}' title='{{ tr('hosting_layershift_title') }}' alt='{{ tr('hosting_layershift_title') }}' class="img-star" />
                        </div>
                        <div class="feature-content">
                            <h3>Dependency Injection</h3>
                            <p>
                                Dependency Injection and Location of services and it’s itself a container for them.
                            </p>
                        </div>
                    </li>
                    <li class="basic_features rest">
                        <div class="feature-bullet">
                          <img src='{{ cdn_url ~ 'images/favorite.png' }}' title='{{ tr('hosting_layershift_title') }}' alt='{{ tr('hosting_layershift_title') }}' class="img-star" />
                        </div>
                        <div class="feature-content">
                            <h3>Rest</h3>
                            <p>
                                In this case, we will use a micro application to meet our goal.
                            </p>
                        </div>
                    </li>
                    <li class="basic_features autoloader">
                        <div class="feature-bullet">
                            <img src='{{ cdn_url ~ 'images/favorite.png' }}' title='{{ tr('hosting_layershift_title') }}' alt='{{ tr('hosting_layershift_title') }}' class="img-star" />
                        </div>
                        <div class="feature-content">
                            <h3>Autoloader</h3>
                            <p>
                                Provides the autoloading mechanism.
                            </p>
                        </div>
                    </li>
                    <li class="basic_features router">
                        <div class="feature-bullet">
                            <img src='{{ cdn_url ~ 'images/favorite.png' }}' title='{{ tr('hosting_layershift_title') }}' alt='{{ tr('hosting_layershift_title') }}' class="img-star" />
                        </div>
                        <div class="feature-content">
                            <h3>Router</h3>
                            <p>
                                Phalcon\Mvc\Router provides advanced routing capabilities.
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
                            <img src='{{ cdn_url ~ 'images/favorite.png' }}' title='{{ tr('hosting_layershift_title') }}' alt='{{ tr('hosting_layershift_title') }}' class="img-star" />
                        </div>
                        <div class="feature-content">
                            <h3>ORM</h3>
                            <p>
                                Object Relational Mapping
                            </p>
                        </div>
                    </li>
                    <li class="data_storage phql">
                        <div class="feature-bullet">
                            <img src='{{ cdn_url ~ 'images/favorite.png' }}' title='{{ tr('hosting_layershift_title') }}' alt='{{ tr('hosting_layershift_title') }}' class="img-star" />
                        </div>
                        <div class="feature-content">
                            <h3>{{ tr("phql") }}</h3>
                            <p>
                                Phalcon Query Language, PhalconQL
                            </p>
                        </div>
                    </li>
                    <li class="data_storage odm">
                        <div class="feature-bullet">
                            <img src='{{ cdn_url ~ 'images/favorite.png' }}' title='{{ tr('hosting_layershift_title') }}' alt='{{ tr('hosting_layershift_title') }}' class="img-star" />
                        </div>
                        <div class="feature-content">
                            <h3>{{ tr("odm_for_mongo") }}</h3>
                            <p>
                                Object Document Mapping
                            </p>
                        </div>
                    </li>
                    <li class="data_storage transactions">
                        <div class="feature-bullet">
                            <img src='{{ cdn_url ~ 'images/favorite.png' }}' title='{{ tr('hosting_layershift_title') }}' alt='{{ tr('hosting_layershift_title') }}' class="img-star" />
                        </div>
                        <div class="feature-content">
                            <h3>{{ tr("transactions") }}</h3>
                            <p>
                                Transactions in Phalcon allow you to commit all operations.
                            </p>
                        </div>
                    </li>
                    <li class="data_storage cache">
                        <div class="feature-bullet">
                            <img src='{{ cdn_url ~ 'images/favorite.png' }}' title='{{ tr('hosting_layershift_title') }}' alt='{{ tr('hosting_layershift_title') }}' class="img-star" />
                        </div>
                        <div class="feature-content">
                            <h3>Cache</h3>
                            <p>
                                Improve your performance with someone cache system
                            </p>
                        </div>
                    </li>
                    <li class="data_storage memcache">
                        <div class="feature-bullet">
                            <img src='{{ cdn_url ~ 'images/favorite.png' }}' title='{{ tr('hosting_layershift_title') }}' alt='{{ tr('hosting_layershift_title') }}' class="img-star" />
                        </div>
                        <div class="feature-content">
                            <h3>Memcache</h3>
                            <p>
                                Allows to cache output fragments
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
                {% include "partials/components/memcache.volt" %}
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
                Views & frontend
            </h2>

            <ul class="feature-list">
                <li class="views_front_end templates">
                    <div class="feature-bullet">
                        <img src='{{ cdn_url ~ 'images/favorite.png' }}' title='{{ tr('hosting_layershift_title') }}' alt='{{ tr('hosting_layershift_title') }}' class="img-star" />
                    </div>
                    <div class="feature-content">
                        <h3>{{ tr("template_engines") }}</h3>
                        <p>
                            Views represent the user interface of your application
                        </p>
                    </div>
                </li>
                <li class="views_front_end volt">
                    <div class="feature-bullet">
                        <img src='{{ cdn_url ~ 'images/favorite.png' }}' title='{{ tr('hosting_layershift_title') }}' alt='{{ tr('hosting_layershift_title') }}' class="img-star" />
                    </div>
                    <div class="feature-content">
                        <h3>
                            {{ tr("template_engine_volt") }}
                        </h3>
                        <p>
                            Template engine builded in C
                        </p>
                    </div>
                </li>
                <li class="views_front_end i18n">
                    <div class="feature-bullet">
                        <img src='{{ cdn_url ~ 'images/favorite.png' }}' title='{{ tr('hosting_layershift_title') }}' alt='{{ tr('hosting_layershift_title') }}' class="img-star" />
                    </div>
                    <div class="feature-content">
                        <h3>{{ tr("i18n") }}</h3>
                        <p>
                            Part of creating a localized application is to produce concatenated.
                        </p>
                    </div>
                </li>
                <li class="views_front_end forms">
                    <div class="feature-bullet">
                       <img src='{{ cdn_url ~ 'images/favorite.png' }}' title='{{ tr('hosting_layershift_title') }}' alt='{{ tr('hosting_layershift_title') }}' class="img-star" />
                    </div>
                    <div class="feature-content">
                        <h3>
                            {{ tr("forms_builder") }}
                        </h3>
                        <p>
                            Phalcon provides a set of built-in elements to use in your forms.
                        </p>
                    </div>
                </li>
                <li class="views_front_end flash">
                    <div class="feature-bullet">
                        <img src='{{ cdn_url ~ 'images/favorite.png' }}' title='{{ tr('hosting_layershift_title') }}' alt='{{ tr('hosting_layershift_title') }}' class="img-star" />
                    </div>
                    <div class="feature-content">
                        <h3>
                            {{ tr("flash_messages") }}
                        </h3>
                        <p>
                            Flash messages are used to notify the user about the state of actions.
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
            <h2 class="verticle-line">More...</h2>

        <ul class="feature-list">
          <li class="more_components acl">
            <div class="feature-bullet">
                <img src='{{ cdn_url ~ 'images/favorite.png' }}' title='{{ tr('hosting_layershift_title') }}' alt='{{ tr('hosting_layershift_title') }}' class="img-star" />
            </div>
            <div class="feature-content">
                <h3>Acl</h3>
                <p>
                    Access Control List
                </p>
            </div>
          </li>
        <li class="more_components sharding">
            <div class="feature-bullet">
                <img src='{{ cdn_url ~ 'images/favorite.png' }}' title='{{ tr('hosting_layershift_title') }}' alt='{{ tr('hosting_layershift_title') }}' class="img-star" />
            </div>
            <div class="feature-content">
                <h3>Sharding</h3>
                <p>
                    To shard the data consist into splitting the data according to a criteria.
                </p>
            </div>
          </li>
          <li class="more_components crypt">
              <div class="feature-bullet">
                  <img src='{{ cdn_url ~ 'images/favorite.png' }}' title='{{ tr('hosting_layershift_title') }}' alt='{{ tr('hosting_layershift_title') }}' class="img-star" />
              </div>
            <div class="feature-content">
                <h3>Crypt</h3>
                <p>Provides encryption facilities to phalcon applications</p>
            </div>
          </li>
          <li class="more_components events">
              <div class="feature-bullet">
                  <img src='{{ cdn_url ~ 'images/favorite.png' }}' title='{{ tr('hosting_layershift_title') }}' alt='{{ tr('hosting_layershift_title') }}' class="img-star" />
              </div>
            <div class="feature-content">
                <h3>Events</h3>
                <p>
                    Execution of most of the other components of the framework by creating “hook points”.
                </p>
            </div>
          </li>
          <li class="more_components queueing">
              <div class="feature-bullet">
                  <img src='{{ cdn_url ~ 'images/favorite.png' }}' title='{{ tr('hosting_layershift_title') }}' alt='{{ tr('hosting_layershift_title') }}' class="img-star" />
              </div>
            <div class="feature-content">
                <h3>Queueing - background process</h3>
                <p>
                    The best solution here is to implement background jobs.
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
        <h2>A polling app built from scratch in < 15 min</h2>
        <p>Watch the demo video</p>
        <div class="separator"></div>

      <!-- Video -->
        <div class="video-img"><img alt="" src="{{ cdn_url }}images/flat_v3/laptop.png">
            <div class="video">
             <iframe src="https://player.vimeo.com/video/63022489?color=ffffff" allowfullscreen></iframe>
            </div>
        </div>
    </div>
</div>
</section>
<!-- =========================
     Section5 - Benifits
============================== -->
<section>
  <div class="container">
    <div class="white-bg">

        <!-- Section Heading -->
        <h2>
            Come join our vibrant developer community!
        </h2>
        <p>
            Community contributed with Extensions, Plugins, Adapters, VM, examples, source code... and more
        </p>
        <br>
        <div class="clearfix">

            <!-- Benifit1 -->
            <div class="col-md-4 community">
                <a href="http://forum.phalconphp.com/">
                    <div class="benifit-icon">
                        <img alt="" src="{{ cdn_url }}images/chat.png" width="60" height="60">
                    </div>
                    <h3>
                        Forum
                    </h3>
                </a>
            </div>

            <div class="col-md-4 community">
                <a href="https://github.com/phalcon/cphalcon">
                    <div class="benifit-icon">
                        <img alt="" src="{{ cdn_url }}images/github_black.png" width="60" height="60" style="border-radius: 25px;">
                    </div>
                    <h3>
                        Git Hub
                    </h3>
                </a>
            </div>
            <!-- /End Benifit1 -->

            <!-- Benifit2 -->
            <div class="col-md-4 community">
                <a href="http://stackoverflow.com/questions/tagged/phalcon">
                    <div class="benifit-icon">
                        <img alt="" src="{{ cdn_url }}images/stackoverflow.png" width="60" height="60" style="border-radius: 25px;">
                    </div>
                    <h3>
                        Stack Overflow
                    </h3>
                </a>
            </div>
            <!-- /End Benifit2 -->
      </div>
    </div>
  </div>
</section>

<!-- =========================
     Section6 - Clients
============================== -->
<section>
  <div class="container">
    <div class="col-md-12 white-bg">
        <h2>Phalcon contributors</h2>
        {{ partial('partials/contributors') }}
    </div>
  </div>
</section>
