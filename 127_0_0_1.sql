-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3301
-- Tempo de geração: 17/09/2026 às 13:23
-- Versão do servidor: 8.4.7
-- Versão do PHP: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastro`
--
DROP DATABASE IF EXISTS `cadastro`;
CREATE DATABASE IF NOT EXISTS `cadastro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `cadastro`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE IF NOT EXISTS `cursos` (
  `idcurso` int NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` text,
  `carga` int UNSIGNED DEFAULT NULL,
  `totaulas` int UNSIGNED DEFAULT NULL,
  `ano` year DEFAULT '2016',
  PRIMARY KEY (`idcurso`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`idcurso`, `nome`, `descricao`, `carga`, `totaulas`, `ano`) VALUES
(1, 'Html 5', 'Curso html5', 40, 35, '2022'),
(2, 'Css3', ' Curso Css3', 40, 38, '2025'),
(3, 'JavaScript', 'Curso JavaScript', 40, 30, '2023'),
(4, 'Logica de Programacao', 'Curso Logica de Programacao', 40, 35, '2022'),
(5, 'PH', 'Curso de PHP', 30, 25, '2019'),
(6, 'Msql', 'Curso de Msql ', 40, 35, '2026'),
(7, 'Word', 'Curso de Word ', 20, 15, '2026'),
(9, 'Ingles', 'Curso de Ingles ', 80, 40, '2024'),
(10, 'Matematica', 'Curso de Matematica ', 40, 36, '2025');

-- --------------------------------------------------------

--
-- Estrutura para tabela `gafanhotos`
--

DROP TABLE IF EXISTS `gafanhotos`;
CREATE TABLE IF NOT EXISTS `gafanhotos` (
  `codigo` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `prof` varchar(20) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `gafanhotos`
--

INSERT INTO `gafanhotos` (`codigo`, `id`, `nome`, `prof`, `nascimento`, `sexo`, `peso`, `altura`, `nacionalidade`) VALUES
(NULL, 1, 'Claudia', '', '1973-03-28', 'F', 45.00, 1.50, 'Brasil'),
(NULL, 2, 'Maria', '', '1993-03-29', 'F', 45.00, 1.60, 'Brasil'),
(NULL, 3, 'Joao', '', '1996-03-18', 'M', 95.00, 1.75, 'Brasil'),
(NULL, 4, 'Jose Luis', '', '1970-09-01', 'M', 103.00, 1.80, 'Espanha');
--
-- Banco de dados: `exemplo`
--
DROP DATABASE IF EXISTS `exemplo`;
CREATE DATABASE IF NOT EXISTS `exemplo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `exemplo`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `amigos`
--

DROP TABLE IF EXISTS `amigos`;
CREATE TABLE IF NOT EXISTS `amigos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `sexo` enum('M','F') COLLATE utf8mb4_general_ci NOT NULL,
  `tel` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `amigos`
--

INSERT INTO `amigos` (`id`, `nome`, `sexo`, `tel`) VALUES
(1, 'Jose Luis ', 'M', '123'),
(2, 'Claudia', 'F', '1234'),
(3, 'Joao', 'M', '12345'),
(4, 'Maria', 'F', '123456');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
