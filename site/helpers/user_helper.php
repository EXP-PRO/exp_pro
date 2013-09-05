<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if(!function_exists('is_user_login')){
	function is_user_login(){
		if(isset($_SESSION['user']['id_user'])){
			return true;
		}
		return false;
	}
}

if(!function_exists('get_user_login')){
	function get_user_login(){
		if(isset($_SESSION['user'])){
			return $_SESSION['user'];
		}
		return null;
	}
}

?>