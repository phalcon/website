<div class="codesample views_front_end_code code_forms" style="display:none">
    <div class="codesample-header">
        <h3>{{ tr('forms_builder') }}</h3>
    </div>
    <div class="codesample-body">
        <p>
            Forms can be initialized outside the form class by adding elements to it. You can re-use code or organize your form classes implementing the form in a separated file:
        </p>
        <pre>
            <code class="php">
use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\Select;

$form = new Form();

$form->add(new Text("name"));

$form->add(new Text("telephone"));

$form->add(
    new Select(
        "telephoneType",
        array(
            'H' => 'Home',
            'C' => 'Cell'
        )
    )
);
            </code>
        </pre>
    </div>
</div>
