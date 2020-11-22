<?php 
session_start();
if( !isset($_SESSION["user"]) ) {
    header("location:login.php");
}
?>

<h1>dang nhap di cha noi </h1>



