$(document).ready(function(){
	if( $(window).width() > 800 ){
// Efecto Menu
	$('.menu a').each(function(index, elemento){
		$(this).css({
			top: '-200px'
		});
	$(this).animate({
			top: '0'
		}, 1000 + (index * 400));
	});

// Efecto Nombre
	$('header .contenedor-texto').css({
		opacity: 0
	});

	$('header .contenedor-texto').animate({
		opacity: 1,
	}, 3000);
}

// Scroll Elementos Menu
	var acercaDe = $('#acerca-de').offset().top,
		trabajos = $('#trabajos').offset().top,
		redesSociales = $('#redsocial').offset().top

	$('#btn-acerca-de').on('click', function(e){
		e.preventDefault();
		$('html, body').animate({
			scrollTop: acercaDe - 250
		}, 500);
	});

	$('#btn-menu').on('click', function(e){
		e.preventDefault();
		$('html, body').animate({
			scrollTop: trabajos
		}, 500);
	});

	$('#btn-redsocial').on('click', function(e){
		e.preventDefault();
		$('html, body').animate({
			scrollTop: redesSociales
		}, 500);
	});
});