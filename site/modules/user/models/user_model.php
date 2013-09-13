<?php
load_model('Base_user_model');
class User_model extends Base_user_model {
	
	function User_model() {
		parent::Base_user_model();
	}
	
	public function get_user_email($id_user){
		return $this->get_related_user($id_user,'t_email');
	}
	
	public function get_user_phone($id_user){
		return $this->get_related_user($id_user,'t_phone');
	}
}
?>