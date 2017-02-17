<div class="codesample basic_features_code code_rest" style="display:none">
    <div class="codesample-header">
        <h3>
            {{ locale.translate('restful_services') }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            {{ locale.translate('restful_services_1') }}
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Mvc\Micro;

$app = new Micro();

// {{ locale.translate('restful_services_2') }}

$app->get(
    '/check/status',
    function () {
        return $this->response->setJsonContent(
            [
                'status' => 'important',
            ]
        );
    }
);

$app->handle();
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
