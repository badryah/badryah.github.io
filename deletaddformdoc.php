<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" type="text/css" href="form_style.css"> 

<title>Delete ..</title>

<script>
function redirect(){
 window.location.assign("m.php")
 }
</script>

</head>
<body>
<div text align="center">


<?php
$conn = mysql_connect("localhost", "root", "" );
$db = mysql_select_db( "e_healthcare", $conn );

$query = "Select * from medical_staff_information where ID = ".$_GET['ID'];
//$ID_P = $_GET['ID_P'];
//$query = "Select * from pilgrims where ID_P =ID_P ";
$result = mysql_query($query, $conn );

while ( $row = mysql_fetch_assoc( $result ))
{


                $ID = $row['ID'];
				$F_name = $row['F_name'];
		     	$L_name = $row['L_name'];
		    	$Date_of_birth = $row['Date_of_birth'];
				$Phone_number = $row['Phone_number'];
				$Gender = $row['Gender'];
				$Nationality = $row['Nationality'];
				$ID_passport = $row['ID_passport'];
				$Country = $row['Country'];
				$City = $row['City'];
				$Major = $row['Major'];
				$Section = $row['Section'];
				$Workplace = $row['Workplace'];
				$E_mail = $row['E_mail'];		
}
mysql_close( $conn );

?>
<!-- 
<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Add new Pilgrim</button>

<div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form  class="modal-content" method="post" action="add.php" >

    <div class="container">-->

<div text align="center">


<form  class="modal-content" method = "post" action = "deletedoc.php" >

    <div class="container">
	<h1>Are you want to delete the following contact .. </h1>

      <hr>
 


<div style="text_align:center;">
<table >

<tr><td>ID Number</td><td><input type="text"  name="ID" size="70"  value="<?php echo $ID; ?> "></td></tr></div>

<tr><td>First Name</td><td><input type="text"  name="F_name" size="70"  value="<?php echo $F_name; ?> "></td></tr></div>

<tr><td>Last Name</td><td><input type="text"  name="L_name" size="70"  value="<?php echo $L_name; ?> "></td></tr></div>

<tr><td>ID Passport</td><td><input type="text"  name="ID_passport" size="70"  value="<?php echo $ID_passport; ?> "></td></tr></div>

<tr><td> Gender: </td><td><input type="text" name="Gender"   value="<?php echo $Gender; ?> "></td></tr></div>


<tr><td>Date Of Birth</td><td><input type="text"  name="Date_of_birth" size="70" value="<?php echo $Date_of_birth; ?> " ></td></tr></div>

<tr><td>Password</td><td><input type="text"  name="pass" size="59"  value="<?php echo $pass; ?> "></td></tr></div>
<tr><td> Nationality: </td><td><input type="text"  name="Nationality" size="59"  value="<?php echo $Nationality; ?> "></td></tr></div><td>

<tr><td>Country</td><td><input type="text"  name="Country" size="70"  value="<?php echo $Country; ?> "></td></tr></div>

<tr><td>City</td><td><input type="text"  name="City" size="70"  value="<?php echo $City; ?> "></td></tr></div>

<tr><td>Major</td><td><input type="text"  name="Major" size="70"  value="<?php echo $Major; ?> "></td></tr></div>

<tr><td>Section</td><td><input type="text"  name="Section" size="70"  value="<?php echo $Section; ?> "></td></tr></div>

<tr><td>Workplace</td><td><input type="text"  name="Workplace" size="70"  value="<?php echo $Workplace; ?> "></td></tr></div>

<tr><td>Phone Number</td><td><input type="text"  name="Phone_number" size="70"  value="<?php echo $Phone_number; ?> "></td></tr></div>

<tr><td>Email</td><td><input type="text"  name="E_mail" size="70"  value="<?php echo $E_mail; ?> "></td></tr></div>


</table>


<div class="clearfix"  >
        <button type="button" onclick="redirect()" class="cancelbtn">Cancel</button>
        <button type="submit"  class="signupbtn">Confirm Delete</button>
      </div></div></div>

	 
	  
</div>
</form>

</body>
</html>
  