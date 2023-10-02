<?php 



include "./winner.php";
include "./timeout.php";

header("Location: ../questions?courses=". $courseID); 
