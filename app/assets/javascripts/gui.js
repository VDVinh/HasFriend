
$(function() {

	/*****SCROLL TO SPECIFIC POSITION*****/

	$("#button-signup").click(function() {
	    $('html, body').animate({
	         scrollTop: $("#icon-company").offset().top
	    }, 'normal');
	});

	/*****PARALLAX EFFECT*****/

	// $(window).bind('scroll',function(e){
	//     parallaxScroll();
	// });

	// function parallaxScroll(){
	//     var scrolled = $(window).scrollTop();
	//     $('#header').css('background-position','center'+' '+(-200-(scrolled*.5))+'px');
	// }


});
