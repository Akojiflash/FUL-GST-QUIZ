<?php
include_once "config.php";
session_start();

$email = mysqli_real_escape_string($conn, $_POST['email']);
$password = mysqli_real_escape_string($conn, $_POST['password']);


if (!empty($email) && !empty($password)) {

    $query = "SELECT * FROM users WHERE email = '{$email}'";
    $sql = mysqli_query($conn, $query);
    

    if (mysqli_num_rows($sql) > 0) {
        $row = mysqli_fetch_assoc($sql);
        $hashedPassword = $row['password'];
        if( password_verify($password, $hashedPassword)){
            $_SESSION['unique_id']= $row['unique_id'];
            if(!isset($_SESSION['trials'])){
                $_SESSION['trials'] = $row['trials']; 
            }

            echo "success";
        }else {
            echo "email and password is incorrect";
        }
       
    } else {
        echo "email and password is incorrect";
    }
}else{
    echo "All input fields are required";
}
