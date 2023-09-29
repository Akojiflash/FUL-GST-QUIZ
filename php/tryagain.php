<?php 


include "timeout.php";

if(isset($_SESSION['courses'])){
    header("Location: ../questions" . "?courses=" .$_SESSION['courses']); 
    //

}else{
    header("Location: ../myCourses"); 
}

