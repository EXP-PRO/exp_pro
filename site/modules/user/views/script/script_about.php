<script type="text/javascript">
$(function(){
	var id_form_basic_info = "#form-basic-info";
	var id_edit_basic_info = "#edit-basic-info";
	var id_dp_birthday = "#dt_birthday";

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
	
	$(id_dp_birthday).datepicker({
		changeMonth: true,
		changeYear: true,
		yearRange: "-100:+0",
		dateFormat: "dd/mm/yy",
		
	});
	$(id_dp_birthday).datepicker("setDate", <?php echo '"'.date('d/m/Y',strtotime($user->dt_birthday)).'"'?> );
});
</script>