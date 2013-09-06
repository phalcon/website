<?php

    $contributors = require '../app/var/data/contributors.php';

    $n = 1;

    echo <<<EOF
<div class="contributors">
    <em>{{ tr('amazing_contributors') }}</em>
    <table cellspacing="0" cellpadding="0" align="center">
    <tr>
EOF;

    foreach (array_slice($contributors[0], 0, 84) as $contributor => $number) {

        echo <<<EOF
        <td>
            <a title="{$contributor}" href="{$contributors[2][$contributor]}">
                <img src="{$contributors[1][$contributor]}" alt="{$contributor}" /></a>
        </td>
EOF;

	if ($n % 14 == 0) {

        echo <<<EOF
    </tr>
    <tr>
EOF;

	}
	$n++;
}

    echo <<<EOF
    </tr>
    </table>
</div>
EOF;