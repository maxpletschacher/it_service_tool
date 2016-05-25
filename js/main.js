document.addEventListener("DOMContentLoaded",init);


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
}
function popup(id){
	if(document.getElementById(id).className == "popclose"){ //falls die Klasse popclose ist
		document.getElementById(id).className = "popopen"
	}
	else{
		document.getElementById(id).className = "popclose"
	}
}