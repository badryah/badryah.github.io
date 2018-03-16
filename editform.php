<!DOCTYPE html >
<html>
<head>
<title>Update ..</title>
</head>
<body>

<?php

$conn = mysql_connect("localhost", "root", "" );
$db = mysql_select_db( $conn, "e_healthcare");
$query = "Update pilgrims SET F_name='".$_POST['F_name']."', L_name='".$_POST['L_name']."'

, ID_P='".$_POST['ID_P']."', Date_of_birthday='".$_POST['Date_of_birthday']."', Gender='".$_POST['Gender']."', Nationality='".$_POST['Nationality']."'
, Phone_number='".$_POST['Phone_number']."', Address='".$_POST['Address']."', Authorization='".$_POST['Authorization']."',
 Type='".$_POST['Type']."', Record_number='".$_POST['Record_number']."'
, Camp_Number='".$_POST['Camp_Number']."'
, Location_Camp='".$_POST['Location_Camp']."' WHERE ID_P=".$_POST['ID_P']." ";

$result = mysql_query($conn, $query);
mysql_close( $conn );

//header("Location: http://localhost/E-healthcare/list.php");
	exit();

?>
</body>
</html>

