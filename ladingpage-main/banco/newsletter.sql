-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/06/2023 às 17:06
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `newsletter`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastronewsletter`
--

CREATE TABLE `cadastronewsletter` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `created` datetime NOT NULL,
  `modifed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cadastronewsletter`
--

INSERT INTO `cadastronewsletter` (`id`, `nome`, `email`, `created`, `modifed`) VALUES
(1, 'Rickson', 'rickson.passos@cigambsb.com.br', '2023-06-02 01:29:21', NULL),
(2, 'Rickson', 'rickson.passos@cigambsb.com.br', '2023-06-02 01:30:08', NULL),
(3, 'Rickson', 'rickson.passos@gmail.com', '2023-06-02 01:30:34', NULL),
(4, 'Rickson', 'rickson.passos@cigambsb.com.br', '2023-06-02 01:41:53', NULL),
(5, 'Rickson2', 'rickson.passos@cigambsb.com.br', '2023-06-02 01:42:01', NULL),
(6, 'Rickson4', 'rickson.passos@cigambsb.com.br', '2023-06-02 01:48:34', NULL),
(7, 'Rickson Passos Campoehjjggj', 'rickson.passos@gmail.com', '2023-06-02 01:48:42', NULL),
(8, 'Rickson', 'rickson.passos@cigambsb.com.br', '2023-06-02 01:49:33', NULL),
(9, 'Rickson', 'rickson.passos@cigambsb.com.br', '2023-06-02 01:51:12', NULL),
(10, 'Ricksonsada', 'alcides_thiago@hotmail.comsd', '2023-06-02 01:51:42', NULL),
(14, 'Rickson Passos Campoe', 'rpc2307@gmail.com', '2023-06-02 03:03:29', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `formularioagendamento`
--

CREATE TABLE `formularioagendamento` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `telefone` bigint(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cpf` varchar(18) NOT NULL,
  `nomeAnimal` varchar(220) NOT NULL,
  `especie` varchar(220) NOT NULL,
  `data` datetime NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `formularioagendamento`
--

INSERT INTO `formularioagendamento` (`id`, `nome`, `telefone`, `email`, `cpf`, `nomeAnimal`, `especie`, `data`, `created`, `modified`) VALUES
(3, 'Rickson Passos Campoe', 0, 'email', '068.050.651-94', 'Lagosta', 'Peixe', '2023-06-15 15:18:00', '2023-06-02 11:14:16', NULL),
(4, '', 0, 'email', '', '', '', '0000-00-00 00:00:00', '2023-06-02 11:18:43', NULL),
(5, 'Rickson Passos Campoe', 0, 'email', '068.050.651-94', 'Rickson Passos Campoe', 'Ave', '2023-06-02 11:47:00', '2023-06-02 11:46:37', NULL),
(6, 'Rickson Passos Campoe', 0, 'email', '068.050.651-94', 'Rickson Passos Campoe', 'Peixe', '2023-06-02 14:47:00', '2023-06-02 11:47:14', NULL),
(7, 'Rickson Passos Campoe', 0, 'email', '068.050.651-94', 'Rickson Passos Campoe', 'asdsada', '2023-06-02 15:48:00', '2023-06-02 11:48:28', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cadastronewsletter`
--
ALTER TABLE `cadastronewsletter`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `formularioagendamento`
--
ALTER TABLE `formularioagendamento`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastronewsletter`
--
ALTER TABLE `cadastronewsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `formularioagendamento`
--
ALTER TABLE `formularioagendamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
