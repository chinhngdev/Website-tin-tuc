<?php 
	include('controller/c_tintuc.php');

	//In nội dung từ trong database dùng hàm C_tintuc
	$c_tintuc = new C_tintuc();
	$noi_dung = $c_tintuc->index();
	$menu = $noi_dung['menu'];
	$theloai = $noi_dung['theloai'];
 ?>

<!DOCTYPE html>
<html lang="en">
<head>

	<meta charset="UTF-8">


	<title>Báo mới 24h</title>
	<link rel="stylesheet" href="public/css/style.css"/>
	<link rel="stylesheet" type="text/css" href="public/css/bootstrap.min.css">
	<link rel="stylesheet" href="public/css/bootstrap.css">
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
		<div class="col-sm-1">trống</div>
		<div class="center col-sm-10">
			<div id="slide">slide</div>
		
						
						<?php 
							foreach ($theloai as $tl){
								?>
								<div id="mag" class="col-sm-12">
									<div class="col-sm-5">
										<img src="public/img/noidung1.jpg" class="anhnoidung">
									</div>
									<div class="col-sm-7">
										<a href="#" class="tieude"><h4>ksfjlsjfb</h4></a>
										<a href="#" class="theloai"><h6>theloai</h6></a>
										<p class="noidung">abc</p>
									</div>
									</div>
								<?php
							}
						 ?>
						 </div>
		<div class="col-sm-1">quảng cáo</div>
	
	<div id="footer">
		<img src="public/img/logo.jpg" alt="logo"/>
		<p>© Copyright 2018 - BÁO MỚI 24H</p>
	</div>
	
	<script scr="public/js/popper.min.js"></script>
	<script scr="public/js/bootstrap.js"></script>
	<script src="public/js/jquery.min.js"></script>
    <script src="public/js/bootstrap.min.js"></script>
</body>
</html>