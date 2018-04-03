<?php
	$id = $_GET['code'];
	if($id==1){
		require('backendLoai.php');
	}elseif($id==2){
		require('backendTin.php');
	}elseif ($id==3) {
		require('backendTin.php');
	}elseif ($id==4) {
		require('backendUser.php');
	}

?>