<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>De1ete User</title>
</head>

<body>
<?php
$conn = mysql_connect( "localhost", "root", "" );
$db = mysql_select_db( "e_healthcare", $conn );
$query = "DELETE FROM medical_staff_information WHERE ID =".$_POST['ID']."";
$result = mysql_query($query, $conn);
mysql_close( $conn );
//echo"<script>alert('It has been successfully delete ')</script>";
//echo "<script> window.location.href = 'm.php' </script>";
header("Location: http://localhost/E-healthcare/listdoc.php");
exit();
?>
</body>

</html>