<div class="codesample basic_features_code code_rest" style="display:none">
    <div class="codesample-header">
        <h3>
            {{ tr("restful_services") }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            Writing REST servers and applications has never been easier. No boilerplate. Simple services will fit in one file.
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Mvc\Micro;

$app = new Micro();

// Returning data in JSON
$app->get('/check/status', function () {
    return $this->response->setJsonContent([
        "status" => "important"
    ]);
});

$app->handle();
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
