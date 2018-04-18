<?php

//Session Start
session_start();

?>
<?php


$con = mysqli_connect("localhost","root","tiger","2015CSE131") or die("Database Connection Failed");
$username = $_SESSION["username"];
$sql1="select * from login";
$rs1=mysqli_query($con, $sql1);
$row = mysqli_fetch_array($rs1);
$use=$row[2];
$sql="select * from election where section ='$use'";

$rs=mysqli_query($con, $sql);

echo '<form id="myform">';
while($a=mysqli_fetch_array($rs))
{
	echo '<input type="radio" id="name" name="candidate" value="'.$a[0].'">'.$a[0].'</input><br>';
}
echo '</form>';
?>
