
const selectedCourse = document.querySelector(".courses");
let clickedItem = "";
let paymentCourses = [];



function ClickedCourse(event) {

    const cartContent = document.querySelector('.number-of-courses-to-pay-for');
    const totalCost = document.querySelector('.total-price-of-courses-to-pay-for');
    const checkout = document.querySelector('.total-cost-of-courses');
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


    cartContent.innerText = paymentCourses.length;
    totalCost.innerText = paymentCourses.length*100;
    checkout.innerHTML = totalCost.innerText + ".00";
}

selectedCourse.addEventListener("click", ClickedCourse, false);