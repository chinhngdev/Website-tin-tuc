<?php 
include('model/m_tintuc.php');
class C_tintuc{

	public function index()
	{
		$m_tintuc = new M_tintuc();
		$menu = $m_tintuc->getMenu();
		$theloai = $m_tintuc->getTintuc();
		return array('menu'=>$menu,'theloai'=>$theloai);
	}
}

 ?>