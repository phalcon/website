<div class="codesample data_storage_code code_orm">
    <div class="codesample-header">
        <h3>
            {{ tr("orm") }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            In Phalcon, relationships must be defined in the initialize() method of a model. The methods belongsTo(), hasOne(), hasMany() and hasManyToMany() define the relationship between one or more fields from the current model to fields in another model. Each of these methods requires 3 parameters: local fields, referenced model, referenced fields.
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
