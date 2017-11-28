<?php
    require_once "more/db.php";
    require_once "more/functions.php";
?>
<?php  
    $table = get_table($link);
?>
<h3>Таблиця ліги BBVA</h3>
 <table class="table table-striped table_info">
 <tr><th>#</th><th>Команда</th><th>І</th><th>О</th></tr>
<?php foreach ($table as $tabled): ?>
<tr><td><?=$tabled["id"]?></td><td><?=$tabled["team"]?></td><td><?=$tabled["games"]?></td><td><?=$tabled["points"]?></td></tr>
<?php endforeach; ?>
</table>
                    
<h3>Бомбардири Реала</h3>
<?php  
    $player = get_player($link);
?>
                    <table class="table tablestriped">
                        <tr><th>#</th><th>Імя</th><th>Гол.</th></tr>
                        <?php foreach ($player as $players): ?>
                        <tr><td><?=$players["id"]?></td><td><?=$players["name_player"]?></td><td><?=$players["goal"]?></td></tr>
                        <?php endforeach; ?>
                    </table>