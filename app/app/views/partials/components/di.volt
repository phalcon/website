<div class="codesample basic_features_code code_di" style="display : none">
    <div class="codesample-header">
        <h3>{{ tr('dependency_injection') }}</h3>
    </div>
    <div class="codesample-body">
        <p>
            Phalcon is built upon a powerful yet easy to understand and use pattern called Dependency Injection. Initialize or define services once - and use them virtually anywhere throughout the application.
        </p>
        <pre>
            <code class="php">
//Create the Dependency Injector Container
$di = new Phalcon\DI();

//Register classes, functions, components
$di->set("request", new Phalcon\Http\Request());

..

//Use anywhere else in code
$request = $di->getShared("request");

            </code>
        </pre>
    </div>
</div>
