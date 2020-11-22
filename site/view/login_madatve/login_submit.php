<?php 
session_start();

    include "conn.php";

    if(isset($_POST['submit']) && $_POST['user'] != '' && $_POST['sodienthoai'] != ''){
        $user = $_POST["user"];
        $sodienthoai = $_POST["sodienthoai"];
      
    $sql = "SELECT * FROM khachhang WHERE user='$user' AND sodienthoai='$sodienthoai' ";
    $khachhang = mysqli_query($connect,$sql);
    if(mysqli_num_rows($khachhang) > 0)  {
        $_SESSION["khachhang"] = $user;
    }else{
        echo "nhap sai mk va username";
    }
}else{
    header("location: login.php");
    }
?>