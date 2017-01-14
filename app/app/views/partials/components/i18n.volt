
<div class="codesample views_front_end_code code_i18ncls" style="display:none">
    <div class="codesample-header">
        <h3>{{ tr('translations') }}</h3>
    </div>
    <div class="codesample-body">
        <p>
            The component Phalcon\Translate aids in creating multilingual applications. Applications using this component, display content in different languages, based on the user’s chosen language supported by the application.
        </p>
        <pre>
            <code class="php">

// Prints € 4 560
$formatter = new MessageFormatter("fr_FR", "€ {0, number, integer}");
echo $formatter->format(array(4560));

// Prints USD$ 4,560.5
$formatter = new MessageFormatter("en_US", "USD$ {0, number}");
echo $formatter->format(array(4560.50));

// Prints ARS$ 1.250,25
$formatter = new MessageFormatter("es_AR", "ARS$ {0, number}");
echo $formatter->format(array(1250.25));

            </code>
        </pre>
    </div>
</div>
