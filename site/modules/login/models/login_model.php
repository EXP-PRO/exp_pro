<?php
class Login_model extends CI_Model {
	
	private $table_login_with_username = 't_login_with_username';
	private $table_login_with_email = 't_login_with_email';

	function Login_model(){
		parent::__construct();
	}
	
	private function build_data(){
		$data['lb_user_name'] = $this->input->post('lb_user_name');
		$data['lb_password'] = md5($this->input->post('lb_password'));
		return $data;
	}
	
	public function check_login(){
		$data = $this->build_data();
		$flag = true;
		
		//dang nhap voi user name
		$this->db->where('lb_user_name',$data['lb_user_name']);
		$this->db->where('lb_password',$data['lb_password']);
		$query = $this->db->get($this->table_login_with_username);
		
		if($query->num_rows()==0){
			//dang nhap voi email
			$this->db->where('lb_primary_email',$data['lb_user_name']);
			$this->db->where('lb_password',$data['lb_password']);
			$query = $this->db->get($this->table_login_with_email);
			
			if($query->num_rows()==0){
				$flag = false;
			}
		}
		
		//dang nhap thanh cong, cap nhat vao session
		if($flag){
			$user['lb_user_name'] = $data['lb_user_name'];
			$user['id_user'] = $query->row()->user_id;
			$this->session_log_in($user);
		}
		
		return $flag;
	}
	
	public function log_out(){
		$this->session_log_out();
	}
	
	private function session_log_in($data){
		$_SESSION['user'] = $data;
	}
	
	private function session_log_out(){
		unset($_SESSION['user']);
	}
}
?>