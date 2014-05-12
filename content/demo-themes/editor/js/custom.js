jQuery(document).ready(function( $ ) {

		// Add JS class to html
		$("html").addClass("js");

		// // FitVids
		// $(".box iframe").not(".fitvid iframe").wrap("<div class='fitvid'/>");
		// $(".fitvid").fitVids();

		// // Run Fitvid on Infinite Scroll
  //       $( document.body ).on( 'post-load', function () {
		// 	$(".fitvid").fitVids();
		// });

		// Navigaiton tabs
		$('ul.toggle-bar a').click(function(){
			var tab_id = $(this).attr('data-tab');

			$('ul.toggle-bar li a').removeClass('current');
			$('.tab-content').removeClass('current');

			$(this).addClass('current');
			$("#"+tab_id).addClass('current');
		})

		// Close the folder icon
		$('.toggle-bar a').click(function () {
			$('.fa-folder-open').hide();
			$('.fa-folder').show();
			return false;
		});

		// Open the folder icon
		$('.folder-toggle').click(function () {
			$('.fa-folder,.fa-folder-open').toggle();
			return false;
		});

		$(window).on("resize load", function () {
			var current_width = $(window).width();

			if(current_width < 769){
				$(".header-nav").appendTo("#menu-canvas");
			}

			if(current_width > 769){
				$(".header-nav").appendTo(".header-inside");
				$("#menu-canvas.active").toggleClass("active");
				$(".container.active").toggleClass("active");
			}
		});

});