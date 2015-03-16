<?php
    $contributors = require ROOT_PATH .  '/app/var/data/contributors.php';
?>

<div class="contributors">
    {% set names = contributors[0]|keys %}
    {% set avatars = contributors[1] %}

    {% for name in names %}
        <a href="https://github.com/{{ name|lower }}" title="{{ name }}" target="_blank" tabindex="-1">
            <img src="https://avatars.githubusercontent.com/u/{{ avatars[name] }}?v=3&s=90"/>
        </a>
    {% endfor %}

    <div class="clearfix"></div>
    <div class="fader"></div>
</div>