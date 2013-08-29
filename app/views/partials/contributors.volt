<?php

$contributors[0] = require '../app/var/data/contributors.php';

//$n =
foreach ($contributors[0] as $contributor => $number) {
	echo '<img src="' . $contributors[1][$contributor] . '" style="width:36px">';
}