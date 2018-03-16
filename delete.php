<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>De1ete User</title>
</head>

<body>
<?php
$conn = mysqli_connect( "localhost", "root", "" );
$db = mysqli_select_db( $conn, "e_healthcare");
$query = "DELETE FROM pilgrims WHERE ID_P=".$_POST['ID_P']."";
$result = mysqli_query($conn, $query);
mysqli_close( $conn );
header("Location: http://localhost/E-healthcare/list.php");
exit();
?>
</body>

</html>