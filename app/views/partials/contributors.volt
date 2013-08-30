<?php

$contributors = require '../app/var/data/contributors.php';

$n = 1;
echo '<div class="contributors"><em>{{ tr('amazing_contributors') }}</em><table cellspacing="0" cellpadding="0" align="center"><tr>';
foreach ($contributors[0] as $contributor => $number) {
	echo '<td><a title="' . $contributor . '" href="' . $contributors[2][$contributor] . '"><img src="' . $contributors[1][$contributor] . '" alt="' . $contributor . '"></a></td>';
	if ($n % 14 == 0) {
		echo '</tr><tr>';
	}
	$n++;
}
echo '</tr></table></div>';