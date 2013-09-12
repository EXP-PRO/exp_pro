<script type="text/javascript">

var id_form_basic_info = "#form-basic-info";
var id_edit_basic_info = "#edit-basic-info";
var id_dp_birthday = "#dt_birthday";

var id_lb_last_name = "#lb_last_name";
var id_lb_middle_name = "#lb_middle_name";
var id_lb_first_name = "#lb_first_name";
var id_lb_display_name = "#lb_display_name";

$(function(){

	$(id_form_basic_info).dialog({
		autoOpen: false,
		height: 500,
		width: 400,
		modal:false,
		resizable: false,
		buttons:{
			"Lưu" : function(){
				update_basic_info();
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

function update_basic_info(){
	var pack = {
		lb_last_name : $(id_lb_last_name).val(),
		lb_middle_name : $(id_lb_middle_name).val(),
		lb_first_name : $(id_lb_first_name).val(),
		lb_display_name : $(id_lb_display_name).val(),
	}
	var str_url = "update_basic_info";
	
	$.ajax({
		url: str_url,
		type: "POST",
		data: {
			data: pack,
		},
		success: function(data){
			alert("ok");
		}
	});
}
</script>