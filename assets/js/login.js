

function validateLogin()	{


	var user = document.forms["loginForm"]["username"].value;									//set variable 'user' to what is inside the username text field. (loginForm is the name of the form, and username is the name of the username field these were both named in the html file)
	var pass = document.forms["loginForm"]["password"].value;									// set variable "pass" to the password field

	if(user.length > 5 && pass.length > 5)	{													// do some sort of input validation here, 
		return callPhp(user, pass);
																							// if input is valid, call "callPhp" function
	}

	else{
		alert("You have entered an invalid username or password");
		return true;
	}

}

function callPhp(user, pass)	{

	$.ajax({
		type: "POST",
		url: "./assets/php/login.php",
		data:{username: user, password: pass},
		success: function(msg)	{
			if(msg == "True")	{													// yay login worked
				alert("You have successfully logged in!");
				location.assign("http://www.google.com");								// go to whatever url of login site is
			}
			else{
				alert("username/password not found");								// user/pass not found
				console.log(msg);
				//location.reload();													//reload the page
			}
		}
	});
	return false;

}