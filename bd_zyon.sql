-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 08-Nov-2019 às 16:54
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_zyon`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `grafico`
--

CREATE TABLE `grafico` (
  `1Variavel` int(100) NOT NULL,
  `2Variavel` int(100) NOT NULL,
  `3Variavel` int(100) NOT NULL,
  `Solucao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lista`
--

CREATE TABLE `lista` (
  `Enunciado` varchar(10000) NOT NULL,
  `RespostaCorreta` varchar(767) NOT NULL,
  `RespostaErrada1` varchar(10000) NOT NULL,
  `RespostaErrada2` varchar(10000) NOT NULL,
  `RespostaErrada3` varchar(10000) NOT NULL,
  `Fk_usuarioProntuario` varchar(767) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `lista`
--

INSERT INTO `lista` (`Enunciado`, `RespostaCorreta`, `RespostaErrada1`, `RespostaErrada2`, `RespostaErrada3`, `Fk_usuarioProntuario`) VALUES
('asaqsas', 'asasas', 'asasas', 'asasas', 'asasas', 'CJ1850188');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ranking`
--

CREATE TABLE `ranking` (
  `Maior Nota` int(100) NOT NULL,
  `Menor Tempo de Resolução` varchar(10000) NOT NULL,
  `Fk_UsuarioProntuario` varchar(767) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `registros`
--

CREATE TABLE `registros` (
  `Nota` int(100) NOT NULL,
  `Tempo de Resolução` varchar(10000) NOT NULL,
  `Fk_UsuarioProntuario` varchar(767) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `Nome` varchar(10000) NOT NULL,
  `Email` varchar(10000) NOT NULL,
  `Senha` varchar(10000) NOT NULL,
  `Prontuario` varchar(767) NOT NULL,
  `Funcoes` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`Nome`, `Email`, `Senha`, `Prontuario`, `Funcoes`) VALUES
('Alisson', 'Alisson@gmail.com', 'aaa', 'CJ1850188', 'Professor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grafico`
--
ALTER TABLE `grafico`
  ADD PRIMARY KEY (`Solucao`);

--
-- Indexes for table `lista`
--
ALTER TABLE `lista`
  ADD PRIMARY KEY (`RespostaCorreta`),
  ADD KEY `Fk_UsuariosProntuario` (`Fk_usuarioProntuario`);

--
-- Indexes for table `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`Fk_UsuarioProntuario`);

--
-- Indexes for table `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`Fk_UsuarioProntuario`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Prontuario`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `lista`
--
ALTER TABLE `lista`
  ADD CONSTRAINT `Fk_UsuariosProntuario` FOREIGN KEY (`Fk_usuarioProntuario`) REFERENCES `usuarios` (`Prontuario`);

--
-- Limitadores para a tabela `ranking`
--
ALTER TABLE `ranking`
  ADD CONSTRAINT `Fk_UsuarioProntuario` FOREIGN KEY (`Fk_UsuarioProntuario`) REFERENCES `usuarios` (`Prontuario`);

--
-- Limitadores para a tabela `registros`
--
ALTER TABLE `registros`
  ADD CONSTRAINT `pk_usuarioprontuario` FOREIGN KEY (`Fk_UsuarioProntuario`) REFERENCES `usuarios` (`Prontuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
