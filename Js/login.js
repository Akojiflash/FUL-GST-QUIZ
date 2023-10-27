const form = document.querySelector("#log-in");
let loginBtn = form.querySelector("#submit-btn");
const errorMsg = document.querySelector(".incorrect-password");
let errorText = errorMsg.querySelector("p");
let email = 

form.onsubmit = (e)=>{
    e.preventDefault();
}

loginBtn.onclick = ()=>{
    
    //lets start Ajax
    let xhr = new XMLHttpRequest();
    xhr.open("POST", 'php/login.php', true);

    xhr.onload = ()=>{
        if(xhr.readyState === XMLHttpRequest.DONE){
            if(xhr.status === 200){
                let data = xhr.response;
                
                if(data === 'success'){
                    location.href = './myCourses';
                    errorMsg.style.backgound
                }else{

                    setTimeout(errorMesg(data), 3000);
                    // alert(data);
                }
                

                
            }else {
                // Handle server error status codes
                console.error('Server returned status:', xhr.status);
            }
        }
    }
    
    let formData = new FormData(form);
    xhr.send(formData);
    xhr.onerror = () => {
        console.error('Request failed');
    };
}


function errorMesg(input){
    const errorMsg = document.querySelector(".incorrect-password");
    errorMsg.style.display = "flex";
    errorMsg.style.position = "absolute";
    errorMsg.querySelector('p').innerText = input;
}