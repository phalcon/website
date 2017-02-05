<div class="codesample data_storage_code code_transactions" style="display:none">
    <div class="codesample-header">
        <h3>
            {{ locale.translate('transactions') }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            {{ locale.translate('transactions_1') }}
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Mvc\Model\Transaction\Failed as TxFailed;
use Phalcon\Mvc\Model\Transaction\Manager as TxManager;

try {

    // {{ locale.translate('transactions_2') }}

    $manager     = new TxManager();

    // {{ locale.translate('transactions_3') }}

    $transaction = $manager->get();

    // {{ locale.translate('transactions_4') }}

    foreach (Robots::find("type = 'mechanical'") as $robot) {
        $robot->setTransaction($transaction);
        if ($robot->delete() == false) {
            // {{ locale.translate('transactions_5') }}

            foreach ($robot->getMessages() as $message) {
                $transaction->rollback($message->getMessage());
            }
        }
    }

    // {{ locale.translate('transactions_6') }}

    $transaction->commit();

    echo "{{ locale.translate('transactions_7') }}";

} catch (TxFailed $e) {
    echo "{{ locale.translate('transactions_8') }} ", $e->getMessage();
}
</code>
                </pre>
            </div>
        </div>
    </div>
</div>
