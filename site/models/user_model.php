<?php
class User_model extends CI_Model {
	
	function User_model(){
		parent::__construct();
	}
	
	public function get_user_info_small($id_user){
		$this->db->select('lb_display_name');
		$this->db->where('id_user',$id_user);
		$query = $this->db->get('t_user');
		return $query->row();
	}
	
	public function get_user_info($id_user){
		$this->db->where('id_user',$id_user);
		$query = $this->db->get('t_user');
		return $query->row();
	}
	
	public function get_user_email($id_user){
		$this->db->where('user_id',$id_user);
		$query = $this->db->get('t_email');
		return $query->result();
	}
	
	public function get_user_phone($id_user){
		$this->db->where('user_id',$id_user);
		$query = $this->db->get('t_phone');
		return $query->result();
	}
	
}
?>