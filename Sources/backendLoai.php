<?php 
  include('controller/c_tintuc.php');

  //Dùng hàm trong controller
  $c_tintuc = new C_tintuc();
  $noi_dung = $c_tintuc->index();
  $loai = $noi_dung['loai'];
 ?>


	<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<table class="table">
				<thead>
					<tr>
						<th>
							Id Thể Loại
						</th>
						<th>
							Tên
						</th>
						<th>
							Tên Không Dấu
						</th>
						<th>
							Create at
						</th>
						<th>
							Update at
						</th>
					</tr>
				</thead>
				<tbody>
					<?php 
						foreach ($loai as $l) {
							?>
							<tr>
								<td><?=$l->idTheLoai?></td>
								<td><?=$l->ten?></td>
								<td><?=$l->tenKhongDau?></td>
								<td><?=$l->create_at?></td>
								<td><?=$l->update_at?></td>
								</tr>
								<?php	
								}
							?>
				</tbody>
			</table>
		</div>
	</div>
</div>