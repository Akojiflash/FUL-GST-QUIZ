const nav_toggle = document.querySelector('.profile_container');
const nav_menu = document.querySelector('.slide-nav-ul');

nav_toggle.addEventListener("click", function(){
    const nav_menu_visibility = nav_menu.getAttribute('data-visible');
    if(nav_menu_visibility === 'false'){
        nav_menu.setAttribute('data-visible', true);
    }else{
        nav_menu.setAttribute('data-visible', false);
    }
})