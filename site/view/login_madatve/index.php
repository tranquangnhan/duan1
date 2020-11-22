<?php 
    session_start();

    if(!isset($_SESSION["khachhang"]) ) {
        header("location: login.php");
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- link -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./showthongtinve.css">
    <link rel="stylesheet" href="./khung.css">
</head>
<body>
        <div class="padding-tb-40px background-light-grey" style="transform: none;">
                <div class="container" style="transform: none;">
                    <div class="row" style="transform: none;">
                        <!-- content -->
                        <div class="margin-top radius col-lg-8 col-md-8 sticky-content" style="position: relative; overflow: visible; box-sizing: border-box; min-height: 1px;">
                                <div class="theiaStickySidebar" style="padding-top: 0px; padding-bottom: 1px; position: static; transform: none;">
                                    <div class="blog-entry background-white border-1 border-grey-1 margin-bottom-35px">
                                        <div class="row no-gutters">
                                            <div class="img-in col-lg-3">
                                                <a href="#">
                                                    <div class="hover07 column">
                                                        <div>
                                                          <a><img src="hieudeptrai.jpg" /></a>
                                                        </div>
                                                      </div>
                                                </a>
                                            </div>
                                            <!-- col7 -->
                                            <div class="col-lg-9">
                                                <div class="animated-gradient" style="color: white; height: 30px; font-weight: 700 ;">
                                                    <span  class="uppercase cus mar">thông tin Chuyến bay</span>
                                                </div>
                                                <div class="box">
                                                    <strong>Tên khách hàng:</strong> Nguyễn Quốc Hiếu <br>
                                                    <strong>Ngày khởi hành:</strong> 18/6/2021 <br>
                                                    <strong>Thời gian đi: </strong> 23:11 PM <br>
                                                    <strong>Thời gian đến: </strong> 7:00 AM<br>
                                                
                                                    <strong>Hãng:</strong> bamboo airline
                                                </div>
                                                    <div class="padding">


                                                        <div class="d-block text-up-small text-grey-2 margin-bottom-10px">
                                                    <strong>Yêu cầu khách hàng:</strong>   Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia voluptatem, ducimus quisquam enim optio laudantium vel harum molestias doloremque perferendis, placeat maiores magni? Eveniet, modi odit accusantium soluta perferendis nostrum?
                                                        </div>
                                                    </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="theiaStickySidebar" style="padding-top: 0px; padding-bottom: 1px; position: static; transform: none;">
                                    <div class="blog-entry background-white border-1 border-grey-1 margin-bottom-35px" style="width:197%">
                                        <div class="row no-gutters">
 
                                            <!-- col7 -->
                                            <div class="col-lg-12 " style="min-width:380px">
                                                <div class="animated-gradient" style="color: white; height: 30px; font-weight: 700 ;">
                                                    <span  class="uppercase  mar">hành lý</span>
                                                </div>
                                                <div class=" cus2" >
                                                    Nguyễn Quốc Hiếu 15kg
                                                </div>
                                                    <div class="padding">


                                                        
                                                    </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        </div>


                        <div class="col-lg-4 col-md-4 sticky-sidebar" style="position: relative; overflow: visible; box-sizing: border-box; min-height: 1px;">
                                <div class="widget">
                                       <img src="hcm.jpg" alt="">
                                       <div class="btn">Hà Nội đến Hồ Chí Minh</div>
                                       <p style="margin-top: 10px;">Tổng tiền: <strong class="tr">892,488 VNĐ</strong></p>
                                </div>
                        
                        </div>
                    </div>
                </div>
        </div>
</body>
</html>