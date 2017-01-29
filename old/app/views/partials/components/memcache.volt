<div class="codesample data_storage_code code_memcache" style="display:none">
    <div class="codesample-header">
        <h3>
            {{ tr("memcache") }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            The elements added to the cache are uniquely identified by a key. In the case of the File backend, the key is the actual filename
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Cache\Frontend\Data as FrontData;
use Phalcon\Cache\Backend\Libmemcached as BackMemCached;

// Cache data for one hour
$frontCache = new FrontData(
    array(
        "lifetime" => 3600
    )
);

// Create the component that will cache "Data" to a "Memcached" backend
// Memcached connection settings
$cache = new BackMemCached(
    $frontCache,
    array(
        "servers" => array(
            array(
                "host"   => "127.0.0.1",
                "port"   => "11211",
                "weight" => "1"
            )
        )
    )
);
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
