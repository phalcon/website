<div class="codesample data_storage_code code_cache" style="display:none">
    <div class="codesample-header">
        <h3>
            {{ locale.translate('cache') }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            {{ locale.translate('cache_1') }}
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Cache\Frontend\Data as FrontendData;
use Phalcon\Cache\Backend\Memcache as BackendMemcache;

// {{ locale.translate('cache_2') }}

$di->set('modelsCache', function () {

    // {{ locale.translate('cache_3') }}

    $frontCache = new FrontendData(
        [
            'lifetime' => 86400,
        ]
    );

    // {{ locale.translate('cache_4') }}

    $cache = new BackendMemcache(
        $frontCache,
        [
            'host' => 'localhost',
            'port' => '11211',
        ]
    );

    return $cache;
});
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
