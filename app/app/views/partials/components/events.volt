<div class="codesample more_components_code code_events" style="display:none">
    <div class="codesample-header">
        <h3>
            {{ tr("events_management")}}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            A listener is simply a class that implements any of all the events triggered by the component. Now let’s make everything work together:
        </p>
        <pre>
            <code class="php">
use Phalcon\Events\Manager as EventsManager;

// Create an Events Manager
$eventsManager = new EventsManager();

// Create the MyComponent instance
$myComponent   = new MyComponent();

// Bind the eventsManager to the instance
$myComponent->setEventsManager($eventsManager);

// Attach the listener to the EventsManager
$eventsManager->attach('my-component', new SomeListener());

// Execute methods in the component
$myComponent->someTask();
            </code>
        </pre>
    </div>
</div>
