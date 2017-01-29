<div class="codesample views_front_end_code code_i18n"  style="display:none">
    <div class="codesample-header">
        <h3>
            {{ locale.translate("i18n") }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            The component Phalcon\Translate aids in creating multilingual applications. Applications using this component, display content in different languages, based on the user’s chosen language supported by the application.
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
// app/messages/es.php
$messages = array(
    "hi"      => "Hello",
    "bye"     => "Good Bye",
    "hi-name" => "Hello %name%",
    "song"    => "This song is %song%"
);

use Phalcon\Mvc\Controller;
use Phalcon\Translate\Adapter\NativeArray;

//UserController.php
class UserController extends Controller
{
    protected function getTranslation()
    {
        // Ask browser what is the best language
        $language = $this->request->getBestLanguage();

        // Check if we have a translation file for that lang
        if (file_exists("app/messages/" . $language . ".php")) {
            require "app/messages/" . $language . ".php";
        } else {
            // Fallback to some default
            require "app/messages/en.php";
        }

        // Return a translation object
        return new NativeArray(
            array(
                "content" => $messages
            )
        );
    }

    public function indexAction()
    {
        $this->view->name = "Mike";
        $this->view->t    = $this->getTranslation();
    }
}
//user.volt
{{ "<p><?php"|e}} echo $t->_("hi"), " ", $name; {{ "?></p>"|e}}
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
