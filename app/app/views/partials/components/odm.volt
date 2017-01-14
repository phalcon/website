<div class="codesample data_storage_code code_odm" style="display : none">
    <div class="codesample-header">
        <h3>{{ tr('odm_for_mongo') }}</h3>
    </div>
    <div class="codesample-body">
        <p>
            In addition to its ability to map tables in relational databases, Phalcon can map documents from NoSQL databases. The ODM offers a CRUD functionality, events, validations among other services.
        </p>
        <pre>
            <code class="php">

// Find record with _id = "5087358f2d42b8c3d15ec4e2"
$robot = Robots::findById("5087358f2d42b8c3d15ec4e2");

// Prints "Bender"
echo $robot->name;

//save row
$robot = Robots::findFirst(
    array(
        array(
            'name' => 'Astro Boy'
        )
    )
);
$robot->name = "Voltron";
$robot->save();

            </code>
        </pre>
    </div>
</div>
