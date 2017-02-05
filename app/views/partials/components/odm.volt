<div class="codesample data_storage_code code_odm" style="display:none">
    <div class="codesample-header">
        <h3>
            {{ locale.translate(language, 'odm_for_mongo') }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            {{ locale.translate(language, 'odm_for_mongo_1') }}
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
// {{ locale.translate(language, 'odm_for_mongo_2') }}

$robots = Robots::find();
echo "{{ locale.translate(language, 'odm_for_mongo_4', 'count($robots)') }}\n";

// {{ locale.translate(language, 'odm_for_mongo_3') }}
$robots = Robots::find(
    array(
        array(
            "type" => "mechanical"
        )
    )
);
echo "{{ locale.translate(language, 'odm_for_mongo_4', 'count($robots)') }}\n";
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
