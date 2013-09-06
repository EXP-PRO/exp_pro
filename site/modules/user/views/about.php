<h2>Thông tin</h2>
<center>
	<table style="border-collapse: collapse" width="50%">
		<tr>
			<td><h3>Thông tin cơ bản</h3></td>
			<td><input type="button" id="edit-basic-info" class="button-edit" value="Chỉnh sửa" /></td>
		</tr>
		<tr>
			<td>Tên</td>
			<td><?php echo $user->lb_display_name?></td>
		</tr>
		<tr>
			<td>Ngày sinh</td>
			<td><?php echo date('d/m/Y',strtotime($user->dt_birthday))?></td>
		</tr>
		<tr>
			<td>Giới tính</td>
			<td><?php echo lang($user->lb_gender);?></td>
		</tr>
		<tr>
			<td>Hiện trạng mối quan hệ</td>
			<td><?php echo $user->lb_relationship_status?></td>
		</tr>
		<tr>
			<td>Ngôn ngữ</td>
			<td><?php echo $user->lb_list_language?></td>
		</tr>
		<tr>
			<td><h3>Thông tin liên hệ</h3></td>
			<td><input type="button" id="edit-basic-info" class="button-edit" value="Chỉnh sửa" /></td>
		</tr>
		<tr>
			<td>Điện thoại</td>
			<td>
			<?php 
			foreach($user_phone as $u):
				echo '0'.$u->lb_number.'</br>';
			endforeach;
			?>
			</td>
		</tr>
		<tr>
			<td>Email</td>
			<td>
			<?php 
			foreach($user_email as $u):
				echo $u->lb_email.'</br>';
			endforeach;
			?>
			</td>
		</tr>
		<tr>
			<td>Địa chỉ</td>
			<td>A</td>
		</tr>
		<tr>
			<td>Trang Web</td>
			<td><?php echo $user->lb_website?></td>
		</tr>
		<tr>
			<td><h3>Công việc và học vấn</h3></td>
			<td><input type="button" id="edit-basic-info" class="button-edit" value="Chỉnh sửa" /></td>
		</tr>
		<tr>
			<td colspan="2">A</td>
		</tr>
		<tr>
			<td><h3>Gia đình</h3></td>
			<td><input type="button" id="edit-basic-info" class="button-edit" value="Chỉnh sửa" /></td>
		</tr>
		<tr>
			<td colspan="2">A</td>
		</tr>
		<tr>
			<td><h3>Giới thiệu bản thân</h3></td>
			<td><input type="button" id="edit-basic-info" class="button-edit" value="Chỉnh sửa" /></td>
		</tr>
		<tr>
			<td colspan="2"><?php echo $user->lb_descripton?></td>
		</tr>
	</table>
</center>

<div id="form-basic-info">
	<?php
	echo form_open('user/edit_basic_info');
	?>
	<table class="form-dialog">
		<tr>
			<td>Họ:</td>
			<td><input type="text" value="" name="" /></td>
		</tr>
		<tr>
			<td>Tên lót:</td>
			<td><input type="text" value="" name="" /></td>
		</tr>
		<tr>
			<td>Tên:</td>
			<td><input type="text" value="" name="" /></td>
		</tr>
		<tr>
			<td>Hiển thị với tên:</td>
			<td>
				<select>
					<option value="">A B C</option>
					<option value="">C B A</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2"><hr /></td>
		</tr>
		<tr>
			<td>Ngày sinh:</td>
			<td><input type="text" id="dt_birthday" readonly="readonly" /></td>
		</tr>
		<tr>
			<td>Giới tính:</td>
			<td>
				<select>
					<option value="male">Nam</option>
					<option value="female">Nữ</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>Ngôn ngữ:</td>
			<td>
				<div>
				<?php
				$data = array(
					'key' => 'id_language',
					'value' => 'lb_language',
					'data' => $language,
					'options' => array(
						'id' => 'lb_language',
						'name' => 'lb_language',
					),
				);
				echo token_input($data);
				?>
				</div>
			</td>
		</tr>
	</table>
	<?php
	echo form_close();
	?>
</div>

<script type="text/javascript">
$(function(){
	var id_form_basic_info = "#form-basic-info";
	var id_edit_basic_info = "#edit-basic-info";

	$(id_form_basic_info).dialog({
		autoOpen: false,
		height: 500,
		width: 400,
		modal:false,
		resizable: false,
		buttons:{
			"Lưu" : function(){
				
			},
			"Hủy bỏ" : function(){
				$(this).dialog("close");
			},
		}
	});
	$(id_edit_basic_info).button().click(function(){
		$(id_form_basic_info).dialog("open");
	});
	
	$("#dt_birthday").datepicker({
		changeMonth: true,
		changeYear: true,
		yearRange: "-100:+0",
		dateFormat: "dd-mm-yy"
	});
});
</script>