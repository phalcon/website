
listen("load", window, function(){

	//Github Badge
	var github = document.getElementById("github");
	if(github){
		if(navigator.userAgent.toLowerCase().indexOf("win")==-1){
			github.style.width = "250px";
			github.style.display = "block";
		}
	};

	//Speakerdeck
	var language = 'en';
	if(typeof navigator.language != "undefined"){
		language = navigator.language;
	}

	var s = document.createElement('SCRIPT');
	if(language=='es'){
		s.src = "http://speakerdeck.com/embed/4f5844faaaef0c002200beba.js";
		var iframe = document.getElementsByTagName("iframe")[0]
		if(iframe){
			iframe.src = "http://speakerdeck.com/embed/4f5844faaaef0c002200beba?";
		}
	} else {
		s.src = "http://speakerdeck.com/embed/4edf11f72a2b980050009919.js";
	}
	document.getElementById("speakerdeck").appendChild(s);

});