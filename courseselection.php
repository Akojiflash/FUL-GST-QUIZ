<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trial Courses</title>
    <link rel="stylesheet" href="css/score.css">
    <link rel="stylesheet" href="css/courses-and-payment.css">
    <link rel="icon" href="icons/favicon.ico" sizes="32x32" type="image/x-icon">
    <link rel="shortcut icon" href="icons/favicon.ico" sizes="32x32" type="image/x-icon">

</head>

<body>
<?php include "includes/header.php" ?>
    <?php include "php/timeout.php" ?>

    <?php
    // include_once "./php/config.php";
    $query3 = "SELECT trials FROM users WHERE unique_id = '{$_SESSION['unique_id']}'";
    $result3 = mysqli_query($conn, $query3);
    $assoc = mysqli_fetch_assoc($result3);
    $_SESSION['trials'] = $assoc['trials'];
    $trials = $_SESSION['trials'];
    if($_SESSION['trials'] <0){
        $trials = 0;
    }
    
    ?>
    
    

    <main class="container course_selection-main">
        <div>
            <p class="selection__text">
                Please select your preferred GST course for the trial with only 30 questions
                for a single attempt, afterward, the trial expires.
            </p>
            <p class="trials__text">
                Number of courses left (<span><?php echo   $trials; ?></span>) before trial expires.
            </p>
            <h3 class="course-selection_heading">Select a course to start quiz</h3>
        </div>

        <section class="courses">

            <!-- <div class="courses_wrapper">

                <a href="questions">
                    <div class="course">
                        <p>Gst 101</p>
                    </div>
                </a>
                <a href="questions">
                    <div class="course">
                        <p>Gst 102</p>
                    </div>
                </a>
                <a href="questions?courses=gst_103">
                    <div class="course">
                        <p>Gst 103</p>
                    </div>
                </a>
                <a href="questions">
                    <div class="course">
                        <p>Gst 104</p>
                    </div>
                </a>
                <a href="questions">
                    <div class="course course-4">
                        <p>Gst 107</p>
                    </div>
                </a>
            </div>
            <div class="courses_wrapper">
                <a href="questions">
                    <div class="course">
                        <p>Gst 110</p>
                    </div>
                </a>
                <a href="questions">
                    <div class="course">
                        <p>Gst 202</p>
                    </div>
                </a>
                <a href="questions">
                    <div class="course">
                        <p>Gst 204</p>
                    </div>
                </a>
                <a href="questions">
                    <div class="course">
                        <p>Gst 205</p>
                    </div>
                </a>

            </div> -->

        </section>
    </main>





    <script src="Js/nav.js"></script>
    <script src="Js/courseselection.js"></script>
</body>

</html>