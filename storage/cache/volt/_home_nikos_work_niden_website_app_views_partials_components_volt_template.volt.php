<div class="codesample views_front_end_code code_volt" style="display:none">
    <div class="codesample-header">
        <h3>
            <?= $this->locale->translate('template_engine_volt') ?>
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            Volt is an ultra-fast and designer friendly templating language written in Zephir/C for PHP. It provides you a set of helpers 
            to write views in an easy way. Volt is highly integrated with other components of Phalcon,
            just as you can use it as a stand-alone component in your applications.
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
<?= $this->escaper->escapeHtml('{# app/views/products/show.volt #}') ?>

<?= $this->escaper->escapeHtml('{% block last_products %}') ?>

<?= $this->escaper->escapeHtml('{% for product in products %}') ?>

    <?= $this->escaper->escapeHtml('* Name: {{ product.name|e }}') ?>

    <?= $this->escaper->escapeHtml('{% if product.status == \'Active\' %}') ?>

       <?= $this->escaper->escapeHtml('Price: {{ product.price + product.taxes/100}}') ?>

    <?= $this->escaper->escapeHtml('{% endif  %}') ?>

<?= $this->escaper->escapeHtml('{% endfor  %}') ?>

<?= $this->escaper->escapeHtml('{% endblock %}') ?>
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
