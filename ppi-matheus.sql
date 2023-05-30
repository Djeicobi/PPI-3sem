-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 30-Maio-2023 às 20:26
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ppi-matheus`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinho`
--

DROP TABLE IF EXISTS `carrinho`;
CREATE TABLE IF NOT EXISTS `carrinho` (
  `ID_Carrinho` int NOT NULL AUTO_INCREMENT,
  `ID_User` int NOT NULL,
  `data` date NOT NULL,
  `pagamento` varchar(15) NOT NULL,
  `valor_fotos` float(5,2) NOT NULL,
  `quantidade_fotos` int NOT NULL,
  PRIMARY KEY (`ID_Carrinho`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventos`
--

DROP TABLE IF EXISTS `eventos`;
CREATE TABLE IF NOT EXISTS `eventos` (
  `ID_Evento` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(140) NOT NULL,
  `data` date NOT NULL,
  `valor_fotos` float(5,2) NOT NULL,
  PRIMARY KEY (`ID_Evento`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos`
--

DROP TABLE IF EXISTS `fotos`;
CREATE TABLE IF NOT EXISTS `fotos` (
  `ID_Foto` int NOT NULL AUTO_INCREMENT,
  `FK_ID_Evento` int NOT NULL,
  `Origem` varchar(140) NOT NULL,
  PRIMARY KEY (`ID_Foto`),
  KEY `FK_ID_Evento` (`FK_ID_Evento`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos_carrinho`
--

DROP TABLE IF EXISTS `fotos_carrinho`;
CREATE TABLE IF NOT EXISTS `fotos_carrinho` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_Carrinho` int NOT NULL,
  `ID_Foto` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `ID_User` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(140) NOT NULL,
  `email` varchar(140) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `senha` varchar(40) NOT NULL,
  PRIMARY KEY (`ID_User`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`ID_User`, `nome`, `email`, `telefone`, `senha`) VALUES
(1, 'Teste', 'teste@teste.com', '55 98999-9999', 'teste');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
