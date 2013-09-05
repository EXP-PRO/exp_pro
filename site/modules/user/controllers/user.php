<?php
class User extends MX_Controller {

	private $user;
	
	function User(){
		parent::__construct();
		if(!is_user_login()){
			redirect('Login');
			return;
		}
		$this->load->model('User_model','model');
		$this->user = get_user_login();
	}
	
	public function Index(){
		$this->home();
	}
	
	public function home(){
		$this->template->write('title','Nhà');
		$this->template->write_view('head_line_bar','head_line_bar');
		$this->template->write_view('column1','home');
		$this->template->write_view('column2','home');
		$this->template->render();
	}
	
	public function about(){
		$data['user'] = $this->model->get_user_info($this->user['id_user']);
		$data['user_email'] = $this->model->get_user_email($this->user['id_user']);
		$data['user_phone'] = $this->model->get_user_phone($this->user['id_user']);
		$this->template->set_template('one_column');
		$this->template->write('title','Thông tin');
		$this->template->write_view('head_line_bar','head_line_bar');
		$this->template->write_view('column1','about',$data);
		$this->template->render();
	}
	
}
?>