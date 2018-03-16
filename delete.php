<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>De1ete User</title>
</head>

<body>
<?php
$conn = mysql_connect( "localhost", "root", "" );
$db = mysql_select_db( $conn, "e_healthcare");
$query = "DELETE FROM pilgrims WHERE ID_P=".$_POST['ID_P']."";
$result = mysql_query($conn, $query);
mysql_close( $conn );
header("Location: http://localhost/E-healthcare/list.php");
exit();
?>
</body>

</html>