<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Account</title>
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

<body>

    <header>
        <nav class="row container">
            <img src="icons/Logo.svg" alt="">
            <span class="gst-quiz">GST QUIZ</span>
        </nav>
    </header>

    <main class="container create-acct_main">

        <section class="create-acct_form">

            <div class="create-acct_headings">

                <!-- ========= invalid password pop out ============ -->
                <div class="row incorrect-password">
                    <img src="icons/warning-svgrepo-com.png" alt="">
                    <p>Invalid/Incorrect Password</p>
                </div>

                <h1>Create Account</h1>
                <p class="create-acct-text-intro">Tell us about yourself clearly to avoid any misunderstanding</p>
            </div>
            <form action="#">
                <input type="text" name="fname" placeholder="First Name" size="35" required>
                <input type="text" name="lname" placeholder="Last Name" size="35" required>
                <input type="email" name="email" placeholder="Email" size="35" required>
                <input type="tel" name="phone" placeholder="Phone number" pattern="[0-9]{11}" maxlength="12" size="35" required>
                <input type="text" name="matric" placeholder="Matriculation number" size="35" required>
                <input type="text" name="department" placeholder="Department" size="35" required>
                <select name="level" required>
                    <option disabled selected>Level</option>
                    <option value="100">100 Level</option>
                    <option value="200">200 Level</option>
                    <option value="300">300 Level</option>
                    <option value="300">400 Level</option>
                </select>
                <div class="password-input">
                    <input type="password" class="Password" name="password" placeholder="Password" title="password must contain 8 characters" size="35" required>
                    <div class="show-hide-password" data-toggle='false'>

                    </div>
                </div>

                <input type="submit" class="button_input" value="Create Account" required>
            </form>
            <P class="existing-acct">Already have an account? <a href="login">Log in</a></P>
        </section>


        <section class="image_container">

            <img src="images/Section 2.png" alt="">

            <img class="create-acct_image_logo" src="icons/default-monochrome.png" alt="">
            <img class="create-acct_image_text" src="icons/THE GST QUIZAPP.png">

        </section>
    </main>
    <script src="Js/createAccount.js"></script>
    <script src="Js/main.js"></script>
</body>

</html>