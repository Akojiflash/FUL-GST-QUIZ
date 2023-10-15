
function checkLogin(){
    let xhr = new XMLHttpRequest();
    xhr.open("POST", "php/checkLogin.php", true);
    xhr.onload = ()=>{
        if(xhr.readyState === XMLHttpRequest.DONE){
            if(xhr.status === 200){
                sqlData = xhr.responseText;

                console.log(sqlData);
                if(sqlData == 'logout'){
                    window.location.href = "php/logout";
                    alert("You are about to be signed out of your account");
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

setInterval(checkLogin, 10000);