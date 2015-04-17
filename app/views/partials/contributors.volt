<?php
    $contributors = require ROOT_PATH .  '/app/var/data/contributors.php';
?>

<div id="contributors">
    {% set names = contributors[0]|keys %}
    {% set avatars = contributors[1] %}
    <div class="contributors-side">
        {% for index, name in names if index is odd %}
            <a href="https://github.com/{{ name|lower }}" title="{{ name }}" target="_blank" tabindex="-1">
                <img class="lazy" data-original="{{ avatars[name] }}&s=90" src="/images/blank.gif"/>
            </a>
        {% endfor %}
    </div>
    <div class="contributors-side">
        {% for index, name in names if index is even %}
            <a href="https://github.com/{{ name|lower }}" title="{{ name }}" target="_blank" tabindex="-1">
                <img class="lazy" data-original="{{ avatars[name] }}&s=90" src="/images/blank.gif"/>
            </a>
        {% endfor %}
    </div>
    <div class="clearfix"></div>
    <div class="fader"></div>
</div>