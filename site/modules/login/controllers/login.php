<?php
class Login extends MX_Controller {
	
	function Login(){
		parent::__construct();
		$this->load->model('Login_model','model');
		$this->template->set_template('blank');
	}
	
	public function Index(){
		//neu user da dang nhap => chuyen sang trang user
		if(is_user_login()){
			redirect('User');
			return;
		}
		$this->log_in();
	}
	
	public function log_in(){
		$this->form_validation->set_message('required','Vui lòng nhập <b>%s</b>');
		
		$this->form_validation->set_rules('lb_user_name','tên đăng nhập','required|trim');
		$this->form_validation->set_rules('lb_password','mật khẩu','required|trim()');
		
		if($this->form_validation->run()){
			if($this->model->check_login()){
				redirect('user');
				return;	
			}
			else{
				$this->session->set_flashdata('msg_login','Đăng nhập thất bại');
			}
		}
		$this->template->write('title','Đăng nhập');
		$this->template->write_view('content','login');
		$this->template->render();
	}
	
	public function log_out(){
		$this->model->log_out();
		redirect('login');
	}
}
?>