
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_usuarios_insert` (IN `pdeslogin` VARCHAR(64), IN `pdessenha` VARCHAR(256))  BEGIN 
	INSERT INTO tb_usuarios (deslogin, dessenha) VALUES (pdeslogin, pdessenha);
	
	SELECT * FROM tb_usuarios WHERE idusuario = LAST_INSERT_ID();

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `idusuario` int(11) NOT NULL,
  `deslogin` varchar(64) NOT NULL,
  `dessenha` varchar(256) NOT NULL,
  `dtcadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`idusuario`, `deslogin`, `dessenha`, `dtcadastro`) VALUES
(1, 'user', '12345', '2018-05-04 13:34:09'),
(3, 'chssr', 'dsf', '2018-05-04 13:53:14'),
(4, 'Marcelo', '654321', '2018-05-08 11:34:11'),
(5, 'Marcelo', '654321', '2018-05-08 11:38:43'),
(6, 'Marcelo', '654321', '2018-05-08 11:58:27'),
(7, 'Marcelo', '654321', '2018-05-08 12:00:41'),
(8, 'Ricardo', '85654321', '2018-05-08 12:06:09'),
(9, 'Leonardo', '552288', '2018-05-08 12:14:04'),
(10, 'Leonardo', '552288', '2018-05-08 12:14:50'),
(11, 'Leonardo', '552288', '2018-05-08 12:22:07'),
(12, 'Leonardo', '552288', '2018-05-08 12:22:58'),
(13, 'Leonardo', '552288', '2018-05-08 12:27:21'),
(14, 'Leonardo', '552288', '2018-05-08 12:34:43'),
(15, 'Leonardo', '552288', '2018-05-08 12:35:51'),
(16, 'Rafael', '222333', '2018-05-08 13:07:55'),
(17, 'Carlos', '555555', '2018-05-08 13:11:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
