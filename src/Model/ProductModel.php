<?php

namespace ProjetMVC\Model;

class ProductModel extends AppModel
{
	private $id, $name;
	public $db;

	public function __construct()
	{

	}

	public static function find($id)
	{
		$this->db = \ProjetMVC\Utils\SQL::getInstance();
	}

	public static function findAll()
	{
		return [
			[
				"id" => 1,
				"name" => "prod 1",
				"price" => 17.90
			],
			[
				"id" => 2,
				"name" => "prod 2",
				"price" => 1.90
			]
		];
	}
}


?>
