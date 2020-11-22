<?php 
    session_start();

    if(!isset($_SESSION["khachhang"]) ) {
        header("location: login.php");
    }
?>

<h1>dang nhap di </h1>