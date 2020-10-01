<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New Account Created | Croma Store</title>
<link rel="stylesheet" type="text/css" href="signup/view.css" media="all">
</head>
<body id="main_body" >
		<?php include 'header.php'?>
			<?php
			//session_start(); 
			if(!isset($_SESSION['email']) || !isset($_SESSION['password']))
			{
			echo "<p>You are not currently logged in. Redirecting.....<p>";
			header("location:index.php");
			}
			?>
			<?php
			if(isset($_SESSION['new']) && $_SESSION['new']==1 && isset($_SESSION['isSupplier']) && $_SESSION['isSupplier'] ='Yes')
			{
			echo '<div id="phone-content">
			<p>Congratulations!<br>
			Your account has been made!.<br>
			Click <a href="index.php">here</a> to start adding new products!
			</p>
			</div>';
			$_SESSION['new']=0;
			}
			else
			header("location:index.php");
			?>
			<?php include 'footer.php'?>
			</body>
</html>