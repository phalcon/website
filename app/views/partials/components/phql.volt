<div class="codesample data_storage_code code_phql" style="display:none">
    <div class="codesample-header">
        <h3>
            {{ locale.translate('phql') }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            {{ locale.translate('phql_1') }}
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
$phql  = 'SELECT * FROM Formula\Cars ORDER BY Formula\Cars.name';
$query = $manager->createQuery($phql);

$phql  = 'SELECT Formula\Cars.name FROM Formula\Cars ORDER BY Formula\Cars.name';
$query = $manager->createQuery($phql);

$phql  = 'SELECT c.name FROM Formula\Cars c ORDER BY c.name';
$query = $manager->createQuery($phql);

$phql = 'SELECT c.* FROM Cars AS c ORDER BY c.name';
$cars = $manager->executeQuery($phql);
foreach ($cars as $car) {
    echo "{{ locale.translate('phql_2') }}: ", $car->name, "\n";
}
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
