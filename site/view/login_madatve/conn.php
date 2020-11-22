<?php
    //khai báo biến host
$hostName = 'db.lmsq.vn';
// khai báo biến username
$userName = 'QNhan';
//khai báo biến password
$passWord = '12345678';
// khai báo biến databaseName
$databaseName = 'QNhan_datvemaybay';
// khởi tạo kết nối
try {
    $connect = new PDO('mysql:host=' . $hostName . ';dbname=' . $databaseName, $userName, $passWord);
    $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    //thành công
    echo 'thành công';
} catch (PDOException $e) {
    //thất bại
    die($e->getMessage());
}
?>
