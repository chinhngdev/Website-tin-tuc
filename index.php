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
    <link rel="stylesheet" type="text/css" href="public/css/style.css"> 
    <link rel="icon" href="public/img/logo.jpg"/>
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

  <div id="space"></div>

  <div id="content col-sm-12">
    <div class="col-sm-1"></div>
    <div class="center col-sm-10">
      <div id="slide">slide</div>
    
            
            <?php 
              foreach ($tintuc as $tt){
                ?>
                <div id="mag" class="col-sm-12">
                  <a id="tieude" class="col-sm-12"><h2>Thể loại</h2></a>
                  <div  id="anh" class="col-sm-5">
                    <?=$tt->hinh?>
                  </div>
                  <div class="col-sm-7">
                    <a href="#" class="tieude"><h4><?=$tt->tieude?></h4></a>
                    <p class="noidung">Nội dung</p>
                    <button type="button" class="btn">Chi tiết</button>
                  </div>
                  </div>
                  <div id="trong"></div>
                <?php
              }
             ?>
             </div>
    <div class="col-sm-1">quảng cáo</div>
  
  <div id="footer">
    <img src="public/img/logo.jpg" alt="logo"/>
    <p>© Copyright 2018 - BÁO MỚI 24H</p>
  </div>
  

  <script scr="public/js/bootstrap.js"></script>
  <script src="public/js/jquery.min.js"></script>
  <script src="public/js/bootstrap.min.js"></script>
</body>
</html>