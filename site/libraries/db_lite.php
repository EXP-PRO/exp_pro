<?php
class DB_lite {
	
	private $db;
	
	function DB_lite(){
		$this->db = read_file('./db_lite/db_lite.js');
	}
	
	public function get($name){
		$obj = json_decode($this->db);
		if(isset($obj->$name)) return $obj->$name;
		return null;
	}
}
?>