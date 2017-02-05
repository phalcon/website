{% extends 'layouts/main.volt' %}

{% block content %}

{% include 'partials/page_head.volt' %}

<section class="support">
    <div class="container">
        <h3 class="bg-danger">
            {{ locale.translate(language, 'support_note', link_to('download', locale.translate(language, 'support_download_page'), 'language', language)) }}
        </h3>

        <div class="row">
            <div class="col-lg-12">
                <h3>{{ locale.translate(language, 'documentation') }}</h3>
            </div>
            <div class="col-lg-12">
                <p>{{ locale.translate(language, 'support_documentation_1', link_to('documentation', locale.translate(language, 'documentation'))) }}</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <h3>{{ locale.translate(language, 'support_phalcon_forum') }}</h3>
            </div>
            <div class="col-lg-12">
                <p>{{ locale.translate(language, 'support_forum_1', 'https://phalcon.link/forum') }}</p>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <h3>{{ locale.translate(language, 'support_slack') }}</h3>
            </div>
            <div class="col-lg-12">
                <p>{{ locale.translate(language, 'support_slack_1', 'https://phalcon.link/slack') }}</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <h3>{{ locale.translate(language, 'stack_overflow') }}</h3>
            </div>
            <div class="col-lg-12">
                <p>
                    {{ locale.translate(language, 'support_stack_overflow_1', 'https://stackoverflow.com/questions/tagged/phalcon') }}
                    {{ locale.translate(language, 'support_please_note') }}
                    <ul>
                        <li>{{ locale.translate(language, 'support_please_note_1') }}</li>
                        <li>{{ locale.translate(language, 'support_please_note_2', 'https://github.com/phalcon/cphalcon/issues') }}</li>
                        <li>{{ locale.translate(language, 'support_please_note_3', 'https://github.com/phalcon/cphalcon/issues') }}</li>
                        <li>{{ locale.translate(language, 'support_please_note_4') }}</li>
                        <li>{{ locale.translate(language, 'support_please_note_5') }}</li>
                    </ul>
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <h3>{{ locale.translate(language, 'support_reporting_a_bug') }}</h3>
            </div>
            <div class="col-lg-12">
                <p>{{ locale.translate(language, 'support_reporting_a_bug_1', 'https://github.com/phalcon/cphalcon/issues') }}</p>
            </div>
        </div>
    </div>
</section>

{% endblock %}