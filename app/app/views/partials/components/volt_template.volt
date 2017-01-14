
<div class="codesample views_front_end_code code_voltcls" style="display:none">
    <div class="codesample-header">
        <h3>{{ tr("template_engine_volt") }}</h3>
    </div>
    <div class="codesample-body">
        <p>
            Volt is an ultra-fast and designer friendly templating language written in C for PHP. It provides you a set of helpers to write views in an easy way. Volt is highly integrated with other components of Phalcon, just as you can use it as a stand-alone component in your applications.
        </p>
        <pre>
            <code class="html">
{{ "<h1>Robots</h1>" | e}}<br>
{{"<ul>" | e}}<br>
    {{ "{% for robot in robots %}" | e}}<br>
        {{ "<li>" | e}}<br>
            {{ "{{ robot.name }}" | e}}<br>
        {{ "</li>" | e}}<br>
    {{ "{% endfor %}" | e}}<br>
{{ "</ul>" | e}}
            </code>
        </pre>
    </div>
</div>
