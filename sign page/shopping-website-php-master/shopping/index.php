<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Log in | Croma Store</title>
<link rel="stylesheet" type="text/css" href="signup/view.css" media="all">
</head>
<body id="main_body" >
		<?php include 'header.php'?>
		<?php
			//session_start(); 
			if(isset($_SESSION['email']) && isset($_SESSION['password']) && isset($_SESSION['isSupplier']))
			{
			echo "You are currently logged in. Redirecting.....";
			//sleep(2);
			header("location:supplier.php");
			}
			else if(isset($_SESSION['email']) && isset($_SESSION['password']) && !isset($_SESSION['isSupplier']))
			{
			echo "You are currently logged in. Redirecting.....";
			//sleep(2);
			header("location:user.php");
			}?>
		<form id="signup_form" class="signup"  method="post" action="index.php">
					<div class="form_description">
		<ul id="errors">
		<?php
		if(isset($_POST['submit']))
		{
		function VerifyMailAddress($email) 
		{
		 return filter_var($email, FILTER_VALIDATE_EMAIL);
		}
		$email=$_POST['email'];
		$pass=$_POST['password'];
		if(!VerifyMailAddress($email))
		{
		echo '<li>Email address format is invalid!</li>';
		}
		else if(strlen($pass)<7)
		{
		echo '<li>Password length is less than 7 characters!</li>';
		}
		else
		{
		$db = mysql_connect("localhost","root","") or die(mysql_error());
		$db_select = mysql_select_db("shopping", $db) or die(mysql_error());
		$email= $_POST['email'];
		$password = $_POST['password'];
		$isSupplier = isset($_POST['isSupplier']);
		if(isset($_POST['isSupplier']) && $_POST['isSupplier'] == 'Yes')
		{
		$login = mysql_query("select * from supplier where email = '$email' and password = '$password'");
		}
		else
		{
		$login = mysql_query("select * from customer where email = '$email' and   password = '$password'");
		}
			if(mysql_num_rows($login) == 1) {
			session_start();
			$_SESSION['email'] =$email;
			$_SESSION['password'] =$password;
			if(isset($_POST['isSupplier']) && $_POST['isSupplier'] == 'Yes')
			$_SESSION['isSupplier'] =$isSupplier;
			if(isset($_POST['isSupplier']) && $_POST['isSupplier'] == 'Yes')
			header("location:supplier.php");
			else
			header("location:user.php");
			echo "Login Successfull";
			}
			else {
			echo "Username and Password does not Match";
			}
			}
			}
			?>
			</ul>
			<h2>Please enter your details to login!</h2>
		</div>	
			<ul >
					<li id="li_1" >
		<label class="description" for="email">Email Id</label>
		<div>
		<input id="element_1" name="email" class="element text medium" type="email" maxlength="30" value=""/> 
		</div><p class="guidelines" id="guide_1"><small>Please enter your email as provided by you to us at the time of registration</small></p> 
		</li>		<li id="li_2" >
		<label class="description" for="password">Password</label>
		<div>
			<input id="element_2" name="password" class="element text medium" type="password" maxlength="25" value=""/> 
		</div> 
		
		</li>
		</li>
			
					<li class="buttons">
			    <input type="hidden" name="form_id" value="614305" />
			    <input type="checkbox" name="isSupplier" value="Yes" />
				Are you a supplier?<br><br>
				<input id="saveForm" class="button_text" type="submit" name="submit" value="Submit" />
		</li>
			</ul>
		</form>	
		<?php include 'footer.php'?>
	</body>
</html>
		
