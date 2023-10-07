<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Courses</title>
    <link rel="stylesheet" href="css/mycourses.css">
    <link rel="stylesheet" href="css/score.css">
    <link rel="icon" href="icons/favicon.ico" sizes="32x32" type="image/x-icon">
    <link rel="shortcut icon" href="icons/favicon.ico" sizes="32x32" type="image/x-icon">


    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>

</head>
<body>

<?php include "includes/header.php" ?> 
<?php include "php/timeout.php";
$query3 = "SELECT trials FROM users WHERE unique_id = '{$_SESSION['unique_id']}'";
$result3 = mysqli_query($conn, $query3);
$assoc = mysqli_fetch_assoc($result3);
$_SESSION['trials'] = $assoc['trials'];
$trials = $_SESSION['trials'];
if($_SESSION['trials'] <0){
    $trials = 0;
}


?>
    <main class="container mycourses__container">
            <div>
                <h3>Select a course to start quiz</h3>
                <p class="trials-left-text">You still have (<span class="no-of-trials-left"><?php echo   $trials; ?></span>) trials left click <a href="courseselection">here</a> to proceed to trials</p>
            </div>

            <section class="courses_section">
                <div class="my_Courses">
                    <a href="">
                        <div class="my_course">
                            <span>Gst 101</span>
                        </div>
                    </a>
                    <a href="">
                        <div class="my_course">
                        <span>Gst 103</span>
                        </div>
                    </a>
                </div>
                <div class="my_Courses">
                    <a href="courseselection.html"><button class="add-more-courses_btn">Add more Courses</button></a>
                </div>
            </section>
            <section class="empty-course_section">

                <lottie-player src="https://lottie.host/a6acec83-49a8-4f93-8c38-f9dc3e1abeae/QNVVmwURcV.json"
                background="#ffffff" speed="1" style="width: 220px; height: 220px" loop autoplay mode="normal">
            </lottie-player>

            <h4>You have not added any course</h4>
            <a href="payment"><button class="add-more-courses_btn">Add Courses</button></a>
            </section>

            <script src="Js/nav.js"></script>
        </body>
        
        </html>