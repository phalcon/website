{# app/views/products/show.volt #}
{% extends "templates/products.volt" %}

{{ content() }}

{% block last_products %}

{% for product in products %}
    * Name: {{ product.name|e }}
    {% if product.status == "Active" %}
       Price: {{ product.price + product.taxes/100 }}
       	{{ link_to('More', 'products/details/' ~ product.id) }}
	{% else %}
		{{ '(Inactive)' }}
    {% endif  %}
{% endfor  %}

{% endblock %}

{% block footer %}
{{ partial('navbar/footer') }}
{% endblock %}