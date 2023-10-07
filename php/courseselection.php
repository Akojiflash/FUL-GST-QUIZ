<?php
$course = [];

include_once "config.php";
$data = "";

// Fetch the courses from the database
$query = "SELECT * FROM courses";
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
        $data .= "<div class='courses_wrapper'>";
    }
    $data .= ' <a href="questions?courses=' . $courseId . '">
                    <div class="course">
                        <p>' . $courseCode . '</p>
                    </div>
                </a>';
    if (($index + 1) % 5 == 0 && $index > 0 && $index != count($course) - 1) {
        $data .= "</div><div class='courses_wrapper'>";
    }

    if ($index == count($course) - 1) {
        $data .= "</div>";
    }
   
}

echo $data;
