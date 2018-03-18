<!DOCTYPE html >
<html>
<head>
<title>Update ..</title>
</head>
<body>

<?php

$conn = mysql_connect("localhost", "root", "" );
$db = mysql_select_db( "e_healthcare", $conn );
$query = "Update medical_staff_information SET F_name='".$_POST['F_name']."',
 L_name='".$_POST['L_name']."',
 ID ='".$_POST['ID']."',
 Date_of_birth='".$_POST['Date_of_birth']."',
 Gender='".$_POST['Gender']."',
 Nationality='".$_POST['Nationality']."',
 Phone_number='".$_POST['Phone_number']."',
 ID_passport='".$_POST['ID_passport']."',
 E_mail='".$_POST['E_mail']."',
 Major='".$_POST['Major']."',
 Section='".$_POST['Section']."',
 pass='".$_POST['pass']."' ,
 Workplace='".$_POST['Workplace']."',
 Country='".$_POST['Country']."',
 City='".$_POST['City']."' WHERE ID =".$_POST['ID']." ";




$result = mysql_query($query, $conn ); 
mysql_close( $conn );
//echo"<script>alert('It has been successfully update ')</script>";
//echo "<script> window.location.href = 'm.php' </script>";

header("Location: http://localhost/E-healthcare/listdoc.php");
	exit();

?>
</body>
</html>
