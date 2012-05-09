
window.fbAsyncInit = function() {
	FB.init({
		appId      : '130991030345337',
		status     : true,
		cookie     : true,
		xfbml      : true
	});
	FB.Event.subscribe('auth.login', function(response){
		window.location = Phalcon_Utils.getURL('blog/checkFb');
	});
};

(function(d){
	var js, id = 'facebook-jssdk'; if (d.getElementById(id)) {return;}
	js = d.createElement('script'); js.id = id; js.async = true;
	js.src = "//connect.facebook.net/en_US/all.js";
	d.getElementsByTagName('head')[0].appendChild(js);
 }(document));