<?php
include_once "config.php";
session_start();

$query = "SELECT user_session_id FROM users WHERE unique_id = '{$_SESSION['unique_id']}'";
$result = mysqli_query($conn, $query);

if (mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);
    if ($_SESSION['user_session_id'] !== $row['user_session_id']) {
        echo 'logout';
    }
}
