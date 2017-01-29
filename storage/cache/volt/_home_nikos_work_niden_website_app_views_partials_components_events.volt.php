<div class="codesample more_components_code code_events" style="display:none">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('events_management') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            An EventsManager allows us to attach listeners to a particular type of event.
            The type that interests us now is “dispatch”. The following code filters all events produced by the Dispatcher:
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Mvc\Dispatcher;
use Phalcon\Events\Manager as EventsManager;

$di->set('dispatcher', function () {

    // Create an events manager
    $eventsManager = new EventsManager();

    // Listen for events produced in the dispatcher using the Security plugin
    $eventsManager->attach('dispatch:beforeExecuteRoute', new SecurityPlugin);

    // Handle exceptions and not-found exceptions using NotFoundPlugin
    $eventsManager->attach('dispatch:beforeException', new NotFoundPlugin);

    $dispatcher = new Dispatcher();

    // Assign the events manager to the dispatcher
    $dispatcher->setEventsManager($eventsManager);

    return $dispatcher;
});
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
