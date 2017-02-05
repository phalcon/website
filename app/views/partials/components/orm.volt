<div class="codesample data_storage_code code_orm">
    <div class="codesample-header">
        <h3>
            {{ locale.translate('orm') }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            {{ locale.translate('orm_1') }}
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Mvc\Model;

class Robots extends Model
{
    public $id;

    public $name;

    public function initialize()
    {
        $this->hasMany('id', 'RobotsParts', 'robots_id');
    }
}
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
