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
		$sql = "SELECT * FROM v_tintuc";
		$this->setQuery($sql);
		return $this->loadAllRows();
	}

	function getSlide(){
		$sql ="SELECT * FROM slide";
		$this->setQuery($sql);
		return $this->loadAllRows();
	}

	function getChiTietTin($id){
		$sql = "SELECT * FROM v_tintuc WHERE idTinTuc = $id";
		$this->setQuery($sql);
		return $this->loadRow(array($id));
	}

	function getLoaiTin($id){
		$sql = "SELECT * FROM v_tintuc WHERE idTheLoai = $id";
		$this->setQuery($sql);
		return $this->loadAllRows(array($id));

	}
}

	
 ?>