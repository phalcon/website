<div class="codesample data_storage_code code_phql" style="display:none">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('phql') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            PHQL is a high-level, object-oriented SQL dialect that allows to write queries using a standardized SQL-like language. PHQL is implemented as a parser (written in C) that translates syntax in that of the target RDBMS.
            To achieve the highest performance possible, Phalcon provides a parser that uses the same technology as SQLite. This technology provides a small in-memory parser with a very low memory footprint that is also thread-safe.
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
$phql  = "SELECT * FROM Formula\Cars ORDER BY Formula\Cars.name";
$query = $manager->createQuery($phql);

$phql  = "SELECT Formula\Cars.name FROM Formula\Cars ORDER BY Formula\Cars.name";
$query = $manager->createQuery($phql);

$phql  = "SELECT c.name FROM Formula\Cars c ORDER BY c.name";
$query = $manager->createQuery($phql);

$phql = "SELECT c.* FROM Cars AS c ORDER BY c.name";
$cars = $manager->executeQuery($phql);
foreach ($cars as $car) {
    echo "Name: ", $car->name, "\n";
}
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
