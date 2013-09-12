<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if(!function_exists('load_model')){
	function load_model($model){
		$model_path = APPPATH.'/models/'.$model.'.php';
		if(file_exists($model_path)){
			require_once $model_path;	
		}
		else{
			show_404();
		}
	}
}

?>