<?php

	$servername = "localhost";																// ip of the database
	$username = "microsoft";																		// user name of the databse
	$password = "Password1";																			//password to access the databse
	$dbname = "userinfo";		

	$conn = mysql_connect($servername, $username, $password) or die(mysql_error());			//connect to the database
	if($conn)	{
		echo 'nice';
	}
	else{
		echo 'died';
	}

?>