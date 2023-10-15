<?php
$course = [];

include_once "config.php";
$data = "";
session_start();

// Fetch the courses from the database

$query = "SELECT payment_table.unique_id, payment_table.course_id, courses.course_code
FROM courses
INNER JOIN payment_table ON courses.course_id = payment_table.course_id
WHERE payment_table.unique_id = '{$_SESSION['unique_id']}'";

$result = mysqli_query($conn, $query);

if ($result && mysqli_num_rows($result) > 0) {

    while ($row = mysqli_fetch_assoc($result)) {
        $course[$row['course_id']] = $row['course_code'];
    }
}

//displaes the available courses for the player
foreach ($course as $courseId => $courseCode) {
    $index = array_search($courseId, array_keys($course));
    if ($index == 0) {
        $data .= "<div class='my_Courses'>";
    }
    $data .= ' <a href="questions?courses=' . $courseId . '">
                    <div class="my_course">
                        <span>' . $courseCode . '</span>
                    </div>
                </a>';
    if (($index + 1) % 5 == 0 && $index > 0 && $index != count($course) - 1) {
        $data .= "</div><div class='my_Courses'>";
    }

    if ($index == count($course) - 1) {
        $data .= '</div>
    <div class="my_Courses">
        <a href="courseselection"><button class="add-more-courses_btn">Add more Courses</button></a>
    </div>
        
        
        ';

    }
   
}

echo $data;