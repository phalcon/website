<div class="codesample more_components_code code_sharding" style="display:none">
    <div class="codesample-header">
        <h3>
            {{ locale.translate('sharding') }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            {{ locale.translate('sharding_1') }}
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Db\Adapter\Pdo\Mysql as MysqlPdo;
use Phalcon\Db\Adapter\Pdo\PostgreSQL as PostgreSQLPdo;

// {{ locale.translate('sharding_2') }}

$di->set(
    'dbMysql',
    function () {
        return new MysqlPdo(
            [
                'host'     => 'localhost',
                'username' => 'root',
                'password' => 'secret',
                'dbname'   => 'invo',
            ]
        );
    }
);

// {{ locale.translate('sharding_3') }}

$di->set(
    'dbPostgres',
    function () {
        return new PostgreSQLPdo(
            [
                'host'     => 'localhost',
                'username' => 'postgres',
                'password' => '',
                'dbname'   => 'invo',
            ]
        );
    }
);
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
