<div class="codesample data_storage_code code_transactions" style="display : none">
    <div class="codesample-header">
        <h3>{{ tr('transactions') }}</h3>
    </div>
    <div class="codesample-body">
        <p>
            Transactions in Phalcon allow you to commit all operations if they were executed successfully or rollback all operations if something went wrong.
        </p>
        <pre>
            <code class="php">

$manager     = new Transaction\Manager();

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

            </code>
        </pre>
    </div>
</div>
