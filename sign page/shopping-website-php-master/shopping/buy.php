<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Buy | Croma Store</title>
<link rel="stylesheet" type="text/css" href="signup/view.css" media="all">
</head>
<body id="main_body" >
		<?php include 'header.php'?>
		<?php echo('<div id="phone-content">');?>
			<?php
			//session_start(); 
			if(!isset($_SESSION['email']) || !isset($_SESSION['password']))
			{
			echo "<p>You are not currently logged in. Redirecting.....<p>";
			header("location:index.php");
			}
			$db = mysql_connect("localhost","root","") or die(mysql_error());
			$db_select = mysql_select_db("shopping", $db) or die(mysql_error());
			$item_no=$_POST['item_no'];
			$item = mysql_query("SELECT * FROM item WHERE item_no='$item_no'");
			$rows = array();
			while($row = mysql_fetch_array($item))
			$rows[] = $row;
			$serial=array();
			foreach($_POST['serial'] as $ss)
			$serial[]=$ss;
			$image=$_POST['image'];
			$stock=$_POST['stock'];
			
			foreach($rows as $row)
			{
			$name=$row['name'];
			$cost=$row['cost'];
			echo ('<div class="product_description">');
			echo ('<img id="phonepic2" src = "' . $image . '" alt="image">');
			echo ('<div class="product_description">');
			echo '<b>'.$name.'</b></br><br/>';
			echo 'Cost: '.$cost . '<br><br>';
			echo 'The serial number of the device allotted to is/are</br>';
			echo '<ul id="serialnolist">';
			$cc=0;
			for($i=0;$i<$stock;$i++)
				{
				if($cc>=$_POST['quantity'])
				break;
				echo '<li>'.$serial[$i].'</br>';
				$cc++;
				}
				echo '</ul>';
			echo '<form id="buy_form" method="post" action="confirmbuy.php" style="padding-left:210px;">';
			     foreach ($serial as $serial1)
					{echo'<input type="hidden" name="serial[]" value="'.$serial1.'">';}
			echo '<input type="hidden" name="item_no" value="'.$item_no.'"/>
				  <input type="hidden" name="quantity" value="'.$_POST['quantity'].'"/>
				  <input type="checkbox" name="address" value="true" />
				  Use below address for shipping?<br>
				  <textarea name="temp_address" class="element textarea medium" style="margin-top: 10px; margin-bottom: 10px; width: 210px; height:100px;"></textarea><br>
				  <input id="saveForm" class="button_text" type="submit" name="confirm" value="Confirm" />';
			echo('</div></div><br/><br/>');
			}
			?>
			<?php echo '</div>';?>
			<?php include 'footer.php'?>
			</body>
</html>