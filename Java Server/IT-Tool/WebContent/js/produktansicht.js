window.addEventListener("load",initPA);

// Loginpopup öffnen und wieder schließen mithilfe von flexibler Klasse zur ID
// TODO: Passende CSS müssen erstellt werden.
function initPA() {
		document.getElementById("cartadd").addEventListener("click",warenkorb_add);
		document.getElementById("bewertungForm").addEventListener("submit", function(){
			return checkBewertung(event);
		});
}
function warenkorb_add(){
	var element = document.getElementById("warenkorb");
	var anz = document.getElementById("anzWare").value;
	if(anz!=""){
		element.innerHTML = "Warenkorb ("+anz+")";
		document.getElementById("cartadd").disabled = true;
		document.getElementById("warenkorbWarnung").className = "popclose";
	}else{
		document.getElementById("warenkorbWarnung").innerHTML = "Bitte Anzahl angeben.";
		document.getElementById("warenkorbWarnung").className = "popopen";
	}
}
function checkBewertung(event){
	var eingabe = document.getElementById("bewertungForm");
	var i;
	var sterne=false;
	var warnung="";
	var subReturn=true;
    for (i = 0; i < eingabe.length; i++) {
        if (eingabe[i].checked) {
            sterne=true;
        }
    }
    if(sterne==false){
    	warnung=warnung+"Bitte Sterne angeben. ";
    	subReturn=false;
    }
    if(eingabe[7].value==""){
    	warnung=warnung+"Bitte Bewertung angeben. ";
    	subReturn=false;
    }
    if(warnung!=""){
    	document.getElementById("bewertungWarnung").innerHTML = ""+warnung+"";
		document.getElementById("bewertungWarnung").className = "popopen";
		warnung="";
		event.preventDefault();
    }
    return subReturn;
}
