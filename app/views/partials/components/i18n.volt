<div class="codesample views_front_end_code code_i18n"  style="display:none">
    <div class="codesample-header">
        <h3>
            {{ locale.translate('i18n') }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            {{ locale.translate('i18n_1') }}
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
// app/messages/en.php
$messages = [
    'hi'      => 'Hello',
    'bye'     => 'Good Bye',
    'hi-name' => 'Hello %name%',
    'song'    => 'This song is %song%'
];

// app/messages/es.php
$messages = [
    'hi'      => 'Hola',
    'bye'     => 'Adiós',
    'hi-name' => 'Hola %name%',
    'song'    => 'Esta canción es %song%'
];

use Phalcon\Mvc\Controller;
use Phalcon\Translate\Adapter\NativeArray;

// UserController.php
class UserController extends Controller
{
    protected function getTranslation()
    {
        // {{ locale.translate('i18n_2') }}

        $language = $this->request->getBestLanguage();

        // {{ locale.translate('i18n_3') }}

        if (file_exists('app/messages/' . $language . '.php')) {
            require 'app/messages/' . $language . '.php';
        } else {
            // {{ locale.translate('i18n_4') }}
            require 'app/messages/en.php';
        }

        // {{ locale.translate('i18n_5') }}

        return new NativeArray(
            array(
                'content' => $messages
            )
        );
    }

    public function indexAction()
    {
        $this->view->name = 'Mike';
        $this->view->t    = $this->getTranslation();
    }
}
// user.volt
{{ '<p><?php'|e}} echo $t->_('hi'), ' ', $name; {{ '?></p>'|e}}
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
