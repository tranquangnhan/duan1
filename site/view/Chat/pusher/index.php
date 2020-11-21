<?php
    require_once 'conn.php';
    $sql = "SELECT * FROM users ORDER BY user_id DESC";
    $result = $conn->query($sql);
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <title>User list</title>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <table class="table table-bodered" style="margin-top:100px"> 
                    <thead>
                        <th>First Name</th>
                        <th>last Name</th>
                        <th>Created Date</th>
                    </thead>

                    <tbody id="result">
                    <?php 
                        if($result->num_rows > 0)    {
                            while ($row = $result->fetch_assoc())   {
                                $date = strtotime($row['created_at']);
                                
                                ?>
                                    <tr>
                                        <td><?php echo $row['first_name']; ?></td>
                                        <td><?php echo $row['last_name']; ?></td>
                                       
                                    </tr>   
                                <?php
                            }
                        }else{
                            ?>
                            <tr>
                                <td colspan="3">No users found</td>
                            </tr>
                            <?php 
                        }
                    ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>