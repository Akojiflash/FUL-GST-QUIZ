<?php
include_once "config.php";


session_start();


$time = 15 * 60;
if(!$_SESSION['time']){
   
    $_SESSION['time'] = $time;

}
$minutes = floor($_SESSION['time'] / 60);
$seconds = $_SESSION['time'] % 60;

if($seconds < 10){
    $seconds = $seconds . "0";
}

$_SESSION['time']-=1;
//time in minutes and seconds
$_SESSION['data'] = ['minutes' =>  $minutes, 'seconds' => $seconds, 'time' => $_SESSION['time'] ];



echo json_encode($_SESSION['data']); 

if(!isset($_SESSION['quize_completed']) && $_SESSION['time'] <= 0 ){
 
    $_SESSION['quize_completed'] = true;

} 

       
