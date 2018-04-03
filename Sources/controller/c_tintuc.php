<?php 
include('model/m_tintuc.php');
class C_tintuc{

	public function index()
	{
		$m_tintuc = new M_tintuc();
		$menu = $m_tintuc->getMenu();
		$tintuc = $m_tintuc->getTintuc();
		$slide = $m_tintuc->getSlide();
		$tin = $m_tintuc->getTin();
		$loai = $m_tintuc->getLoai();
		$users = $m_tintuc->getUser();
		return array('menu'=>$menu,'tintuc'=>$tintuc,'slide'=>$slide,'tin'=>$tin,'loai'=>$loai,'users'=>$users);
	}
	// Lấy chi tiết tin tức cho vào biến 
	function chitiettin(){
		$id_tin = $_GET['id_tin'];
		$m_tintuc = new M_tintuc();
		$chitiettin = $m_tintuc->getChiTietTin($id_tin); 
		return array('chitiettin'=>$chitiettin);
	}


	function loaitin(){
		$id_loai = $_GET['id_loai'];
		$m_tintuc = new M_tintuc();
		$loaitin = $m_tintuc->getLoaiTin($id_loai);
		return array('loaitin'=>$loaitin);
	}


}

 ?>