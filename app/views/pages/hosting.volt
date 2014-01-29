<div class="header-line" xmlns="http://www.w3.org/1999/html">
    <div class="size-wrap">
        <h1 class="header-line-title title-white">{{ tr('hosting') }}</h1>
    </div>
</div>
<div class="size-wrap">

    <div class="note">
        {{ tr('hosting_description') }}
    </div>

    <table align="center" width="75%" cellpadding="15">
        <tr>
            <td align="center">
                <img src='{{ cdn_url ~ 'images/hosting/fortrabbit-gray.png' }}' title='Fortrabbit' alt='Fortrabbit' />
            </td>
            <td>
                <h4><a target="_blank" href='http://fortrabbit.com/'>Fortrabbit</a></h4>
                <p>{{ tr('hosting_fortrabbit_1') }}</p>
                <p>{{ tr('hosting_fortrabbit_2', 'http://fortrabbit.com/docs/how-to/php/available-php-extensions') }}</p>
                <p>{{ tr('hosting_fortrabbit_3') }}</p>
            </td>
        </tr>
        <tr>
            <td align="center">
                <img src='{{ cdn_url ~ 'images/hosting/webfaction-gray.png' }}' title='WebFaction' alt='WebFaction' />
            </td>
            <td>
                <h4><a target="_blank" href='http://webfaction.com/'>WebFaction</a></h4>
                <p>{{ tr('hosting_webfaction_1') }}</p>
                <p>{{ tr('hosting_webfaction_2', 'http://community.webfaction.com/questions/13689/phalcon-php') }}</p>
            </td>
        </tr>
        <tr>
            <td align="center">
                <img src='{{ cdn_url ~ 'images/hosting/amazon-gray.png' }}' title='Amazon EC2' alt='Amazon EC2' />
            </td>
            <td>
                <h4><a target="_blank" href='http://aws.amazon.com/'>Amazon EC2</a></h4>
                <p>{{ tr('hosting_amazon_ec2_1') }}</p>
                <p>{{ tr('hosting_amazon_ec2_2', 'http://aws.amazon.com/ec2/') }}</p>
                <p>{{ tr('hosting_install_instructions') }}</p>
            </td>
        </tr>
        <tr>
            <td align="center">
                <img src='{{ cdn_url ~ 'images/hosting/linode-gray.png' }}' title='Linode' alt='Linode' />
            </td>
            <td>
                <h4><a target="_blank" href='https://www.linode.com/'>Linode</a></h4>
                <p>{{ tr('hosting_linode_1', 'https://www.linode.com/') }}</p>
                <p>{{ tr('hosting_install_instructions') }}</p>
                <p>Follow this <a href="https://www.digitalocean.com/community/articles/how-to-install-and-get-started-with-phalcon-on-an-ubuntu-12-04-vps">tutorial</a> to get started</p>
            </td>
        </tr>
        <tr>
            <td align="center">
                <img src='{{ cdn_url ~ 'images/hosting/digital-ocean-gray.png' }}' title='Digital Ocean' alt='Digital Ocean' />
            </td>
            <td>
                <h4><a target="_blank" href='https://www.digitalocean.com/'>Digital Ocean</a></h4>
                <p>{{ tr('hosting_digital_ocean_1', 'https://www.digitalocean.com/') }}</p>
                <p>{{ tr('hosting_install_instructions') }}</p>
            </td>
        </tr>
        <tr>
            <td align="center">
                <img src='{{ cdn_url ~ 'images/hosting/rackspace-gray.png' }}' title='Rackspace' alt='Rackspace' />
            </td>
            <td>
                <h4><a target="_blank" href='http://www.rackspace.com/cloud/servers/'>Rackspace</a></h4>
                <p>{{ tr('hosting_rackspace_1', 'http://www.rackspace.com/cloud/servers/') }}</p>
                <p>{{ tr('hosting_install_instructions') }}</p>
            </td>
        </tr>
        <tr>
            <td align="center">
                <img src='{{ cdn_url ~ 'images/hosting/azure-gray.jpg' }}' title='Windows Azure' alt='Windows Azure' />
            </td>
            <td>
                <h4><a target="_blank" href='http://www.windowsazure.com'>Windows Azure</a></h4>
                <p>{{ tr('hosting_azure_1', 'http://www.windowsazure.com') }}</p>
                <p>{{ tr('hosting_azure_2', 'http://www.sitepoint.com/phalcon-windows-azure/') }}</p>
            </td>
        </tr>
    </table>

</div>
