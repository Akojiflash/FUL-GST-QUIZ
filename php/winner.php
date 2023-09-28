<?php

include_once "config.php";

session_start();

//Time bonues points
$totalTime = $_SESSION['data']['minutes'] * 5;

$totalScore = $_SESSION['row2']["score"] + $totalTime;


echo $_SESSION['row2']["score"];