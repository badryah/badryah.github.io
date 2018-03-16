<!DOCTYPE html>
<html>
<head>
    <title>Search Result</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="css.css"/>
	<script>function redirect() {window.location.assign("search.html")}</script>
</head>

<body>

<?php

$conn = mysql_connect( "localhost", "root", "" );
$db = mysql_select_db( "e_healthcare", $conn );


    $searchID = $_POST['search']; 
    // gets value sent over search form
             
        $query = "SELECT * FROM pilgrims WHERE ID_P = '$searchID'";
		$result = mysql_query($query, $conn);
		
       // if one or more rows are returned do following
		if(mysql_num_rows($result) <= 0)
		{
			header("Location: http://localhost/E-healthcare/noresult.html");
			//echo "No Result, Please search again.";
		} else {
		
            while ($row = mysql_fetch_array($result)){
				$id= $row['ID_P'];
				$fname=$row['F_name'];
		     	$lname=$row['L_name'];
		    	$dob=$row['Date_of_birthday'];
				$phone=$row['Phone_number'];
				$gender=$row['Gender'];
				$nationality=$row['Nationality'];
				$authorization=$row['Authorization'];
				$type=$row['Type'];
				$address=$row['Address'];
				$record=$row['Record_number'];
				$camp=$row['Camp_Number'];
				$location=$row['Location_Camp'];
				}
				
		}


//mysql_close( $conn );
?>
<div id="id01">
  <form  class="modal-content" ><!--احط action للصفحة التالية للمعلومات الطبيه-->

    <div class="container">
      <h1>View Pilgrim Information</h1>
      <p>For Pilgrim ID: <?php echo $id;?></p>
      <hr>
<table>
<tr><td>Pilgrim Name: </td><td><?php echo $fname;?> <?php echo $lname;?></tr>
<tr><td>Authorization: </td><td><?php echo $authorization;?></td></tr>
<tr><td>Date_of_birth: </td><td><?php echo $dob;?></td></tr>
<tr><td>Gender: </td><td><?php echo $gender;?></td></tr>
<tr><td>Nationality: </td><td><?php echo $nationality;?></td></tr>
<tr><td>Type: </td> <td><?php echo $type;?></td></tr>
 <tr><td>Record Number: </td><td><?php echo $record;?></td> 
<tr><td>Phone Number: </td> <td><?php echo $phone;?></td></tr> 
 <tr><td>Address: </td><td><?php echo $address;?></td> 
 <tr><td>Camp Number: </td><td><?php echo $camp;?></td> 
 <tr><td>Camp Location: </td><td><?php echo $location;?></td> 

</table>
<div class="clearfix"  >
        <button type="button" onclick="redirect()" class="cancelbtn">New Search</button>
		<a href='deletaddform.php'>Delete</a>
				      <a href='editaddform.php'>Edit</a> 
		
      </div></div>
	  </form></div>

</body>
</html>