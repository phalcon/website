<div class="codesample more_components_code code_acl">
    <div class="codesample-header">
        <h3>
            {{ locale.translate(language, 'acl') }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            {{ locale.translate(language, 'acl_1') }}
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Acl;
use Phalcon\Acl\Role;
use Phalcon\Acl\Adapter\Memory as AclList;

// {{ locale.translate(language, 'acl_2') }}

$acl = new AclList();

// {{ locale.translate(language, 'acl_3') }}

$acl->setDefaultAction(Acl::DENY);

// {{ locale.translate(language, 'acl_4') }}

// {{ locale.translate(language, 'acl_5') }}

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
