
<div class="codesample data_storage_code code_cache" style="display : none">
    <div class="codesample-header">
        <h3>{{ tr("cache") }}</h3>
    </div>
    <div class="codesample-body">
        <p>
            Phalcon provides the Phalcon\Cache class allowing faster access to frequently used or already processed data. Phalcon\Cache is written in C, achieving higher performance and reducing the overhead when getting items from the backends. This class uses an internal structure of frontend and backend components. Front-end components act as input sources or interfaces, while backend components offer storage options to the class.
        </p>
        <pre>
            <code class="php">
// Try to get cached records
$cacheKey = 'robots_order_id.cache';
$robots   = $cache->get($cacheKey);
if ($robots === null) {

    // $robots is null because of cache expiration or data does not exist
    // Make the database call and populate the variable
    $robots = Robots::find(
        array(
            "order" => "id"
        )
    );

    // Store it in the cache
    $cache->save($cacheKey, $robots);
}

// Use $robots :)
foreach ($robots as $robot) {
   echo $robot->name, "\n";
}
            </code>
        </pre>
    </div>
</div>
