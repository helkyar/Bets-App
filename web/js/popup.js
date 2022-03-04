let btnAbrirPopup = document.getElementById('btn-abrir-popup');
let overlay = document.getElementById('overlay');
let popup = document.getElementById('popup');
let btnCerrarPopup = document.getElementById('btn-cerrar-popup');

btnAbrirPopup.addEventListener('click', function(){
	overlay.classList.add('active');
	popup.classList.add('active');
});

btnCerrarPopup.addEventListener('click', function(e){
	e.preventDefault();
	overlay.classList.remove('active');
	popup.classList.remove('active');
});