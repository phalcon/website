<div class="codesample more_components_code code_crypt" style="display:none">
    <div class="codesample-header">
        <h3>
            {{ locale.translate('encryption') }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            {{ locale.translate('encryption_1') }}
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Crypt;

// Create an instance
$crypt     = new Crypt();

$key       = '{{ locale.translate('encryption_2') }}';
$text      = '{{ locale.translate('encryption_3') }}';

$encrypted = $crypt->encrypt($text, $key);

echo $crypt->decrypt($encrypted, $key);
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
