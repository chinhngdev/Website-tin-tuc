<?php 
	include('controller/c_tintuc.php');

  	//Dùng hàm trong controller
  	$c_tintuc = new C_tintuc();
 	$noi_dung = $c_tintuc->index();
  	$users = $noi_dung['users'];
?>
	<div class="row">
		<div class="col-md-12">
			<table class="table">
				<thead>
					<tr>
						<th>
							Id User
						</th>
						<th>
							Tên
						</th>
						<th>
							Email
						</th>
						<th>
							Mật Khẩu
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
						foreach ($users as $u) {
							?>
							<tr>
								<td><?=$u->idUser?></td>
								<td><?=$u->ten?></td>
								<td><?=$u->email?></td>
								<td><?=$u->matKhau?></td>
								<td><?=$u->create_at?></td>
								<td><?=$u->update_at?></td>
								</tr>
								<?php	
								}
							?>
				</tbody>
			</table>
		</div>
	</div>