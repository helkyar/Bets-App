let bet = document.querySelector('.bet');
let body = document.querySelector('body');
let toggle = true;
body.addEventListener('click', movediv);

function movediv(){
    if(toggle){
        bet.style.transform = "translateX(-200)";
    }else{        
        bet.style.transform = "translateX(0)";
    }
    toggle = !toggle;
}