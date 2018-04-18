<?php

//Session Start
session_start();

?>

<?php

//Data Base Connection
$con = mysqli_connect('localhost','root','tiger','2015CSE131') or die ("Database Connection Failed");

//Data Entry in Session
$_SESSION["username"]=mysqli_real_escape_string($con,$_POST['username']);
$_SESSION["password"]=mysqli_real_escape_string($con,$_POST['password']);


$username = $_SESSION["username"];
//Checking the values are existing in the database or not
$query = "select * from login where id = '$username'";

$result = mysqli_query($con, $query) or die("INVALID USERNAME OR PASSWORD");
$row = mysqli_fetch_array($result);
//Checking for Access
if($row[1] == $_SESSION["password"] )
{
	if($row[3] == 0){
	?><script type='text/javascript'>
		function newDoc() {
    window.location.assign("cr.html")
}newDoc();</script>";  
		<?php //header("location: firstpage.html");
}
else {
?><script type='text/javascript'>alert('Already Voted');
		function newDoc() {
    window.location.assign("log.html")
}newDoc();</script>";  
		<?php //header("location: firstpage.html");
} }
else
{
	?><script type='text/javascript'>alert('Check Details');
		function newDoc() {
    window.location.assign("log.html")
}newDoc();</script>";  
		<?php //
	//echo "<script type='text/javascript'>alert('Data Entry Successfull ');</script>";  
    //header("location: index.html");
}
?>
