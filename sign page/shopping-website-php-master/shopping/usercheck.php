<?php
   $db = mysql_connect("localhost","root","") or die(mysql_error());
   $db_select = mysql_select_db("shopping", $db) or die(mysql_error());
   $email= $_POST['email'];
   $password = $_POST['password'];
   $isSupplier = isset($_POST['isSupplier']);
   echo $isSupplier;
   if(isset($_POST['isSupplier']) && $_POST['isSupplier'] == 'Yes')
   {
		$login = mysql_query("select * from supplier where email = '$email' and password = '$password'");
   }
   else
   {
		$login = mysql_query("select * from customer where email = '$email' and   password = '$password'");
   }
   if(mysql_num_rows($login) == 1) {
			session_start();
			$_SESSION['email'] =$email;
			$_SESSION['password'] =$password;
			if(isset($_POST['isSupplier']) && $_POST['isSupplier'] == 'Yes')
			$_SESSION['isSupplier'] =$isSupplier;
			if(isset($_POST['isSupplier']) && $_POST['isSupplier'] == 'Yes')
				header("location:supplier.php");
			else
				header("location:user.php");
			echo "Login Successfull";
			}
   else {
      echo "Username and Password does not Match";
   }
?>