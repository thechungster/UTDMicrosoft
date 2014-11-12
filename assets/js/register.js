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
		location.reload();
	}

}

function createRegister(user, pass, email)	{

	$.ajax({
		type:"POST",
		url:"/microsoft/assets/php/register.php",
		data:{username: user, password: pass, email: email},
		success: function(msg)	{
			if(msg == "True")	{
				alert("Your account has been successfully created!");
				location.assign("http://www.google.com");
			}
			else{
				alert("username/email taken or something blah blha blah");
			}
		}
	});
	return false;
}