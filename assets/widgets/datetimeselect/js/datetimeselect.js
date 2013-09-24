var cur_date = new Date();
var id_input;
var id_year_select;
var id_month_select;
var id_day_select;

var config_default = {
	dateFormat:"dd/mm/yy",
	yearRange:"-10:+10",
	monthDisplay:"1,2,3,4,5,6,7,8,9,10,11,12",
	"defaultDate":
		cur_date.getFullYear().toString()+"/"+
		(cur_date.getMonth()+1).toString()+"/"+
		cur_date.getDate().toString(),
};

jQuery.fn.extend({
	datetimeselect: function(config){
		config = merge_json_object(config,config_default);
		console.log(config);
		id_input = $(this).attr('id');
		id_year_select = "year_"+id_input;
		id_month_select = "month_"+id_input;
		id_day_select = "day_"+id_input;
		
		var id_div = "div_"+id_input;
		var id_div_sel = "#"+id_div;
		var id_input_sel = "#"+id_input;
		
		$(id_input_sel).wrap('<div id="'+id_div+'"></div>');
		$(id_input_sel).attr('type','hidden');
		
		var date = new Date();
		var str_tmp = "";
		
		//YEAR
		var year_range = get_year_array(config.yearRange);
		for(i=0;i<year_range.length;i++){
			str_tmp += '<option value="'+year_range[i].toString()+'">'+year_range[i].toString()+'</option>';
		}
		var str_year = '<select id="'+id_year_select+'">'+str_tmp+'</select>';
		
		//MONTH
		str_tmp = "";
		var month_range = get_month_array(config.monthDisplay);
		for(i=0;i<month_range.length;i++){
			str_tmp += '<option value="'+(i+1).toString()+'">'+month_range[i].toString()+'</option>';
		}
		var str_month = '<select id="'+id_month_select+'">'+str_tmp+'</select>';
		
		switch(config.dateFormat){
			case "dd/mm/yy":{
				$(id_div_sel).append(str_month+str_year);		
			}break;
		}
		
		//EVENT CHANGE MONTH
		$("#"+id_month_select).change(function(){
			
		});
		
		//EVENT CHANGE YEAR
		$("#"+id_year_select).change(function(){
			
		});
	}
});

//TYPE: YYYY/MM/DD
function reload_select(sel_date,type){
	var year,month,day;
	var sd = sel_date.split("/");
	year = sd[0];
	month = sd[1];
	day = sd[2];
	switch(type){
		case "year":{
			
		}break;
		case "month":{
			
		}break;
		default:{
			
		}
	}
}

//year_range = "-100:+100"
function get_year_array(year_range){
	var year_from;
	var year_to;
	var yr = year_range.split(":");
	if(year_range.indexOf("-")!=-1){
		var date = new Date();
		var cur_year = date.getFullYear();
		year_from = cur_year + parseInt(yr[0]);
		year_to = cur_year + parseInt(yr[1]);
	}
	else{
		year_from = yr[0];
		year_to = yr[1];
	}
	var result = new Array();
	for(i=year_from;i<=year_to;i++){
		result.push(i);
	}
	return result;
}

function get_month_array(month_display){
	return month_display.split(",");
}

function get_day_array(month,year){
	var num_day = new Date(year,month,0).getDate();
	var result = new Array();
	for(i=1;i<=num_day;i++){
		result.push(i);
	}
	return result;
}

function merge_json_object(obj1,obj2,type="left"){
	var obj3 = {};
	switch(type){
		case "left":{
			for(var name in obj2){
				obj3[name] = obj2[name];
			}
			for(var name in obj1){
				obj3[name] = obj1[name];
			}
		}break;
	}
	return obj3;
};