<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>De1ete User</title>
</head>

<body>
<?php
$conn = mysql_connect( "localhost", "root", "" );
$db = mysql_select_db( "e_healthcare", $conn);
$query = "DELETE FROM pilgrims WHERE ID_P=".$_POST['ID_P']."";
$result = mysql_query($query, $conn);
mysql_close( $conn );
header("Location: http://localhost/E-healthcare/list.php");
exit();
?>
</body>

</html>