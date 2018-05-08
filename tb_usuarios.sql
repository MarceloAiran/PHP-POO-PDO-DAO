--! Nome do banco de dados -->
CREATE DATABASE dbphp7;

--! MySQL -->
CREATE TABLE tb_usuarios (
	idusuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	deslogin VARCHAR(64) NOT NULL,
	dessenha VARCHAR(256) NOT NULL,
	dtcadastro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP()
);

--! SQL Server -->  
CREATE TABLE tb_usuarios (
	idusuario INT NOT NULL IDENTITY PRIMARY KEY,
	deslogin VARCHAR(64) NOT NULL,
	dessenha VARCHAR(256) NOT NULL,
	dtcadastro DATETIME NOT NULL DEFAULT GETDATE()
);