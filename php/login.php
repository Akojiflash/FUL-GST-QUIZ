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
            session_regenerate_id();
            $user_session_id = session_id();
            $query2 = "UPDATE users SET user_session_id = '{$user_session_id}' WHERE unique_id = '{$row['unique_id']}' ";
            $sql2 = mysqli_query($conn, $query2);
            if($sql2 && !isset($_SESSION['user_session_id'])){
                $_SESSION['user_session_id'] =  $user_session_id;
                $_SESSION['email'] = $row['email'];
                $_SESSION['phone'] = $row['phone_number'];
                $_SESSION['name'] = $row['fname'] . " " . $row['lname'];
                $_SESSION['matric_no'] = $row['matric_number'];
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
