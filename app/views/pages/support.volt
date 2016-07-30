{% include 'pages/head.volt' %}

<section class="support">
    <div class="container">
        <h3 class="bg-danger">{{ tr('support_note', link_to('download', tr('support_download_page'), 'language', language)) }}</h3>

        <div class="row">
            <div class="col-lg-12">
                <h3>{{ tr('documentation') }}</h3>
            </div>
            <div class="col-lg-12">
                <p>{{ tr('support_documentation_1', link_to('documentation', tr('documentation'))) }}</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <h3>{{ tr('support_phalcon_forum') }}</h3>
            </div>
            <div class="col-lg-12">
                <p>{{ tr('support_forum_1', 'http://forum.phalconphp.com') }}</p>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <h3>{{ tr('support_irc') }}</h3>
            </div>
            <div class="col-lg-12">
                <p>{{ tr('support_irc_1', '#phalconphp') }}</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <h3>{{ tr('stack_overflow') }}</h3>
            </div>
            <div class="col-lg-12">
                <p>
                    {{ tr('support_stack_overflow_1', 'http://stackoverflow.com/questions/tagged/phalcon') }}
                    {{ tr('support_please_note') }}
                    <ul>
                        <li>{{ tr('support_please_note_1') }}</li>
                        <li>{{ tr('support_please_note_2', 'https://github.com/phalcon/cphalcon/issues') }}</li>
                        <li>{{ tr('support_please_note_3', 'https://github.com/phalcon/cphalcon/issues') }}</li>
                        <li>{{ tr('support_please_note_4') }}</li>
                        <li>{{ tr('support_please_note_5') }}</li>
                    </ul>
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <h3>{{ tr('support_reporting_a_bug') }}</h3>
            </div>
            <div class="col-lg-12">
                <p>{{ tr('support_reporting_a_bug_1', 'https://github.com/phalcon/cphalcon/issues') }}</p>
            </div>
        </div>
    </div>
</section>
