<?php 
  include('controller/c_tintuc.php');

  //Dùng hàm trong controller
  $c_tintuc = new C_tintuc();
  $noi_dung = $c_tintuc->index();
  $tin = $noi_dung['tin'];
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


	<div id="menu" class="menu1">
  	<ul>
    <li><a href="#" onclick="showManager('1')">Thể Loại</a></li>
    <li><a href="#" onclick="showManager('3')">Tin Tức</a></li>
    <li><a href="#" onclick="showManager('2')">Slide</a>
    <li><a href="#" onclick="showManager('4')">User</a></li>
  	</ul>
	</div>

	<div class="container-fluid"></div>
<script>
function showManager(id) {
        var objHTTP = new XMLHttpRequest();
        objHTTP.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200)
            {
                $(".container-fluid").html(this.responseText);
            }
        }
        objHTTP.open('GET', 'contrManager.php?code=' +id, true);
        objHTTP.send();
}
</script>
</body>