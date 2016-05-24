window.addEventListener("load",init);

// Loginpopup öffnen und wieder schließen mithilfe von flexibler Klasse zur ID
// TODO: Passende CSS müssen erstellt werden.
function init() {
	/*if(document.getElementById("popup").classname == "popclose"){ //falls die Klasse popclose ist
		document.getElementById("popup").addEventListener("click",openpop); //öffne openpop beim drücken auf link
	}
	else{
		document.getElementById("popup").addEventListener("click",closeform); //schließe openpop beim drücken auf link
	}*/
	document.getElementById("cartadd").addEventListener("click",warenkorb_add);
	}

function openpop(){
	document.getElementById("popup").className = "popopen";
}

function closeform(){
	document.getElementById("popup").className = "popclose";
}

function warenkorb_add(){
	var element = document.getElementById("warenkorb");
	element.innerHTML = "Warenkorb (1)";
}
