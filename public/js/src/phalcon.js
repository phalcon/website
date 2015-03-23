$(document).ready(function() {
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

	$(window).bind('scroll', initContributorsGadget);
});

$(window).load(function() {
	$(document.body).addClass('loaded');
});

function countingStars(data)
{
	$.extend($.easing, {
		easeOutExpo: function (x, t, b, c, d) {
			return (t==d) ? b+c : c * (-Math.pow(4, -10 * t/d) + 1) + b;
		}
	});

	var total = parseInt(data.stargazers_count);
	var container = $("#stargazers").find("span").get(0);

	$({
		stars: 0
	}).animate({
		stars: total
	}, {
		duration: 3000,
		easing: 'easeOutExpo',
		step: function() {
			container.innerText = Math.round(this.stars).toLocaleString(navigator.language);
		}
	});
}

//+ Jonas Raoni Soares Silva
//@ http://jsfromhell.com/array/shuffle [v1.0]
function shuffle(o){ //v1.0
	for(var j, x, i = o.length; i; j = Math.floor(Math.random() * i), x = o[--i], o[i] = o[j], o[j] = x);
	return o;
}

var contributorsInitialized = false;

function initContributorsGadget() {
	// Lazy loading the lazy loadness
	var container = $('#contributors');
	if(!contributorsInitialized && !$.belowthefold(container, {threshold: 0})) {
		var lazyContributors = container.find('img.lazy').toArray();
		lazyContributors = shuffle(lazyContributors);

		$(lazyContributors).lazyload({
			effect: 'fadeIn',
			failure_limit: 200, // Should behigher than the contributors count
			load: function() {
				$(this).addClass('loaded');
			}
		});

		contributorsInitialized = true;
	}
}