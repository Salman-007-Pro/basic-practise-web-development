<?php
require("config.php");
require('header.php');
$itemsql = "SELECT * FROM orderitems WHERE id = ". $_GET['id'] . ";";
$itemres = mysql_query($itemsql) or die(mysql_error());
$numrows = mysql_num_rows($itemres);
if($numrows == 0) {
header("Location: showcart.php");
}
$itemrow = mysql_fetch_assoc($itemres);
$prodsql = "SELECT price FROM products WHERE id = " . $itemrow['product_id'] . ";";
$prodres = mysql_query($prodsql)or die(mysql_error());;
$prodrow = mysql_fetch_assoc($prodres); 
$sql = "DELETE FROM orderitems WHERE id = " . $_GET['id'];
$del=mysql_query($sql)or die(mysql_error());;
if($del){
	header("Location: showcart.php");
}
require('footer.php');
?>