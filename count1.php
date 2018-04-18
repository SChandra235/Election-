<?php

//Session Start
session_start();

?>
<?php
$username = $_SESSION["username"];
$con = mysqli_connect("localhost","root","tiger","2015CSE131") or die("Database Connection Failed");
$candidate=$_GET['q'];
echo $candidate;

$sql="update election set Votes=Votes+1 where nominees='".$candidate."'";

mysqli_query($con, $sql) or die ("Error Updating The Vote");

$sql="update login set vote=1 where id='".$username."'";

mysqli_query($con, $sql) or die ("Error Updating The Vote");

/*echo "<script type='text/javascript'>alert('Your Vote is Successfull');
		function newDoc() {
    location.replace('log.html')
}newDoc();</script>";
*/
?>
<script type='text/javascript'>ajaxobject=null;</script>
<?php
// remove all session variables
session_unset();

// destroy the session
session_destroy(); 

header('Location: log.html');
?>
