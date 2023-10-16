const courses = document.querySelector(".courses");


let xhr = new XMLHttpRequest();

xhr.open("POST", "php/courseselection.php", true);

xhr.onload = () => {
    if (xhr.readyState === XMLHttpRequest.DONE) {
        if (xhr.status === 200) {
            console.log(xhr.responseText);
            const sqlData = xhr.responseText;
            courses.innerHTML = sqlData;
        }
    } else {
        console.error('Error:', xhr.status, xhr.statusText);
    }
};

xhr.setRequestHeader("content-type", "application/x-www-form-urlencoded");

// Example user answer (you should replace this with the actual user's answer)
xhr.send();

function errorMesg(input) {
    const errorMsg = document.querySelector(".course_bought_alert");
    errorMsg.style.display = "flex";
    errorMsg.style.position = "absolute";
    errorMsg.querySelector('p').innerText = input;
}


function trial_expire() {
    let xhr = new XMLHttpRequest();

    xhr.open("POST", "php/trialCount.php", true);

    xhr.onload = () => {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {

                let trial = xhr.responseText;
                console.log(trial)
                if (trial == 0) {
                    setInterval(errorMesg("You have exhausted your trial"), 3000);

                }
            }
        } else {
            console.error('Error:', xhr.status, xhr.statusText);
        }
    };
    xhr.setRequestHeader("content-type", "application/x-www-form-urlencoded");

    // Example user answer (you should replace this with the actual user's answer)
    xhr.send();

}

trial_expire();