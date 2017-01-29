<div class="codesample views_front_end_code code_forms" style="display:none">
    <div class="codesample-header">
        <h3>
            {{ locale.translate("forms_builder") }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            Each element in the form can be rendered as required by the developer. Internally, Phalcon\Tag is used to produce the correct HTML
            for each element and you can pass additional HTML attributes as the second parameter of render():
        </p>
        <div class="row">
            <div class="col-xs-12">
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
    </div>
</div>
