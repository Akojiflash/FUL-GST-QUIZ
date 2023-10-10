<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Winner</title>
    <link rel="stylesheet" href="css/score.css">
    <link rel="stylesheet" href="css/winner-and-trial.css">
    <link rel="icon" href="icons/favicon.ico" sizes="32x32" type="image/x-icon">
    <link rel="shortcut icon" href="icons/favicon.ico" sizes="32x32" type="image/x-icon">

    <!--========Lottie script Link===============  -->
    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
</head>

<body>

<?php include "includes/header.php" ;?> 
<?php include "php/winner.php";?>
<?php

 if(!isset($courseID)){
    header("location: score");
} 
// echo $_SESSION['AllQuestions'];
// echo $_SESSION['quize_completed'];
// if(count($_SESSION['AllQuestions']) < 28){
//     header("location: questions?courses=".$_SESSION['courses']);
// }
?>

    <main class="container winner__main">
        <h1><em></em></h1>

        <div class="animation_container">
            <lottie-player class="winner-animation"
                src="https://lottie.host/ab11a19e-8836-4a7e-8454-77856ccd0a5e/BAE0NlkZCt.json" background="#ffffff"
                speed="1" style="width: 160px; height: 160px" loop autoplay direction="1" mode="normal">
            </lottie-player>

            <lottie-player class="losser-animation"
                src="https://lottie.host/5d031cd2-3ca4-4978-970f-0ff2e7644666/IsP6qSMEME.json" background="#fff"
                speed="1" style="width: 160px; height: 160px" loop autoplay direction="1" mode="normal">
            </lottie-player>
        </div>

        <div class="winner-loser__container row">

            <div>
                <h4>Test Score</h4>
                <div class="row2 test-score">
                    <span><?php echo $_SESSION['row2']["score"] ; ?></span>
                    <img src="icons/GoldBadge.svg" alt="">
                </div>
            </div>
            <div>
                <h4>Time left</h4>
                <div class="row2">
                    <p> <span><?php echo $_SESSION['data']['minutes'] ?></span> min x <span>5</span> =
                    <div class="total-time"> <span><?php echo $totalTime ?> </span> <img src="icons/GoldBadgeWhite.svg" alt=""></div>
                    </p>
                </div>
            </div>
            <div class="row2 total-score">
                <h3><?php echo $totalScore; ?></h3>
                <img src="icons/GoldBadgeWhite.svg" alt="">
            </div>
            <a href="./php/tryagain.php">
                <button class="row2">
                    <img height="16px" src="icons/replay-svgrepo-com.png" alt="">
                    Try Again
                </button>
            </a>
            <a href="review?courses=<?php echo $courseID ?>">
                <button class="row2">
                   Review
                    <img src="icons/Path 44.png" alt="">
                </button>
            </a>
            <a href="score">
                <button class="row2">
                    Continue
                    <img src="icons/continue.png" alt="">
                </button>
            </a>

        </div>
    </main>



    <script src="Js/nav.js"></script>
    <script src = "Js/winner.js"></script>
   
</body>

</html>