const countDownEl = document.querySelector(".time span");


function countDown() {
    let xhr = new XMLHttpRequest();

    xhr.open("POST", "php/questionTimerHandler.php", true);

    xhr.onload = () => {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
               
                sqlData = JSON.parse(xhr.responseText);
                countDownEl.innerHTML = sqlData['minutes'] + ':' + sqlData['seconds'];
                if(sqlData['time']<1 ){
                    window.location.href = "./winner";
                }




            } else {
                console.error('Error:', xhr.status, xhr.statusText);
            }
        }
    };

    xhr.setRequestHeader("content-type", "application/x-www-form-urlencoded");

    // Example user answer (you should replace this with the actual user's answer)
    xhr.send();


}

setInterval(countDown, 1000);
