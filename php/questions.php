<?php
include_once "config.php";
include "trial.php";
// session_start();
// Initialize or assign default values to session variables



if (!isset($_SESSION['score']['score'])) {
    $_SESSION['score']['score'] = 0;
}
if (isset($_POST['selectedCourse'])) {
    $_SESSION['courses'] = mysqli_real_escape_string($conn, $_POST['selectedCourse']);
} else if (isset($_SESSION['courses'])) {
}




// Check if the update has already been performed
if ($_SESSION['trials'] >= 0) {
    if (!isset($_SESSION['update_completed']) || $_SESSION['update_completed'] !== true) {
        // Decrement the value of $_SESSION['trials'] by 1
        $_SESSION['trials']--;

        // Update the database
        $query = "UPDATE users SET trials = '{$_SESSION['trials']}' WHERE unique_id = '{$_SESSION['unique_id']}'";
        $result = mysqli_query($conn, $query);

        if ($result) {
            // Mark the update as completed
            $_SESSION['update_completed'] = true;
        } else {
            // Handle the database update error
            echo "Error: " . mysqli_error($conn);
        }
    }
}

$trials = ['trials' => $_SESSION['trials']];
//
//Display the course code on the question page
$GstCourses = [];
$query4 = "SELECT * FROM courses";
$result4 = mysqli_query($conn, $query4);

if ($result4 && mysqli_num_rows($result4) > 0) {

    while ($row4 = mysqli_fetch_assoc($result4)) {
        $GstCourses[$row4['course_id']] = $row4['course_code'];
    }
}


if (isset($_POST['userAns'])) {
    $_SESSION['userAns'] = mysqli_real_escape_string($conn, $_POST['userAns']);
}

// Initialize the answers array if it doesn't exist in the session
if (!isset($_SESSION['answers'])) {
    $_SESSION['answers'] = ['userAnswer' => [], 'questionID' => []];
}

if (!isset($_SESSION['AllQuestions'])) {
    $_SESSION['AllQuestions'] = ['AllQuestions' => []];

}

//Check if user has completed the quiz
if(!isset($_SESSION['quize_completed']) && count($_SESSION['AllQuestions']) >=30){
    
        $_SESSION['quize_completed'] = true;
    echo $_SESSION['quize_completed'];
}


// Define or initialize other variables as needed
$CheckCorrectText;


function scoreCount()
{

    //Correct Answer check

    if (!isset($_SESSION['correctAnswer'])) {

        if ($_SESSION['correctOption'] == "A") {
            $_SESSION['correctAnswer'] = $_SESSION['option_a'];
        } else if ($_SESSION['correctOption'] == "B") {

            $_SESSION['correctAnswer'] = $_SESSION['option_b'];
        } else if ($_SESSION['correctOption'] == "C") {
            $_SESSION['correctAnswer'] = $_SESSION['option_c'];
        } else if ($_SESSION['correctOption'] == "D") {

            $_SESSION['correctAnswer'] = $_SESSION['option_d'];
        }

        if (compareStringsIgnoringSpecialChars($_SESSION['correctAnswer'], $_SESSION['userAns'])) {
            $_SESSION['score']['score'] += 10;
        }

        unset($_SESSION['correctAnswer']);
        unset($_SESSION['correctOption']);
        unset($_SESSION['option_a']);
        unset($_SESSION['option_b']);
        unset($_SESSION['option_c']);
        unset($_SESSION['option_d']);
        memory_reset_peak_usage();
    }
}

function compareStringsIgnoringSpecialChars($str1, $str2)
{
    // Remove special characters from both strings and convert to lowercase
    $cleanStr1 = preg_replace('/[^a-z0-9]/i', '', $str1);
    $cleanStr2 = preg_replace('/[^a-z0-9]/i', '', $str2);

    // Compare the modified strings
    return strtolower($cleanStr1) === strtolower($cleanStr2);
}

// Check if userAns is set and there's space for more answers

if (isset($_SESSION['userAns'])) {
    scoreCount();
    // Add the current questionID and userAns to the answers array

    array_push($_SESSION['answers']['userAnswer'],  $_SESSION['userAns']);
    array_push($_SESSION['answers']['questionID'],  $_SESSION['questionID']);
    // Clear the session variables for the current question


    unset($_SESSION['userAns']);
    unset($_SESSION['questionID']);
    memory_reset_peak_usage();
}

function QuestionGenerator()
{


    global $conn;


    $course = $_SESSION['courses'];
    // Check if a question ID is already stored in the session
    if (!isset($_SESSION['userAns']) && !isset($_SESSION['questionID'])) {
        // If not, generate and store a random question ID
        $query = "SELECT id FROM  $course ORDER BY RAND() LIMIT 1"; // Randomly select a question ID
        $result = mysqli_query($conn, $query);

        if (mysqli_num_rows($result) > 0 && isset($result)) {
            $row = mysqli_fetch_assoc($result);
            $_SESSION['questionID'] = $row['id'];
            unset($result);

            memory_reset_peak_usage();
        } else {
            // Handle the case when no questions are available
            QuestionGenerator();
            unset($result);
            memory_reset_peak_usage();
            echo json_encode(['error' => 'No questions available.']);
        }

        $_SESSION['questionStat'] = ['questionStat'  => count($_SESSION['answers']['questionID'])];
    }

    while (in_array($_SESSION['questionID'], $_SESSION['answers']['questionID']) && isset($_SESSION['questionID'])) {
        unset($_SESSION['questionID']);
        QuestionGenerator();
    }
}

QuestionGenerator();

// Retrieve the stored question ID from the session

function QuestionOutPut()
{
    // QuestionGenerator();
    global $GstCourses;
    global $conn;
    global $trials;
    $course = $_SESSION['courses'];
    if (!in_array($_SESSION['questionID'], $_SESSION['answers']['questionID']) && isset($_SESSION['questionID'])) {
        $query2 = "SELECT * FROM $course WHERE id = '{$_SESSION['questionID']}'";
        if (isset($_SESSION['questionID']) && !in_array($_SESSION['questionID'], $_SESSION['AllQuestions']['AllQuestions'])) {
            array_push($_SESSION['AllQuestions']['AllQuestions'], $_SESSION['questionID']);
        }

        $result2 = mysqli_query($conn, $query2);
    }

    if (isset($result2)) {
        if (mysqli_num_rows($result2) > 0) {
            $_SESSION['row2'] = mysqli_fetch_assoc($result2);



            if (!isset($_SESSION['option_a'])) {
                $_SESSION['option_a'] =  $_SESSION['row2']['option_a'];
            }
            if (!isset($_SESSION['option_b'])) {
                $_SESSION['option_b'] =  $_SESSION['row2']['option_b'];
            }
            if (!isset($_SESSION['option_c'])) {
                $_SESSION['option_c'] =  $_SESSION['row2']['option_c'];
            }
            if (!isset($_SESSION['option_d'])) {
                $_SESSION['option_d'] =  $_SESSION['row2']['option_d'];
            }
            //correct option
            if (!isset($_SESSION['correctOption'])) {
                $_SESSION['correctOption'] = $_SESSION['row2']['answer'];
            }


            $_SESSION['row2'] = array_merge($_SESSION['row2'], $_SESSION['answers']);
            if (isset($_SESSION['questionStat'])) {
                $_SESSION['row2'] = array_merge($_SESSION['row2'],  $_SESSION['questionStat']);
            }
            if (isset($_SESSION['courses'])) {
                $CurrentCourse = ['course' => $GstCourses[$_SESSION['courses']]];
                $_SESSION['row2'] = array_merge($_SESSION['row2'],  $CurrentCourse);
            }
            // if(isset($_SESSION['PrevQuestion'])){
            //     $prevQuestNo = ['PrevQuestion' => $_SESSION['PrevQuestion']];
            //     $_SESSION['row2'] = array_merge($_SESSION['row2'], $prevQuestNo);
            // }
            if (isset($_SESSION['AllQuestions'])) {

                $_SESSION['row2'] = array_merge($_SESSION['row2'], $_SESSION['AllQuestions']);
            }
            if (isset($_SESSION['trials'])) {

                $_SESSION['row2'] = array_merge($_SESSION['row2'], $trials);
            }

            //ech user score
            if (isset($_SESSION['score'])) {
                $_SESSION['row2'] = array_merge($_SESSION['row2'],  $_SESSION['score']);
            }



            header('Content-Type: application/json');
            echo json_encode($_SESSION['row2']);

            // Set the Content-Type header to indicate JSON response


            // Output the JSON data

        }
    } else {
        // Handle the case when the stored question ID is invalid
        unset($_SESSION['questionID']);
        QuestionOutPut();
        memory_reset_peak_usage();
        echo json_encode(['error' => 'Invalid question ID.']);
    }

    // Don't forget to close the database connection when done
}


QuestionOutPut();
