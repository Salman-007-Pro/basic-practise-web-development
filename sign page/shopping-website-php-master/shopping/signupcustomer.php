<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sign Up form for Customer| Croma Store</title>
<link rel="stylesheet" type="text/css" href="signup/view.css" media="all">
</head>
<body id="main_body" >
		<?php include 'header.php'?>
		<?php
			//session_start();
			if(isset($_SESSION['email']) || isset($_SESSION['password']))
			{
			echo "You are currently logged in";
			sleep(2);
			header("location:user.php");
			} ?>
		<form id="signup_form" class="signup"  method="post" action="signupcustomer.php">
					<div class="form_description">
		<div id="errors">
			<?php
			if(isset($_POST['submit']))
			{
			$db = mysql_connect("localhost","root","") or die(mysql_error());
			$db_select = mysql_select_db("shopping", $db) or die(mysql_error());
			$bb=0;
			function VerifyMailAddress($email) 
			{
				return filter_var($email, FILTER_VALIDATE_EMAIL);
			}
			$email=$_POST['email'];
			$pass=$_POST['password'];
			$pass2=$_POST['password2'];
			if(strlen($_POST['first_name'])==0)
			{
			echo '<li>First name cannot be empty!</li>';
			$bb=1;
			}
			if(strlen($_POST['last_name'])==0)
			{
			echo '<li>Last name cannot be empty!</li>';
			$bb=1;
			}
			if(!VerifyMailAddress($email))
			{
			echo '<li>Email address format is invalid!</li>';
			$bb=1;
			}
			if(strlen($pass)<7)
			{
			echo '<li>Password length is less than 7 characters!</li>';
			$bb=1;
			}
			if($pass2!=$pass)
			{
			echo '<li>Passwords donot match!</li>';
			$bb=1;
			}
			
			function onlyintcheck($cc,$size)
			{
			$f=0;
			if(strlen($cc)<$size)
			return 1;
			for($i=0;$i<strlen($cc);$i++)
			{
				if($cc[$i]<'0' || $cc[$i]>'9')
				{
					return 1;
				}
			}
			return 0;
			}
			$contact=$_POST['contact'];
			if(strlen($_POST['main_address'])==0)
			{
			echo '<li>Main address cannot be empty</li>';
			$bb=1;
			}
			if(strlen($_POST['city'])==0)
			{
			echo '<li>City cannot be empty</li>';
			$bb=1;
			}
			if(strlen($_POST['state'])==0)
			{
			echo '<li>State address cannot be empty</li>';
			$bb=1;
			}
			
			$zipcode=$_POST['zipcode'];
			if(onlyintcheck($contact,10))
			{
			echo '<li>Invalid contact no. format/size!</li>';
			$bb=1;
			}
			if(onlyintcheck($zipcode,6))
			{
			echo '<li>Invalid zipcode format/size!</li>';
			$bb=1;
			}
			$email_check = mysql_query("select * from customer where email = '$email'");
			if(mysql_num_rows($email_check) >= 1) 
			{
			echo '<li>Email already exists!</li>';
			$bb=1;
			}
			$phone_check = mysql_query("select * from customer where contact = '$contact'");
			if(mysql_num_rows($phone_check) >= 1) 
			{
			echo '<li>Contact no. already exists!</li>';
			$bb=1;
			}
			$fname=$_POST['first_name'];
			$mname=$_POST['middle_name'];
			$lname=$_POST['last_name'];
			$maddress=$_POST['main_address'];
			$city=$_POST['city'];
			$state=$_POST['state'];
			if($bb==0)
			{$hi=mysql_query("insert into customer(first_name,middle_name,last_name,email,password,contact,main_address,city,state,zip_code)
			VALUES ('$fname','$mname','$lname','$email','$pass','$contact','$maddress','$city','$state','$zipcode')");
			$_SESSION['email'] =$email;
			$_SESSION['password'] =$pass;
			$_SESSION['new']=1;
			}
			if($bb==0)
			{
			header("location:newuser_cust.php");
			}
			}
			?>
			</div>
			<h2>Please enter your details to sign up!</h2>
		</div>	
			<ul >
			
					<li id="li_1" >
		<label class="description" for="first_name">First Name </label>
		<div>
			<input id="element_1" name="first_name" class="element text medium" type="text" maxlength="20" value=""/> 
		</div><p class="guidelines" id="guide_1"><small>Please enter your name here</small></p> 
		</li>		<li id="li_2" >
		<label class="description" for="middle_name">Middle Name </label>
		<div>
			<input id="element_2" name="middle_name" class="element text medium" type="text" maxlength="20" value=""/> 
		</div> 
		</li>		<li id="li_3" >
		<label class="description" for="last_name">Last name </label>
		<div>
			<input id="element_3" name="last_name" class="element text medium" type="text" maxlength="20" value=""/> 
		</div> 
		</li>		<li id="li_4" >
		<label class="description" for="email">Email </label>
		<div>
			<input id="element_4" name="email" class="element text medium" type="email" maxlength="30" value=""/> 
		</div><p class="guidelines" id="guide_4"><small>Please enter your email here</small></p> 
		</li>      <li id="li_12" >
		<label class="description" for="password">Password</label>
		<div>
			<input id="element_12" name="password" class="element text medium" type="password" maxlength="25" value=""/> 
		</div><p class="guidelines" id="guide_12"><small>Please enter your password</small></p> 
		</li>
		<li id="li_13" >
		<label class="description" for="password2">Retype Password</label>
		<div>
			<input id="element_13" name="password2" class="element text medium" type="password" maxlength="25" value=""/> 
		</div><p class="guidelines" id="guide_13"><small>Please retype your password</small></p> 
		</li>
		<li id="li_9" >
		<label class="description" for="contact">Contact Number </label>
		<div>
			<input id="element_9" name="contact" class="element text medium" type="text" maxlength="10" value=""/> 
		</div> 
		</li>		<li class="section_break">
			<h2>Address</h2>
			<p></p>
		</li>		<li id="li_5" >
		<label class="description" for="main_address">Main Address </label>
		<div>
			<textarea id="element_5" name="main_address" class="element textarea medium"></textarea> 
		</div><p class="guidelines" id="guide_5"><small>Please enter your Main Address here</small></p> 
		</li>		<li id="li_6" >
		<label class="description" for="city">City </label>
		<div>
			<input id="element_6" name="city" class="element text medium" type="text" maxlength="20" value=""/> 
		</div> 
		</li>		<li id="li_10" >
		<label class="description" for="state">State </label>
		<div>
			<input id="element_10" name="state" class="element text medium" type="text" maxlength="20" value=""/> 
		</div> 
		</li>		<li id="li_7" >
		<label class="description" for="zipcode">Zip Code </label>
		<div>
			<input id="element_7" name="zipcode" class="element text medium" type="text" maxlength="6" value=""/> 
		</div><p class="guidelines" id="guide_7"><small>Please enter your zipcode here!</small></p> 
		</li>
			
					<li class="buttons">
			    <input type="hidden" name="form_id" value="614305" />
			    
				<input id="saveForm" class="button_text" type="submit" name="submit" value="Submit" />
		</li>
			</ul>
		</form>	
		<?php include 'footer.php'?>
	</body>
</html>