<?php

include_once "config.php";



// Fetch the courses from the database
$query = "SELECT * FROM courses";
$result = mysqli_query($conn, $query);

if ($result && mysqli_num_rows($result) > 0) {

    while ($row = mysqli_fetch_assoc($result)) {
        $course[$row['course_id']] = $row['course_code'];
    }
}

//displaes the available courses for the user to buy
// foreach ($course as $courseId => $courseCode) {
//     $index = array_search($courseId, array_keys($course));
//     if ($index == 0) {
//         $data .= "<div class='courses_wrapper'>";
//     }
//     $data .= '      <div id="'.$courseId.'" class="course gst gstcourse '.$courseId.'">
//                         <span id="'.$courseId.'" >' . $courseCode . '</span>
//                         <img id="'.$courseId.'" class="course-selected-indicator" src="icons/radio-button-checked-svgrepo-com.svg" alt="">
//                     </div>';
//     if (($index + 1) % 5 == 0 && $index > 0 && $index != count($course) - 1) {
//         $data .= "</div><div class='courses_wrapper'>";
//     }

//     if ($index == count($course) - 1) {
//         $data .= '</div>

//         ';
//     }
   
// }

// $data .= '
// <script >
// const selectedCourse = document.querySelector(".courses");
// const testVar = document.querySelector(".gst_101");

// testVar.addEventListener("click", ()=>{
//     console.log(test.textContent);
// });




// </script>';

echo json_encode( $course);
