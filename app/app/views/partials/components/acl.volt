<div class="codesample more_components_code code_acl">
    <div class="codesample-header">
        <h3>{{ tr("acl") }}</h3>
    </div>
    <div class="codesample-body">
        <p>
            A role is an object that can or cannot access certain resources in the access list. As an example, we will define roles as groups of people in an organization. The Phalcon\Acl\Role class is available to create roles in a more structured way. Let’s add some roles to our recently created list.
        </p>
        <pre>
            <code class="php">
use Phalcon\Acl\Role;

// Create some roles.
// The first parameter is the name, the second parameter is an optional description.
$roleAdmins = new Role("Administrators", "Super-User role");
$roleGuests = new Role("Guests");

// Add "Guests" role to ACL
$acl->addRole($roleGuests);

// Add "Designers" role to ACL without a Phalcon\Acl\Role
$acl->addRole("Designers");
            </code>
        </pre>
    </div>
</div>
