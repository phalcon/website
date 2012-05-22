
function listen(evnt, elem, func) {
    if (elem.addEventListener){
        elem.addEventListener(evnt, func, false);
    } else {
    	if (elem.attachEvent){
			var r = elem.attachEvent("on"+evnt, func);
    		return r;
    	}
    }
    else window.alert('I\'m sorry Dave, I\'m afraid I can\'t do that.');
}

//Tweets
listen("load", window, function(){
	getTwitters("tweet", {
		id: "phalconphp",
		count: 1,
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
	(function() {
		var uv = document.createElement('script'); uv.type = 'text/javascript'; uv.async = true;
		uv.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'widget.uservoice.com/jycT5U7k39Mm2D8wJIaEyg.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(uv, s);
	})();
}
