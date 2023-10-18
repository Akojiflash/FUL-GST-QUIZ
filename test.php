<?php
include_once ("php/config.php");
session_start();
echo $_SESSION['amount'];
print_r($_SESSION['selectedCourses']);


echo $_SESSION['unique_id'];

echo $_SESSION['email'];