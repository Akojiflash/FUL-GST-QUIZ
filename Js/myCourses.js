const courses = document.querySelector(".courses_section");


let xhr = new XMLHttpRequest();

xhr.open("POST", "php/myCourses.php", true);

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

function loadCourses() {
    
    let xhr = new XMLHttpRequest();

    xhr.open("POST", "php/paymentCourse.php", true);

    xhr.onload = () => {

        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                console.log(xhr.responseText);

                coursesObjData = JSON.parse(xhr.responseText);
                console.log(coursesObjData);
                let courseId = "";
                let courseCode = "";
                let pageCourse ="";
                for (courseId in coursesObjData) {
                    if (coursesObjData.hasOwnProperty(courseId)) {
                        courseCode = coursesObjData[courseId];
                        console.log(courseId, courseCode);

                    }
                    var keys = Object.keys(coursesObjData);
                    var index = keys.indexOf(courseId);
                    console.log(index);
                    if (index % 5== 0) {
                       pageCourse =  document.createElement('div');
                       pageCourse.classList.add("my_Courses");
        
                       courses.appendChild(pageCourse);

                    }

                    const course_code = document.createElement('a');
                    course_code.href =" questions?courses=" + courseId
                    course_code.classList.add("course");
                    course_code.classList.add("row");
                    course_code.classList.add("gst");
                    course_code.classList.add(courseId);
                    course_code.innerText = courseCode;
                    
                    if(coursesObjData.hasOwnProperty(courseId) && coursesObjData['paidCourses'].hasOwnProperty(courseId) ){
                        course_code.classList.add("greyout");
                    }else{
                        course_code.setAttribute("id", courseId);
                    }
                    pageCourse.appendChild(course_code);
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
