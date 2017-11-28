<?php 
// функція виводу новин
function get_categories($link) {
    $sql  = 'SELECT * FROM news';
    
    $result = mysqli_query($link, $sql);
    
    $categories = mysqli_fetch_all($result, 1);
    
    return $categories;
}
$categories = get_categories($link);

// функція виводу таблиці команд
function get_table($link) {
    $sql  = 'SELECT * FROM bbva';
    
    $result = mysqli_query($link, $sql);
    
    $table = mysqli_fetch_all($result, 1);
    
    return $table;
}
$table = get_table($link);

// функція виводу гоавції в таблиці
function get_player($link) {
    $sql  = 'SELECT * FROM players';
    
    $result = mysqli_query($link, $sql);
    
    $player = mysqli_fetch_all($result, 1);
    
    return $player;
}
$player = get_player($link);

// функція виводу команди
function get_player_team($link) {
    $sql  = 'SELECT * FROM team';
    
    $result = mysqli_query($link, $sql);
    
    $team = mysqli_fetch_all($result, 1);
    
    return $team;
}
$team = get_player_team($link);

// функція виводу трофеїв
function get_trofy($link) {
    $sql  = 'SELECT * FROM trofy';
    
    $result = mysqli_query($link, $sql);
    
    $trofy = mysqli_fetch_all($result, 1);
    
    return $trofy;
}

$trofy = get_trofy($link);

// функція виводу історії
function get_history($link) {
    $sql  = 'SELECT * FROM history';
    
    $result = mysqli_query($link, $sql);
    
    $history = mysqli_fetch_all($result, 1);
    
    return $history;
}

$history = get_history($link);
