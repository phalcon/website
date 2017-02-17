<div class="codesample basic_features_code code_di" style="display:none">
    <div class="codesample-header">
        <h3>
            {{ locale.translate('dependency_injection') }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            {{ locale.translate('dependency_injection_1') }}
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
// {{ locale.translate('dependency_injection_2') }}

$di = new Phalcon\DI();

//{{ locale.translate('dependency_injection_3') }}

$di->set("request", new Phalcon\Http\Request());

..

// {{ locale.translate('dependency_injection_4') }}

$request = $di->getShared('request');
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
