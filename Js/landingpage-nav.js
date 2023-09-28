// Landing Page NavbBar
const mobileNav_toggle = document.querySelector('.mobile-nav-toggle');
const menu_Bar = document.querySelector('#menu-bar');

mobileNav_toggle.addEventListener('click', () => {
    const menu_Bar_Visibility = menu_Bar.getAttribute('data-visible');

    if( menu_Bar_Visibility === 'false'){
        menu_Bar.setAttribute('data-visible', true)
        mobileNav_toggle.setAttribute('aria-expanded', true)
    }else{
        menu_Bar.setAttribute('data-visible', false)
        mobileNav_toggle.setAttribute('aria-expanded', false)
    }
})
