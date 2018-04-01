<?php 
  include('controller/c_tintuc.php');

  //Dùng hàm trong controller
  $c_tintuc = new C_tintuc();
  $noi_dung = $c_tintuc->index();
  $menu = $noi_dung['menu'];
  $tintuc = $noi_dung['tintuc'];
  $slide = $noi_dung['slide'];


 ?>
<!DOCTYPE html>
<html>
<head>

	<title>Báo mới 24h</title>
	<link rel="stylesheet" type="text/css" href="public\css\bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="public\css\bootstrap-theme.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="public\css\style.css"> 
  <link rel="icon" href="public/img/logo.jpg"/>
    <!--  Khai báo slide -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
  <!--Header-->
  <div id="header">
    <div id="logo"><img src="public/img/logo.jpg" alt="logo"></div>
    <div id="menu">
      <ul>
      <?php 
        // In menu từ database ra web
        foreach ($menu as $mn){
        ?>
          <li class ="menu1">
            <!--Click vào menu nào thì chuyển sang trang loại tin chứa các tin của loại tin đó-->
            <a href="loaitin.php?id_loai=<?=$mn->idTheLoai?>"><?=$mn->ten?></a>  
          </li>
        <?php
        }
      ?>
      </ul>
    </div>
  </div>
  <!--Khoảng trắng-->
  <div id="space"></div> <br>

  <!-- Slideshow -->
  <div id="slide">
    <div class="container">
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
        <!--Vòng lặp để lấy dữ liệu từ trong database ra slide-->
        <?php 
        for($i=0; $i< count($slide); $i++){
          if($i==0){
            ?>
            <div class="item active">
              <!--Lấy hình từ bảng slide trong database cho ra slide-->
              <img src="public/img/<?=$slide[$i]->hinh?>" style="width:100%; height: 200px">
              <div class="carousel-caption">
                <p><?=$slide[$i]->ten?></p>
              </div>
            </div>
            <?php
          }
          else{
            ?>
              <div class="item">
                <!--Lấy hình từ bảng slide trong database cho ra slide-->
                <img src="public/img/<?=$slide[$i]->hinh?>"style="width:100%; height: 200px">
                <div class="carousel-caption">
                  <p><?=$slide[$i]->ten?></p>
                </div>
              </div>
            <?php
          }
        }
        ?>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </div>
  </div>
  <!--Content-->
  <div id="content col-sm-12">
    <div class="col-sm-2"></div>
    <div class="center col-sm-7">
      <?php 
        // Vòng lặp với mỗi 1 tin tức trong cơ sở dữ liệu sẽ in ra 1 tin trong web
        foreach ($tintuc as $tt){
        ?>
          <div id="mag" class="col-sm-12">
            <!--In dữ liệu từ cột tên trong bảng tin tức trong database cho ra web-->
            <a id="tieude"><h2><?=$tt->ten?></h2></a>
            <div  id="anh" class="col-sm-5">
              <!--In dữ liệu từ cột hình trong bảng tin tức trong database cho ra web-->
              <img src="public/img/<?=$tt->hinh?>">
            </div>
            <div class="col-sm-7">
              <!--In dữ liệu từ cột tiêu đề trong bảng tin tức cho ra web và click vào tiêu đề chuyển đến trang chi tiết của tin đó-->
              <a href="chitiettintuc.php?id_tin=<?=$tt->idTinTuc?>" class="tieude"><h4><?=$tt->tieude?></h4></a>
              <!--In dữ liệu từ cột tóm tắt trong bảng tin tức trong database cho ra web-->
              <p class="tomtat"><?=$tt->tomtat?></p>
            </div>
          </div>
        <?php
        }
      ?>

    </div>
    <!--Quảng cáo-->         
    <div id="quangcao" class="col-sm-3"><img src="public/img/quangcao1.png"></div>
  <!--Footer-->
  <div id="footer">
    <img src="public/img/logo.jpg" alt="logo"/>
    <p>© Copyright 2018 - BÁO MỚI 24H</p>
  </div>
  
  <script scr="public/js/myscript.js"></script>
  <script scr="public/js/bootstrap.js"></script>
  <script src="public/js/bootstrap.min.js"></script>
</body>
</html>