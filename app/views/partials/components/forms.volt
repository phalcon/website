<div class="codesample views_front_end_code code_forms" style="display:none">
    <div class="codesample-header">
        <h3>
            {{ locale.translate('forms_builder') }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            {{ locale.translate('forms_builder_1') }}
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\Select;

$form = new Form();

$form->add(new Text('name'));

$form->add(new Text('telephone'));

$form->add(
    new Select(
        'telephoneType',
        array(
            'H' => '{{ locale.translate('forms_builder_2') }}',
            'C' => '{{ locale.translate('forms_builder_3') }}'
        )
    )
);
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
