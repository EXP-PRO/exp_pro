<?php
class Base_language_model extends CI_Model {
	
	function Base_language_model(){
		parent::__construct();
	}
	
	public function get_all_language($arr_select=null){
		if(isset($arr_select)){
			$str_select = implode(',',$arr_select);
			$this->db->select($str_select);
		}
		$query = $this->db->get('t_language');
		return $query->result();
	}
}
?>