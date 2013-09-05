<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');
class Nsession {
	
	function Nsession(){
		session_start();
	}
	
	public function set_userdata($key,$value=null){
		if(isset($value)){
			$_SESSION[$key] = $value;	
		}
		else if(is_array($key)){
			foreach($key as $k=>$v){
				$_SESSION[$k] = $v;
			}
		}
		
	}
	
	public function all_userdata(){
		return isset($_SESSION) ? $_SESSION[$key]:null;
	}
	
	public function userdata($key){
		return isset($_SESSION[$key]) ? $_SESSION[$key]:null;
	}
	
	public function unset_userdata($key){
		unset($_SESSION[$key]);
	}
		
}
?>