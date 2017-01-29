<div class="codesample basic_features_code code_router" style="display:none">
    <div class="codesample-header">
        <h3>
            {{ locale.translate('router') }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            {{ locale.translate('router_1') }}
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
// {{ locale.translate('router_2') }}

$router = new \Phalcon\Mvc\Router();

// {{ locale.translate('router_3') }}

$router->add(
   '/admin/users/my-profile',
   [
       'controller' => 'users',
       'action'     => 'profile',
   ]
);
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
