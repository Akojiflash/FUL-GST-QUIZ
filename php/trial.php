<?php
//fetch present trial status
include_once "config.php";

session_start();

$course = mysqli_real_escape_string($conn, $_POST['selectedCourse']);




//fetch present trial status
$query3 = "SELECT trials FROM users WHERE unique_id = '{$_SESSION['unique_id']}'";
$result3 = mysqli_query($conn, $query3);

if (mysqli_num_rows($result3) > 0) {
   $assoc = mysqli_fetch_assoc($result3);
}

$query1 = "SELECT * FROM payment_table WHERE payment_table.unique_id = '{$_SESSION['unique_id']}' AND payment_table.course_id = '{$course}' ";
$result1 = mysqli_query($conn, $query1);





if ($assoc['trials'] < 0 && mysqli_num_rows($result1) <= 0 ) {
   // $location = "courseselection";
   $status =  'fail';
}elseif(mysqli_num_rows($result1) > 0 ){
   $status == 'success';
}
echo  $status;