<?php
session_start();
include_once "config.php";

$level;
$fname = mysqli_real_escape_string($conn, $_POST['fname']);
$lname = mysqli_real_escape_string($conn, $_POST['lname']);
$email = mysqli_real_escape_string($conn, $_POST['email']);
$matric = mysqli_real_escape_string($conn, $_POST['matric']);
$department = mysqli_real_escape_string($conn, $_POST['department']);
if (array_key_exists('level', $_POST)) {
    // Access the 'email' key if it exists
    $level = $_POST['level'];
}
$password = mysqli_real_escape_string($conn, $_POST['password']);
$hashedPassword = password_hash($password, PASSWORD_DEFAULT);


if (!empty($fname) && !empty($lname) && !empty($email) && !empty($department) && !empty($level) && !empty($hashedPassword)) {
    //check if data already existis in the database
    $query = "SELECT * FROM users WHERE email = '{$email}' OR matric_number = '{$matric}' ";
    $sql = mysqli_query($conn, $query);

    if (filter_var($email, FILTER_VALIDATE_EMAIL)) { // Check if email is valid

        if (mysqli_num_rows($sql) > 0) { // Check if account already exists
            echo "Account already exists!";
        } elseif (strlen($password) < 8) {
            echo "Length of password should be at least 8 characters!";
        } elseif (strlen($matric) < 11 || strlen($matric) > 11 ) {
            echo "Length of matric number should be 7 characters!";
        } else {
            //Select random profile image for user
            $img_name = rand(1, 51);
            $full_img = "profile_" . $img_name . ".png";

            // Generate random image name, unique ID, and insert user data into the database
            $random_id = rand(time(), 1000000);
            $trial = 3;
            // Prepare the SQL query
            $query2 = "INSERT INTO users (unique_id, fname, lname, email, department, level, password, trials, profile_img, matric_number) 
                VALUES ('{$random_id}', '{$fname}', '{$lname}', '{$email}', '{$department}', '{$level}', '{$hashedPassword}','{$trial}' , '{$full_img}', '{$matric}')"; // Add the closing parenthesis here

            // Execute the query or handle any potential errors here
            $sql2 = mysqli_query($conn, $query2);

            if ($sql2) { //if these data is inserted
                $sql3 = mysqli_query($conn, "SELECT * FROM users WHERE email = '{$email}' ");
                if (mysqli_num_rows($sql3) > 0) {
                    $row = mysqli_fetch_assoc($sql3);
                    $_SESSION['unique_id'] = $row['unique_id']; //usiing this session we use this id in other php pages
                    if(!isset($_SESSION['trials'])){
                        $_SESSION['trials'] = $row['trials']; 
                    }
                    echo 'success';
                }
            } else {
                echo "Something went wrong";
            }
        }
    }
}else{
    echo "All input fields are required";
}
