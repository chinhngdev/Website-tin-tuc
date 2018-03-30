<?php 
include('database.php');
class M_tintuc extends database{
	// Lấy dữ liệu từ database cho vào menu
	function getMenu(){
		 $sql = "SELECT * FROM theloai";
		 $this->setQuery($sql);
		 return $this->loadAllRows();
	}

	// Lấy dữ liệu từ database cho ra content
	function getTintuc(){
		$sql = "SELECT * from theloai";
		$this->setQuery($sql);
		return $this->loadAllRows();
	}
}
	
 ?>