<?php

namespace ProjetMVC\Model;

class AppModel
{
	public $db;

	public function __construct()
	{
		$this->db = ProjetMVC\Utils\SQL::getInstance();

		return $this->db;
	}
}

?>
