<?php
session_start();
$_SESSION['totalNumberOfQuestions'] = 29;

// echo $NumberOfQuestions;

if(!isset($_SESSION['questionStat']['questionStat'] )){
    $_SESSION['questionStat']['questionStat'] = 0;
}

// if(isset($_SESSION["'questionStat"]['questionStat'])){
    if($_SESSION['questionStat']['questionStat']  > $_SESSION['totalNumberOfQuestions']-1){
        
        // echo $_SESSION['questionStat']['questionStat'];
        
        echo "completed";
    }
// }
