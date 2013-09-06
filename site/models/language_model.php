<?php
class Language_model extends CI_Model {
	
	function Language_model(){
		parent::__construct();
	}
	
	function get_language(){
		$query = $this->db->get('t_language');
		return $query->result();
	}
}
?>