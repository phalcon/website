
<div class="codesample more_components_code code_sharding" style="display : none">
    <div class="codesample-header">
        <h3>{{ tr("sharding") }}</h3>
    </div>
    <div class="codesample-body">
        <p>
            Run multiple databases in your project
        </p>
        <pre>
            <code class="php">
//This service returns a MySQL database
$di->set('dbMysql', function() {
     return new \Phalcon\Db\Adapter\Pdo\Mysql(array(
        "host" => "localhost",
        "username" => "root",
        "password" => "secret",
        "dbname" => "invo"
    ));
});

//This service returns a PostgreSQL database
$di->set('dbPostgres', function() {
     return new \Phalcon\Db\Adapter\Pdo\PostgreSQL(array(
        "host" => "localhost",
        "username" => "postgres",
        "password" => "",
        "dbname" => "invo"
    ));
});
            </code>
        </pre>
    </div>
</div>
