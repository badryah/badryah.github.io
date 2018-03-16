<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" type="text/css" href="form_style.css"> 

<title>Update ..</title>
<script>
function redirect(){
 window.location.assign("list.php")
 }
</script>
</head>
<body>
<div text align="center">




<?php
$conn = mysql_connect("localhost", "root", "" );
$db = mysql_select_db( "e_healthcare", $conn );
//$ID_P = $_GET['ID_P'];
//$searchID = $_GET['ID_P']; 
$query = "Select * from pilgrims WHERE ID_P = ID_P " ;
//$query = "Select * from pilgrims where ID_P ='".$ID_P."'";
//$query = "Select * from pilgrims where ID_P = ".$_GET['ID_P']; 
$result = mysql_query($query, $conn);
while ($row = mysql_fetch_assoc($result)){
//$id = $row['id'];	
$ID_P = $row['ID_P'];
$F_name = $row['F_name'];
$L_name = $row['L_name'];
$Date_of_birthday = $row['Date_of_birthday'];
$Nationality = $row['Nationality'];
$Gender = $row['Gender'];
$Phone_number = $row['Phone_number'];
$Address = $row['Address'];
$Authorization = $row['Authorization'];
$Type = $row['Type'];
$Record_number = $row['Record_number'];
$Camp_Number = $row['Camp_Number'];
$Location_Camp = $row['Location_Camp'];



		
}
mysql_close( $conn );
?>


<div text align="center">

<form class="modal-content" method = "post" action = "editform.php">


    <div class="container">
<h1>Update Contact.. </h1>

      <hr>
 


<div style="text_align:center;">
<table >

<tr><td> First Name: </td><td><input type="text" name="F_name" size="70" value="<?php echo $F_name; ?> "></td></tr>

<tr><td> Last Name: </td><td><input type="text" name="L_name" size="70" value="<?php echo $L_name; ?> "></td></tr>
<tr><td> Birthday: </td><td><input type="text" name="Date_of_birthday" size="70" value="<?php echo $Date_of_birthday; ?> "></td></tr>

<tr><td> Phone Number: </td><td><input type="text" name="Phone_number" size="70" value="<?php echo $Phone_number; ?> "></td></tr>

<tr><td> ID: </td><td><input type="text" name="ID_P" size="70" value="<?php echo $ID_P; ?> "></td></tr>

<tr><td> Gender: </td><td><input type="text" name="Gender" size="70" value="<?php echo $Gender; ?> "></td></tr>
<tr><td> Nationality: </td><td><input type="text" name="Nationality" size="70" value="<?php echo $Nationality; ?> "></td></tr>

<tr><td> Authorization: </td><td><input type="text" name="Authorization" size="70" value="<?php echo $Authorization; ?> "></td></tr>
<tr><td> Type: </td><td><input type="text" name="Type" size="70" value="<?php echo $Type; ?> "></td></tr>
<tr><td> Address: </td><td><input type="text" name="Address" size="70" value="<?php echo $Address; ?> "></td></tr>

<tr><td> Record Number: </td><td><input type="text" name="Record_number" size="70" value="<?php echo $Record_number; ?> "></td></tr>
<tr><td> Camp Number: </td><td><input type="text" name="Camp_Number" size="70" value="<?php echo $Camp_Number; ?> "></td></tr>

<tr><td> Location Camp: </td><td><input type="text" name="Location_Camp" size="70" value="<?php echo $Location_Camp; ?> "></td></tr>

<input type="hidden" name="id" size="5" value="<?php echo $id; ?>">
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