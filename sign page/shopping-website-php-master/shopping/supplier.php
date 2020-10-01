<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome Supplier | Croma Store</title>
<link rel="stylesheet" type="text/css" href="signup/view.css" media="all">
</head>
<body id="main_body" >
		<?php include 'header.php'?>
			<?php
			
			if(!isset($_SESSION['email']) || !isset($_SESSION['password']) || !isset($_SESSION['isSupplier']))
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
			$user_id = mysql_query("select * from supplier where email = '$email' ");
			$sp_id=mysql_result($user_id,0,'sp_id');
			//$sp_id=$user['sp_id'];
			$sold_q=mysql_query("select * from supplies where supplies.sp_id='$sp_id'");
			$sold=array();
			while($solds = mysql_fetch_array($sold_q))
			$sold[] = $solds;
			
			if(count($sold)==0)
			echo '<h4>There has been no transaction between us yet.<br>Click on  Sell a Product to initiate transaction!<br></h4>';
			else
			{
			echo 'Your previous transactions with us are<br><br>';
			echo '<table border="1">
				<tr>
				<th>Serial No</th>
				<th>Item No</th>
				<th>Transaction Date</th>
				</tr>';
			foreach($sold as $bb)
				{
				echo '<tr>
				<td>'.$bb['serial_no'].'</td>
				<td>'.$bb['item_no'].'</td>
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