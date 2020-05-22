-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 22-Maio-2020 às 19:47
-- Versão do servidor: 10.4.10-MariaDB
-- versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `treinamento`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

DROP TABLE IF EXISTS `alunos`;
CREATE TABLE IF NOT EXISTS `alunos` (
  `id_aluno` int(11) NOT NULL AUTO_INCREMENT,
  `nome_aluno` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `data_nascimento` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_aluno`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id_aluno`, `nome_aluno`, `data_nascimento`) VALUES
(12, 'Marcelo Nova', '01/01/1992'),
(11, 'Eric Clapton', '01/01/1991'),
(9, 'Andre Costa', '01/01/1970'),
(10, 'Carlos Santana', '01/01/1969'),
(13, 'Chico CÃ©sar', '01/01/1990'),
(14, 'Emerson Nogueira', '20/03/1992'),
(15, 'Andre Nieri', '23/08/1987'),
(16, 'Marcelo Resende', '30/08/1991'),
(17, 'Paul Dameron', '31/12/1993'),
(18, 'Celso Blues Boy', '25/02/1975'),
(19, 'Nuno Mindelis', '17/08/1948'),
(20, 'Auder Jr.', '29/11/2000'),
(21, 'Gary Moore', '30/04/1942'),
(22, 'Jack White', '22/09/2001'),
(23, 'Tim Maia', '15/10/2002');

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos_cursos`
--

DROP TABLE IF EXISTS `alunos_cursos`;
CREATE TABLE IF NOT EXISTS `alunos_cursos` (
  `id_aluno` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `id_aluno_curso` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_aluno_curso`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `alunos_cursos`
--

INSERT INTO `alunos_cursos` (`id_aluno`, `id_curso`, `id_aluno_curso`) VALUES
(2, 3, 2),
(1, 2, 4),
(6, 10, 5),
(5, 3, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE IF NOT EXISTS `cursos` (
  `id_curso` int(11) NOT NULL AUTO_INCREMENT,
  `nome_curso` varchar(100) NOT NULL,
  `carga_horaria` int(11) NOT NULL,
  PRIMARY KEY (`id_curso`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`id_curso`, `nome_curso`, `carga_horaria`) VALUES
(2, 'PHP - MySql', 10),
(3, 'JavaScript Backend', 10),
(4, 'React Native', 10),
(5, 'LÃ³gica de ProgramaÃ§Ã£o', 6),
(15, 'InglÃªs - BÃ¡sico', 16),
(7, 'Angular', 10),
(8, 'IntroduÃ§Ã£o a linguagem Go ', 10),
(9, 'Microsoft Azure', 6),
(10, 'Perl', 10),
(11, 'Java - Spring Boot', 10),
(12, 'AWS - BÃ¡sico', 10),
(13, 'Frontend com HTML CSS JavaScript', 10),
(14, 'Protocolos de rede ', 4),
(16, 'CertificaÃ§Ã£o Linux ', 40);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
