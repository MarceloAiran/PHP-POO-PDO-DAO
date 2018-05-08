<?php
	require_once("config.php");

	//-- Carrega apenas um Usuario por Id 
	/*
	$root = new Usuario();
	$root->loadById(3);
	echo $root;	
	*/

	//-- Carregando Uma lista de Usuarios
	/*
	$lista = Usuario::getList();
	echo json_encode($lista);
	
	*/
	//-- Buscar Usuario pelo Login
	/*
	$search = Usuario::search("ch");
	echo json_encode($search);
	*/	
	//-- Carregar Usuário Usando o login e a senha

	//Confere Login
	/*
	$usuario = new Usuario();

	$usuario->login("user", "12345");

	echo $usuario;
	*/
	
	/* Insserção de Usuario 
	$usuario = new Usuario("Carlos" , "555555");

	//$usuario->setDeslogin("Marcelo");

	//$usuario->setDessenha("654321")

	$usuario->insert();

	echo $usuario;
	*/

	$usuario = new Usuario();

	$usuario->loadById(13);

	$usuario->update("Pascalete" , "58585858");

	echo $usuario;
?>