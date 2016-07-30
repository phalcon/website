<div class="codesample data_storage_code code_transactions" style="display:none">
    <div class="codesample-header">
        <h3>
            {{ tr("transactions") }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            When a process performs multiple database operations, it might be important that each step is completed successfully so that data integrity can be maintained. Transactions offer the ability to ensure that all database operations have been executed successfully before the data is committed to the database.
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Mvc\Model\Transaction\Failed as TxFailed;
use Phalcon\Mvc\Model\Transaction\Manager as TxManager;

try {

    // Create a transaction manager
    $manager     = new TxManager();

    // Request a transaction
    $transaction = $manager->get();

    // Get the robots to be deleted
    foreach (Robots::find("type = 'mechanical'") as $robot) {
        $robot->setTransaction($transaction);
        if ($robot->delete() == false) {
            // Something's gone wrong, we should rollback the transaction
            foreach ($robot->getMessages() as $message) {
                $transaction->rollback($message->getMessage());
            }
        }
    }

    // Everything's gone fine, let's commit the transaction
    $transaction->commit();

    echo "Robots were deleted successfully!";

} catch (TxFailed $e) {
    echo "Failed, reason: ", $e->getMessage();
}
</code>
                </pre>
            </div>
        </div>
    </div>
</div>
