var theParent = document.querySelector('#theDude');
theParent.addEventListener("click", dosomething, false);


function dosomething(e){
    if(e.target !== e.currentTarget){
        var clickedItem = e.target.id;
        alert(clickedItem);
    }
    e.stopPropagation();
}