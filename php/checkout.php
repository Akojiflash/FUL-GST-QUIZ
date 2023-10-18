<?php
include_once ("config.php");
session_start();

$payingCourses =  mysqli_real_escape_string($conn, $_POST["coursesPayingfor"]);
$_SESSION['amount'] = mysqli_real_escape_string($conn, $_POST["amount"]);

$_SESSION['selectedCourses'] = explode(",", $payingCourses );

if(isset($payingCourses) && count($_SESSION['selectedCourses']) > 0 && isset($amount))  {
    echo "success";
  
}

// echo $payingCourses;
// echo $payingCourses;


