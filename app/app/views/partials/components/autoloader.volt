<div class="codesample basic_features_code code_autoloader" style="display : none"><!-- codesample -->
    <div class="codesample-header">
        <h3>Universal Class Loader</h3>
    </div>
    <div class="codesample-body">
        <p>Register namespaces, prefixes, directories or classes. Take advantage of Autoloader events and maintain full controll over the business logic using Autoloader configuration.</p>
        <pre>
            <code class="php">
// Creates the autoloader
$loader = new \Phalcon\Loader();

// Register some directories
$loader->registerDirs(array(
    "library/MyComponent/",
    "vendor/example/adapters/",
    "vendor/example/"
));

// register autoloader
$loader->register();
            </code>
        </pre>
    </div>
</div>
