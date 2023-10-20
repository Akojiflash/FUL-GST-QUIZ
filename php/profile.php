<?php
include_once "config.php";

session_start();
function validatePhoneNumber($phoneNumber) {
    // Define a regular expression pattern for a valid 11-digit phone number.
    $phonePattern = '/^\d{11}$/';
  
    // Test the phone number against the pattern.
    return preg_match($phonePattern, $phoneNumber);
  }


if(isset($_POST["'password'"]) && isset($_POST['re-password']) ){
    $password = $_POST['password']; //old password
    $re_password =  $_POST['re-password']; //new password
   


$query = "SELECT password FROM users WHERE unique_id = '{$_SESSION['unique_id']}'";

$sql = mysqli_query($conn, $query);

$row = mysqli_fetch_assoc($sql);

$hashedPassword = $row['password']; //database password

// echo $hashedPassword;

if (password_verify($password, $hashedPassword)){
    if (strlen($re_password)<8){
        echo "Length of password should be at least 8 characters!";
    }else{
        $new_password = password_hash($re_password, PASSWORD_DEFAULT);
        $query2 = "UPDATE users SET password = '{$new_password}' WHERE unique_id = '{$_SESSION['unique_id']}' ";
        $sql2 = mysqli_query($conn, $query2);
        echo "success";
    }
}else{
    echo "Invalid password";
}
}else if(isset($_POST['phone']) && validatePhoneNumber($_POST['phone'])){
    $query2 = "UPDATE users SET phone_number = '{$_POST['phone']}' WHERE unique_id = '{$_SESSION['unique_id']}' ";
    $sql2 = mysqli_query($conn, $query2);
    echo "success";

}else{
    echo "Invalid phone number";
}

