<div class="codesample data_storage_code code_orm">
    <div class="codesample-header">
        <h3>
            {{ tr("orm") }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            A powerful ORM is provided by Phalcon allowing you to manipulate database records
            as classes and objects. MySQL, PostgreSQL and SQLite are supported out of the box.
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
        $this->hasMany("id", "RobotsParts", "robots_id");
    }
}
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
