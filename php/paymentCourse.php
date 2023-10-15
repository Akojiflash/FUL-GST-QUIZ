<?php

include_once "config.php";
session_start();
//All paid courses
$query1 = "SELECT payment_table.unique_id, payment_table.course_id, courses.course_code
FROM courses
INNER JOIN payment_table ON courses.course_id = payment_table.course_id
WHERE payment_table.unique_id = '{$_SESSION['unique_id']}'";
$result1 = mysqli_query($conn, $query1);

if ($result1 && mysqli_num_rows($result1) > 0) {

    while ($row1 = mysqli_fetch_assoc($result1)) {
        $course['paidCourses'][$row1['course_id']] = $row1['course_code'];
    }
}


// Fetch the courses from the database
$query = "SELECT * FROM courses";
$result = mysqli_query($conn, $query);

if ($result && mysqli_num_rows($result) > 0) {

    while ($row = mysqli_fetch_assoc($result)) {
        $course['allCourses'][$row['course_id']] = $row['course_code'];
    }
}

echo json_encode( $course);
