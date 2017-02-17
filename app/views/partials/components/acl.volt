<div class="codesample more_components_code code_acl">
    <div class="codesample-header">
        <h3>
            {{ locale.translate('acl') }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            {{ locale.translate('acl_1') }}
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Acl;
use Phalcon\Acl\Role;
use Phalcon\Acl\Adapter\Memory as AclList;

// {{ locale.translate('acl_2') }}

$acl = new AclList();

// {{ locale.translate('acl_3') }}

$acl->setDefaultAction(Acl::DENY);

// {{ locale.translate('acl_4') }}

// {{ locale.translate('acl_5') }}

$roles = array(
    'users'  => new Role('Users'),
    'guests' => new Role('Guests')
);

foreach ($roles as $role) {
    $acl->addRole($role);
}
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
