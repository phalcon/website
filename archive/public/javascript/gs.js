
function listen(evnt, elem, func) {
    if (elem.addEventListener){
        elem.addEventListener(evnt, func, false);
    } else {
    	if (elem.attachEvent){
			var r = elem.attachEvent("on"+evnt, func);
    		return r;
    	}
    }
}

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
	var speaker = document.getElementById("speakerdeck");
	if(speaker){
		var language = 'en';
		if(typeof navigator.language != "undefined"){
			language = navigator.language.substr(0, 2);
		}
		var s = document.createElement('SCRIPT');
		if(language=='es'){
			s.src = "http://speakerdeck.com/embed/4f5844faaaef0c002200beba.js";
			var iframe = document.getElementsByTagName("iframe")[0]
			if(iframe){
				iframe.src = "http://speakerdeck.com/embed/4f5844faaaef0c002200beba?";
			}
		} else {
			if(language=='fr'){
				s.src = "http://speakerdeck.com/embed/4fbd22044ff11c00540299c7.js";
				var iframe = document.getElementsByTagName("iframe")[0]
				if(iframe){
					iframe.src = "http://speakerdeck.com/embed/4fbd22044ff11c00540299c7?";
				}
			} else {
				s.src = "http://speakerdeck.com/embed/4edf11f72a2b980050009919.js";
			}
		}
		speaker.appendChild(s);
	}

	//Tweets
	getTwitters("tweet", {
		id: "phalconphp",
		count: 2,
		enableLinks: true,
		ignoreReplies: true,
		clearContents: true,
		template: '"%text%" <a href="http://twitter.com/%user_screen_name%/statuses/%id%/">%time%</a>'
	});

});

if(document.location.hostname!='localhost'){
	var _gaq = _gaq || [];
	_gaq.push(['_setAccount', 'UA-29332509-1']);
	_gaq.push(['_setDomainName', 'phalconphp.com']);
	_gaq.push(['_trackPageview']);
	(function() {
		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	})();
	var uvOptions = {};
	/*(function() {
		var uv = document.createElement('script'); uv.type = 'text/javascript'; uv.async = true;
		uv.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'widget.uservoice.com/jycT5U7k39Mm2D8wJIaEyg.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(uv, s);
	})();*/
}
