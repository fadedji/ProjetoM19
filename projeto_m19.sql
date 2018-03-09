-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 09-Mar-2018 às 11:17
-- Versão do servidor: 5.6.20-log
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `projeto_m19`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

CREATE TABLE IF NOT EXISTS `comentarios` (
  `Dat` date DEFAULT NULL,
  `Texto` varchar(1000) DEFAULT NULL,
`Cod_Comentario` int(11) NOT NULL,
  `Pos` int(11) DEFAULT NULL,
  `Neg` int(11) DEFAULT NULL,
  `ID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `utilizadores`
--

CREATE TABLE IF NOT EXISTS `utilizadores` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Nome` char(30) NOT NULL,
`ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
 ADD PRIMARY KEY (`Cod_Comentario`), ADD KEY `ID` (`ID`);

--
-- Indexes for table `utilizadores`
--
ALTER TABLE `utilizadores`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
MODIFY `Cod_Comentario` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `utilizadores`
--
ALTER TABLE `utilizadores`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
