$(document).ready(function(){

	$('#new_employee').validate({
	  rules: {
	   "employee[fname]": { required: true , lettersonly: true },
	   "employee[lname]": { required: true},
	   "employee[phoneno]": { required: true,number :true, minlength: 10, maxlength: 10},
	   "employee[email]": { required: true, email: true, remote: "/check_email" },
	   "employee[password]": { required: true, minlength: 8 },
	   "employee[password_confirmation]": { required: true, equalTo: "#new_employee #employee_password"},
	  },
	  messages: {
	   "employee[fname]": { required: "First name can't be blank",lettersonly:"Only letters"},
	   "employee[lname]": { required: "Last name can`t be blank"},
	   "employee[phoneno]": { required:"Phone no can`t be blank",number :"Not a valid Phone no"},
	   "employee[email]": { required: "*Email can't be blank", remote: "*Email already exists" },
	   "employee[password]": { required: "*Password can't be blank", minlength: "*Length should minimum 8"
                        },
	   "employee[password_confirmation]": {required: "*Confirm Password Can't be blank ", equalTo: "*Enter the same password" },	    
	  }
	});

	$('#new_session').validate({
	  rules: {	 
	   "employee[email]": { required: true, email: true},
	   "employee[password]": { required: true},
	  },
	  messages: {
	   "employee[email]": { required: "*Email can't be blank"},
	   "employee[password]": { required: "*Password can't be blank"},
	            }
	});
});