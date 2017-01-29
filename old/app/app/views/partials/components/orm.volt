<div class="codesample data_storage_code code_orm">
    <div class="codesample-header">
        <h3>{{ tr('orm') }}</h3>
    </div>
    <div class="codesample-body">
        <p>
            Public properties provide less complexity in development. However getters/setters can heavily increase the testability, extensibility and maintainability of applications. Developers can decide which strategy is more appropriate for the application they are creating. The ORM is compatible with both schemes of defining properties.
        </p>
        <pre>
            <code class="php">
// Find record with id = 3
$robot = Robots::findFirst(3);

// Prints "Terminator"
echo $robot->name;

//Other controller
Once the record is in memory, you can make modifications to its data and then save changes:

$robot       = Robots::findFirst(3);
$robot->name = "RoboCop";
$robot->save();

            </code>
        </pre>
    </div>
</div>
