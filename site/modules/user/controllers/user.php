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
		$this->load->model('Base_language_model','language_model');
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
		$id_user = $this->user['id_user'];
		$data['user'] = $this->model->get_user($id_user);
		$data['user_email'] = $this->model->get_user_email($id_user);
		$data['user_phone'] = $this->model->get_user_phone($id_user);
		$data['relationship_status'] = $this->db_lite->get('relationship_status');
		$data['month'] = $this->db_lite->get_str_with_lang('month');
		$data['language'] = $this->language_model->get_all_language();
		
		$this->template->set_template('one_column');
		$this->template->write('title','Thông tin');
		$this->template->write_view('head_line_bar','head_line_bar');
		$this->template->write_view('column1','about',$data);
		$this->template->render();
	}
	
	public function update_basic_info(){
		if($this->input->is_ajax_request()){
			var_dump($_POST);
		}
		else{
			show_404();
		}
	}
	
}
?>