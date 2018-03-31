<?php 
include('database.php');
class M_tintuc extends database{
	//Lấy dữ liệu từ database cho vào slide
	function getSlide(){
		$sql = "SELECT * FROM slide";
		$this->setQuery($sql);
		return $this->loadAllRows();
	}




	// Lấy dữ liệu từ database cho vào menu
	function getMenu(){
		 $sql = "SELECT * FROM theloai";
		 $this->setQuery($sql);
		 return $this->loadAllRows();
	}

	// Lấy dữ liệu từ database cho ra content
	function getTintuc(){
		$sql = "SELECT * FROM v_tintuc";
		$this->setQuery($sql);
		return $this->loadAllRows();
	}
}
	
 ?>