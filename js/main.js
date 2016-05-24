document.addEventListener("DOMContentLoaded",init);


// Loginpopup öffnen und wieder schließen mithilfe von flexibler Klasse zur ID
// TODO: Passende CSS müssen erstellt werden.
function init() {
	if(document.getElementByID("popup").classname = popclose){ //falls die Klasse popclose ist
		document.getElementByID("popup").addEventListener("click",openpop); //öffne openpop beim drücken auf link
	}
	else{
		document.getElementByID("popup").addEventListener("click",closeform); //schließe openpop beim drücken auf link
	}
	}

function openpop(){
	document.getElementById("popup").className = "popopen"
}

function closeform(){
	document.getElementById("popup").className = "popclose"
}

