<div class="codesample more_components_code code_acl">
    <div class="codesample-header">
        <h3>
            <?= Phalcon\Text::upper($this->locale->translate('acl')) ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            This is how you can built the access control list (ACL):
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
use Phalcon\Acl;
use Phalcon\Acl\Role;
use Phalcon\Acl\Adapter\Memory as AclList;

// Create the ACL
$acl = new AclList();

// The default action is DENY access
$acl->setDefaultAction(Acl::DENY);

// Register two roles, Users is registered users
// and guests are users without a defined identity
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
