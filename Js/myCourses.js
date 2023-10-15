const courses = document.querySelector(".courses_section");
const empty_courses = document.querySelector(".empty-course_section");

let xhr = new XMLHttpRequest();

xhr.open("POST", "php/myCourses.php", true);

xhr.onload = () => {
    if(xhr.readyState === XMLHttpRequest.DONE){
        if(xhr.status === 200) {
            console.log(xhr.responseText);
            
           const sqlData = xhr.responseText;
           if(sqlData !== ""){
            courses.innerHTML = sqlData;
           }else{
            courses.style.display = "none";
            empty_courses.style.display = "flex";
           }
           
        }
    }else {
        console.error('Error:', xhr.status, xhr.statusText);
    }
};

xhr.setRequestHeader("content-type", "application/x-www-form-urlencoded");

// Example user answer (you should replace this with the actual user's answer)
xhr.send();

