<div class="codesample data_storage_code code_cache" style="display:none">
    <div class="codesample-header">
        <h3>
            {{ tr("cache") }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            The cache component allows faster access to frequently used or already processed data. It supports many
            backends such as Redis, Memcached, Mongo, Files, Apc and more
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Cache\Frontend\Data as FrontendData;
use Phalcon\Cache\Backend\Memcache as BackendMemcache;

// Set the models cache service
$di->set('modelsCache', function () {

    // Cache data for one day by default
    $frontCache = new FrontendData(
        array(
            "lifetime" => 86400
        )
    );

    // Memcached connection settings
    $cache = new BackendMemcache(
        $frontCache,
        array(
            "host" => "localhost",
            "port" => "11211"
        )
    );

    return $cache;
});
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
