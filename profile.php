<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link rel="stylesheet" href="css/profile.css">
    <link rel="stylesheet" href="css/score.css">
    <link rel="icon" href="icons/favicon.ico" sizes="32x32" type="image/x-icon">
    <link rel="shortcut icon" href="icons/favicon.ico" sizes="32x32" type="image/x-icon">

</head>
<body>

<?php include "includes/header.php" ?> 
<?php include "php/timeout.php" ?>
    <main class="container profile-main_content">
        <h1>User Profile</h1>

        <section>
            <form class="form-field" action="">
                <div  class="input_container row">
                    <img class="input_profile-image" src="./images/<?php echo $row['profile_img']; ?>" alt="">
                    <div>
                        <input type="text" value = "<?php echo $row['fname']; ?>" readonly>
                        <input type="text" value = "<?php echo $row['lname']; ?>" readonly>
                        <input type="text" value = "<?php echo $row['matric_number']; ?>" readonly>
                        <input type="text" value = "<?php echo $row['department']; ?>" readonly>
                    </div>
                </div>
                <div class="input_container-wrapper row">
                    <?php ?>
                    <div class="input_container input_container2">
                        <input type="email"  placeholder = "E-mail" value="<?php echo $row['email']; ?>" readonly>
                         <!-- ========== password input with show hide button ========== -->
                         <div class="password-input">
                            <input class="Password" name="password" type="password" placeholder="Enter current password" required>
                            <div class="show-hide-password" data-toggle = 'false'>

                            </div>
                        </div>
                        <!-- ========== password input with show hide button ========== -->
                        <div class="password-input">
                            <input class="Password" name="re-password" type="password" placeholder="New password" required>
                            <div class="show-hide-password" data-toggle = 'false'>

                            </div>
                        </div>
                        <!-- <input type="password" name="password" placeholder = "Enter current password">
                        <input type="password" name="re-password" placeholder = "New password"> -->
                    </div>
                    <div class="input-changes_btn_container">
                        <button type="submit" class="input-changes_btn discard_changes-btn"> Discard Changes</button>
                        <button type="submit" class="input-changes_btn save_changes-btn"> Save Changes</button>
                    </div>
                </div>
            </form>
        </section>
    </main>
    


    <script src="Js/nav.js"></script>
    <script src="Js/profile.js"></script>
    <script src="Js/main.js"></script>
    <script src="Js/checkLogin.js"></script>
</body>
</html>