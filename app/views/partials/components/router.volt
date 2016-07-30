<div class="codesample basic_features_code code_router" style="display:none">
    <div class="codesample-header">
        <h3>
            {{ tr("router") }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            Routing as it supposed to be. Nothing more. Nothing less.
        </p>
        <div class="row">
            <div class="col-xs-12">
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
    </div>
</div>
