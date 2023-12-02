-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 06/06/2023 às 23:37
-- Versão do servidor: 10.4.22-MariaDB
-- Versão do PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `RM`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `Nome` varchar(50) NOT NULL,
  `Logradouro` varchar(100) DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`Nome`, `Logradouro`, `Telefone`) VALUES
('Augusto', 'Ceap', '111111'),
('Guilherme', 'São Jorge', '111111'),
('Hugo', 'Ceap', '111111'),
('Murilo', 'Casa', '40028922');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `Pizza` varchar(100) DEFAULT NULL,
  `Nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `pedidos`
--

INSERT INTO `pedidos` (`Pizza`, `Nome`) VALUES
('Calabresa', 'Augusto'),
('Calabresa', 'Murilo'),
('Frango Catupiry', 'Murilo'),
('Frango Catupiry', 'Augusto'),
('Atum', 'Hugo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pizzas`
--

CREATE TABLE `pizzas` (
  `Pizza` varchar(100) NOT NULL,
  `Preço` varchar(50) DEFAULT NULL,
  `Ingredientes` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `pizzas`
--

INSERT INTO `pizzas` (`Pizza`, `Preço`, `Ingredientes`) VALUES
('Atum', 'R$ 83,00', 'Peixe'),
('Calabresa', 'R$ 50,00', 'Calabresa e cebola'),
('Frango Catupiry', 'R$ 80,00', 'Frango ');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Nome`);

--
-- Índices de tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD KEY `Pizza` (`Pizza`),
  ADD KEY `Nome` (`Nome`);

--
-- Índices de tabela `pizzas`
--
ALTER TABLE `pizzas`
  ADD PRIMARY KEY (`Pizza`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`Pizza`) REFERENCES `pizzas` (`Pizza`),
  ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`Nome`) REFERENCES `clientes` (`Nome`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
