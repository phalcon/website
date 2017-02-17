<div class="codesample views_front_end_code code_templates">
    <div class="codesample-header">
        <h3>
            {{ locale.translate('template_engines') }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            {{ locale.translate('template_engines_1') }}
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="html">
{{ "<html>
    <body>
    <div class='top'><?php $this->partial('shared/ad_banner'); ?></div>
    <div class='content'>
        <h1>Robots</h1>
        <p>Check out our specials for robots:</p>
        ...
    </div>
    <div class='footer'><?php $this->partial('shared/footer'); ?></div>
    </body>
</html>"|e }}
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
