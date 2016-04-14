// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= rweuire bootstrap-sprockets
//= require_tree .


// == init Masonry after all images have loaded ==//
var $grid = $('.grid').imagesLoaded( function() {
  $grid.masonry({
    itemSelector: '.grid-item',
    percentPosition: true,
    columnWidth: '.grid-sizer'
  }); 
});


// === boostrap-file style ===//
$(":file").filestyle({size: "sm"});

// $(":file").filestyle({icon: false});
// $(":file").filestyle({placeholder: "No file"});
//=== waypoints ===//
// $(document).ready(function() {
// //nav bar will be fixed on top after scrolling down below 110px from the top of webpage//

// 	$(window).scroll(function() {
// 	   var navHeight = $( window ).height() - 110;
// 			 if ($(window).scrollTop() > navHeight) {
// 				 $('nav').addClass('fixed');
// 			 }
// 			 else {
// 				 $('nav').removeClass('fixed');
// 			 }
// 		});
// using waypoints plugin//

$('.screenNi').waypoint(function(direction) {
	if(direction == 'down') {
	  $('.prf').addClass('animated fadeInLeft pimg');
 	  $('.introduction').addClass('animated fadeInRight intro description vis');
 	  $('#screen2 .inv').removeClass('inv');
	} else {
	  $('.prf').removeClass('animated fadeInLeft pimg');
	  $('.introduction').removeClass('animated fadeInRight intro description vis');
	  $('#screen2 .vis').addClass('inv');
	}
   },{offset:'70%'});


//  $('.screenSan').waypoint(function(direction) {
//  	if(direction == 'down') {
//  	 $('.sites').addClass('animated slideInUp');
// 	 $('#screen3 .inv').removeClass('inv');
//   } else {
//   	 $('.sites').removeClass('animated slideInUp');
// 	 $('#screen3 .vis').addClass('inv');
//   }
//  },{offset:'70%'});

//  $('.screenYon').waypoint(function(direction) {
//  	if(direction == 'down') {
//  	  $('.icons').addClass('animated fadeInRight');
// 	  $('object').addClass('animated fadeInLeft');
// 	 $('#screen4 .inv').removeClass('inv');
//    } else {
//    	  $('.icons').removeClass('animated fadeInRight');
// 	  $('object').removeClass('animated fadeInLeft');
// 	  $('#screen4 .vis').addClass('inv');
//    }
//   },{offset:'70%'});


//  $('.screenGo').waypoint(function(direction) {
//    if(direction =='down') {
//  	 $('.contactIcons').addClass('animated swing');
//   } else {
//   	$('.contactIcons').removeClass('animated swing');
//   } 
// },{offset:'80%'});


// });  //top