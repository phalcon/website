<div class="codesample views_front_end_code code_volt" style="display:none">
    <div class="codesample-header">
        <h3>
            {{ locale.translate('template_engine_volt') }}
        </h3>
    </div>
    <div class="codesample-body">
        <p>
            {{ locale.translate('template_engine_volt_1') }}
        </p>
        <div class="row">
            <div class="col-xs-12">
                <pre>
                    <code class="php">
{{ "{# app/views/products/show.volt #}"|e}}

{{ "{% block last_products %}"|e}}

{{ "{% for product in products %}"|e}}

    {{"* Name: {{ product.name|e }}"|e}}

    {{"{% if product.status == 'Active' %}"|e}}

       {{ "Price: {{ product.price + product.taxes/100}}"|e}}

    {{ "{% endif  %}"|e}}

{{ "{% endfor  %}"|e}}

{{ "{% endblock %}"|e}}
                    </code>
                </pre>
            </div>
        </div>
    </div>
</div>
