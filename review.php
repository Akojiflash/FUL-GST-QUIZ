<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Questions</title>
    <link rel="stylesheet" href="css/score.css">
    <link rel="stylesheet" href="css/questions.css">
    <link rel="icon" href="icons/favicon.ico" sizes="32x32" type="image/x-icon">
    <link rel="shortcut icon" href="icons/favicon.ico" sizes="32x32" type="image/x-icon">

</head>

<body>

    <?php 
    include "includes/header.php"; 
    
    if(!isset($_SESSION['courses'])){
        if(isset($_GET['courses'])){
            $_GET['courses'] = $_SESSION['courses'];
        }else{
            header("courseselection");
        }
        
    }
   
    ?>
   
    <main class="container questions__main">

        <div class="row time-and-point_wrapper">
            <p class="time-notification">You have <time>15 minutes</time> to answer 30 questions</p>
            <div class="row time-and-point_container">
                <div>
                    <p>Time</p>
                    <div class="time">
                        <span>15:00</span>
                    </div>
                </div>
                <div>
                    <p>Points</p>
                    <div class="Points row">
                        <span>000</span>
                        <img src="icons/GoldBadgeWhite.svg" alt="">
                    </div>
                </div>
            </div>
        </div>

        <section>
            <h1 class="selected_course"></h1>
                
            <div class="question__board">
                <div class="row question-bar">
                    <div>
                        <p class="question-navigation"><span class="current-question_number">1</span> of <span class="total-questions_number">30</span></p>
                    </div>
                    <div class="row question-navigators">
                        <img id="back" src="icons/left-arrow-svgrepo-com.png" alt="">
                        <img id="forward" src="icons/right-arrow-svgrepo-com.png" alt="">
                    </div>
                </div>
                <div class="question_wrapper">
                    <div class="question">
                        <p></p>
                    </div>
                    <div class="options">
                        <div class=" row option  option1 click" id="option1">
                            <P id="option1"></P>
                            <img src="" alt="">
                        </div>
                        <div class=" row option option2 click" id="option2">
                            <P id="option2"></P>
                            <img src="" alt="">
                        </div>
                        <div class=" row option option3 click" id="option3">
                            <P id="option3"></P>
                            <img src="" alt="">
                        </div>
                        <div class=" row option option4 click" id="option4">
                            <P id="option4"></P>
                            <img src="" alt="">
                        </div>
                    </div>
                </div> 
            </div>
        </section>

    </main>



    <script src="Js/nav.js"></script>
    <script src="Js/review.js"></script>
    <script src = "#"></script>
   
</body>

</html>