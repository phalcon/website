
<div class="codesample data_storage_code code_memcache" style="display : none">
    <div class="codesample-header">
        <h3>{{ tr("memcache") }}</h3>
    </div>
    <div class="codesample-body">
        <p>
            Allows to cache output fragments, PHP data or raw data to a memcache backend This adapter uses the special memcached key “_PHCM” to store all the keys internally used by the adapter
        </p>
        <pre>
            <code class="php">
//Create the Cache setting memcached connection options
$cache = new \Phalcon\Cache\Backend\Memcache($frontCache, array(
   'host' => 'localhost',
   'port' => 11211,
   'persistent' => false
));

//Cache arbitrary data
$cache->save('my-data', array(1, 2, 3, 4, 5));

//Get data
$data = $cache->get('my-data');
            </code>
        </pre>
    </div>
</div>
