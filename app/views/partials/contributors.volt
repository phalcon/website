<div class="contributors">
{% for contributor,data in contributors %}
    <a title="{{ contributor }}" href="{{ data['html'] }}">
       <img src="/images/contributors/{{ contributor }}.jpg" alt="{{ contributor }}" />
    </a>
{% endfor %}
    <div class="clearfix"></div>
    <div class="fader"></div>
</div>
