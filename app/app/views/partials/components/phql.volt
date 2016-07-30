<div class="codesample data_storage_code code_phql" style="display : none">
    <div class="codesample-header">
        <h3>{{ tr('phql') }}</h3>
    </div>
    <div class="codesample-body">
        <p>
            Phalcon Query Language, PhalconQL or simply PHQL is a high-level, object-oriented SQL dialect that allows to write queries using a standardized SQL-like language. PHQL is implemented as a parser (written in C) that translates syntax in that of the target RDBMS.
        </p>
        <pre>
            <code class="php">
//Define phql
$phql = "SELECT c.* FROM Cars AS c ORDER BY c.name";
$cars = $manager->executeQuery($phql);
foreach ($cars as $car) {
    echo "Name: ", $car->name, "\n";
}

            </code>
        </pre>
    </div>
</div>
