window.addEventListener("load",initWR);

function initWR(){
	var classname = document.getElementsByClassName("versandLink");
	
	for (var i = 0; i < classname.length; i++) {
	    classname[i].addEventListener('click', function(){
	    	popup("versandPopup");
	    }, true);
	}
	var classname = document.getElementsByClassName("versandLink2");
	
	for (var i = 0; i < classname.length; i++) {
	    classname[i].addEventListener('click', function(){
	    	popup("versandPopup");
	    }, true);
	}
}