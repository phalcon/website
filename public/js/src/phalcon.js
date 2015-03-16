$(function() {
	$.ajax({
		dataType: "json",
		url: 'https://api.github.com/repos/phalcon/cphalcon',
		success: countingStars
	});


    // Video popup init
	$('.video').magnificPopup({
	  disableOn: 700,
	  type: 'iframe',
	  mainClass: 'mfp-fade',
	  removalDelay: 160,
	  preloader: false,
	  fixedContentPos: false
	});

	// Code highlight init
	hljs.initHighlightingOnLoad();

	// Code samples autoplayer
	/*
	var timerId = setInterval( function(){
		var link = $('.codesamples ul li a.active').parent().next().find('a');
		var target = link.attr('href');
		var current = $('.codesample-current').attr('id');

		//marking active menu item
		$('.codesamples ul li a.active').removeClass('active');
		link.addClass('active');
		
		//displaying the proper code sample
		$('.codesample-current').addClass('codesample-pulldown');
		$('.codesample-current').removeClass('codesample-current');
		$(target).addClass('codesample-current');
	}, 3500);
	*/

	// Code samples tags - click event
	$('.codesample').click(function(e) {
		e.preventDefault();
		//clearInterval(timerId);

		var target = $(this).attr('href');
		var current = $('.codesample-current').attr('id');
		if (target!=='#'+current) {
			//marking active menu item
			$('.codesamples ul li a.active').removeClass('active');
			$(this).addClass('active');
			
			//displaying the proper code sample
			$('.codesample-current').addClass('codesample-pulldown');
			$('.codesample-current').removeClass('codesample-current');
			$(target).addClass('codesample-current');
		}
	});


	$('.hypechart').click(function(e) {
		if (HYPE.documents.phalcon.currentSceneName() !== 'Chart')
			HYPE.documents.phalcon.showSceneNamed('Chart',HYPE.documents.phalcon.kSceneTransitionPushTopToBottom, 0.1);
		//else
			//HYPE.documents.phalcon.showSceneNamed('Mountains',HYPE.documents.phalcon.kSceneTransitionInstant);
	});
});

$(window).load(function() {
	$(document.body).addClass('loaded');
});

function countingStars(data)
{
	$.extend($.easing,
		{
			easeOutExpo: function (x, t, b, c, d) {
				return (t==d) ? b+c : c * (-Math.pow(4, -10 * t/d) + 1) + b;
			}
		}
	);

	var total = parseInt(data.stargazers_count);
	var container = $("#stargazers").find("span").get(0);

	$({
		stars: 0
	}).animate({
		stars: total
	}, {
		duration: 2000,
		easing: 'easeOutExpo',
		step: function() {
			container.innerText = Math.round(this.stars).toLocaleString(navigator.language);
		}
	});
}