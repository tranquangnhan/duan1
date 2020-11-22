<?php 
###### db ##########
$db_username = 'QNhan';
$db_password = '12345678';
$db_name = 'QNhan_datvemaybay';
$db_host = 'db.lmsq.vn';
################
  
//check we have username post var
if(isset($_POST["user"]))
{
    //check if its an ajax request, exit if not
    if(!isset($_SERVER['HTTP_X_REQUESTED_WITH']) AND strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) != 'xmlhttprequest') {
        die();
    }  
  
        //try connect to db
    $connecDB = mysqli_connect($db_host, $db_username, $db_password,$db_name)or die('could not connect to database');
  
    //trim and lowercase username
    $user =  strtolower(trim($_POST["user"]));
  
    //sanitize username
    $user = filter_var($user, FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_LOW|FILTER_FLAG_STRIP_HIGH);
  
    //check username in db
    $results = mysqli_query($connecDB,"SELECT id FROM khachhang WHERE user='$user'");
  
    //return total count
    $user_exist = mysqli_num_rows($results); //total records
  
    //if value is more than 0, username is not available
    if($user_exist) {
        echo '<img src="imgs/not-available.png" />';
    }else{
        echo '<img src="imgs/available.png" />';
    }
  
    //close db connection
    mysqli_close($connecDB);
}
?>