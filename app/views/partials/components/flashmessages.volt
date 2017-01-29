<div class="codesample views_front_end_code code_flash" style="display:none">
    <div class="codesample-header">
        <h3>
            {{ locale.translate('flash_messages') }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            {{ locale.translate('flash_messages_1') }}
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
        $this->flash->error('{{ locale.translate('flash_messages_2') }}');
        $this->flash->success('{{ locale.translate('flash_messages_3') }}');
        $this->flash->notice('{{ locale.translate('flash_messages_4') }}');
        $this->flash->warning('{{ locale.translate('flash_messages_5') }}');
    }
}
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
