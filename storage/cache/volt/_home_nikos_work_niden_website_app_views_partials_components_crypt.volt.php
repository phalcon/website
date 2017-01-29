<div class="codesample more_components_code code_crypt" style="display:none">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('encryption') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            Phalcon provides encryption facilities via the Phalcon\Crypt component. This class offers simple object-oriented
            wrappers to the openssl PHP’s encryption library.
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Crypt;

// Create an instance
$crypt     = new Crypt();

$key       = 'This is a secret key (32 bytes).';
$text      = 'This is the text that you want to encrypt.';

$encrypted = $crypt->encrypt($text, $key);

echo $crypt->decrypt($encrypted, $key);
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
