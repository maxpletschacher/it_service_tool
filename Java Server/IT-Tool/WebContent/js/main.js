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
		document.getElementById("search-box").addEventListener("submit", function(){
			return checkSearch(event);
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

function checkSearch(event){
	var eingabe = document.getElementById("search-box");
	var i;
	var sterne=false;
	var warnung="";
	var subReturn=true;
    if(eingabe[0].value==""){
    	warnung=warnung+"Bitte Suchwort angeben. ";
    	subReturn=false;
    }
    if(warnung!=""){
    	document.getElementById("sucheWarnung").innerHTML = ""+warnung+"";
		document.getElementById("sucheWarnung").className = "popopen";
		warnung="";
		event.preventDefault();
    }
    return subReturn;
}