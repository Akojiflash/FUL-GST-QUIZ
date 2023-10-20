<?php


include_once "./php/config.php";

?>


<?php
session_start();
if (!isset($_SESSION['unique_id'])) {
    header("location: /GstQuizSite");
}
?>

<header>
    <?php
    $query = "SELECT * FROM users WHERE unique_id = '{$_SESSION['unique_id']}'";
    $sql = mysqli_query($conn, $query);
    if(mysqli_num_rows($sql)>0){

        $row = mysqli_fetch_assoc($sql);
    }
   
    $_SESSION['trials'] = $row['trials'];
    $trials = $_SESSION['trials'];
    if($_SESSION['trials'] <0){
        $trials = 0;
    }

    
    
    ?>
    
    <nav class="container row main-nav">
        <div class="gst-logo_container">
            <a href="myCourses">
                <img src="icons/Logo.svg" alt="">
            </a>
        </div>
        <div class="scoreboard-and-profile-logo_container row">
            <a href="./score">
                <div class="scoreboard-logo">
                    <img src="icons/scoreboard.svg" alt="">
                </div>
            </a>
            <div class="profile_container" aria-expanded="false" aria-labelledby="#nav-menu">

                <nav class="slide-nav">
    
                    <img class="user-profile-image profile-image" src="./images/<?php echo $row['profile_img']; ?>" alt="">

                    <ul class="slide-nav-ul row" id="nav-menu" data-visible="false">

                        <li class="user__profile row">
                            <img class="nav-user-profile-image profile-image" src="./images/<?php echo $row['profile_img']; ?>" alt="">
                            <h5 class="user-name"><?php echo $row['fname']. " ".$row['lname'] ; ?></h5>
                        </li>
                        <li>
                            <a href="profile">User-Profile</a>
                        </li>
                        <li>
                            <a href="score">Scoreboard</a>
                        </li>
                        <li>
                            <a href="courseselection">Quiz trial (<span class="trials"><?php echo  $trials; ?></span>)</a>
                        </li>
                        <li>
                            <a href="myCourses">My quizzes</a>
                        </li>
                        <li>
                            <a href="payment">Buy Courses</a>
                        </li>
                        <a href="./php/logout.php">
                        <li class="log-out row">
                            
                            <img src="icons/log-out-.svg" alt="">
                            <p>Log out</p>
                            
                        </li>
                        </a>
                    </ul>
                </nav>
            </div>
        </div>
    </nav>
</header>