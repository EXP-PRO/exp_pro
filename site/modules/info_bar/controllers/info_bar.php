<?php
class Info_bar extends MX_Controller {

	private $user;

	function __construct() {
		parent::__construct();
		$this->load->model('user','model');
		$this->user = get_user_login();
	}
	
	function index(){
		$data['user'] = $this->model->get_user_info_small($this->user['id_user']);
		$this->load->view('info_bar',$data);
	}
}
?>