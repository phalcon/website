<div class="codesample basic_features_code code_autoloader" style="display:none">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('auto_loader') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            Register namespaces, prefixes, directories or classes. Take advantage of the autoloader events and maintain full control
            over what files are loaded and from where.
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Loader;

// Creates the autoloader
$loader = new Loader();

// Register some namespaces
$loader->registerNamespaces(
    array(
       "Example\Base"    => "vendor/example/base/",
       "Example\Adapter" => "vendor/example/adapter/",
       "Example"         => "vendor/example/"
    )
);

// Register autoloader
$loader->register();
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
