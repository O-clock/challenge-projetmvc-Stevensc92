<?php

namespace ProjetMVC\Utils;


class SQL
{
	private $db;
	private $config = [
		'db_host' => 'localhost',
		'db_user' => 'projetmvc',
		'db_pass' => 'projetmvc',
		'db_name' => 'projetmvc'
	];

	public static function getInstance()
	{
		if (!self::$db)
		{
			$dsn = 'mysql:host='.self::$config['db_host'].';dbname='.self::$config['db_name'];
			self::$db = new \PDO($dsn, self::$config['db_user'], self::$config['db_pass']);
		}

		return self::$db;
	}
}

?>
