$(document).ready(function(){

	$('#new_employee').validate({
	  rules: {
	   "employee[fname]": { required: true},
	  },
	  messages: {
	    
	    
	  }
	});

});