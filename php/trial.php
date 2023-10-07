<?php 
//fetch present trial status
include_once "config.php";
session_start();
$query3 = "SELECT trials FROM users WHERE unique_id = '{$_SESSION['unique_id']}'";
$result3 = mysqli_query($conn, $query3);
$assoc = mysqli_fetch_assoc($result3);

    

if ($_SESSION['trials'] < 0){
   $location = "courseselection";
   echo "fail";
}


