<div class="codesample more_components_code code_queueing" style="display:none">
    <div class="codesample-header">
        <h3>
            {{ tr("queueing") }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            Activities like processing videos, resizing images or sending emails aren’t suitable to be executed online or
            in real time because it may slow the loading time of pages and severely impact the user experience.

            The best solution here is to implement background jobs. The web application puts jobs
            into a queue and which will be processed separately.
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Queue\Beanstalk;
                        
// Connect to the queue
$queue = new Beanstalk(
    array(
        'host' => '192.168.0.21',
        'port' => '11300'
    )
);

// Insert the job in the queue
$queue->put(
    array(
        'processVideo' => 4871
    )
);
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
