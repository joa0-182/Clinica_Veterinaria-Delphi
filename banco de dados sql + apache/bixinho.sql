-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Set-2022 às 21:35
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `clinica`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bixinho`
--

CREATE TABLE `bixinho` (
  `Id` int(11) NOT NULL,
  `nome_estimacao` varchar(80) NOT NULL,
  `nome_dono` varchar(80) NOT NULL,
  `celular` varchar(16) NOT NULL,
  `data_cadastro` date NOT NULL,
  `cpf` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `bixinho`
--

INSERT INTO `bixinho` (`Id`, `nome_estimacao`, `nome_dono`, `celular`, `data_cadastro`, `cpf`) VALUES
(1, 'Alfredo', 'Gabriel', '(14) 99157-4332', '2022-08-31', '222.222.222-22'),
(2, 'Spike', 'João', '(14) 11111-1111', '2022-08-31', '333.333.333-33'),
(3, 'DDog', 'Snake', '(33) 33333-3333', '2022-09-02', '444.444.444-44');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `bixinho`
--
ALTER TABLE `bixinho`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `bixinho`
--
ALTER TABLE `bixinho`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
