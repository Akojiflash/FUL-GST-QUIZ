<?php

include_once "config.php";

session_start();

$course = mysqli_real_escape_string($conn, $_POST['selectedCourse']);
$ClickBack = intval(mysqli_real_escape_string($conn, $_POST['backbtnClicked']));

$incomingPost = ['course' => $course, 'clickBack' => $ClickBack];

if (isset($ClickBack) && $ClickBack > -1 && $ClickBack < count($_SESSION['AllQuestions']['AllQuestions']) ) {
    $_SESSION['presentQuestId'] = $_SESSION['AllQuestions']['AllQuestions'][$ClickBack];
}
if (isset($course) && isset($_SESSION['presentQuestId']) && $_SESSION['presentQuestId'] > 0) {

    $query = "SELECT * FROM $course WHERE id =  '{$_SESSION['presentQuestId']}'";
    $result = mysqli_query($conn, $query);
    
}
//prev question toggler array;


$revQuest = ['QuestionNo' => $ClickBack];

if (mysqli_num_rows($result) > 0 && isset($result)) {

    $data = mysqli_fetch_assoc($result);
    $data = array_merge($data, $_SESSION['answers']);
    $data = array_merge($data, $revQuest);
    unset($result);
    memory_reset_peak_usage();
    if(isset($_SESSION['AllQuestions'])){
        $data = array_merge($data,$_SESSION['AllQuestions']);
    }
    $data = array_merge($data, $incomingPost);
    if(isset($_SESSION['row2']['score'])){
        $score = ['score' => $_SESSION['row2']['score'] ];
        $data = array_merge($data, $score);
    }
    
    $json_data = json_encode($data);
    header('Content-Type: application/json');

    // Output the JSON data
    echo $json_data;
} else {
    // Handle the case when the stored question ID is invalid
    ob_start(); // Start output buffering

    // Include the file
    require 'questions.php';

    ob_end_clean(); // Clean (discard) the output buffer

    // Now you can use the functions from the included file without displaying their output
    

    QuestionGenerator();
    echo json_encode(['error' => 'Invalid question ID.']);
}

mysqli_close($conn);
memory_reset_peak_usage();


gc_collect_cycles();