<?php 

$conn = mysqli_connect("localhost","root","","pusher");

//check connect
if(mysqli_connect_errno())
{
    echo "fail connection" . mysqli_connect_error();
}
?>  