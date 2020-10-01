
<?php 

include('connection.php'); 





?>
 
 <style>

	 .col1{
		 
		 
		 
		 text-align: center;
		 font-size: 22px;
		 font-family: Gill Sans, Gill Sans MT, Myriad Pro, DejaVu Sans Condensed, Helvetica, Arial," sans-serif"; 
		 padding: 16px; 
	 }

	 .form {
		 
		font-size: 20px; 
		 font-family: Gill Sans, Gill Sans MT, Myriad Pro, DejaVu Sans Condensed, Helvetica, Arial," sans-serif"; 
		 
		 
	 }
	 
	 .delete2 {
		 
		 
		 font-size: 20px; 
		 font-family: Gill Sans, Gill Sans MT, Myriad Pro, DejaVu Sans Condensed, Helvetica, Arial," sans-serif"; 
		 
		 
		 
	 }


</style>
 

 <table width="730" height="482" border="1">
  <tbody>
    <tr>
      <td width="246" height="94"><img src="logo.png" width="284" height="223" alt=""/></td>
      <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
      <td><img src="pakistan-cricket-team-logo-7693343AA7-seeklogo.com.png" width="212" height="215" alt=""/></td>
      <td width="231"><img src="1200px-Cricket_India_Crest.svg.png" width="212" height="215" alt=""/></td>
      <td width="235"><img src="1200px-Sri_Lanka_Cricket_logo.svg.png" width="235" height="219" alt=""/></td>
    </tr>
    <tr>
      <td height="126" class="col1" >
      	<?php 
		  
      	$query="select Players from pakteam "; 
      	
      	$execute=sqlsrv_query($con,$query); 
		  
		  while($fetch6=sqlsrv_fetch_array($execute)) {
			  
			  echo $fetch6['Players']."<br>"; 
			  
			  
			  
		  }
		  
		  
      	?> 
      </td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>
 <p>&nbsp;</p>
 <table width="726" height="116" border="1">
   <tbody>
     <tr>
       <td>
       	
       	<form action="delete.php" method="post" class="form">
       	  <p>&nbsp;</p>
       	  <p>
       	    <label>Enter Team  </label> 
       	    <input type="text" name='team'>   
   	      </p>
       	  <p><br> 
       	    
       	    <label>Enter Player   </label> 
       	    
       	    <input type="text" name='player'>
   	      </p>
       	  <p>
       	    <input type="submit" name="submit" id="submit" value="Submit">
       	  </p>
       	  <p>&nbsp;</p> 
       	
       	
       	
       	
       	
       	
       	
       	
       	
       	
       	
       	</form>
       	
       	
 
       	
       	
       </td>
     </tr>
   </tbody>
 </table>
 <p>&nbsp;</p>
 <table width="726" height="88" border="1">
   <tbody>
     <tr>
       
       	
       	<?php 
       	
		   if(isset($_POST['team'])) { 
		   
       	$team1=$_POST['team']; 
$player1=$_POST['player']; 


	$query="delete from $team1 where Players='$player1'   "; 
	
	$execute=sqlsrv_query($con,$query);   ?> 
	
	<td class="delete2"> 
	<?php 
		if($execute) {
			
			echo "Deleted Successfully Refresh and Put further values to delete "; 
			
			
		}
	else {
		
		echo "failed";
		
	}
		   } 
       	?> 
       	
       </td>
     </tr>
   </tbody>
 </table>
 <p>&nbsp;</p>
 