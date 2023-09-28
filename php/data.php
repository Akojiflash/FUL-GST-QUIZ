
function QuestionGenerator()
{

   
    global $conn;
    

    $course =$_SESSION['courses'];
    // Check if a question ID is already stored in the session
    if (!isset($_SESSION['userAns']) && !isset($_SESSION['questionID'])) {
        // If not, generate and store a random question ID
        $query = "SELECT id FROM  $course ORDER BY RAND() LIMIT 1"; // Randomly select a question ID
        $result = mysqli_query($conn, $query);

        if (mysqli_num_rows($result) > 0 && isset($result)) {
            $row = mysqli_fetch_assoc($result);
            $_SESSION['questionID'] = $row['id'];
            unset($result);
            mysqli_close($conn);
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
}



// Retrieve the stored question ID from the session

function QuestionOutPut()
{
    QuestionGenerator();
    global $GstCourses;
    global $conn;

    $course =$_SESSION['courses'];
    if (!in_array($_SESSION['questionID'],$_SESSION['answers']['questionID']) && isset($_SESSION['questionID'])) {
        $query2 = "SELECT * FROM $course WHERE id = '{$_SESSION['questionID']}'";
        if (isset($_SESSION['questionID']) && !in_array($_SESSION['questionID'], $_SESSION['AllQuestions']['AllQuestions'])) {
            array_push($_SESSION['AllQuestions']['AllQuestions'], $_SESSION['questionID']);
        }

        $result2 = mysqli_query($conn, $query2);
    } else {
        QuestionOutPut();
        unset($_SESSION['questionID']);
        memory_reset_peak_usage();
    }


    if (isset($result2)) {
        if (mysqli_num_rows($result2) > 0) {
            $_SESSION['row2'] = mysqli_fetch_assoc($result2);
            unset($result2);
        

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
