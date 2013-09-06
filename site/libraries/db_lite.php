<?php
class DB_lite {
	
	private $db;
	
	function DB_lite(){
		$this->db = read_file('./db_lite/db_lite.js');
	}
	
	public function get($name){
		$a =  json_decode($this->db);
		//var_dump($a);exit;
	}
}
?>