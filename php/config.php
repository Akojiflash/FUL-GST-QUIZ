<?php

$Localhost = "localhost";
$user = "root";
$password = "";
$db = "thegstquizapp";

$conn = mysqli_connect($Localhost, $user, $password, $db);
if(!$conn){
    echo "Error connecting to Data Base".mysqli_connect_error();
}