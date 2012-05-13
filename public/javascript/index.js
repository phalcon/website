
if(navigator.userAgent.indexOf("Win")!=-1){
	document.getElementById("fork").style.display = "hidden";
}

window.onload = function(){
        var s = document.createElement('SCRIPT');
        s.src = "http://speakerdeck.com/embed/4edf11f72a2b980050009919.js";
        document.getElementById("speakerdeck").appendChild(s);
};
