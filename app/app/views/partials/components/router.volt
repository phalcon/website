<div class="codesample basic_features_code code_router" style="display:none">
    <div class="codesample-header">
        <h3>{{ tr('router') }}</h3>
    </div>
    <div class="codesample-body">
        <p>
            The router component allows you to define routes that are mapped to controllers or handlers that should receive the request. A router simply parses a URI to determine this information. The router has two modes: MVC mode and match-only mode. The first mode is ideal for working with MVC applications.
        </p>
        <pre>
            <code class="php">
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
            </code>
        </pre>
    </div>
</div>
