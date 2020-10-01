<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Account type | Croma Store</title>
<link rel="stylesheet" type="text/css" href="signup/view.css" media="all">
</head>
<body id="main_body" >
		<?php include 'header.php'?>
			<?php
			//session_start(); 
			if(isset($_SESSION['email']) || isset($_SESSION['password']))
			{
				echo "<p>You are currently logged in. Redirecting.....<p>";
				if(isset($_SESSION['isSupplier']))
					header("location:supplier.php");
				else
					header("location:user.php");
			}
			if(isset($_POST['submit'])&& $_POST['login_type']=='customer')
			header("location:signupcustomer.php");
			else if(isset($_POST['submit'])&& $_POST['login_type']=='supplier')
			header("location:signupsupplier.php");
			?>
			<form id="signup_form" class="signup"  method="post" action="signuptype.php">
				<div class="form_description">
				<div id="signup_type">
				<h3>Please select your user type</h3>
				<input type="radio" name="login_type" value="supplier">Supplier<br>
				<input type="radio" name="login_type" value="customer">Customer<br><br>
			<input id="saveForm" class="button_text" type="submit" name="submit" value="Continue" />
				</div>
			   </div>
			<?php include 'footer.php'?>
			</body>
</html>