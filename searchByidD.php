<!DOCTYPE html>
<html>
<head>
    <title>Search Result</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="css.css"/>
	<script>function redirect() {window.location.assign("searchD.html")}</script>
</head>

<body>

<?php

$conn = mysql_connect( "localhost", "root", "" );
$db = mysql_select_db( "e_healthcare", $conn );


    $searchID = $_POST['search']; 
    // gets value sent over search form
             
        $query = "SELECT * FROM medical_staff_information WHERE ID = '$searchID'";
		$result = mysql_query($query, $conn);
		if(mysql_num_rows($result) <= 0)
		{
			header("Location: http://localhost/E-healthcare/no.html");
			//echo "No Result, Please search again.";
		} else {
       // if one or more rows are returned do following
      //  if(($query) > 0){ 
		
            while ($row = mysql_fetch_array($result)){
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
	  }}
		//}
        //else{ 
	    // if there is no matching rows do following
          //      echo "No results"; //اشوف كيف اخليها بنافذة 
            //}   

//mysql_close( $conn );
?>
<div id="id01">
  <form  class="modal-content" >

    <div class="container">
      <h1>View Medical Staff Information</h1>
      <p>For Medical Staff ID: <?php echo $ID;?></p>
      <hr>
<table>
<tr><td>Medical Staff Name: </td><td><?php echo $F_name;?> <?php echo $L_name;?></tr>
<tr><td>Passport: </td><td><?php echo $ID_passport;?></td></tr>
<tr><td>Date of birth: </td><td><?php echo $Date_of_birth;?></td></tr>
<tr><td>Gender: </td><td><?php echo $Gender;?></td></tr>
<tr><td>Nationality: </td><td><?php echo $Nationality;?></td></tr>
<tr><td>Country: </td> <td><?php echo $Country;?></td></tr>
 <tr><td>City: </td><td><?php echo $City;?></td> 
<tr><td>Phone Number: </td> <td><?php echo $Phone_number;?></td></tr> 
 <tr><td>Major: </td><td><?php echo $Major;?></td> 
 <tr><td>Section: </td><td><?php echo $Section;?></td> 
 <tr><td>Workplace: </td><td><?php echo $Workplace;?></td> 
 <tr><td>E_mail: </td><td><?php echo $E_mail;?></td> 
</table>
<div class="clearfix"  >
        <button type="button" onclick="redirect()" class="cancelbtn">New Search</button>
				
				
<button  type="button" class="signupbtn "><a href=<?php echo 'deletaddformdoc.php?ID='.$ID;?>>Delete</a></button>
<button  type="button" class="cancelbtn"><a href=<?php echo 'edit.php?ID='.$ID;?>>Edit</a></button>




      </div></div>
	  </form></div>
</body>
</html>