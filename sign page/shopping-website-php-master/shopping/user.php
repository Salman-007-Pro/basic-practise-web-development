<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome Customer | Croma Store</title>
<link rel="stylesheet" type="text/css" href="signup/view.css" media="all">
</head>
<body id="main_body" >
		<?php include 'header.php'?>
			<?php
			//session_start(); 
			if(!isset($_SESSION['email']) || !isset($_SESSION['password']) || isset($_SESSION['isSupplier']))
			{
			echo "<p>You are not currently logged in. Redirecting.....<p>";
			header("location:index.php");
			} ?>
			<?php echo('<div id="phone-content">');?>
			<?php
			$db = mysql_connect("localhost","root","") or die(mysql_error());
			$db_select = mysql_select_db("shopping", $db) or die(mysql_error());
			//get the email id
			$email=$_SESSION['email'];
			$user_id = mysql_query("select * from customer where email = '$email' ");
			$cid=mysql_result($user_id,0,'cid');
			//$cid=$user['cid'];
			
			$bought_q=mysql_query("select * from serial_bought,buys,item where buys.cid=$cid and buys.tid=serial_bought.tid and buys.item_no=item.item_no");
			$bought=array();
			while($boughts = mysql_fetch_array($bought_q))
			$bought[] = $boughts;
			
			if(count($bought)==0)
			echo '<h4>You have not bought anythng from us.<br>Click on products to start shopping!<br></h4>';
			else
			{
			echo 'Your previous transactions with us are<br><br>';
			echo '<table border="1">
				<tr>
				<th>Product Name</th>
				<th>Serial No</th>
				<th>Cost</th>
				<th>Transaction Date</th>
				</tr>';
			foreach($bought as $bb)
				{
				echo '<tr>
				<td>'.$bb['name'].'</td>
				<td>'.$bb['serial_no'].'</td>
				<td>'.$bb['cost'].'</td>
				<td>'.$bb['date'].'</td>
				</tr>';
				}
				echo '</table>';
			}
			?>
			<?php echo '</div>'; ?>
			<?php include 'footer.php'?>
			</body>
</html>