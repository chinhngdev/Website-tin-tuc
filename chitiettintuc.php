<?php 
  include('controller/c_tintuc.php');

  //In nội dung từ trong database dùng hàm C_tintuc
  $c_tintuc = new C_tintuc();
  $noi_dung = $c_tintuc->index();
  $menu = $noi_dung['menu'];
  $tintucs = $c_tintuc->chitiettin();
  $tin = $tintucs['chitiettin'];

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

  	

    <!-- Nội dung -->
	<div id="content col-sm-12">
		<div class="col-sm-2"></div>
		<div class="center col-sm-7">
			<?php 
					?>
					<div class="container-fluid">
					<div class="row">
					<div class="col-md-12">
						<h3>
							<?=$tin->ten?>
						</h3>
						<img id="anhchitiet" src="public/img/<?=$tin->hinh?>"/>
						<p>
							<?=$tin->noidung?>
						</p>
					</div>
					</div>
					</div>
					<?php
				
			 ?>

			</div>

		<div id="quangcao" class="col-sm-3">
			<img src="public/img/quangcao2.jpg">
		</div>




	 <!--footer -->
	<div id="footer">
    <img src="public/img/logo.jpg" alt="logo"/>
    <p>© Copyright 2018 - BÁO MỚI 24H</p>
	</div>
  

  <script scr="public/js/bootstrap.js"></script>
  <script src="public/js/jquery.min.js"></script>
  <script src="public/js/bootstrap.min.js"></script>



</body>