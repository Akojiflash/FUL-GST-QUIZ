<?php
include_once "config.php";
session_start();

if (isset($_SESSION['unique_id'])){

    // If logged in, destroy the session
    // unset($_SESSION['user_id']);
    // unset($_SESSION['questionID']);
    // unset($_SESSION['answers']);
    // unset($_SESSION['userAns']);
    // unset($_SESSION['questionStat']);
    // unset($_SESSION['time']);

    session_destroy();
}
// Redirect the user to the login page or any other page
header("Location: /GstQuizSite"); // Replace "login.php" with the URL of your login page


exit();
