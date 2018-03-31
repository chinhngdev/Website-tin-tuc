<?php 
  include('controller/c_tintuc.php');

  //In nội dung từ trong database dùng hàm C_tintuc
  $c_tintuc = new C_tintuc();
  $noi_dung = $c_tintuc->index();
  $menu = $noi_dung['menu'];
  $tintuc = $noi_dung['tintuc'];
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
  <div id="header">
    <div id="logo"><img src="public/img/logo.jpg" alt="logo"></div>
    <div id="menu">
      
      <ul>
      <?php 
        // In menu từ database ra web
        foreach ($menu as $mn){
          ?>
          <li class ="menu1">
            <a><?=$mn->ten?></a>  
          </li>
          <?php
        }
       ?>
      </ul>
    </div>  



  </div>

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

      <div class="item active">
        <img src="public/img/3.jpg" alt="Los Angeles" style="width:100%; height: 200px">
        <div class="carousel-caption">
          <a href="#"><h3>Los Angeles</h3></a>
          <p>LA is always so much fun!</p>
        </div>
      </div>

      <div class="item">
         <img src="public/img/4.jpg" alt="Los Angeles" style="width:100%; height: 200px">
        <div class="carousel-caption">
          <h3>Chicago</h3>
          <p>Thank you, Chicago!</p>
        </div>
      </div>
    
      <div class="item">
         <img src="public/img/5.jpg" alt="Los Angeles" style="width:100%; height: 200px">
        <div class="carousel-caption">
          <h3>New York</h3>
          <p>We love the Big Apple!</p>
        </div>
      </div>
  
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

  <div id="content col-sm-12">
    <div class="col-sm-2"></div>
    <div class="center col-sm-7">
            <?php 
              foreach ($tintuc as $tt){
                ?>
                <div id="mag" class="col-sm-12">
                  <a id="tieude"><h2><?=$tt->ten?></h2></a>
                  <div  id="anh" class="col-sm-5">
                   <img src="public/img/<?=$tt->hinh?>">
                  </div>
                  <div class="col-sm-7">
                    <a href="#" class="tieude"><h4><?=$tt->tieude?></h4></a>
                    <p class="noidung"><?=$tt->tomtat?></p>
                    <button type="button" class="btn">Chi tiết</button>
                  </div>
                </div>
                <?php
              }
             ?>

             </div>
             
    <div id="quangcao" class="col-sm-3">
        <img src="public/img/quangcao1.png" alt="quangcao">
    </div>
  
  <div id="footer">
    <img src="public/img/logo.jpg" alt="logo"/>
    <p>© Copyright 2018 - BÁO MỚI 24H</p>
  </div>
  

  <script scr="public/js/bootstrap.js"></script>
  <script src="public/js/jquery.min.js"></script>
  <script src="public/js/bootstrap.min.js"></script>
</body>
</html>