<?php

	$user = $_POST['username'];
	$passw = $_POST['password'];
	$email = $_POST['email'];

	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "microsoft";

	$user = mysql_escape_string($user);
	$pass = mysql_escape_string($passw);


	$conn = mysql_connect($servername, $username, $password) or die(mysql_error());

	$sql = "SELECT Username FROM userinfo WHERE Username='$user'";	
	mysql_select_db($dbname);

	if($result = mysql_query($sql, $conn))	{
		//email already taken
		if(mysql_num_rows($result))	{
			$record = mysql_fetch_assoc($result);
			print_r("Taken");
		}
		//email not taken, proceed w'th registration
		else{
			$sql = "INSERT INTO userinfo (Username, Password) 
			VALUES ('$user', '$pass')";
			if($result = mysql_query($sql, $conn))	{
				print_r("Success");
			}
			else{
				print_r("Error");
			}
		}
	}


?>