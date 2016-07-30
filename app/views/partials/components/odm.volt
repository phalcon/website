<div class="codesample data_storage_code code_odm" style="display:none">
    <div class="codesample-header">
        <h3>
            {{ tr("odm_for_mongo") }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            In addition to its ability to map tables in relational databases, Phalcon can map documents to a MongoDB database.
            The ODM offers a CRUD functionality, events, validations among other services.
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
// How many robots are there?
$robots = Robots::find();
echo "There are ", count($robots), "\n";

// How many mechanical robots are there?
$robots = Robots::find(
    array(
        array(
            "type" => "mechanical"
        )
    )
);
echo "There are ", count($robots), "\n";
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
