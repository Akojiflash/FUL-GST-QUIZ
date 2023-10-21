

const selectedCourse = document.querySelector(".courses");
const paymentBtn = document.querySelector(".payment_cta-btn");
let clickedItem = "";
let paymentCourses = [];//Holds couses you selected to pay for

let cash = 0;

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
    cash = totalCost.innerText;
}

selectedCourse.addEventListener("click", ClickedCourse, false);


function pay(){

  
    
    let xhr = new XMLHttpRequest();
    xhr.open('POST', "php/checkout.php", true);
    xhr.onload = ()=>{
        if(xhr.readyState === XMLHttpRequest.DONE){
            if(xhr.status === 200){
                let sentData = (xhr.responseText);
                if(sentData = "success" && paymentCourses.length >0 ){
                    window.location.href = "./checkout"
                }else{
                    errorMesg("You have not selected any course")
                }
               
             



            }
        }
    };
    xhr.setRequestHeader("content-type", "application/x-www-form-urlencoded");

// Example user answer (you should replace this with the actual user's answer)
    xhr.send("coursesPayingfor=" + (paymentCourses) + "&amount=" + (cash));
    

}


paymentBtn.addEventListener('click',pay, false  )

function errorMesg(input) {
    const errorMsg = document.querySelector(".course_bought_alert");
    errorMsg.style.display = "flex";
    errorMsg.style.position = "absolute";
    errorMsg.querySelector('p').innerText = input;
}