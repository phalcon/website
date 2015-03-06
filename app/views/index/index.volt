<section class="codesamples">

    <h2>Discover the wealth of built-in components</h2>

    <div class="container">
        <div class="row">
            <div class="col-sm-5">

                <h4>Basic features</h4>
                <ul class="tags">
                    <li><a class="codesample active" href="#nooverhead">No overhead</a></li>
                    <li><a class="codesample" href="#mvc">MVC</a></li>
                    <li><a class="codesample" href="#di">DI</a></li>
                    <li><a class="codesample" href="#rest">REST</a></li>
                    <li><a class="codesample" href="#autoloader">Auto-loader</a></li>
                    <li><a class="codesample" href="#router">Router</a></li>
                </ul>
                <div class="clearfix"></div>

                <h4>Data &amp; storage</h4>
                <ul class="tags">
                    <li><a class="codesample" href="#orm">ORM</a></li>
                    <li><a class="codesample" href="#phql">PHQL</a></li>
                    <li><a class="codesample" href="#odm">ODM for Mongo</a></li>
                    <li><a class="codesample" href="#transactions">Transactions</a></li>
                    <li><a class="codesample" href="#cache">Cache</a></li>
                    <li><a class="codesample" href="#memcache">Memcache</a></li>
                </ul>
                <div class="clearfix"></div>

                <h4>Views &amp; frontend</h4>
                <ul class="tags">
                    <li><a class="codesample" href="#templates">Template engines</a></li>
                    <li><a class="codesample" href="#volt">Volt</a></li>
                    <li><a class="codesample" href="#i18n">i18n</a></li>
                    <li><a class="codesample" href="#froms">Forms builder</a></li>
                    <li><a class="codesample" href="#flash">Flash messages</a></li>
                </ul>
                <div class="clearfix"></div>

                <h4>Others</h4>
                <ul class="tags">
                    <li><a class="codesample" href="#acl">ACL</a></li>
                    <li><a class="codesample" href="#sharding">Sharding</a></li>
                    <li><a class="codesample" href="#crypt">Crypt</a></li>
                    <li><a class="codesample" href="#events">Events</a></li>
                    <li><a class="codesample" href="#queues">Queueing</a></li>
                </ul>
                <div class="clearfix"></div>

            </div>

            <div class="col-sm-7">

                <div class="codesamples-container">

                    <!-- =================================================================== -->
                    <div class="codesample codesample-current" id="nooverhead"><!-- codesample -->
                        <div class="codesample-header">
                            <h3>No overhead</h3>
                        </div>
                        <div class="codesample-body">
                            <div class="row">
                                <div class="col-xs-6">
                                    <h3 class="text-center">Other PHP frameworks</h3>
                                    <ul class="features features-negative">
                                        <li>Many files containing classes and functions are read on every request made. Disk reading is expensive in terms of performance, thus modern frameworks use lazy loading (autoload).</li>
                                        <li>Some of the classes contain methods that aren’t used in every request but they’re loaded always consuming memory</li>
                                        <li>Continuous loading or interpreting is expensive and impacts performance</li>
                                        <li>The framework code does not change very often, and yet an application needs to load and interpret it every time a request is made</li>
                                    </ul>
                                </div>
                                <div class="col-xs-6">
                                    <h3 class="text-center">PHP C-extension (Phalcon)</h3>
                                    <ul class="features features-positive">
                                        <li>C-extensions are loaded together with PHP one time on the web server’s daemon start process</li>
                                        <li>Classes and functions provided by the extension are ready to use for any application</li>
                                        <li>The code isn’t interpreted because is already compiled to a specific platform and processor</li>
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
                            <h3>Model-View-Controller</h3>
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
                            <h3>Dependency Injection</h3>
                        </div>
                        <div class="codesample-body">
                            <p>Phalcon is built upon a powerful yet ease to understand and use pattern called Dependency Injection. Initialize or define services once - and use them virtually anywhere throughout the application.</p>
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
                            <h3>RESTful services</h3>
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
                            <h3>Router</h3>
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
    <h2>Join the vibrant community of developers</h2>

    <div class="container">
        <div class="row">
            <div class="col-xs-6 col-sm-2 col-sm-offset-2">
                <a href="#" class="community-link">
                    <i class="icon-users"></i><br />
                    How&nbsp;to&nbsp;Contribute
                </a>
            </div>
            <div class="col-xs-6 col-sm-2">
                <a href="http://forum.phalconphp.com/" class="community-link">
                    <i class="icon-bubbles"></i><br />
                    {{ tr('forum') }}
                </a>
            </div>
            <div class="col-xs-6 col-sm-2">
                <a href="https://github.com/phalcon/cphalcon" class="community-link">
                    <i class="icon-github"></i><br />
                    {{ tr('github') }}
                </a>
            </div>
            <div class="col-xs-6 col-sm-2">
                <a href="http://stackoverflow.com/questions/tagged/phalcon" class="community-link">
                    <i class="icon-support"></i><br />
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
            <div class="col-sm-4 col-sm-offset-1 text-center">
                <img src="/img/phalcon2.png" alt="Learn to fly with Phalcon v2.0" />
                <h3>Learn to fly with Phalcon v2.0</h3>
                <p>Lorem ipsum sample text dummy text lorem ipsum sample text dummy text</p>
                <a href="{{ docs_root }}reference/tutorial.html" class="btn btn-lg btn-phalcon">Tutorial: Chapter 1</a>
            </div>
            <div class="col-sm-4 col-sm-offset-2 text-center">
                <img src="/img/donate.png" alt="Donate & help Phalcon fly high" />
                <h3>Donate & help Phalcon fly high</h3>
                <p>Lorem ipsum sample text dummy text lorem ipsum sample text dummy text</p>
                {{ tr('donate_to_phalcon') }} <a href="https://pledgie.com/campaigns/27405" target="_blank" class="btn btn-lg btn-phalcon" style="margin-bottom: 0 !important;">Donate via Pledgie</a>
                <form action="https://www.paypal.com/cgi-bin/webscr" method="post" style="display: inline" target="_blank">
                    <input type="hidden" name="cmd" value="_s-xclick" />
                    <input type="hidden" name="hosted_button_id" value="7LSYMNMFZNG8W" />
                    <button class="btn btn-lg btn-phalcon" type="submit" title="PayPal — The safer, easier way to pay online.">Donate via PayPal</button>
                </form>
            </div>
        </div>
    </div>

</section>