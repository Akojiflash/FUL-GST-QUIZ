
const fullQuestion = document.querySelector(".question_wrapper");
let answer = document.querySelector(".options"); // Assuming "answer" is an array of elements with the class "option"

let sqlData = "";
let prevsqlData = "";
let ClickMoreOption = true;
let backBtn = document.querySelector('#back');
let frwdBtn = document.querySelector('#forward');
let course_code = document.querySelector(".selected_course");
let currenQuestionNumber = document.querySelector(".current-question_number");
let displayedScore = document.querySelector(".Points span")

let presentCount = 0;

let currentCount = 0;

//Number of questions to answer
function quizStatistic(){
    let xhr = new XMLHttpRequest();

xhr.open("POST", "php/questionNumber.php", true);

xhr.onload = () => {
    if(xhr.readyState === XMLHttpRequest.DONE){
        if(xhr.status === 200) {
            
            let quizStat = xhr.responseText;
            
            console.log("Apear here:"+quizStat);
            if ( quizStat == "completed") {
                location.href = "./winner";
            }
           
        }
    }else {
        console.error('Error:', xhr.status, xhr.statusText);
    }
};

xhr.setRequestHeader("content-type", "application/x-www-form-urlencoded");

// Example user answer (you should replace this with the actual user's answer)
xhr.send();

}
quizStatistic();


function trial_expire(){
let xhr = new XMLHttpRequest();

xhr.open("POST", "php/trial.php", true);

xhr.onload = () => {
    if(xhr.readyState === XMLHttpRequest.DONE){
        if(xhr.status === 200) {
           
           let trial = xhr.responseText;
           if (trial == "fail"){
            window.location.href = "./myCourses";
            setInterval(errorMesg("You have exhausted your trial"), 5000);
            
           }
        }
    }else {
        console.error('Error:', xhr.status, xhr.statusText);
    }
};

function errorMesg(input) {
    const errorMsg = document.querySelector(".course_bought_alert");
    errorMsg.style.display = "flex";
    errorMsg.style.position = "absolute";
    errorMsg.querySelector('p').innerText = input;
}

xhr.setRequestHeader("content-type", "application/x-www-form-urlencoded");

    // Example user answer (you should replace this with the actual user's answer)
xhr.send( "&selectedCourse=" + encodeURIComponent(selectedCourse));

}







//keeps track of number of answered questions;

// Create a URLSearchParams object from the current URL
const urlParams = new URLSearchParams(window.location.search);

// Get the value of the "course" parameter
const course = urlParams.get('courses');
let selectedCourse = ""; // Initialize selectedCourse

if (course !== null) {
    // The "course" parameter is present in the URL
    selectedCourse = course;
} else {
    // The "course" parameter is not present in the URL
    window.location.href = "./myCourses";
    console.log("Course parameter is missing in the URL.");
}
trial_expire();
//Question and options on the html page
let question = fullQuestion.querySelector(".question p");
let option_a = fullQuestion.querySelector("#option1 p");
let optionAimage = fullQuestion.querySelector(".option1 img");

let option_b = fullQuestion.querySelector("#option2 p");
let optionBimage = fullQuestion.querySelector(".option2 img");

let option_c = fullQuestion.querySelector("#option3 p");
let optionCimage = fullQuestion.querySelector(".option3 img");

let option_d = fullQuestion.querySelector("#option4 p");
let optionDimage = fullQuestion.querySelector(".option4 img");


let correctAns = "";
let correctAnsContent = "";
let clickedItem = "";

function ClickedAns(event) {
    
    clickedItem = "#" + event.target.id;

    let option = answer.querySelector(clickedItem);
    let optionContent = option.querySelector("p");
    userAns = optionContent.textContent;

    if (correctAns == "A") {
        optionAimage.src = "icons/check-circle-svgrepo-com.png";
        correctAnsContent = option_a.textContent;

    } else if (correctAns == "B") {
        optionBimage.src = "icons/check-circle-svgrepo-com.png";
        correctAnsContent = option_b.textContent;

    } else if (correctAns == "C") {
        optionCimage.src = "icons/check-circle-svgrepo-com.png";
        correctAnsContent = option_c.textContent;

    } else if (correctAns == "D") {
        optionDimage.src = "icons/check-circle-svgrepo-com.png";
        correctAnsContent = option_d.textContent;
    }
    if (correctAnsContent != userAns) {
        let optionIcon = option.querySelector("img");
        optionIcon.src = "icons/cancel-svgrepo-com.png";
    } else if (correctAnsContent == userAns) {
        let optionIcon = option.querySelector("img");
        optionIcon.src = "icons/check-circle-svgrepo-com.png";


    }
    answer.removeEventListener("click", ClickedAns, false)

    event.stopPropagation();

    setTimeout(() => {
       
        answer.addEventListener("click", ClickedAns, false)

        let xhr = new XMLHttpRequest();

        xhr.open("POST", "php/questions.php", true);

        xhr.onload = () => {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {
                    console.log(xhr.responseText);
                    sqlData = JSON.parse(xhr.responseText);
                    // Update the UI with the new question data
                    
                    question.textContent = sqlData['question'];
                    option_a.textContent = sqlData['option_a'];
                    option_b.textContent = sqlData['option_b'];
                    option_c.textContent = sqlData['option_c'];
                    option_d.textContent = sqlData['option_d'];
                    correctAns = sqlData['answer'];
                   
                    if (sqlData['score'] < 100) {
                        displayedScore.textContent = "0" + sqlData['score']
                    } else if (sqlData['score'] < 10) {
                        displayedScore.textContent = "00" + sqlData['score']
                    } else if (sqlData['score'] >= 100) {
                        displayedScore.textContent = sqlData['score'];
                    } else if (sqlData['score'] <= 0 ) {
                        displayedScore.textContent = "000"
                    }

                   
                   
                    // console.log(sqlData['questionID'].lastIndexOf(sqlData['id']) + 1);
                    currenQuestionNumber.textContent = sqlData["questionStat"] + 1;
                    presentCount = sqlData["questionStat"] - 1;
                    currentCount = sqlData["questionStat"] - 1;

                    optionAimage.src = "";
                    optionBimage.src = "";
                    optionCimage.src = "";
                    optionDimage.src = "";
                    quizStatistic();
                  
                } else {
                    console.error('Error:', xhr.status, xhr.statusText);
                }
            }
        };
        // console.log(option.textContent);
        xhr.setRequestHeader("content-type", "application/x-www-form-urlencoded");

        // Example user answer (you should replace this with the actual user's answer)
        xhr.send("userAns=" + encodeURIComponent(userAns) + "&selectedCourse=" + encodeURIComponent(selectedCourse))

    }, 3000)


}

answer.addEventListener("click", ClickedAns, false);



function questionGenerator() {
  
    // Perform any necessary cleanup or UI updates here

    // Send an AJAX request to retrieve the next question from the server
    let xhr = new XMLHttpRequest();

    xhr.open("POST", "php/questions.php", true);

    xhr.onload = () => {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                console.log(xhr.responseText);
                sqlData = JSON.parse(xhr.responseText);
                // Update the UI with the new question data
                // let option = answer.querySelector(clickedItem);
                // let optionContent = option.querySelector("p");
                // userAns = optionContent.textContent;
              
                optionAimage.src = "";
                optionBimage.src = "";
                optionCimage.src = "";
                optionDimage.src = "";

                question.textContent = sqlData['question'];
                option_a.textContent = sqlData['option_a'];
                option_b.textContent = sqlData['option_b'];
                option_c.textContent = sqlData['option_c'];
                option_d.textContent = sqlData['option_d'];
                correctAns = sqlData['answer'];
                course_code.textContent = sqlData['course'];
                if (sqlData['score'] < 100) {
                    displayedScore.textContent = "0" + sqlData['score']
                } else if (sqlData['score'] < 10) {
                    displayedScore.textContent = "00" + sqlData['score']
                } else if (sqlData['score'] >= 100) {
                    displayedScore.textContent = sqlData['score'];
                } else {
                    displayedScore.textContent = "000"
                }

                
                // console.log(sqlData['questionID'].lastIndexOf(sqlData['id']) + 1);
                currenQuestionNumber.textContent = sqlData["questionStat"] + 1;
                presentCount = sqlData["questionStat"] - 1;
                currentCount = sqlData["questionStat"] - 1;
             

                
               

            } else {
                back();
            }
            
        } else {
            console.error('Error:', xhr.status, xhr.statusText);
        }

    };

    xhr.setRequestHeader("content-type", "application/x-www-form-urlencoded");

    // Example user answer (you should replace this with the actual user's answer)
    xhr.send("&selectedCourse=" + encodeURIComponent(selectedCourse));


}
questionGenerator();



function back() {
    answer.removeEventListener("click", ClickedAns, false);
    let xhr = new XMLHttpRequest();

    xhr.open("POST", "php/pastQuestion.php", true);

    xhr.onload = () => {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                console.log(xhr.responseText);
                prevsqlData = JSON.parse(xhr.responseText);
                console.log(prevsqlData);


                optionAimage.src = "";
                optionBimage.src = "";
                optionCimage.src = "";
                optionDimage.src = "";

                question.textContent = prevsqlData['question'];
                option_a.textContent = prevsqlData['option_a'];
                option_b.textContent = prevsqlData['option_b'];
                option_c.textContent = prevsqlData['option_c'];
                option_d.textContent = prevsqlData['option_d'];
                let OldcorrectAns = prevsqlData['answer'];
                let OldUserAns = prevsqlData['userAnswer'][prevsqlData['QuestionNo']];
                console.log(prevsqlData['userAnswer'].length);
                console.log(presentCount);
                currentCount = prevsqlData["questionStat"] - 1;
                presentCount--;
                if (presentCount < -1 || prevsqlData['questionID'].length == 0) {
                    // questionGenerator()
                    presentCount = prevsqlData['userAnswer'].length - 1;
                    answer.addEventListener("click", ClickedAns, false);
                    questionGenerator();
                }

                if (OldcorrectAns == "A") {

                    optionAimage.src = "icons/check-circle-svgrepo-com.png";
                    correctAnsContent = option_a.textContent;

                } else if (OldcorrectAns == "B") {
                    optionBimage.src = "icons/check-circle-svgrepo-com.png";
                    correctAnsContent = option_b.textContent;


                } else if (OldcorrectAns == "C") {
                    optionCimage.src = "icons/check-circle-svgrepo-com.png";
                    correctAnsContent = option_c.textContent;

                } else if (OldcorrectAns == "D") {
                    optionDimage.src = "icons/check-circle-svgrepo-com.png";
                    correctAnsContent = option_d.textContent;


                }

                if (correctAnsContent !== OldUserAns
                    && option_a.textContent == OldUserAns) {

                    optionAimage.src = "icons/cancel-svgrepo-com.png";
                } else if (correctAnsContent !== OldUserAns
                    && option_b.textContent == OldUserAns) {
                    optionBimage.src = "icons/cancel-svgrepo-com.png";


                } else if (correctAnsContent !== OldUserAns
                    && option_c.textContent == OldUserAns) {
                    optionCimage.src = "icons/cancel-svgrepo-com.png";

                } else if (correctAnsContent !== OldUserAns
                    && option_d.textContent == OldUserAns) {
                    optionDimage.src = "icons/cancel-svgrepo-com.png";

                }

                currenQuestionNumber.textContent = prevsqlData["QuestionNo"] + 1;

      

                
            } else {
                console.error('Error:', xhr.status, xhr.statusText);
            }
        }
    };


    xhr.setRequestHeader("content-type", "application/x-www-form-urlencoded");

    // Example user answer (you should replace this with the actual user's answer)
    xhr.send("backbtnClicked=" + encodeURIComponent(presentCount) + "&selectedCourse=" + encodeURIComponent(selectedCourse));



}

backBtn.addEventListener('click', back, false);





function forward() {
    presentCount++;


    let xhr = new XMLHttpRequest();

    xhr.open("POST", "php/pastQuestion.php", true);

    xhr.onload = () => {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                console.log(xhr.responseText);
                prevsqlData = JSON.parse(xhr.responseText);
                console.log(prevsqlData);


                optionAimage.src = "";
                optionBimage.src = "";
                optionCimage.src = "";
                optionDimage.src = "";


                question.textContent = prevsqlData['question'];
                option_a.textContent = prevsqlData['option_a'];
                option_b.textContent = prevsqlData['option_b'];
                option_c.textContent = prevsqlData['option_c'];
                option_d.textContent = prevsqlData['option_d'];
                let OldcorrectAns = prevsqlData['answer'];
                let OldUserAns = prevsqlData['userAnswer'][prevsqlData['QuestionNo']];
                console.log(prevsqlData['userAnswer'].length);
                console.log(presentCount);


                if (presentCount >= prevsqlData['AllQuestions'].length - 1) {
                    answer.addEventListener("click", ClickedAns, false);
                    questionGenerator();
                    presentCount = prevsqlData['AllQuestions'].length - 1;
                }


                if (OldcorrectAns == "A" && presentCount < prevsqlData['AllQuestions'].length - 1) {

                    optionAimage.src = "icons/check-circle-svgrepo-com.png";
                    correctAnsContent = option_a.textContent;

                } else if (OldcorrectAns == "B" && presentCount < prevsqlData['AllQuestions'].length - 1) {
                    optionBimage.src = "icons/check-circle-svgrepo-com.png";
                    correctAnsContent = option_b.textContent;


                } else if (OldcorrectAns == "C" && presentCount < prevsqlData['AllQuestions'].length - 1) {
                    optionCimage.src = "icons/check-circle-svgrepo-com.png";
                    correctAnsContent = option_c.textContent;

                } else if (OldcorrectAns == "D" && presentCount < prevsqlData['AllQuestions'].length - 1) {
                    optionDimage.src = "icons/check-circle-svgrepo-com.png";
                    correctAnsContent = option_d.textContent;


                }

                if (correctAnsContent !== OldUserAns
                    && option_a.textContent == OldUserAns) {

                    optionAimage.src = "icons/cancel-svgrepo-com.png";
                } else if (correctAnsContent !== OldUserAns
                    && option_b.textContent == OldUserAns) {
                    optionBimage.src = "icons/cancel-svgrepo-com.png";


                } else if (correctAnsContent !== OldUserAns
                    && option_c.textContent == OldUserAns) {
                    optionCimage.src = "icons/cancel-svgrepo-com.png";

                } else if (correctAnsContent !== OldUserAns
                    && option_d.textContent == OldUserAns) {
                    optionDimage.src = "icons/cancel-svgrepo-com.png";

                }



                currenQuestionNumber.textContent = prevsqlData["QuestionNo"] + 1;

                console.log(prevsqlData["questionStat"]);

                
            } else {
                console.error('Error:', xhr.status, xhr.statusText);
            }
        }
    };


    xhr.setRequestHeader("content-type", "application/x-www-form-urlencoded");

    // Example user answer (you should replace this with the actual user's answer)
    xhr.send("backbtnClicked=" + encodeURIComponent(presentCount) + "&selectedCourse=" + encodeURIComponent(selectedCourse));



}

frwdBtn.addEventListener('click', forward, false);

