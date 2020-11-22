<?php 
require_once 'conn.php';
include __DIR__ . '/vendor/autoload.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST')   {
    $options = array(
        'cluster' => 'ap1',
        'useTLS' => true
      );
      $pusher = new pusher\pusher(
        '51b7e75a2e62e47ca3c7',
        '22b2f72d561e26b804ee',
        '1110165',
        $options
      );
    


    $firstName = $_POST['firstName'];
    $lastName = $_POST['lastName'];
    
    $sql = "INSERT INTO users (firstname,lastname, noidung) VALUES ('$firstName', '$lastName' ,'$noidung')";
     
    if ($conn->query($sql) === TRUE)    {
      
        $data['message'] =  $firstName . ' ' .$lastName;
        $pusher->trigger('my-channel', 'my-event', $data);

        // echo "Kết nối thành công";
    }else{
        echo "Error: " .$sql. "<br>". $conn->error;
    }
    
    $conn->close(); 
}


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <title>User entry</title>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3"  >

                    <form action="" method="POST" style="margin-top:100px;">
                        <div class="form-group">
                            <label for="firstName">Tên</label>
                            <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Nhập tên">
                            <small id="firstName" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>

                        <div class="form-group">
                            <label for="lastName">Tên</label>
                            <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Nhập họ">
                            <small id="lastName" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>

                        <div class="form-group">
                            <label for="noidung">Tên</label>
                            <input type="text" class="form-control" id="noidung" name="noidung" placeholder="Nhập noi dung chat">
                            <small id="lastName" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://js.pusher.com/7.0/pusher.min.js"></script>
    <script>

    // Enable pusher logging - don't include this in production
    Pusher.logToConsole = true;

    var pusher = new Pusher('51b7e75a2e62e47ca3c7', {
      cluster: 'ap1'
    });

    var channel = pusher.subscribe('my-channel');
    channel.bind('my-event', function(data) {
    //   alert(JSON.stringify(data));
    $.ajax({url: "users.php", success: function(result){
    $("# div1").html(result);
  }});
    });
  </script>
</body>
</html>