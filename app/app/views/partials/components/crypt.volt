<div class="codesample more_components_code code_crypt" style="display:none">
    <div class="codesample-header">
        <h3>Crypt</h3>
    </div>
    <div class="codesample-body">
        <p>
            Phalcon provides encryption facilities via the Phalcon\Crypt component. This class offers simple object-oriented wrappers to the mcrypt PHP’s encryption library.
        </p>
        <pre>
            <code class="php">
$crypt = new \Phalcon\Crypt();

$key = 'le password';
$text = 'This is a secret text';

$encrypted = $crypt->encrypt($text, $key);

echo $crypt->decrypt($encrypted, $key);
            </code>
        </pre>
    </div>
</div>
