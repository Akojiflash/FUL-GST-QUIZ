
const form = document.querySelector(".form-field");
let saveBtn = form.querySelector(".save_changes-btn");

let discardBtn = form.querySelector(".discard_changes-btn");

form.onsubmit = (e)=>{
    e.preventDefault();
}
saveBtn.onclick = ()=>{
    let xhr = new  XMLHttpRequest();

    xhr.open("POST", "php/profile.php", true);

    xhr.onload = ()=>{
        if(xhr.readyState === XMLHttpRequest.DONE){
            if(xhr.status === 200){
                
                let data = xhr.response;
                console.log(data);
                if(data === "success"){
                    alert("Change successful")
                }else{
                    alert(data)
                }
            }
        }
    }
    let formData = new FormData(form);
    xhr.send(formData);
}


discardBtn.onclick = ()=>{
    window.location.href = "./myCourses";
     
}


