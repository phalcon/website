
<div class="codesample more_components_code code_queueing" style="display : none">
    <div class="codesample-header">
        <h3>{{ tr("queueing") }}</h3>
    </div>
    <div class="codesample-body">
        <p>
            Activities like processing videos, resizing images or sending emails aren’t suitable to be executed online or in real time because it may slow the loading time of pages and severely impact the user experience.
        </p>
        <pre>
            <code class="php">
// Connect to the queue
$queue = new Phalcon\Queue\Beanstalk(
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
