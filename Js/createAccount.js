const form = document.querySelector(".create-acct_form form");
let createAccount = form.querySelector(".button_input");
const errorMsg = document.querySelector(".incorrect-password");
let errorText = errorMsg.querySelector("p");

form.onsubmit = (e)=>{
    e.preventDefault();
}

createAccount.onclick = ()=>{
    
    //lets start Ajax
    let xhr = new XMLHttpRequest();
    xhr.open("POST", 'php/createAccount.php', true);
    
    xhr.onload = () =>{
        if(xhr.readyState === XMLHttpRequest.DONE){
            if(xhr.status === 200){
                let data = xhr.response;
                if(data === 'success'){
                    location.href = "./deck";
                }else{
                    errorMsg.style.display = "flex";
                    errorText.textContent = data;
                    // alert(data);
                }
            }
        }
    }
    // xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    let formData = new FormData(form);
    xhr.send(formData);
   
    
}

