<?php

include_once "config.php";
session_start();
$query3 = "SELECT trials FROM users WHERE unique_id = '{$_SESSION['unique_id']}'";
$result3 = mysqli_query($conn, $query3);
$assoc = mysqli_fetch_assoc($result3);
$_SESSION['trials'] = $assoc['trials'];
$trials = $_SESSION['trials'];
if($_SESSION['trials'] <0){
    $trials = 0;
}

echo $trials;