<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Score Board</title>
    <link rel="stylesheet" href="css/score.css">
    <link rel="icon" href="icons/favicon.ico" sizes="32x32" type="image/x-icon">
    <link rel="shortcut icon" href="icons/favicon.ico" sizes="32x32" type="image/x-icon">

</head>
<body>
<?php include "includes/header.php" ?>
<?php include "php/timeout.php" ?> 
<?php // Set cache control headers
header("Cache-Control: no-cache, must-revalidate");
header("Pragma: no-cache");
header("Expires: 0");
header("Cache-Control: private");


?>

    <main class="container main_content">

        <h1 class="scoreboard-heading">Score Board</h1>

        <section class="scoreboard_container">
           

        
           
        </section>
    </main>
    


    <script src="Js/nav.js"></script>
    <script src="Js/score.js"></script>
</body>
</html>