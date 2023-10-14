
const selectedCourse = document.querySelector(".courses");
let clickedItem = "";
let paymentCourses = [];


function ClickedCourse(event) {
    const selected = document.createElement('img');
    clickedItem = event.target.id;
    let contents = selectedCourse.querySelector("#"+clickedItem);
     if(contents.querySelector('img') == null){
        console.log(contents.innerText);
        selected.classList.add("course-selected-indicator");
        selected.src = "icons/radio-button-checked-svgrepo-com.svg";
        paymentCourses.push(clickedItem);
        contents.appendChild(selected);
        
        console.log(paymentCourses);
     }else {
        // Image is present, remove it
        contents.removeChild(contents.querySelector('img') );

        // Remove the course from the paymentCourses array
        const index = paymentCourses.indexOf(clickedItem);
        if (index !== -1) {
            paymentCourses.splice(index, 1);
        }
    }



   
    
}

selectedCourse.addEventListener("click", ClickedCourse, false);