<?php

include_once "config.php";
session_start();
$user_id = -1;
if (isset($_SESSION['unique_id'])){
    $user_id = $_SESSION['unique_id'];
}

$query = "SELECT courses.course_id, courses.course_code, quiz_enrollment.present_score, quiz_enrollment.HighScore
FROM courses
INNER JOIN quiz_enrollment ON courses.course_id = quiz_enrollment.course
WHERE quiz_enrollment.unique_id = '{$user_id}'";
$result = mysqli_query($conn, $query);
$data = "";
if($result && mysqli_num_rows($result)>0){
    while ( $row = mysqli_fetch_assoc($result)){
        include "data.php";
      
        
        
       
    }
    
}
echo $data;