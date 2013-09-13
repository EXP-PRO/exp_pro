<?php
class Base_user_model extends CI_Model {

	private $tbl_name = 't_user';
	private $id_name = 'id_user';
	private $id_rel_name = 'user_id';
	
	function Base_user_model(){
		parent::__construct();
	}
	
	public function get_user($id_user,$arr_select=null){
		if(isset($arr_select)){
			$str_select = implode(',',$arr_select);
			$this->db->select($str_select);
		}
		$this->db->where($this->id_name,$id_user);
		$query = $this->db->get($this->tbl_name);
		return $query->row();
	}
	
	protected function get_related_user($id_user,$related_table){
		$this->db->where($this->id_rel_name,$id_user);
		$query = $this->db->get($related_table);
		return $query->result();
	}
	
	public function update_user($id_user,$data){
		$this->db->where($this->id_name,$id_user);
		$query = $this->db->update($this->tbl_name,$data);
		return $query;
	}
	
}
?>