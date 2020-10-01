<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Phones @ Croma Store</title>
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
			<?php echo('<div id="phone-content">');?>
			<?php
			   $db = mysql_connect("localhost","root","") or die(mysql_error());
				$db_select = mysql_select_db("shopping", $db) or die(mysql_error());
			if (mysqli_connect_errno())
			{
			echo "Failed to connect to MySQL: " . mysqli_connect_error();
			}
			else
			{
			$phone = mysql_query("SELECT * FROM item,phone WHERE item.type='phone' and phone.item_no=item.item_no");
			$rows = array();
			while($row = mysql_fetch_array($phone))
			$rows[] = $row;
			foreach($rows as $row)
			{
			$item_no = ($row['item_no']);
			$stock=mysql_query("select count(serial_no) from serial_item where item_no='$item_no'");
			$serial_q=mysql_query("select serial_no from serial_item where item_no='$item_no'");
			$stocks=array();
			while($stocky = mysql_fetch_array($stock))
			$stocks[] = $stocky;
			
			$serials=array();
			while($serial = mysql_fetch_array($serial_q))
			$serials[] = $serial;
			
			$count=0;
			
			$warranty =($row['warranty']);
			$brand = ($row['brand']);
			$cost = $row['cost'];
			$name=$row['name'];
			$image = "images".$row['image'];
			$battery=$row['battery'];
			$OS=$row['operating_system'];
			$touch=$row['touch'];
			
			echo ('<img id="phonepic" src = "' . $image . '" alt="image">');
			echo ('<div class="product_description">');
			echo '<b>'.$name.'</b></br><br/>';
			echo 'Brand: '.$brand. '<br/>';
			echo 'Warranty: '.$warranty .' year(s)<br/>';
			echo 'Cost: '.$cost . '<br/>';
			echo 'Battery: '.$battery . '<br/>';
			echo 'Operating System: '.$OS . '<br/>';
			echo 'Touch Enabled: '.$touch . '<br/>';
			$c=0;
			foreach($stocks as $stockyy)
			{
			echo 'Stock: '.$stockyy['count(serial_no)'].'<br/><br/>';
			echo '<form id="buy_form" method="post" action="buy.php">';
			echo '<input id="element_1" name="quantity" class="element text medium" type="number" value="1" min="1" max="'.$stockyy['count(serial_no)'].'"/>';
			echo '<input type="hidden" name="item_no" value="'.$item_no.'"/>
				  <input type="hidden" name="image" value="'.$image.'"/>
				  <input type="hidden" name="stock" value="'.$stockyy['count(serial_no)'].'"/>';
			foreach ($serials as $serial1)
			{
			if($count>=$stockyy['count(serial_no)'])
			break;
			echo'<input type="hidden" name="serial[]" value="'.$serial1['serial_no'].'">';
			$count++;
			}
			echo '<input id="saveForm" class="button_text" type="submit" name="submit" value="Submit" />';
			echo('</form></div><br/><br/>');
			}
			}
			}
			?>
			<?php echo '</div>';?>
			<?php include 'footer.php'?>
			</body>
			</html>