<section class="codesamples">

    <h2>{{ tr('codesamples_header') }}</h2>

    <div class="container">
        <div class="row">
            <div class="col-sm-5">

                <h4>{{ tr('basic_fatures') }}</h4>
                <ul class="tags">
                    <li><a class="codesample active" href="#nooverhead">{{ tr('low_overhead') }}</a></li>
                    <li><a class="codesample" href="#mvc">{{ tr('mvc') }}</a></li>
                    <li><a class="codesample" href="#di">{{ tr('di') }}</a></li>
                    <li><a class="codesample" href="#rest">{{ tr('rest') }}</a></li>
                    <li><a class="codesample" href="#autoloader">{{ tr('auto_loader') }}</a></li>
                    <li><a class="codesample" href="#router">{{ tr('router') }}</a></li>
                </ul>
                <div class="clearfix"></div>

                <h4>{{ tr('data_and_storage') }}</h4>
                <ul class="tags">
                    <li><a class="codesample" href="#orm">{{ tr('orm') }}</a></li>
                    <li><a class="codesample" href="#phql">{{ tr('phql') }}</a></li>
                    <li><a class="codesample" href="#odm">{{ tr('odm_for_mongo') }}</a></li>
                    <li><a class="codesample" href="#transactions">{{ tr('transactions') }}</a></li>
                    <li><a class="codesample" href="#cache">{{ tr('cache') }}</a></li>
                    <li><a class="codesample" href="#memcache">{{ tr('memcache') }}</a></li>
                </ul>
                <div class="clearfix"></div>

                <h4>{{ tr('view_and_frontend') }}</h4>
                <ul class="tags">
                    <li><a class="codesample" href="#templates">{{ tr('template_engines') }}</a></li>
                    <li><a class="codesample" href="#volt">{{ tr('volt') }}</a></li>
                    <li><a class="codesample" href="#i18n">{{ tr('i18n') }}</a></li>
                    <li><a class="codesample" href="#froms">{{ tr('form_builder') }}</a></li>
                    <li><a class="codesample" href="#flash">{{ tr('flash_messages') }}</a></li>
                </ul>
                <div class="clearfix"></div>

                <h4>{{ tr('Others') }}</h4>
                <ul class="tags">
                    <li><a class="codesample" href="#acl">{{ tr('ACL') }}</a></li>
                    <li><a class="codesample" href="#sharding">{{ tr('sharding') }}</a></li>
                    <li><a class="codesample" href="#crypt">{{ tr('crypt') }}</a></li>
                    <li><a class="codesample" href="#events">{{ tr('events') }}</a></li>
                    <li><a class="codesample" href="#queues">{{ tr('queueing') }}</a></li>
                </ul>
                <div class="clearfix"></div>

            </div>

            <div class="col-sm-7">

                <div class="codesamples-container">

                    <!-- =================================================================== -->
                    <div class="codesample codesample-current" id="nooverhead"><!-- codesample -->
                        <div class="codesample-header">
                            <h3>{{ tr('low_overhead') }}</h3>
                        </div>
                        <div class="codesample-body">
                            <div class="row">
                                <div class="col-xs-12">
                                    <h3 class="text-center">PHP C-extension (Phalcon)</h3>
                                    <ul class="features features-positive">
                                        <li>C-extensions are loaded together with PHP one time on the web server’s daemon start process</li>
                                        <li>Classes and functions provided by the extension are ready to use for any application</li>
                                        <li>The code is compiled and isn’t interpreted because is already compiled to a specific platform and processor</li>
                                        <li>Thanks to its low-level architecture and optimizations <strong>Phalcon provides the lowest overhead for MVC-based applications</strong></li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                    </div><!-- /codesample -->
                    <!-- =================================================================== -->



                    <!-- =================================================================== -->
                    <div class="codesample" id="mvc"><!-- codesample -->
                        <div class="codesample-header">
                            <h3>{{ tr('model_view_controller') }}</h3>
                        </div>
                        <div class="codesample-body">
                            <p>Build single and multi-module applications with ease and pleasure. Using the file structure, scheme and patterns you already know.</p>
                            <div class="row">
                                <div class="col-xs-6">
                                    <pre><code class="php">
    single/
        app/
            controllers/
            models/
            views/
        public/
            css/
            img/
            js/
                                        </code></pre>
                                </div>
                                <div class="col-xs-6">
                                    <pre><code class="php">
    multiple/
      apps/
        frontend/
           controllers/
           models/
           views/
           Module.php
        backend/
           controllers/
           models/
           views/
           Module.php
        public/
        ../
                                        </code></pre>
                                </div>
                            </div>

                        </div>
                    </div><!-- /codesample -->
                    <!-- =================================================================== -->



                    <!-- =================================================================== -->
                    <div class="codesample" id="di"><!-- codesample -->
                        <div class="codesample-header">
                            <h3>{{ tr('dependency_injection') }}</h3>
                        </div>
                        <div class="codesample-body">
                            <p>Phalcon is built upon a powerful yet easy to understand and use pattern called Dependency Injection. Initialize or define services once - and use them virtually anywhere throughout the application.</p>
                            <pre><code class="php">
//Create the Dependency Injector Container
$di = new Phalcon\DI();

//Register classes, functions, components
$di->set("request", new Phalcon\Http\Request());

..

//Use anywhere else in code
$request = $di->getShared("request");

                                </code></pre>
                        </div>
                    </div><!-- /codesample -->
                    <!-- =================================================================== -->



                    <!-- =================================================================== -->
                    <div class="codesample" id="rest"><!-- codesample -->
                        <div class="codesample-header">
                            <h3>{{ tr('restful_services') }}</h3>
                        </div>
                        <div class="codesample-body">
                            <p>Writing REST servers and applications has never been easier. No boilerplate. Simple services will fit in one file.</p>
                            <pre><code class="php">
    $app = new Phalcon\Mvc\Micro();

    //Returning data in JSON
    $app->get('/get/data.json', function () {
        echo json_encode(array("some", "important", "data"));
    });

    $app->handle();
                                </code></pre>
                        </div>
                    </div><!-- /codesample -->
                    <!-- =================================================================== -->


                    <!-- =================================================================== -->
                    <div class="codesample" id="autoloader"><!-- codesample -->
                        <div class="codesample-header">
                            <h3>Universal Class Loader</h3>
                        </div>
                        <div class="codesample-body">
                            <p>Register namespaces, prefixes, directories or classes. Take advantage of Autoloader events and maintain full controll over the business logic using Autoloader configuration.</p>
                            <pre><code class="php">
    // Creates the autoloader
    $loader = new \Phalcon\Loader();

    // Register some directories
    $loader->registerDirs(
        array(
            "library/MyComponent/",
            "vendor/example/adapters/",
            "vendor/example/"
        )
    );

    // register autoloader
    $loader->register();
                                </code></pre>
                        </div>
                    </div><!-- /codesample -->
                    <!-- =================================================================== -->





                    <!-- =================================================================== -->
                    <div class="codesample" id="router"><!-- codesample -->
                        <div class="codesample-header">
                            <h3>{{ tr('router') }}</h3>
                        </div>
                        <div class="codesample-body">
                            <p>Routing as it supposed to be. Nothing more. Nothing less.</p>
                            <pre><code class="php">
    // Create the router
    $router = new \Phalcon\Mvc\Router();

    //Define a route
    $router->add(
        "/admin/users/my-profile",
        array(
            "controller" => "users",
            "action"     => "profile",
        )
    );
                                </code></pre>
                        </div>
                    </div><!-- /codesample -->
                    <!-- =================================================================== -->



                </div>
            </div>
        </div>
    </div>
</section>

<section class="community">
    <h2>{{ tr('join_community') }}</h2>

    <div class="container">
        <div id="community-buttons" class="row">
            <div class="col-xs-6 col-sm-3">
                <a href="http://forum.phalconphp.com/" class="icon community-link" target="_blank">
                    <i class="icon-bubbles"></i><br />
                    {{ tr('forum') }}
                </a>
            </div>
            <div class="col-xs-6 col-sm-3">
                {{ link_to(['for': 'pages', 'pageSlug': 'about', 'language': language], '<i class="icon-organization"></i><br />'~tr('how_to_contribute'), 'class' : 'icon community-link') }}
            </div>
            <div class="col-xs-6 col-sm-3">
                <a href="https://github.com/phalcon/cphalcon" class="icon community-link" target="_blank">
                    <i class="icon-github"></i><br />
                    {{ tr('github') }}
                </a>
            </div>
            <div class="col-xs-6 col-sm-3">
                <a href="http://stackoverflow.com/questions/tagged/phalcon" class="icon community-link" target="_blank">
                    <i class="icon-stack-overflow"></i><br />
                    {{ tr('stack_overflow') }}
                </a>
            </div>

        </div>
    </div>

    {{ partial('partials/contributors') }}

</section>

<section class="getinvolved">

    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-4 text-center">
                <!--<i class="icon-code icon-huge"></i>-->
                <h3>{{ tr('learn_to_fly') }}</h3>
                <p>{{ tr('learn_to_fly_text') }}</p>
                <a href="{{ docs_root }}reference/tutorial.html" class="btn btn-lg btn-phalcon">{{ tr('try_tutorial') }}</a>
            </div>
            <div class="col-xs-12 col-sm-4 text-center">
                <!--<img src="/images/zephir.png" alt="Zephir Language"/>-->
                <h3>{{ tr('meet_zephir') }}</h3>
                <p>{{ tr('meet_zephir_text') }}</p>
                <a href="http://zephir-lang.com" class="btn btn-lg btn-phalcon">{{ tr('visit_website') }}</a>
            </div>
            <div class="col-xs-12 col-sm-4 text-center">
                <!--<i class="icon-todo-fa fa fa-thumbs-o-up icon-huge"></i>-->
                <h3>{{ tr('help_to_fly') }}</h3>
                <p>{{ tr('help_to_fly_text') }}</p>
                <a href="https://pledgie.com/campaigns/27405" target="_blank" class="btn btn-lg btn-phalcon">Pledgie</a> <b>{{ tr('or') }}</b>
                <form action="https://www.paypal.com/cgi-bin/webscr" method="post" style="display: inline" target="_blank">
                    <input type="hidden" name="cmd" value="_s-xclick" />
                    <input type="hidden" name="hosted_button_id" value="7LSYMNMFZNG8W" />
                    <button class="btn btn-lg btn-phalcon" type="submit" title="PayPal — The safer, easier way to pay online.">PayPal</button>
                </form>
            </div>
        </div>
    </div>

</section>
