<?php
class Info_bar extends MX_Controller {

	private $user;

	function __construct() {
		parent::__construct();
		$this->load->model('user','model');
		$this->user = get_user_login();
	}
	
	function index(){
		$id_user = $this->user['id_user'];
		$data['user'] = $this->model->get_user($id_user,array('lb_display_name'));
		$this->load->view('info_bar',$data);
	}
}
?>