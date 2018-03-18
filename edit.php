<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" type="text/css" href="form_style.css"> 

<title>Update ..</title>
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
//$id= $_GET['ID'];
$query = "select * from medical_staff_information where ID = ".$_GET['ID']; 

//$query = "SELECT * FROM medical_staff_information WHERE ID = ".$_GET['ID']; 
$result = mysql_query($query, $conn);
while ($row = mysql_fetch_assoc($result)){
//$id = $row['id'];	

    $ID = $row['ID'];
	$F_name = $row['F_name'];
	$L_name = $row['L_name'];
	$ID_passport = $row['ID_passport'];
	$Gender = $row['Gender'];
	$Date_of_birth = $row['Date_of_birth'];
	$pass = $row['pass'];
	$Nationality = $row['Nationality'];
	$Country = $row['Country'];
	$City = $row['City'];
	$Major = $row['Major'];
	$Section = $row['Section'];
	$Workplace = $row['Workplace'];
	$Phone_number = $row['Phone_number'];
	$E_mail = $row['E_mail'];
		
}
mysql_close( $conn );
?>


<div text align="center">

<form class="modal-content" method = "post" action = "edit1.php">


    <div class="container">
<h1>Update Contact.. </h1>

      <hr>
 


<div style="text_align:center;">
<table >

<tr><td> First Name: </td><td><input type="text" name="F_name" size="70" value="<?php echo $F_name; ?> "></td></tr>

<tr><td> Last Name: </td><td><input type="text" name="L_name" size="70" value="<?php echo $L_name; ?> "></td></tr>
<tr><td> Birthday: </td><td><input type="text" name="Date_of_birth" size="70" value="<?php echo $Date_of_birth; ?> "></td></tr>

<tr><td> Phone Number: </td><td><input type="text" name="Phone_number" size="70" value="<?php echo $Phone_number; ?> "></td></tr>

<tr><td> ID: </td><td><input type="text" name="ID" size="70" value="<?php echo $ID; ?> "></td></tr>

<tr><td> Gender: </td><td><input type="text" name="Gender" size="70" value="<?php echo $Gender; ?> "></td></tr>
<tr><td> Nationality: </td><td><input type="text" name="Nationality" size="70" value="<?php echo $Nationality; ?> "></td></tr>

<tr><td> ID_passport: </td><td><input type="text" name="ID_passport" size="70" value="<?php echo $ID_passport; ?> "></td></tr>
<tr><td> Country: </td><td><input type="text" name="Country" size="70" value="<?php echo $Country; ?> "></td></tr>

<tr><td>  City: </td><td><input type="text" name="City" size="70" value="<?php echo $City; ?> "></td></tr>
<tr><td> Major: </td><td><input type="text" name="Major" size="70" value="<?php echo $Major; ?> "></td></tr>

<tr><td>  Section: </td><td><input type="text" name="Section" size="70" value="<?php echo $Section; ?> "></td></tr>

<tr><td>  Workplace: </td><td><input type="text" name="Workplace" size="70" value="<?php echo $Workplace; ?> "></td></tr>

<tr><td> E_mail : </td><td><input type="text" name="E_mail" size="70" value="<?php echo $E_mail; ?> "></td></tr>

<input type="hidden" name="id" size="5" value="<?php echo $ID; ?>">
</table>


<div class="clearfix"  >
        <button type="button" onclick="redirect()" class="cancelbtn">Cancel</button>
        <button type="submit"  class="signupbtn">Update Contact</button>
      </div></div></div>

	 
	  
</div>
</form>
</div>
</body>
</html>