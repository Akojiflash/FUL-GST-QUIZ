const courses = document.querySelector(".courses");


let xhr = new XMLHttpRequest();

xhr.open("POST", "php/paymentCourse.php", true);

xhr.onload = () => {
    if(xhr.readyState === XMLHttpRequest.DONE){
        if(xhr.status === 200) {
            console.log(xhr.responseText);
           const sqlData = xhr.responseText;
           courses.innerHTML = sqlData;
        }
    }else {
        console.error('Error:', xhr.status, xhr.statusText);
    }
};

xhr.setRequestHeader("content-type", "application/x-www-form-urlencoded");

// Example user answer (you should replace this with the actual user's answer)
xhr.send();
