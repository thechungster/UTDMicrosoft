


function checkPasswordMatch()	{
	pass = document.forms["registerForm"]["password"].value;
	confirm = document.forms["registerForm"]["confirmPass"].value;

	if(pass != confirm)	{
		document.forms["registerForm"]["confirmPass"].style.borderColor="red";
	}
	else{
		document.forms["registerForm"]["confirmPass"].style.borderColor="";
	}

}




function validateRegister()	{

	var user = document.forms["registerForm"]["username"].value;									//set variable 'user' to what is inside the username text field. (loginForm is the name of the form, and username is the name of the username field these were both named in the html file)
	var pass = document.forms["registerForm"]["password"].value;									// set variable "pass" to the password field
	var email = document.forms["registerForm"]["email"].value;

	if(user.length > 5 && pass.length > 5)	{													// do some sort of input validation here, 
		return createRegister(user, pass, email);
																							// if input is valid, call "callPhp" function
	}

	else{
		alert("something too short blah blah blah");
		//return false;
		
	}

	return false;

}

function createRegister(user, pass, email)	{

	$.ajax({
		type:"POST",
		url:"/microsoft/assets/php/register.php",
		data:{username: user, password: pass, email: email},
		success: function(msg)	{
			if(msg == "Success")	{
				alert("Your account has been successfully created!");
				location.assign("./index.html");
			}
			else if(msg == "Email"){
				alert("This email has been taken blah blah"); // do js when not lazy
			}
			else if(msg == "Error")	{
				alert("Yeah something with db is messed up ... gj");
			}
			else{
				alert("This username is already taken or the db isnt set up yet... most likely this"); // or could do javascript stuff later when not lazy
			}
		}
	});
	return false;
}

