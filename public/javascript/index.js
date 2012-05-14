
function initIndex(){
	var github = document.getElementById("github");
	if(github){
		if(navigator.userAgent.toLowerCase().indexOf("win")!=-1){
			github.style.display = "none";
		} else {
			github.style.width = "250px";
		}
	};
	var s = document.createElement('SCRIPT');
	s.src = "http://speakerdeck.com/embed/4edf11f72a2b980050009919.js";
	document.getElementById("speakerdeck").appendChild(s);
}

if(!document.all){
	document.addEventListener('DOMContentLoaded', initIndex);
} else {
	window.onload = initIndex;
}