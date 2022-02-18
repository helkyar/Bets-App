let bet = document.querySelector('.bet');
let hide = document.querySelector('.hide');
let toggle = true;

hide.addEventListener('click', movediv);

function movediv(){
    console.log("here");
    if(toggle){
        bet.style.transform = "translate(250px)";
    }else{        
        bet.style.transform = "translate(0px)";
    }
    toggle = !toggle;
}