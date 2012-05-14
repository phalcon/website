
if(navigator.userAgent.toLowerCase().indexOf("win")!=-1){
	document.getElementById("fork").style.display = "none";
}

window.onload = function(){
        var s = document.createElement('SCRIPT');
        s.src = "http://speakerdeck.com/embed/4edf11f72a2b980050009919.js";
        document.getElementById("speakerdeck").appendChild(s);
};
