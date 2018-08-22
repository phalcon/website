{% extends 'layouts/main.volt' %}

{% block content %}

{% include 'partials/page_head.volt' %}

<section class="support">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h3>{{ locale.translate('documentation') }}</h3>
            </div>
            <div class="col-lg-12">
                <p>{{ locale.translate('support_documentation_1', link_to(url('https://phalcon.link/docs/' ~ language), locale.translate('documentation'), false)) }}</p>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <p>{{ locale.translate('support_note_1') }}</p>
                <ul>
                    <li>{{ locale.translate('support_phalcon_forum', 'https://phalcon.link/forum') }}</li>
                    <li>{{ locale.translate('support_stack_overflow', 'https://stackoverflow.com', 'https://stackoverflow.com/questions/tagged/phalcon') }}</li>
                    <li>{{ locale.translate('support_discord', 'https://phalcon.link/discord') }}</li>
                    <li>{{ locale.translate('support_slack', 'https://phalcon.link/slack') }}</li>
                    <li>{{ locale.translate('support_social_network_accounts', 'https://phalcon.link/gab', 'https://phalcon.link/t', 'https://phalcon.link/fb', 'https://phalcon.link/gplus') }}</li>
                    <li>{{ locale.translate('support_reporting_a_bug_0', 'https://github.com/phalcon/cphalcon/issues/new') }}</li>
                </ul>
            </div>

            <div class="col-lg-12">
                <div class="alert alert-danger">
                    <span>
                        {{ locale.translate('support_note_2', link_to('download', locale.translate('support_download_page'), 'language', language)) }}
                    </span>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <h3>{{ locale.translate('stack_overflow') }}</h3>
            </div>
            <div class="col-lg-12">
                <p>
                    {{ locale.translate('support_please_note') }}
                    <ul>
                        <li>{{ locale.translate('support_please_note_1') }}</li>
                        <li>{{ locale.translate('support_please_note_2', 'https://github.com/phalcon/cphalcon/issues') }}</li>
                        <li>{{ locale.translate('support_please_note_3', 'https://github.com/phalcon/cphalcon/issues') }}</li>
                        <li>{{ locale.translate('support_please_note_4') }}</li>
                        <li>{{ locale.translate('support_please_note_5') }}</li>
                    </ul>
                </p>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <h3>{{ locale.translate('support_reporting_a_bug') }}</h3>
            </div>
            <div class="col-lg-12">
                <p>{{ locale.translate('support_reporting_a_bug_1', 'https://github.com/phalcon/cphalcon/issues/new') }}</p>
            </div>
        </div>
    </div>
</section>

{% endblock %}
