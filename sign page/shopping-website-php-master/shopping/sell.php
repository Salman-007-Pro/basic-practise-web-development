<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sell a Product | Croma Store</title>
<link rel="stylesheet" type="text/css" href="signup/view.css" media="all">
</head>
<body id="main_body" >
		<?php include 'header.php'?>
		<form id="Sell_form" class="signup"  method="post" action="sell.php">
					<div class="form_description">
			<?php
			//session_start(); 
			if(!isset($_SESSION['email']) || !isset($_SESSION['password']))
			{
			echo "<p>You are not currently logged in. Redirecting.....<p>";
			header("location:index.php");
			} 
			echo '<div id="errors">';
			if(isset($_POST['submit']))
			{
				$db = mysql_connect("localhost","root","") or die(mysql_error());
				$db_select = mysql_select_db("shopping", $db) or die(mysql_error());
				$supplier;
				$email=$_SESSION['email'];
				$supplier_id = mysql_query("select * from supplier where email = '$email' ");
				while($stocky = mysql_fetch_array($supplier_id))
				$supplier = $stocky;
				$sp_id=$supplier['sp_id'];
				//echo $sp_id;
				$serial_no = $_POST['serial_no'];
				$item_no = $_POST['item_no'];
				$bb=0;
				$item_check = mysql_query("select * from item where item_no = '$item_no'");
				if(mysql_num_rows($item_check) == 0) 
				{
				echo '<li>This item doesnt exists!</li>';
				$bb=1;
				}
				$serial1_check = mysql_query("select * from serial_bought,buys where serial_bought.serial_no = '$serial_no' and buys.item_no='$item_no'");
				$serial2_check = mysql_query("select * from serial_item where serial_no = '$serial_no' and item_no= '$item_no'");
				if(mysql_num_rows($serial1_check) >= 1 || mysql_num_rows($serial2_check) >= 1) 
				{
				echo '<li>This serial aready exists!</li>';
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
				if(onlyintcheck($serial_no,5))
				{
				echo '<li>Serial no less than 5 digits/not number!</li>';
				$bb=1;
				}
				
				if($bb==0)
				{
				$insert_new=mysql_query("INSERT INTO supplies (serial_no,sp_id,item_no) VALUES ($serial_no,$sp_id,$item_no)");
				$insert_quantity=mysql_query("INSERT INTO serial_item (serial_no,item_no) VALUES ($serial_no,$item_no)");
				echo "<li>Stock Updated</li>";
				}
			}
			echo '</div>';
			?>
			<h2>Please enter the details of the product!</h2>
		</div>	
			<ul >
			
					<li id="li_1" >
		<label class="description" for="serial_no">Serial Number </label>
		<div>
			<input id="element_1" name="serial_no" class="element text medium" type="text" maxlength="20" value=""/> 
		</div><p class="guidelines" id="guide_1"><small>Please enter the serial number of the item</small></p>
					<li id="li_2" >
		<label class="description" for="serial_no">Item Number </label>
		<div>
			<input id="element_2" name="item_no" class="element text medium" type="text" maxlength="20" value=""/> 
		</div><p class="guidelines" id="guide_2"><small>Please enter the item number of the product</small></p> 
		</li>
			
					<li class="buttons">
			    <input type="hidden" name="form_id" value="614305" />
			    
				<input id="saveForm" class="button_text" type="submit" name="submit" value="Submit" />
		</li>
		</form>
			<?php include 'footer.php'?>
			</body>
</html>