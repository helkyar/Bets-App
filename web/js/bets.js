/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
//Listener for the buttons on the table
//Each button generates a bet-box
//Only one click per button
//Get id from classname, amount from node brother

const content = document.querySelector('.content');
content.addEventListener('click', allowBets);

[...document.querySelectorAll('.betting')].map((btn)=>{
    btn.addEventListener('click', createBetBox)
//    console.log(btn.parentNode.getAttribute("info"))
    function createBetBox(){
        let info = btn.parentNode.getAttribute("info").split(";");
        content.innerHTML += `
            <div class="caja-apuestas">                
            <div class="caja-apuestas-titulo">
              ${info[4].substring(info[4].indexOf(":")+1)} 
              ( ${info[3].substring(info[3].indexOf(":")+1)} )
            </div>
            <div class="caja-apuestas-conjunto">
            <form method="POST" action="/betsweb/BetGetter">
            <label class="btnn conjunto-btn1 btn5">+5</label>
            <label class="btnn conjunto-btn2 btn10">+10</label>
            <label class="btnn conjunto-btn3 btn50">+50</label>
            <input name="amount" class="conjunto-input betamt" type="number" />
            <input type="hidden" name="pay" 
                value="${info[3].substring(info[3].indexOf(":")+1)}" />
            <input type="hidden" name="game" 
                value="${info[1].substring(info[1].indexOf(":")+1)}" />
            <input type="hidden" name="user" 
                value="${info[0].substring(info[0].indexOf(":")+1)}" />
            <input type="hidden" name="type" 
                value="${info[2].substring(info[2].indexOf(":")+1)}" />
        
            <input type="hidden" name="action" value="insert" />
            <button class="conjunto-btn5">Aceptar</button>
            <label class="btnn conjunto-btn2 exit">x</label>
            </form>        
            </div>`
    }
})


function allowBets(e){
    if(e.target.tagName != "LABEL") {return;}
    [...document.querySelectorAll('.caja-apuestas')].map((node)=>{
        const exit = node.querySelector('.exit');
        const btn5 = node.querySelector('.btn5');
        const btn10 = node.querySelector('.btn10');
        const btn50 = node.querySelector('.btn50');
        let inp = node.querySelector('.betamt');
        switch(e.target){
            case (btn5): inp.value = inp.value*1 + 5; break;
            case (btn10): inp.value = inp.value*1 + 10; break;
            case (btn50): inp.value = inp.value*1 + 50; break;
            case exit: node.parentNode.removeChild(node); break;
        }
    });
}