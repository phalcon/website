{% extends 'layouts/main.volt' %}

{% block content %}

{% include 'partials/page_head.volt' %}

<section class="hosting">
    <div class="container">

        <div class="row">
            <div class="col-lg-12">
                {{ locale.translate('hosting_description') }}
            </div>
        </div>
        <hr/>
        <div class="row">
            <div class="col-lg-3">
                <img src='{{ utils.getCdnUrl('images/hosting/fortrabbit-gray.png') }}'
                     title='{{ locale.translate('hosting_fortrabbit_title') }}'
                     alt='{{ locale.translate('hosting_fortrabbit_title') }}' />
            </div>
            <div class="col-lg-9">
                <h4>
                    <a target="_blank" href='http://fortrabbit.com/'>
                        {{ locale.translate('hosting_fortrabbit_title') }}
                    </a>
                </h4>
                <p>{{ locale.translate('hosting_fortrabbit_1') }}</p>
                <p>{{ locale.translate('hosting_fortrabbit_2', 'http://fortrabbit.com/docs/how-to/php/available-php-extensions') }}</p>
                <p>{{ locale.translate('hosting_fortrabbit_3') }}</p>
            </div>
        </div>
         <div class="row">
            <div class="col-lg-3">
                <img src='{{ utils.getCdnUrl('images/hosting/digital-ocean-gray.png') }}'
                     title='{{ locale.translate('hosting_digital_ocean_title') }}'
                     alt='{{ locale.translate('hosting_digital_ocean_title') }}' />
            </div>
            <div class="col-lg-9">
                <h4>
                    <a target="_blank" href='https://www.digitalocean.com/'>
                        {{ locale.translate('hosting_digital_ocean_title') }}
                    </a>
                </h4>
                <p>{{ locale.translate('hosting_digital_ocean_1', 'https://www.digitalocean.com/') }}</p>
                <p>{{ locale.translate('hosting_install_instructions') }}</p>
                <p>{{ locale.translate('hosting_digital_ocean_2', 'https://www.digitalocean.com/community/articles/how-to-install-and-get-started-with-phalcon-on-an-ubuntu-12-04-vps') }}</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3">
                <img src='{{ utils.getCdnUrl('images/hosting/layershift-gray.png') }}'
                     title='{{ locale.translate('hosting_layershift_title') }}'
                     alt='{{ locale.translate('hosting_layershift_title') }}' />
            </div>
            <div class="col-lg-9">
                <h4>
                    <a target="_blank" href='http://www.layershift.com'>
                        {{ locale.translate('hosting_layershift_title') }}
                    </a>
                </h4>
                <p>{{ locale.translate('hosting_layershift_1') }}</p>
                <p>{{ locale.translate('hosting_layershift_2', 'http://kb.layershift.com/jelastic-install-phalcon-php-framework') }}</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3">
                <img src='{{ utils.getCdnUrl('images/hosting/azure-gray.jpg') }}'
                     title='{{ locale.translate('hosting_azure_title') }}'
                     alt='{{ locale.translate('hosting_azure_title') }}' />
            </div>
            <div class="col-lg-9">
                <h4>
                    <a target="_blank" href='http://www.windowsazure.com'>
                        {{ locale.translate('hosting_azure_title') }}
                    </a>
                </h4>
                <p>{{ locale.translate('hosting_azure_1', 'http://www.windowsazure.com') }}</p>
                <p>{{ locale.translate('hosting_azure_2', 'http://www.sitepoint.com/phalcon-windows-azure/') }}</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3">
                <img src='{{ utils.getCdnUrl('images/hosting/amazon-gray.png') }}'
                     title='{{ locale.translate('hosting_amazon_ec2_title') }}'
                     alt='{{ locale.translate('hosting_amazon_ec2_title') }}' />
            </div>
            <div class="col-lg-9">
                <h4>
                    <a target="_blank" href='http://aws.amazon.com/'>
                        {{ locale.translate('hosting_amazon_ec2_title') }}
                    </a>
                </h4>
                <p>{{ locale.translate('hosting_amazon_ec2_1') }}</p>
                <p>{{ locale.translate('hosting_amazon_ec2_2', 'http://aws.amazon.com/ec2/') }}</p>
                <p>{{ locale.translate('hosting_install_instructions') }}</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3">
                <img src='{{ utils.getCdnUrl('images/hosting/linode-gray.png') }}' 
                     title='{{ locale.translate('hosting_linode_title') }}'
                     alt='{{ locale.translate('hosting_linode_title') }}' />
            </div>
            <div class="col-lg-9">
                <h4>
                    <a target="_blank" href='https://www.linode.com/'>
                        {{ locale.translate('hosting_linode_title') }}
                    </a>
                </h4>
                <p>{{ locale.translate('hosting_linode_1', 'https://www.linode.com/') }}</p>
                <p>{{ locale.translate('hosting_install_instructions') }}</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3">
                <img src='{{ utils.getCdnUrl('images/hosting/webfaction-gray.png') }}'
                     title='{{ locale.translate('hosting_webfaction_title') }}'
                     alt='{{ locale.translate('hosting_webfaction_title') }}' />
            </div>
            <div class="col-lg-9">
                <h4>
                    <a target="_blank" href='http://webfaction.com/'>
                        {{ locale.translate('hosting_webfaction_title') }}
                    </a>
                </h4>
                <p>{{ locale.translate('hosting_webfaction_1') }}</p>
                <p>{{ locale.translate('hosting_webfaction_2', 'http://community.webfaction.com/questions/13689/phalcon-php') }}</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3">
                <img src='{{ utils.getCdnUrl('images/hosting/rackspace-gray.png') }}'
                     title='{{ locale.translate('hosting_rackspace_title') }}'
                     alt='{{ locale.translate('hosting_rackspace_title') }}' />
            </div>
            <div class="col-lg-9">
                <h4>
                    <a target="_blank" href='http://www.rackspace.com/cloud/servers/'>
                        {{ locale.translate('hosting_rackspace_title') }}
                    </a>
                </h4>
                <p>{{ locale.translate('hosting_rackspace_1', 'http://www.rackspace.com/cloud/servers/') }}</p>
                <p>{{ locale.translate('hosting_install_instructions') }}</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3">
                <img src='{{ utils.getCdnUrl('images/hosting/aspnix-gray.png') }}'
                     title='{{ locale.translate('hosting_aspnix_title') }}'
                     alt='{{ locale.translate('hosting_aspnix_title') }}' />
            </div>
            <div class="col-lg-9">
                <h4>
                    <a target="_blank" href='https://aspnix.com/'>
                        {{ locale.translate('hosting_aspnix_title') }}
                    </a>
                </h4>
                <p>{{ locale.translate('hosting_aspnix_1', 'https://aspnix.com/') }}</p>
                <p>{{ locale.translate('hosting_aspnix_2', 'https://aspnix.com/kb/sales-kb/what-php-extensions-are-supported-on-windows-shared-hosting/') }}</p>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-3">
                <img src='{{ utils.getCdnUrl('images/hosting/kinghost-gray.png') }}'
                     title='{{ locale.translate('hosting_kinghost_title') }}'
                     alt='{{ locale.translate('hosting_kinghost_title') }}' />
            </div>
            <div class="col-lg-9">
                <h4>
                    <a target="_blank" href='http://kingho.st/phalcon-kinghost'>
                        {{ locale.translate('hosting_kinghost_title') }}
                    </a>
                </h4>
                <p>{{ locale.translate('hosting_kinghost_1') }}</p>
            </div>
        </div>

    </div>
</section>
{% endblock %}