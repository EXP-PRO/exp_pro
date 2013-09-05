<?php
class Chat_bar extends MX_Controller {

	function __construct() {
		parent::__construct();
	}
	
	function index(){
		$this->load->view('chat_bar');
	}
}
?>