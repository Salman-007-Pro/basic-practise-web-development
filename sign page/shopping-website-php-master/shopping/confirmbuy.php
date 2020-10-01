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
			if(!isset($_SESSION['email']) || !isset($_SESSION['password']))
			{
			echo "<p>You are not currently logged in. Redirecting.....<p>";
			header("location:index.php");
			} ?>
			<?php echo '<div id="completed">' ?>
			<?php
			$db = mysql_connect("localhost","root","") or die(mysql_error());
			$db_select = mysql_select_db("shopping", $db) or die(mysql_error());
			$address;
			$email=$_SESSION['email'];
			$user_id = mysql_query("select * from customer where email = '$email' ");
			while($stocky = mysql_fetch_array($user_id))
			$user = $stocky;
			$cid=$user['cid'];
			$item_no= $_POST['item_no'];
			$serial=array();
			foreach($_POST['serial'] as $ss)
			$serial[]=$ss;
			$count=$_POST['quantity'];
			if(isset($_POST['address']) && $_POST['address']=='true')
			{$address=$_POST['temp_address'];}
			else $address="default";
			$insert_new=mysql_query("INSERT INTO buys (cid,item_no,discount,quantity,shipping_address) VALUES ($cid,$item_no,0,$count,'$address')");
			$tid=mysql_insert_id();
			$cc=0;
			foreach($serial as $ss)
			{
			if($cc>=$count)
			break;
			$remove=mysql_query("DELETE FROM serial_item WHERE serial_no = $ss");
			$inser=mysql_query("Insert into serial_bought(tid,serial_no) VALUES ($tid,$ss)");
			$cc++;
			}
			?>
			<?php echo '<h3>Congratulations!</h3><br><h4>We have confirmed your order. You will recieve a call regarding this soon!.<br>Thank you for shopping with us!<br></h4>
						<p>To see all your transactions click <a href="user.php">here</a></p>';
						?>
			<?php echo '</div>'?>
			<?php include 'footer.php'?>
			</body>
</html>