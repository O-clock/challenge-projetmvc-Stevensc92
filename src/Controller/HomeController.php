<?php

namespace ProjetMVC\Controller;

class HomeController
{
	public function home()
	{
		$product = \ProjetMVC\Model\ProductModel::findAll();
		echo "Page d'accueil";
	}

	public function car()
	{
		$product = \ProjetMVC\Model\ProductModel::find(4);
		echo "Détail d'une voiture";
	}
}
?>
