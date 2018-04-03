<?php 
	include('controller/c_tintuc.php');

  	//Dùng hàm trong controller
  	$c_tintuc = new C_tintuc();
 	$noi_dung = $c_tintuc->index();
  	$tin = $noi_dung['tin'];
?>
	
<div class="row">
		<div class="col-md-12">
			<table class="table">
				<thead>
					<tr>
						<th>
							Id Tin Tức
						</th>
						<th>
							Id Thể Loại
						</th>
						<th>
							Tiêu Đề
						</th>
						<th>
							Tiêu Đề Không Dấu
						</th>
						<th>
							Tóm Tắt
						</th>
						<th>
							Nội Dung
						</th>
						<th>
							Hình
						</th>
					</tr>
				</thead>
				<tbody>
					<?php 
						foreach ($tin as $t) {
							?>
							<tr>
								<td><?=$t->idTinTuc?></td>
								<td><?=$t->idTheLoai?></td>
								<td><?=$t->tieude?></td>
								<td><?=$t->tieudekhongdau?></td>
								<td><?=$t->tomtat?></td>
								<td><?=$t->noidung?></td>
								<td><?=$t->hinh?></td>
								</tr>
								<?php	
								}
							?>
				</tbody>
			</table>
		</div>
	</div>