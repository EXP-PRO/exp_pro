<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if(!function_exists('token_input')){
	function token_input($config){
		$key = $config['key'];
		$value = $config['value'];
		$data = $config['data'];
		if(!isset($config['options']['id'])) $options['id'] = 'token_input';
		$options['id'] = $config['options']['id'];
		$options['name'] = $config['options']['name'];
		
		$json = array();
		foreach($data as $item){
			$json[] = array('id'=>$item->$key,'name'=>$item->$value);
		}
		$json = json_encode($json);
		
		$str = 
			'<input type="text" id="'.$options['id'].'" name="'.$options['name'].'" />
			<script type="text/javascript">
				$(function(){
					$('.$options['id'].').tokenInput('.$json.',{
						theme:"facebook",
						minChars: 2,
						preventDuplicates: true,
						hintText: "Nhập ngôn ngữ sử dụng",
                		noResultsText: "Không thấy kết quả",
                		searchingText: "Đang tìm..."
					});
					
					$(".token-input-dropdown-facebook").css("z-index","200");
				})
			</script>';
		return $str;
	}
}
?>