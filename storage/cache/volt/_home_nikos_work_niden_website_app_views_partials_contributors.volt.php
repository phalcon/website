<?php
//    $contributors = require ROOT_PATH .  '/app/var/data/contributors.php';
    $contributors = [];
?>
<div class="contributors">
<?php
foreach (array_slice($contributors[0], 0, 84) as $contributor => $number) {
?>
    <a title="<?php echo $contributor; ?>" href="<?php echo $contributors[2][$contributor]; ?>"><img src="<?php echo $contributors[1][$contributor]; ?>&s=90" alt="<?php echo $contributor; ?>" /></a>
<?php
    }
?>
    <div class="clearfix"></div>
    <div class="fader"></div>
</div>
