const showHide__btn = document.querySelectorAll('.show-hide-password');
const Password = document.querySelectorAll(".Password")


for( let i = 0; i < showHide__btn.length; i++){
showHide__btn[i].addEventListener('click', () => {
    const visibility = Password[i].getAttribute('type');

    if( visibility === 'password'){
        Password[i].setAttribute('type', 'text');
        showHide__btn[i].setAttribute('data-toggle', 'true')
    }
    else{
        Password[i].setAttribute('type', 'password');
        showHide__btn[i].setAttribute('data-toggle', 'false')
    }
})
}
