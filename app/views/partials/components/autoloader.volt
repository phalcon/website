<div class="codesample basic_features_code code_autoloader" style="display:none">
    <div class="codesample-header">
        <h3>
            {{ locale.translate('auto_loader') }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            {{ locale.translate('auto_loader_1') }}
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Loader;

// {{ locale.translate('auto_loader_2') }}

$loader = new Loader();

// {{ locale.translate('auto_loader_3') }}

$loader->registerNamespaces(
    [
       'Example\Base'    => 'vendor/example/base/',
       'Example\Adapter' => 'vendor/example/adapter/',
       'Example'         => 'vendor/example/',
    ]
);

// {{ locale.translate('auto_loader_4') }}

$loader->register();
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
