<?php

include_once "config.php";

session_start();

//Time bonues points
$totalTime = $_SESSION['data']['minutes'] * 5;

$totalScore = $_SESSION['row2']["score"] + $totalTime;


echo $_SESSION['row2']["score"];

if(isset($_SESSION['unique_id'])){
    $user_id = $_SESSION['unique_id'];
}
if(isset($_SESSION['courses'])){
    $course = $_SESSION['courses'];
}

$query = "SELECT * FROM quiz_enrollment WHERE unique_id = $user_id";
$result = mysqli_query($conn, $query);
if(isset($result) && $result > 0){
    $row = mysqli_fetch_assoc($result);
   
        $query2 = "UPDATE quiz_enrollment SET present_score = $totalScore WHERE unique_id =  $user_id AND course = $course";
        $result2 = mysqli_query($conn, $query2);

    if($_SESSION['row2']["score"]>=150 && $totalScore >= $row['HighScore']){
        $query3 = "UPDATE quiz_enrollment SET HighScore = $totalScore WHERE unique_id =  $user_id AND course = $course";
        $result3 = mysqli_query($conn, $query2);
    }

}else if (!isset($result) && $result <= 0){
    $zero = 0;

    $query4 = "INSERT INTO quiz_enrollment (unique_id, course, present_score, HighScore ) VALUES ($user_id, $course, $totalScore, $zero)";
    $result4 = mysqli_query($conn, $query4);
    if($_SESSION['row2']["score"]>=150 && $totalScore >= $row['HighScore']){
        $query3 = "UPDATE quiz_enrollment SET HighScore = $totalScore WHERE unique_id =  $user_id AND course = $course";
        $result3 = mysqli_query($conn, $query2);
    }
}