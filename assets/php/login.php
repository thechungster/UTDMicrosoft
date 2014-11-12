<?php 			
	// this is just the code from the capital one hackathon												
	$user = $_POST['username'];																// store the username that was passed to the php file												
	$passw = $_POST['password'];																// store the password that was passed to the php file
	

	$servername = "localhost";																// ip of the database
	$username = "root";																		// user name of the databse
	$password = "";																			//password to access the databse
	$dbname = "capitalone";																	//name of database

	$user = mysql_escape_string($user);														// make $user able to be used in sql queries
	$pass = mysql_escape_string($passw);													// make $pass able to be used in sql queries


	$conn = mysql_connect($servername, $username, $password) or die(mysql_error());			//connect to the database


	
	$sql = "SELECT Password FROM users WHERE Email='$user'";							// creqte query
	mysql_select_db($dbname);																// select database

	if($result = mysql_query($sql, $conn))	{												// if the query works
		if(mysql_num_rows($result))	{														// if there are results from the query
			$record = mysql_fetch_assoc($result);											// get the result of the query
			if ($record['Password'] == $passw)	{											// if the passwords are equal, return true
				print_r('True');
			}
			else{																			// else return false
				print_r('False');
			}
		}

		else{
			echo "False";
		}

	}
	else{
		echo "False";
	}


	

	
?>