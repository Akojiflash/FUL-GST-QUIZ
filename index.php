<?php

// Get the page parameter from the rewritten URL
$page = isset($_GET['page']) ? $_GET['page'] : 'home';

// Define an array to map page names to actual PHP files
$pageMap = [
    'home' => 'home.php',
    'login' => 'login.php',
    'createAccount' => 'createAcount.php',
    'myCourses' => 'myCourses.php',
    'payment' => 'payment.php',
    'deck' => 'deck.php',
    'profile' => 'profile.php',
    'questions' => 'questions.php',
    'score' => 'score.php',
    'tryAgain' => 'tryAgain',
    'winner' => 'winner.php',
    'courseselection' => 'courseselection.php'
];

// Check if the requested page exists in the map
if (array_key_exists($page, $pageMap)) {
    // Include the corresponding PHP file
    include $pageMap[$page];
} else {
    // Handle 404 error or other custom error handling
    echo 'Page not found.';
}
?>
