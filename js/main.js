window.addEventListener("load",init);

// Loginpopup öffnen und wieder schließen mithilfe von flexibler Klasse zur ID
// TODO: Passende CSS müssen erstellt werden.
function init() {
		document.getElementById("loginOpen").addEventListener("click", function(){
			popup("login");
		});
		document.getElementById("regOpen").addEventListener("click", function(){
			popup("registrieren");
		});
		document.getElementById("loginOpen2").addEventListener("click", function(){
			popup("login");
		});
		document.getElementById("regOpen2").addEventListener("click", function(){
			popup("registrieren");
		});
		document.getElementById("cartadd").addEventListener("click",warenkorb_add);
}
function popup(id){
	if(document.getElementById(id).className == "popclose"){ //falls die Klasse popclose ist
		document.getElementById(id).className = "popopen"
	}
	else{
		document.getElementById(id).className = "popclose"
	}
}
function warenkorb_add(){
	var element = document.getElementById("warenkorb");
	element.innerHTML = "Warenkorb (1)";
}
