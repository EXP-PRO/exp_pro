<div id="form_login">
<?php 
echo $this->session->flashdata('msg_login');
echo validation_errors()
?>
<?php echo form_open('login/log_in');?>
	<table>
		<tr>
			<td>Tên đăng nhập</td>
			<td><input type="text" name="lb_user_name" id="lb_user_name" value="<?php echo set_value('lb_user_name')?>" /></td>
		</tr>
		<tr>
			<td>Mật khẩu</td>
			<td><input type="password" name="lb_password" id="lb_password" /></td>
		</tr>
		<tr>
			<td style="text-align:right;" colspan="2" ><input type="submit" value="Đăng nhập" /></td>
		</tr>
	</table>
<?php echo form_close();?>
</div>