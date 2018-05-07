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

	$usuario = new Usuario();

	$usuario->login("user", "12345");

	echo $usuario;



?>