<div class="codesample views_front_end_code code_flash" style="display:none">
    <div class="codesample-header">
        <h3>
            {{ tr("flash_messages") }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            Use the flash notifier to show notifications to a user in a web application:
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">

use Phalcon\Mvc\Controller;

class PostsController extends Controller
{
    public function saveAction()
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
    </div>
</div>
