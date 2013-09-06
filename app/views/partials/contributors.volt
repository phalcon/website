<?php

$contributors = require '../app/var/data/contributors.php';

$n = 1;
?>

<div class="contributors">
    <em>{{ tr('amazing_contributors') }}</em>
    <table cellspacing="0" cellpadding="0" align="center">
    <tr>

<?php
foreach (array_slice($contributors[0], 0, 84) as $contributor => $number) {
?>
        <td>
            <a title="{$contributor}" href="{$contributors[2][$contributor]}">
                <img src="{$contributors[1][$contributor]}" alt="{$contributor}" /></a>
        </td>
<?php
	if ($n % 14 == 0) {
?>
    </tr>
    <tr>
<?php
	}
	$n++;
}
?>
    </tr>
    </table>
</div>