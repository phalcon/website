<div class="codesample more_components_code code_events" style="display:none">
    <div class="codesample-header">
        <h3>
            {{ locale.translate('events_management') }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            {{ locale.translate('events_management_1') }}
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Mvc\Dispatcher;
use Phalcon\Events\Manager as EventsManager;

$di->set('dispatcher', function () {

    // {{ locale.translate('events_management_2') }}

    $eventsManager = new EventsManager();

    // {{ locale.translate('events_management_3') }}

    $eventsManager->attach('dispatch:beforeExecuteRoute', new SecurityPlugin);

    // {{ locale.translate('events_management_4') }}

    $eventsManager->attach('dispatch:beforeException', new NotFoundPlugin);

    $dispatcher = new Dispatcher();

    // {{ locale.translate('events_management_5') }}

    $dispatcher->setEventsManager($eventsManager);

    return $dispatcher;
});
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
