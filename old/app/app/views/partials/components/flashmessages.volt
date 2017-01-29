
<div class="codesample views_front_end_code code_flash" style="display:none">
    <div class="codesample-header">
        <h3>{{ tr('flash_messages') }}</h3>
    </div>
    <div class="codesample-body">
        <p>Flash messages are used to notify the user about the state of actions he/she made or simply show information to the users. These kinds of messages can be generated using this component.</p>
        <pre>
            <code class="php">
//Di.php || services.php

use Phalcon\Flash\Direct as FlashDirect;

// Set up the flash service
$di->set('flash', function () {
    return new FlashDirect();
});

//ExampleController.php
use Phalcon\Mvc\Controller;

class ExampleController extends Controller
{
    public function messageAction()
    {
        $this->flash->error("too bad! the form had errors");
        $this->flash->success("yes!, everything went very smoothly");
        $this->flash->notice("this a very important information");
        $this->flash->warning("best check yo self, you're not looking too good.");
    }
}
            </code>
        </pre>
    </div>
</div>
