<?php 


include "timeout.php";

if(isset($_SESSION['courses'])){
    header("Location: ../questions" . "?courses=" .$_SESSION['courses']); // Replace "login.php" with the URL of your login page

}

