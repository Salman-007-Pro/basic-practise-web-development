<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Log in | Croma Store</title>
<link rel="stylesheet" type="text/css" href="signup/view.css" media="all">
</head>
<body id="main_body" >
<?php
session_start();
if(isset($_SESSION['email']) || isset($_SESSION['password']))
{
session_destroy();
}
?>
<?php include 'header.php'?>
<?php echo '<p style="padding-left:75px;">You have been logged out!</p>'; ?>
<?php include 'footer.php'?>
</body>