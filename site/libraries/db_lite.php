<?php
class DB_lite {
	
	private $db;
	private $obj;
	
	function DB_lite(){
		$this->db = read_file('./db_lite/db_lite.js');
		$this->obj = json_decode($this->db);
	}
	
	public function get($name){
		if(isset($this->obj->$name)) return $this->obj->$name;
		return null;
	}
	
	public function get_str($name){
		if(isset($this->obj->$name)){
			return implode(",",$this->obj->$name);
		}
		return "";
	}
	
	public function get_str_with_lang($name){
		if(isset($this->obj->$name)){
			$str_result = "";
			$result = $this->obj->$name;
			for($i=0;$i<count($result);$i++){
				$str_result .= lang($result[$i]);
				if($i!=count($result)-1)
					$str_result .= ',';
			}
			return $str_result;
		}
		return "";
	}
}
?>