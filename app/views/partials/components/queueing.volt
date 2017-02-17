<div class="codesample more_components_code code_queueing" style="display:none">
    <div class="codesample-header">
        <h3>
            {{ locale.translate('queueing') }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            {{ locale.translate('queueing_1') }}
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Queue\Beanstalk;
                        
// {{ locale.translate('queueing_2') }}

$queue = new Beanstalk(
    [
        'host' => '192.168.0.21',
        'port' => '11300',
    ]
);

// {{ locale.translate('queueing_3') }}

$queue->put(
    [
        'processVideo' => 4871,
    ]
);
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
