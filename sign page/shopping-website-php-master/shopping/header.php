    <img id="top" src="signup/top.png" alt="">
	<div id="form_container">
	   <div id="logo">
		<center><img class="heading" src="signup/logo.png" alt="logo"></center>
		</div>
		<div id="menu">
		<ul id="list-nav">
		<li><a href="index.php">Home</a></li>
		<li><a href="aboutus.php">About Us</a></li>
		<?php
			session_start(); 
			if(isset($_SESSION['isSupplier']))
			{
			echo '<li><a href="sell.php">Sell a Product</a></li>';
			}
			else
			{
				echo '<li><a href="products.php">Products</a></li>';
			}
			?>
		
		<li><a href="contactus.php">Contact</a></li>
		<li><a href="signuptype.php">Sign up!</a></li>
		<?php
			 
			if(isset($_SESSION['email']) || isset($_SESSION['password']))
			{
			echo '<li><a href="logout.php">Log Out</a></li>';
			}
			else
			{
				echo '<li><a href="index.php">Log In</a></li>';
			}
			?>
		</ul>
		</div>