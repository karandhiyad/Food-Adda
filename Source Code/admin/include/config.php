<?php
$con = mysqli_connect("localhost:3307" , "root" ,"" , "foodadda_db");

// $con=mysqli_connect("sql113.byetcluster.com" , "epiz_31096082" ,"Al4Yo1WyjU3" , "epiz_31096082_foodadda_db");

if(mysqli_connect_errno()){
	die("Connection failded : ".mysqli_connect_error());
}

?>
