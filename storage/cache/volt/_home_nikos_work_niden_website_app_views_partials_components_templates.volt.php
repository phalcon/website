<div class="codesample views_front_end_code code_templates">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('template_engines') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            Views represent the user interface of your application. Views are often HTML files with embedded PHP
            code that perform tasks related solely to the presentation of the data. Views handle the job of providing
            data to the web browser or other tool that is used to make requests from your application.
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="html">
<?= $this->escaper->escapeHtml('<html>
    <body>
    <div class=\'top\'><?php $this->partial(\'shared/ad_banner\'); ?></div>
    <div class=\'content\'>
        <h1>Robots</h1>
        <p>Check out our specials for robots:</p>
        ...
    </div>
    <div class=\'footer\'><?php $this->partial(\'shared/footer\'); ?></div>
    </body>
</html>') ?>
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
