<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Log In</title>
    <link rel="stylesheet" href="css/score.css">
    <link rel="stylesheet" href="css/create-acct.css">
    <link rel="icon" href="icons/favicon.ico" sizes="32x32" type="image/x-icon">
    <link rel="shortcut icon" href="icons/favicon.ico" sizes="32x32" type="image/x-icon">
    <?php
    session_start();
    if (isset($_SESSION['unique_id'])) {
        header("location: myCourses");
    }
    ?>
</head>

<body class="log_in-body">
    <header>
        <nav class="row container">
            <a href="home"><img src="icons/Logo.svg" alt=""></a>
            <span class="gst-quiz">GST QUIZ</span>
        </nav>
    </header>

    <main class="container create-acct_main log_in">

        <section class="create-acct_form log_in">


           <a href="home"><img class="log_in-logo" src="icons/Logo Black.svg" alt=""></a> 
            <div class="create-acct_headings log_in">

                <h1>Login</h1>
                <p class="create-acct-text-intro log_in">Welcome Back</p>
            </div>

            <form class="log_in" id="log-in">
                <div class="row incorrect-password">
                    <img src="icons/warning-svgrepo-com.png" alt="">
                    <p>Invalid/Incorrect Password</p>
                </div>
                <input type="email" name="email" placeholder="Email" size="30" required>


                <div class="password-input">
                    <input type="password" class="Password" name="password" placeholder="Password" size="30" required>
                    <div class="show-hide-password" data-toggle='false'>

                    </div>
                </div>

                <input type="submit" id="submit-btn" value="Log In" size="35" required>
            </form>
            <P class="existing-acct">Dont't have an account? <a href="createAccount">Create One</a></P>
        </section>


        <section class="image_container">

            <img src="images/Section 2.png" alt="">

            <img class="create-acct_image_logo" src="icons/default-monochrome.png" alt="">
            <img class="create-acct_image_text" src="icons/THE GST QUIZAPP.png">

        </section>
    </main>
    <script src="Js/login.js"></script>
    <script src="Js/main.js"></script>
</body>

</html>