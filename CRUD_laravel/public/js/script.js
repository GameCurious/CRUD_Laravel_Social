$( document ).ready(function() {
    //alert("Hello! I am an alert box!!");

    $('.borrar').click(function(e) {
    	e.preventDefault();
    	if( ! confirm("¿Esta seguro de querer eliminarlo?")) {
    		return false;
    	}

    	var row  = $(this).parents('tr');
    	var form = $(this).parents('form');
    	var url  = form.attr('action');

    	$.post(url, form.serialize(), function(result) {
    		row.fadeOut();
    	});
    });
});