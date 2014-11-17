$(function(){

    $('.homepage-header').backstretch('img/bg.jpg');

	$('.video').magnificPopup({
	  disableOn: 700,
	  type: 'iframe',
	  mainClass: 'mfp-fade',
	  removalDelay: 160,
	  preloader: false,
	  fixedContentPos: false
	});

	hljs.initHighlightingOnLoad();

});
