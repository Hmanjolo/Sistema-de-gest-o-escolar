-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 13-Set-2018 às 03:03
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sige`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `area`
--

CREATE TABLE `area` (
  `ID` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `area`
--

INSERT INTO `area` (`ID`) VALUES
('A'),
('B'),
('C'),
('Ciencias'),
('Letras');

-- --------------------------------------------------------

--
-- Estrutura da tabela `classe`
--

CREATE TABLE `classe` (
  `ID` tinyint(4) NOT NULL,
  `Nome` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `classe`
--

INSERT INTO `classe` (`ID`, `Nome`) VALUES
(8, 'Oitava'),
(9, 'Nona'),
(10, 'Decima'),
(11, 'Decima primeira'),
(12, 'Decima segunda');

-- --------------------------------------------------------

--
-- Estrutura da tabela `conf_inscricao`
--

CREATE TABLE `conf_inscricao` (
  `ID` int(11) NOT NULL,
  `BI` char(13) NOT NULL,
  `Recibo` bigint(20) NOT NULL,
  `Classe` int(2) NOT NULL,
  `Escola_Saida` varchar(50) NOT NULL,
  `Ano_Saida` year(4) NOT NULL,
  `Classe_frequentada` int(2) NOT NULL,
  `Turma_frequentada` varchar(4) NOT NULL,
  `Data_Confirmacao` date NOT NULL,
  `Id_Funcionario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `conf_inscricao`
--

INSERT INTO `conf_inscricao` (`ID`, `BI`, `Recibo`, `Classe`, `Escola_Saida`, `Ano_Saida`, `Classe_frequentada`, `Turma_frequentada`, `Data_Confirmacao`, `Id_Funcionario`) VALUES
(9, '070102194548J', 444444444444444, 12, 'Escola Secundária da Manga', 2017, 11, 'B02', '2018-09-12', 'A');

-- --------------------------------------------------------

--
-- Estrutura da tabela `detalhes_disciplina`
--

CREATE TABLE `detalhes_disciplina` (
  `id_Relacao` bigint(20) NOT NULL,
  `id_Disciplina` varchar(20) NOT NULL,
  `id_Professor` varchar(13) NOT NULL,
  `idTurma` int(11) NOT NULL,
  `ano` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `detalhes_disciplina`
--

INSERT INTO `detalhes_disciplina` (`id_Relacao`, `id_Disciplina`, `id_Professor`, `idTurma`, `ano`) VALUES
(18, 'Biologia', '766666666666J', 10, 2018);

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `Nome` varchar(30) NOT NULL,
  `Creditos` tinyint(4) NOT NULL,
  `ID_Area` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`Nome`, `Creditos`, `ID_Area`) VALUES
('Biologia', 0, 'Ciencias'),
('Educacao Fisica', 0, 'Ciencias'),
('Filosofia', 0, 'Ciencias'),
('Fisica', 0, 'Ciencias'),
('Frances', 0, 'Letras'),
('Geografia', 0, 'Letras'),
('Historia', 0, 'Letras'),
('Ingles', 0, 'Letras'),
('Matematica', 0, 'Ciencias'),
('Portugues', 0, 'Letras'),
('Psicologia', 0, 'Letras'),
('Quimica', 0, 'Ciencias'),
('Tic', 0, 'Ciencias');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(25) NOT NULL,
  `Apelido` varchar(25) NOT NULL,
  `BI` varchar(13) NOT NULL,
  `Naturalidade` varchar(20) NOT NULL,
  `Pais` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Contacto` bigint(11) NOT NULL,
  `Sexo` varchar(15) NOT NULL,
  `Estado` varchar(9) NOT NULL,
  `Bairro` varchar(20) NOT NULL,
  `dataCadastro` date NOT NULL,
  `dataMod` date NOT NULL,
  `idUsuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`ID`, `Nome`, `Apelido`, `BI`, `Naturalidade`, `Pais`, `DOB`, `Email`, `Contacto`, `Sexo`, `Estado`, `Bairro`, `dataCadastro`, `dataMod`, `idUsuario`) VALUES
(4, 'Antonio', 'Pengua', '567890876667L', 'Beira', 'Moçambique', '1904-05-20', 'APengua@gm.com', 826543334, 'Masculino', 'Casado/a', 'Manga', '2017-11-06', '2018-05-19', 'Pengua'),
(5, 'Demba Manuel', 'Chaves', '812738348348J', 'Beira', 'Casado/a', '1996-04-27', 'Chaves@gmail.com', 865236453, 'Masculino', 'Solteiro/', 'Manga', '2018-03-06', '0000-00-00', 'Chaves@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `inscricao`
--

CREATE TABLE `inscricao` (
  `nome` varchar(25) CHARACTER SET utf8 NOT NULL,
  `apelido` varchar(25) CHARACTER SET utf8 NOT NULL,
  `email` varchar(250) CHARACTER SET utf8 NOT NULL,
  `contacto` varchar(9) CHARACTER SET utf8 NOT NULL,
  `dataNascimento` date NOT NULL,
  `numeroBI` varchar(13) CHARACTER SET utf8 NOT NULL,
  `sexo` varchar(9) CHARACTER SET utf8 NOT NULL,
  `estadoCivil` varchar(8) CHARACTER SET utf8 NOT NULL,
  `pais` varchar(255) CHARACTER SET utf8 NOT NULL,
  `naturalidade` varchar(50) CHARACTER SET utf8 NOT NULL,
  `localResidencia` varchar(100) CHARACTER SET utf8 NOT NULL,
  `idNivelAcesso` int(1) NOT NULL,
  `classe` int(2) NOT NULL,
  `pai` varchar(50) CHARACTER SET utf8 NOT NULL,
  `mae` varchar(50) CHARACTER SET utf8 NOT NULL,
  `contactoEncarregado` int(9) NOT NULL,
  `Escola_Saida` varchar(50) NOT NULL,
  `Ano_Saida` year(4) NOT NULL,
  `Classe_frequentada` int(2) NOT NULL,
  `Turma_frequentada` varchar(4) NOT NULL,
  `dataCadastro` date NOT NULL,
  `dataModificacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `inscricao`
--

INSERT INTO `inscricao` (`nome`, `apelido`, `email`, `contacto`, `dataNascimento`, `numeroBI`, `sexo`, `estadoCivil`, `pais`, `naturalidade`, `localResidencia`, `idNivelAcesso`, `classe`, `pai`, `mae`, `contactoEncarregado`, `Escola_Saida`, `Ano_Saida`, `Classe_frequentada`, `Turma_frequentada`, `dataCadastro`, `dataModificacao`) VALUES
('Marcos Aurélio', 'António', 'M.Aurelio@gmail.com', '847568567', '2000-11-23', '070102194541K', 'Masculino', 'Solteiro', 'Moçambique', 'Beira', 'Beira', 4, 10, 'Aurélio António', 'Francisca Isaquiel', 846555554, 'Escola Secundária da Manga', 2017, 9, 'A', '2018-09-12', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `id` int(11) NOT NULL,
  `assunto` varchar(40) COLLATE utf8_bin NOT NULL,
  `mensagem` varchar(1000) COLLATE utf8_bin NOT NULL,
  `data` datetime NOT NULL,
  `idUsuario` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensalidades`
--

CREATE TABLE `mensalidades` (
  `ID` int(11) NOT NULL,
  `idEstudante` varchar(40) NOT NULL,
  `Fev` char(1) DEFAULT NULL,
  `Mar` char(1) DEFAULT NULL,
  `Abr` char(1) DEFAULT NULL,
  `Mai` char(1) DEFAULT NULL,
  `Jun` char(1) DEFAULT NULL,
  `Jul` char(1) DEFAULT NULL,
  `Ago` char(1) DEFAULT NULL,
  `Sete` char(1) DEFAULT NULL,
  `Outu` char(1) DEFAULT NULL,
  `Nov` char(1) DEFAULT NULL,
  `Ano` year(4) NOT NULL,
  `idUsuario` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `notificacoes`
--

CREATE TABLE `notificacoes` (
  `ID` bigint(20) NOT NULL,
  `Titulo` varchar(50) NOT NULL,
  `Texto` text NOT NULL,
  `id_nivel_acesso` tinyint(4) NOT NULL,
  `id_Usuario` varchar(40) NOT NULL,
  `id_Destinatario` varchar(40) NOT NULL,
  `Data` date NOT NULL,
  `Estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `notificacoes`
--

INSERT INTO `notificacoes` (`ID`, `Titulo`, `Texto`, `id_nivel_acesso`, `id_Usuario`, `id_Destinatario`, `Data`, `Estado`) VALUES
(5, 'Mensalidade', 'A sua mensalidade do mes Fev foi confirmada!', 0, 'Pengua', 'Mafux', '2018-03-06', 0),
(6, 'Mensalidade', 'A sua mensalidade do mes Fev foi confirmada!', 0, 'Pengua', 'Feliz', '2018-03-06', 0),
(7, 'Mensalidade', 'A sua mensalidade do mes Fev foi confirmada!', 0, 'Pengua', 'Mo@Gmail.com', '2018-03-06', 0),
(8, 'Mensalidade', 'A sua mensalidade do mes Mar foi confirmada!', 0, 'A', 'Feliz', '2018-03-06', 0),
(9, 'Mensalidade', 'A sua mensalidade do mes Mar foi Anulada, para mais detalhes contactar a secretaria!', 0, 'A', 'Feliz', '2018-03-06', 0),
(10, 'Mensalidade', 'A sua mensalidade do mes Fev foi Anulada, para mais detalhes contactar a secretaria!', 0, 'A', 'Mo@Gmail.com', '2018-03-06', 0),
(11, 'Mensalidade', 'A sua mensalidade do mes Fev foi confirmada!', 0, 'Chaves@gmail.com', 'Mo@Gmail.com', '2018-03-06', 0),
(12, 'Mensalidade', 'A sua mensalidade do mes Fev foi confirmada!', 0, 'A', 'Fernanda@Gmail.com', '2018-03-07', 1),
(13, 'Mensalidade', 'A sua mensalidade do mes Fev foi confirmada!', 0, 'A', 'Fernanda@Gmail.com', '2018-03-07', 1),
(14, 'Mensalidade', 'A sua mensalidade do mes Fev foi Anulada, para mais detalhes contactar a secretaria!', 0, 'A', 'Mo@Gmail.com', '2018-03-07', 0),
(15, 'Mensalidade', 'A sua mensalidade do mes Fev foi confirmada!', 0, 'A', 'Mo@Gmail.com', '2018-03-07', 0),
(19, 'Mensalidade', 'A sua mensalidade do mes Mar foi confirmada!', 0, 'Pengua', 'Mafux', '2018-03-08', 0),
(20, 'Mensalidade', 'A sua mensalidade do mes Mar foi confirmada!', 0, 'Pengua', 'Feliz', '2018-03-13', 0),
(21, 'Mensalidade', 'A sua mensalidade do mes Abr foi confirmada!', 0, 'Pengua', 'Feliz', '2018-03-13', 0),
(22, 'Mensalidade', 'A sua mensalidade do mes Abr foi confirmada!', 0, 'Pengua', 'Mo@Gmail.com', '2018-03-13', 0),
(26, 'Mensalidade', 'A sua mensalidade do mes Ago foi confirmada!', 0, 'Pengua', 'Mo@Gmail.com', '2018-03-17', 0),
(27, 'Mensalidade', 'A sua mensalidade do mes Sete foi confirmada!', 0, 'Pengua', 'Mo@Gmail.com', '2018-03-17', 0),
(28, 'Mensalidade', 'A sua mensalidade do mes Outu foi confirmada!', 0, 'Pengua', 'Mo@Gmail.com', '2018-03-17', 0),
(29, 'Mensalidade', 'A sua mensalidade do mes Nov foi confirmada!', 0, 'Pengua', 'Mo@Gmail.com', '2018-03-17', 0),
(30, 'Mensalidade', 'A sua mensalidade do mes Mai foi confirmada!', 0, 'Pengua', 'Feliz', '2018-04-05', 0),
(31, 'Mensalidade', 'A sua mensalidade do mes Jun foi confirmada!', 0, 'Pengua', 'Feliz', '2018-04-05', 0),
(32, 'Mensalidade', 'A sua mensalidade do mes Fev foi confirmada!', 0, 'A', 'Fernanda@Gmail.com', '2018-05-05', 1),
(33, 'Mensalidade', 'A sua mensalidade do mes Fev foi confirmada!', 0, 'A', 'Fernanda@Gmail.com', '2018-05-05', 1),
(34, 'Mensalidade', 'A sua mensalidade do mes Jul foi confirmada!', 0, 'Pengua', 'Feliz', '2018-05-05', 0),
(35, 'Mensalidade', 'A sua mensalidade do mes Fev foi confirmada!', 0, 'Pengua', 'Fernanda@Gmail.com', '2018-05-05', 1),
(36, 'Mensalidade', 'A sua mensalidade do mes Fev foi confirmada!', 0, 'Pengua', 'Fernanda@Gmail.com', '2018-05-05', 1),
(37, 'Mensalidade', 'A sua mensalidade do mes Fev foi confirmada!', 0, 'Pengua', 'Fernanda@Gmail.com', '2018-05-05', 1),
(38, 'Mensalidade', 'A sua mensalidade do mes Fev foi confirmada!', 0, 'Pengua', 'Fernanda@Gmail.com', '2018-05-05', 1),
(39, 'Mensalidade', 'A sua mensalidade do mes Fev foi confirmada!', 0, 'Pengua', 'Fernanda@Gmail.com', '2018-05-05', 1),
(40, 'Mensalidade', 'A sua mensalidade do mes Fev foi confirmada!', 0, 'Pengua', 'Fernanda@Gmail.com', '2018-05-05', 1),
(41, 'Mensalidade', 'A sua mensalidade do mes Fev foi confirmada!', 0, 'Pengua', 'Fernanda@Gmail.com', '2018-05-05', 1),
(42, 'Mensalidade', 'A sua mensalidade do mes Ago foi confirmada!', 0, 'Pengua', 'Feliz', '2018-05-05', 0),
(43, 'Mensalidade', 'A sua mensalidade do mes Fev foi confirmada!', 0, 'Pengua', 'Fernanda@Gmail.com', '2018-05-05', 1),
(44, 'Mensalidade', 'A sua mensalidade do mes Fev foi confirmada!', 0, 'Pengua', 'Fernanda@Gmail.com', '2018-05-05', 1),
(45, 'Mensalidade', 'A sua mensalidade do mes Fev foi confirmada!', 0, 'Pengua', 'Mo@Gmail.com', '2018-05-05', 1),
(46, 'Mensalidade', 'A sua mensalidade do mes Ago foi Anulada, para mais detalhes contactar a secretaria!', 0, 'A', 'Feliz', '2018-06-13', 0),
(47, 'Mensalidade', 'A sua mensalidade do mes Jul foi Anulada, para mais detalhes contactar a secretaria!', 0, 'A', 'Feliz', '2018-06-13', 0),
(48, 'Mensalidade', 'A sua mensalidade do mes Jun foi Anulada, para mais detalhes contactar a secretaria!', 0, 'A', 'Feliz', '2018-06-13', 0),
(49, 'Mensalidade', 'A sua mensalidade do mes Mai foi Anulada, para mais detalhes contactar a secretaria!', 0, 'A', 'Feliz', '2018-06-13', 0),
(50, 'Mensalidade', 'A sua mensalidade do mes Abr foi Anulada, para mais detalhes contactar a secretaria!', 0, 'A', 'Feliz', '2018-06-13', 0),
(51, 'Mensalidade', 'A sua mensalidade do mes Abr foi confirmada!', 0, 'A', 'Feliz', '2018-06-13', 0),
(52, 'Mensalidade', 'A sua mensalidade do mes Mai foi confirmada!', 0, 'A', 'Feliz', '2018-06-13', 0),
(53, 'Mensalidade', 'A sua mensalidade do mes Mar foi confirmada!', 0, 'A', 'Mo@Gmail.com', '2018-06-16', 1),
(54, 'Mensalidade', 'A sua mensalidade do mes Abr foi confirmada!', 0, 'A', 'Mo@Gmail.com', '2018-06-28', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(25) NOT NULL,
  `Apelido` varchar(25) NOT NULL,
  `BI` varchar(13) NOT NULL,
  `Naturalidade` varchar(20) NOT NULL,
  `Pais` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Contacto` bigint(11) NOT NULL,
  `Sexo` varchar(15) NOT NULL,
  `Estado` varchar(9) NOT NULL,
  `Bairro` varchar(20) NOT NULL,
  `dataCadastro` date NOT NULL,
  `dataMod` date NOT NULL,
  `idUsuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`ID`, `Nome`, `Apelido`, `BI`, `Naturalidade`, `Pais`, `DOB`, `Email`, `Contacto`, `Sexo`, `Estado`, `Bairro`, `dataCadastro`, `dataMod`, `idUsuario`) VALUES
(1, 'Amelia Jose', 'Paulo', '766666666666J', 'Beira', 'Moçambique', '1994-05-17', 'Ameliajosepaulo@gmail.com', 846788888, 'Femenino', 'Casado/a', 'Manga', '2017-11-05', '2018-06-15', 'Fofa'),
(2, 'Cesar Tomas', 'Manjolo', '888888888889L', 'Beira', 'Moçambique', '2003-01-18', 'Cesar@gmail.com', 828282828, 'Masculino', 'Solteiro', 'Manga', '2018-01-10', '2018-04-25', 'Cesar@gmail.com'),
(3, 'Martins', 'Antonio', '999999937563L', 'beira', 'Casado/a', '1993-12-12', 'M@gmail.com', 866532323, 'Masculino', 'Solteiro/', 'Manga', '2018-07-09', '0000-00-00', 'M@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_estudante`
--

CREATE TABLE `tabela_estudante` (
  `idEstudante` int(11) NOT NULL,
  `idTurma` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `apelido` varchar(25) NOT NULL,
  `email` varchar(250) NOT NULL,
  `contacto` varchar(9) NOT NULL,
  `dataNascimento` date NOT NULL,
  `numeroBI` varchar(13) NOT NULL,
  `sexo` varchar(9) NOT NULL,
  `estadoCivil` varchar(8) NOT NULL,
  `pais` varchar(255) NOT NULL,
  `naturalidade` varchar(50) NOT NULL,
  `localResidencia` varchar(100) NOT NULL,
  `idNivelAcesso` int(11) NOT NULL,
  `pai` varchar(50) NOT NULL,
  `mae` varchar(50) NOT NULL,
  `contactoEncarregado` int(9) NOT NULL,
  `dataCadastro` date NOT NULL,
  `dataModificacao` date NOT NULL,
  `idUsuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tabela_estudante`
--

INSERT INTO `tabela_estudante` (`idEstudante`, `idTurma`, `nome`, `apelido`, `email`, `contacto`, `dataNascimento`, `numeroBI`, `sexo`, `estadoCivil`, `pais`, `naturalidade`, `localResidencia`, `idNivelAcesso`, `pai`, `mae`, `contactoEncarregado`, `dataCadastro`, `dataModificacao`, `idUsuario`) VALUES
(11, 10, 'Felizarda de Fátima', 'Manjolo', 'f@gmail.com', '848433568', '1998-07-19', '070102194548J', 'Femenino', 'Solteiro', 'Moçambique', 'Beira', 'Beira', 4, 'Tomás Jacinto Manjolo', 'Fátima Hagy Bacar', 845757676, '2018-09-12', '0000-00-00', 'f@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_exame`
--

CREATE TABLE `tabela_exame` (
  `idexame` int(11) NOT NULL,
  `id_estudante` int(11) NOT NULL,
  `id_desciplina` int(11) NOT NULL,
  `idnotas` int(11) NOT NULL,
  `normal` float NOT NULL,
  `recorrencia` float NOT NULL,
  `DataCadastro` date NOT NULL,
  `dataModificacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_financas`
--

CREATE TABLE `tabela_financas` (
  `idfinanca` int(11) NOT NULL,
  `idEstudante` int(11) NOT NULL,
  `primeira` float NOT NULL,
  `segunda` float NOT NULL,
  `total` float NOT NULL,
  `dataCadastro` int(11) NOT NULL,
  `dataModificacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_nivel_acesso`
--

CREATE TABLE `tabela_nivel_acesso` (
  `idNivelAcesso` int(11) NOT NULL,
  `nomeNivelAcesso` varchar(50) NOT NULL,
  `DataCadastro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tabela_nivel_acesso`
--

INSERT INTO `tabela_nivel_acesso` (`idNivelAcesso`, `nomeNivelAcesso`, `DataCadastro`) VALUES
(1, 'Administrador  full  ', '2017-08-24'),
(2, 'Area Administrativa ', '2017-08-24'),
(3, 'Professor', '2017-08-24'),
(4, 'Estudante', '2017-08-24'),
(5, 'Chefe da Secretaria', '2018-03-06');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_notas`
--

CREATE TABLE `tabela_notas` (
  `idNota` int(11) NOT NULL,
  `idEstudante` varchar(20) NOT NULL,
  `id_Relacao_Disciplina` int(11) NOT NULL,
  `Teste1` varchar(2) NOT NULL,
  `Teste2` varchar(2) NOT NULL,
  `Trabalho1` varchar(2) NOT NULL,
  `Trabalho2` varchar(2) NOT NULL,
  `TP` varchar(2) NOT NULL,
  `Trimestre` varchar(15) NOT NULL,
  `DataCadastro` date NOT NULL,
  `DataModificacao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_turma`
--

CREATE TABLE `tabela_turma` (
  `idTurma` int(11) NOT NULL,
  `nomeTurma` varchar(255) NOT NULL,
  `DataCadastro` date NOT NULL,
  `dataModificacao` date NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tabela_turma`
--

INSERT INTO `tabela_turma` (`idTurma`, `nomeTurma`, `DataCadastro`, `dataModificacao`, `estado`) VALUES
(1, '8 A', '2018-09-10', '2018-09-10', 0),
(2, '8 B', '2018-09-07', '2018-09-07', 0),
(3, '9 A', '2018-09-07', '2018-09-07', 0),
(4, '9 B', '2018-09-07', '2018-09-07', 0),
(5, '10 A', '2018-09-07', '2018-09-07', 0),
(6, '10 B', '2018-09-07', '2018-09-07', 0),
(7, '11 A01', '2018-09-07', '2018-09-07', 0),
(8, '11 B01', '2018-09-07', '2018-09-07', 0),
(9, '12 A01', '2018-09-07', '2018-09-07', 0),
(10, '12 B01', '2018-09-07', '2018-09-07', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_usuarios`
--

CREATE TABLE `tabela_usuarios` (
  `idUsuario` varchar(50) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `idNivelAcesso` int(11) NOT NULL,
  `dataCadastro` date NOT NULL,
  `dataModificacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tabela_usuarios`
--

INSERT INTO `tabela_usuarios` (`idUsuario`, `nome`, `senha`, `estado`, `idNivelAcesso`, `dataCadastro`, `dataModificacao`) VALUES
('A', 'Haggy', 'c4ca4238a0b923820dcc509a6f75849b', 'Activo', 1, '2017-10-05', '2018-05-19'),
('Cesar@gmail.com', 'Cesar Tomas Manjolo', 'c4ca4238a0b923820dcc509a6f75849b', 'Activo', 3, '2018-01-10', '2018-05-19'),
('Chaves@gmail.com', 'Demba Manuel Chaves', 'c4ca4238a0b923820dcc509a6f75849b', 'Activo', 2, '2018-03-06', '2018-05-19'),
('f@gmail.com', 'Felizarda de Fátima Manjolo', '81dc9bdb52d04dc20036dbd8313ed055', 'Activo', 4, '2018-09-12', '0000-00-00'),
('Fofa', 'Amelia Jose Paulo', 'c4ca4238a0b923820dcc509a6f75849b', 'Activo', 3, '2017-11-05', '2018-06-15'),
('M@gmail.com', 'Martins Antonio', '81dc9bdb52d04dc20036dbd8313ed055', 'Activo', 3, '2018-07-09', '0000-00-00'),
('Pengua', 'Antonio Pengua', 'c4ca4238a0b923820dcc509a6f75849b', 'Activo', 2, '2017-11-06', '2018-05-19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `conf_inscricao`
--
ALTER TABLE `conf_inscricao`
  ADD PRIMARY KEY (`ID`,`BI`),
  ADD UNIQUE KEY `BI` (`BI`),
  ADD UNIQUE KEY `Recibo` (`Recibo`);

--
-- Indexes for table `detalhes_disciplina`
--
ALTER TABLE `detalhes_disciplina`
  ADD PRIMARY KEY (`id_Relacao`);

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`Nome`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Contacto` (`Contacto`),
  ADD UNIQUE KEY `idUsuario` (`idUsuario`);

--
-- Indexes for table `inscricao`
--
ALTER TABLE `inscricao`
  ADD PRIMARY KEY (`numeroBI`),
  ADD UNIQUE KEY `contacto` (`contacto`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `mensagens`
--
ALTER TABLE `mensagens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mensalidades`
--
ALTER TABLE `mensalidades`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `notificacoes`
--
ALTER TABLE `notificacoes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Contacto` (`Contacto`),
  ADD UNIQUE KEY `idUsuario` (`idUsuario`),
  ADD UNIQUE KEY `BI` (`BI`);

--
-- Indexes for table `tabela_estudante`
--
ALTER TABLE `tabela_estudante`
  ADD PRIMARY KEY (`idEstudante`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `contacto` (`contacto`),
  ADD UNIQUE KEY `numeroBI` (`numeroBI`),
  ADD UNIQUE KEY `idUsuario` (`idUsuario`),
  ADD KEY `idTurmafk` (`idTurma`);

--
-- Indexes for table `tabela_exame`
--
ALTER TABLE `tabela_exame`
  ADD PRIMARY KEY (`idexame`),
  ADD KEY `idCategoriafk` (`id_estudante`);

--
-- Indexes for table `tabela_financas`
--
ALTER TABLE `tabela_financas`
  ADD PRIMARY KEY (`idfinanca`),
  ADD KEY `idEstudantefk` (`idEstudante`);

--
-- Indexes for table `tabela_nivel_acesso`
--
ALTER TABLE `tabela_nivel_acesso`
  ADD PRIMARY KEY (`idNivelAcesso`);

--
-- Indexes for table `tabela_notas`
--
ALTER TABLE `tabela_notas`
  ADD PRIMARY KEY (`idNota`);

--
-- Indexes for table `tabela_turma`
--
ALTER TABLE `tabela_turma`
  ADD PRIMARY KEY (`idTurma`);

--
-- Indexes for table `tabela_usuarios`
--
ALTER TABLE `tabela_usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conf_inscricao`
--
ALTER TABLE `conf_inscricao`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `detalhes_disciplina`
--
ALTER TABLE `detalhes_disciplina`
  MODIFY `id_Relacao` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `mensagens`
--
ALTER TABLE `mensagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mensalidades`
--
ALTER TABLE `mensalidades`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notificacoes`
--
ALTER TABLE `notificacoes`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tabela_estudante`
--
ALTER TABLE `tabela_estudante`
  MODIFY `idEstudante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tabela_exame`
--
ALTER TABLE `tabela_exame`
  MODIFY `idexame` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tabela_financas`
--
ALTER TABLE `tabela_financas`
  MODIFY `idfinanca` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tabela_nivel_acesso`
--
ALTER TABLE `tabela_nivel_acesso`
  MODIFY `idNivelAcesso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tabela_notas`
--
ALTER TABLE `tabela_notas`
  MODIFY `idNota` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tabela_turma`
--
ALTER TABLE `tabela_turma`
  MODIFY `idTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `conf_inscricao`
--
ALTER TABLE `conf_inscricao`
  ADD CONSTRAINT `conf_inscricao_ibfk_1` FOREIGN KEY (`BI`) REFERENCES `tabela_estudante` (`numeroBI`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `tabela_usuarios` (`idUsuario`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `professor`
--
ALTER TABLE `professor`
  ADD CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `tabela_usuarios` (`idUsuario`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `tabela_estudante`
--
ALTER TABLE `tabela_estudante`
  ADD CONSTRAINT `idTurmafk` FOREIGN KEY (`idTurma`) REFERENCES `tabela_turma` (`idTurma`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tabela_estudante_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `tabela_usuarios` (`idUsuario`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `tabela_financas`
--
ALTER TABLE `tabela_financas`
  ADD CONSTRAINT `idEstudantefk` FOREIGN KEY (`idEstudante`) REFERENCES `tabela_estudante` (`idEstudante`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
