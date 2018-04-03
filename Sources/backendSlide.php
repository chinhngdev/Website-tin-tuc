<?php 
	include('controller/c_tintuc.php');

  	//Dùng hàm trong controller
  	$c_tintuc = new C_tintuc();
 	$noi_dung = $c_tintuc->index();
  	$slide = $noi_dung['slide'];
?>


	<div class="row">
		<div class="col-md-12">
			<table class="table">
				<thead>
					<tr>
						<th>
							Id Slide
						</th>
						<th>
							Tên
						</th>
						<th>
							Hình
						</th>
						<th>
							Link
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
						foreach ($slide as $sl) {
							?>
							<tr>
								<td><?=$sl->idSlide?></td>
								<td><?=$sl->ten?></td>
								<td><?=$sl->hinh?></td>
								<td><?=$sl->link?></td>
								<td><?=$sl->create_at?></td>
								<td><?=$sl->update_at?></td>
								</tr>
								<?php	
								}
							?>
				</tbody>
			</table>
		</div>
	</div>