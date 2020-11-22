<?php
$servername = "db.lmsq.vn";
$username = "QNhan";
$password = "12345678";
$database = "QNhan_datvemaybay";
// Create connection
$conn = mysqli_connect($servername, $username, $password,$database);

// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
echo "Connected ";
?>
