const winner = document.querySelector(".winner-animation");
const winnerLoserText = document.querySelector(".winner__main h1 em");
const loser = document.querySelector(".losser-animation");
const total_score = document.querySelector(".total-score");
function WinnerCheck() {
    let score;
    // Perform any necessary cleanup or UI updates here

    // Send an AJAX request to retrieve the next question from the server
    let xhr = new XMLHttpRequest();

    xhr.open("POST", "php/winner.php", true);

    xhr.onload = () => {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                score = parseInt(xhr.responseText);
                console.log('Received score:', score); // Log the score here
                // Uncomment the following lines to check the score and perform an action
                if (score < 150) {
                    winner.style.display = "none";
                    loser.style.display = "block";
                    winnerLoserText.textContent = "You can do better";

                    total_score.style.backgroundColor = "#B6CDD5";



                    // Do something when score is less than 150
                } else {
                    winner.style.display = "block";
                    loser.style.display = "none";
                    winnerLoserText.textContent = "You crushed it"
                    total_score.style.backgroundColor = "#FCD339";

                }
            } else {
                console.error('Error:', xhr.status, xhr.statusText);
            }
        }
    };

    xhr.onerror = () => {
        console.error('Network error occurred.'); // Handle network errors
    };

    xhr.setRequestHeader("content-type", "application/x-www-form-urlencoded");

    // Example user answer (you should replace this with the actual user's answer)
    xhr.send();
}

WinnerCheck();
