<?php
    $n = 1;
    $contributors = require ROOT_PATH .  '/app/var/data/contributors.php';
?>
<div class="contributors">
    <em>{{ tr('amazing_contributors') }}</em>
    <table cellspacing="0" cellpadding="0" align="center">
    <tr>
<?php
foreach (array_slice($contributors[0], 0, 84) as $contributor => $number) {
?>
        <td>
            <a title="<?php echo $contributor; ?>" href="<?php echo $contributors[2][$contributor]; ?>">
                <img src="<?php echo $contributors[1][$contributor]; ?>" alt="<?php echo $contributor; ?>" /></a>
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
