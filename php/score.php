<?php
session_start();
include_once "config.php";
include "./timeout.php";


if (isset($_SESSION['unique_id'])){
    $user_id = $_SESSION['unique_id'];
}
//This to display the user score on the score board
$query = "SELECT courses.course_id, courses.course_code, quiz_enrollment.present_score, quiz_enrollment.HighScore
FROM courses
INNER JOIN quiz_enrollment ON courses.course_id = quiz_enrollment.course
WHERE quiz_enrollment.unique_id = '{$_SESSION['unique_id']}'";
$result = mysqli_query($conn, $query);
$data = "";
if($result && mysqli_num_rows($result)>0){
    while ( $row = mysqli_fetch_assoc($result)){
        include "data.php";
    }
    
}
echo $data;
