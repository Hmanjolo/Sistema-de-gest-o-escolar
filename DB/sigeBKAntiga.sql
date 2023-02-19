-- MySQL dump 10.16  Distrib 10.1.16-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: sige
-- ------------------------------------------------------
-- Server version	10.1.16-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `ID` varchar(8) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES ('A'),('B'),('C'),('Ciencias'),('Letras');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classe`
--

DROP TABLE IF EXISTS `classe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classe` (
  `ID` tinyint(4) NOT NULL,
  `Nome` varchar(15) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classe`
--

LOCK TABLES `classe` WRITE;
/*!40000 ALTER TABLE `classe` DISABLE KEYS */;
INSERT INTO `classe` VALUES (8,'Oitava'),(9,'Nona'),(10,'Decima'),(11,'Decima primeira'),(12,'Decima segunda');
/*!40000 ALTER TABLE `classe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalhes_disciplina`
--

DROP TABLE IF EXISTS `detalhes_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalhes_disciplina` (
  `id_Relacao` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_Disciplina` varchar(20) NOT NULL,
  `id_Professor` varchar(13) NOT NULL,
  `idTurma` int(11) NOT NULL,
  `ano` year(4) NOT NULL,
  PRIMARY KEY (`id_Relacao`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalhes_disciplina`
--

LOCK TABLES `detalhes_disciplina` WRITE;
/*!40000 ALTER TABLE `detalhes_disciplina` DISABLE KEYS */;
INSERT INTO `detalhes_disciplina` VALUES (7,'Geografia','766666666666J',1,2018),(8,'Geografia','766666666666J',2,2018),(9,'Filosofia','888888888888L',4,2018),(10,'Historia','766666666666J',4,2018),(11,'Fisica','766666666666J',5,2018),(12,'Biologia','888888888888L',2,2018),(13,'Fisica','888888888889L',1,2018),(14,'Filosofia','766666666666J',2,2018),(15,'Geografia','999999937563L',2,2018);
/*!40000 ALTER TABLE `detalhes_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disciplina` (
  `Nome` varchar(30) NOT NULL,
  `Creditos` tinyint(4) NOT NULL,
  `ID_Area` varchar(8) NOT NULL,
  PRIMARY KEY (`Nome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES ('Biologia',0,'Ciencias'),('Educacao Fisica',0,'Ciencias'),('Filosofia',0,'Ciencias'),('Fisica',0,'Ciencias'),('Frances',0,'Letras'),('Geografia',0,'Letras'),('Historia',0,'Letras'),('Ingles',0,'Letras'),('Matematica',0,'Ciencias'),('Portugues',0,'Letras'),('Psicologia',0,'Letras'),('Quimica',0,'Ciencias'),('Tic',0,'Ciencias');
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
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
  `idUsuario` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `Contacto` (`Contacto`),
  UNIQUE KEY `idUsuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (4,'Antonio','Pengua','567890876667L','Beira','Moçambique','1904-05-20','APengua@gm.com',826543334,'Masculino','Casado/a','Manga','2017-11-06','2018-05-19','Pengua'),(5,'Demba Manuel','Chaves','812738348348J','Beira','Casado/a','1996-04-27','Chaves@gmail.com',865236453,'Masculino','Solteiro/','Manga','2018-03-06','0000-00-00','Chaves@gmail.com');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscricao`
--

DROP TABLE IF EXISTS `inscricao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `dataCadastro` date NOT NULL,
  `dataModificacao` date NOT NULL,
  PRIMARY KEY (`numeroBI`),
  UNIQUE KEY `contacto` (`contacto`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscricao`
--

LOCK TABLES `inscricao` WRITE;
/*!40000 ALTER TABLE `inscricao` DISABLE KEYS */;
INSERT INTO `inscricao` VALUES ('Olivia','Goncalves','Olivia@gmail.com','867453336','1994-12-12','733333333333L','Masculino','Solteiro','Moçambique','Beira','Manga',4,10,'Haggy Tomas Manjolo','Cleide da Silva',858888888,'2018-06-28','0000-00-00'),('Omar','Silva','OM@gmail.com','876587978','1994-12-12','837979078905L','Masculino','Solteiro','Moçambique','Beira','Manga',4,10,'Haggy Tomas Manjolo','Cleide da Silva',858888888,'2018-06-27','0000-00-00');
/*!40000 ALTER TABLE `inscricao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensagens`
--

DROP TABLE IF EXISTS `mensagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assunto` varchar(40) COLLATE utf8_bin NOT NULL,
  `mensagem` varchar(1000) COLLATE utf8_bin NOT NULL,
  `data` datetime NOT NULL,
  `idUsuario` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensagens`
--

LOCK TABLES `mensagens` WRITE;
/*!40000 ALTER TABLE `mensagens` DISABLE KEYS */;
INSERT INTO `mensagens` VALUES (1,'Problemas com notas','Problemas com notas','2018-01-11 07:13:40','Mafux@Gmail.com');
/*!40000 ALTER TABLE `mensagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensalidades`
--

DROP TABLE IF EXISTS `mensalidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensalidades` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
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
  `idUsuario` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensalidades`
--

LOCK TABLES `mensalidades` WRITE;
/*!40000 ALTER TABLE `mensalidades` DISABLE KEYS */;
INSERT INTO `mensalidades` VALUES (29,'Mafux','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2018,'Pengua'),(30,'Feliz','1','1','1','1','','','',NULL,NULL,NULL,2018,'Pengua'),(44,'Fernanda@Gmail.com','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2018,'Pengua'),(45,'Mo@Gmail.com','1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,2018,'Pengua');
/*!40000 ALTER TABLE `mensalidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificacoes`
--

DROP TABLE IF EXISTS `notificacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificacoes` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(50) NOT NULL,
  `Texto` text NOT NULL,
  `id_nivel_acesso` tinyint(4) NOT NULL,
  `id_Usuario` varchar(40) NOT NULL,
  `id_Destinatario` varchar(40) NOT NULL,
  `Data` date NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificacoes`
--

LOCK TABLES `notificacoes` WRITE;
/*!40000 ALTER TABLE `notificacoes` DISABLE KEYS */;
INSERT INTO `notificacoes` VALUES (5,'Mensalidade','A sua mensalidade do mes Fev foi confirmada!',0,'Pengua','Mafux','2018-03-06',0),(6,'Mensalidade','A sua mensalidade do mes Fev foi confirmada!',0,'Pengua','Feliz','2018-03-06',0),(7,'Mensalidade','A sua mensalidade do mes Fev foi confirmada!',0,'Pengua','Mo@Gmail.com','2018-03-06',0),(8,'Mensalidade','A sua mensalidade do mes Mar foi confirmada!',0,'A','Feliz','2018-03-06',0),(9,'Mensalidade','A sua mensalidade do mes Mar foi Anulada, para mais detalhes contactar a secretaria!',0,'A','Feliz','2018-03-06',0),(10,'Mensalidade','A sua mensalidade do mes Fev foi Anulada, para mais detalhes contactar a secretaria!',0,'A','Mo@Gmail.com','2018-03-06',0),(11,'Mensalidade','A sua mensalidade do mes Fev foi confirmada!',0,'Chaves@gmail.com','Mo@Gmail.com','2018-03-06',0),(12,'Mensalidade','A sua mensalidade do mes Fev foi confirmada!',0,'A','Fernanda@Gmail.com','2018-03-07',1),(13,'Mensalidade','A sua mensalidade do mes Fev foi confirmada!',0,'A','Fernanda@Gmail.com','2018-03-07',1),(14,'Mensalidade','A sua mensalidade do mes Fev foi Anulada, para mais detalhes contactar a secretaria!',0,'A','Mo@Gmail.com','2018-03-07',0),(15,'Mensalidade','A sua mensalidade do mes Fev foi confirmada!',0,'A','Mo@Gmail.com','2018-03-07',0),(19,'Mensalidade','A sua mensalidade do mes Mar foi confirmada!',0,'Pengua','Mafux','2018-03-08',0),(20,'Mensalidade','A sua mensalidade do mes Mar foi confirmada!',0,'Pengua','Feliz','2018-03-13',0),(21,'Mensalidade','A sua mensalidade do mes Abr foi confirmada!',0,'Pengua','Feliz','2018-03-13',0),(22,'Mensalidade','A sua mensalidade do mes Abr foi confirmada!',0,'Pengua','Mo@Gmail.com','2018-03-13',0),(26,'Mensalidade','A sua mensalidade do mes Ago foi confirmada!',0,'Pengua','Mo@Gmail.com','2018-03-17',0),(27,'Mensalidade','A sua mensalidade do mes Sete foi confirmada!',0,'Pengua','Mo@Gmail.com','2018-03-17',0),(28,'Mensalidade','A sua mensalidade do mes Outu foi confirmada!',0,'Pengua','Mo@Gmail.com','2018-03-17',0),(29,'Mensalidade','A sua mensalidade do mes Nov foi confirmada!',0,'Pengua','Mo@Gmail.com','2018-03-17',0),(30,'Mensalidade','A sua mensalidade do mes Mai foi confirmada!',0,'Pengua','Feliz','2018-04-05',0),(31,'Mensalidade','A sua mensalidade do mes Jun foi confirmada!',0,'Pengua','Feliz','2018-04-05',0),(32,'Mensalidade','A sua mensalidade do mes Fev foi confirmada!',0,'A','Fernanda@Gmail.com','2018-05-05',1),(33,'Mensalidade','A sua mensalidade do mes Fev foi confirmada!',0,'A','Fernanda@Gmail.com','2018-05-05',1),(34,'Mensalidade','A sua mensalidade do mes Jul foi confirmada!',0,'Pengua','Feliz','2018-05-05',0),(35,'Mensalidade','A sua mensalidade do mes Fev foi confirmada!',0,'Pengua','Fernanda@Gmail.com','2018-05-05',1),(36,'Mensalidade','A sua mensalidade do mes Fev foi confirmada!',0,'Pengua','Fernanda@Gmail.com','2018-05-05',1),(37,'Mensalidade','A sua mensalidade do mes Fev foi confirmada!',0,'Pengua','Fernanda@Gmail.com','2018-05-05',1),(38,'Mensalidade','A sua mensalidade do mes Fev foi confirmada!',0,'Pengua','Fernanda@Gmail.com','2018-05-05',1),(39,'Mensalidade','A sua mensalidade do mes Fev foi confirmada!',0,'Pengua','Fernanda@Gmail.com','2018-05-05',1),(40,'Mensalidade','A sua mensalidade do mes Fev foi confirmada!',0,'Pengua','Fernanda@Gmail.com','2018-05-05',1),(41,'Mensalidade','A sua mensalidade do mes Fev foi confirmada!',0,'Pengua','Fernanda@Gmail.com','2018-05-05',1),(42,'Mensalidade','A sua mensalidade do mes Ago foi confirmada!',0,'Pengua','Feliz','2018-05-05',0),(43,'Mensalidade','A sua mensalidade do mes Fev foi confirmada!',0,'Pengua','Fernanda@Gmail.com','2018-05-05',1),(44,'Mensalidade','A sua mensalidade do mes Fev foi confirmada!',0,'Pengua','Fernanda@Gmail.com','2018-05-05',1),(45,'Mensalidade','A sua mensalidade do mes Fev foi confirmada!',0,'Pengua','Mo@Gmail.com','2018-05-05',1),(46,'Mensalidade','A sua mensalidade do mes Ago foi Anulada, para mais detalhes contactar a secretaria!',0,'A','Feliz','2018-06-13',0),(47,'Mensalidade','A sua mensalidade do mes Jul foi Anulada, para mais detalhes contactar a secretaria!',0,'A','Feliz','2018-06-13',0),(48,'Mensalidade','A sua mensalidade do mes Jun foi Anulada, para mais detalhes contactar a secretaria!',0,'A','Feliz','2018-06-13',0),(49,'Mensalidade','A sua mensalidade do mes Mai foi Anulada, para mais detalhes contactar a secretaria!',0,'A','Feliz','2018-06-13',0),(50,'Mensalidade','A sua mensalidade do mes Abr foi Anulada, para mais detalhes contactar a secretaria!',0,'A','Feliz','2018-06-13',0),(51,'Mensalidade','A sua mensalidade do mes Abr foi confirmada!',0,'A','Feliz','2018-06-13',0),(52,'Mensalidade','A sua mensalidade do mes Mai foi confirmada!',0,'A','Feliz','2018-06-13',0),(53,'Mensalidade','A sua mensalidade do mes Mar foi confirmada!',0,'A','Mo@Gmail.com','2018-06-16',1),(54,'Mensalidade','A sua mensalidade do mes Abr foi confirmada!',0,'A','Mo@Gmail.com','2018-06-28',1);
/*!40000 ALTER TABLE `notificacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professor` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
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
  `idUsuario` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `Contacto` (`Contacto`),
  UNIQUE KEY `idUsuario` (`idUsuario`),
  UNIQUE KEY `BI` (`BI`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'Amelia Jose','Paulo','766666666666J','Beira','Moçambique','1994-05-17','Ameliajosepaulo@gmail.com',846788888,'Femenino','Casado/a','Manga','2017-11-05','2018-06-15','Fofa'),(2,'Cesar Tomas','Manjolo','888888888889L','Beira','Moçambique','2003-01-18','Cesar@gmail.com',828282828,'Masculino','Solteiro','Manga','2018-01-10','2018-04-25','Cesar@gmail.com'),(3,'Martins','Antonio','999999937563L','beira','Casado/a','1993-12-12','M@gmail.com',866532323,'Masculino','Solteiro/','Manga','2018-07-09','0000-00-00','M@gmail.com');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabela_estudante`
--

DROP TABLE IF EXISTS `tabela_estudante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabela_estudante` (
  `idEstudante` int(11) NOT NULL AUTO_INCREMENT,
  `idTurma` int(11) NOT NULL,
  `numeroCandidato` varchar(10) NOT NULL,
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
  `dataCadastro` date NOT NULL,
  `dataModificacao` date NOT NULL,
  `idUsuario` varchar(50) NOT NULL,
  PRIMARY KEY (`idEstudante`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `contacto` (`contacto`),
  UNIQUE KEY `numeroCandidato` (`numeroCandidato`),
  UNIQUE KEY `numeroBI` (`numeroBI`),
  UNIQUE KEY `idUsuario` (`idUsuario`),
  KEY `idTurmafk` (`idTurma`),
  CONSTRAINT `idTurmafk` FOREIGN KEY (`idTurma`) REFERENCES `tabela_turma` (`idTurma`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabela_estudante`
--

LOCK TABLES `tabela_estudante` WRITE;
/*!40000 ALTER TABLE `tabela_estudante` DISABLE KEYS */;
INSERT INTO `tabela_estudante` VALUES (14,2,'1000000','Felizarda de Fatima','Manjolo','F@gmail.com','848433538','1998-07-19','111111111113J','Femenino','Solteiro','Moçambique','Beira','Manga',4,'2018-01-08','2018-06-12','Feliz'),(15,2,'1000001','Moises Tomas','Manjolo','Mo@Gmail.com','848484840','2000-09-19','222222222222H','Masculino','Solteiro','Moçambique','Beira','Manga',4,'2018-01-08','2018-04-06','Mo@Gmail.com'),(16,2,'1000002','Fernanda Jose','Tomossene','Fernanda@Gmail.com','878787878','1999-10-10','717175564456K','Femenino','Moçambiq','','Beira','Manga',4,'2018-01-09','2018-01-13','Fernanda@Gmail.com'),(17,4,'1000003','Mafux','Gundo','Mafux@Gmail.com','825555556','1995-12-01','888888888888M','Femenino','Solteiro','Moçambique','Beira','Manga',4,'2018-01-11','2018-02-28','Mafux');
/*!40000 ALTER TABLE `tabela_estudante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabela_exame`
--

DROP TABLE IF EXISTS `tabela_exame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabela_exame` (
  `idexame` int(11) NOT NULL AUTO_INCREMENT,
  `id_estudante` int(11) NOT NULL,
  `id_desciplina` int(11) NOT NULL,
  `idnotas` int(11) NOT NULL,
  `normal` float NOT NULL,
  `recorrencia` float NOT NULL,
  `DataCadastro` date NOT NULL,
  `dataModificacao` int(11) NOT NULL,
  PRIMARY KEY (`idexame`),
  KEY `idCategoriafk` (`id_estudante`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabela_exame`
--

LOCK TABLES `tabela_exame` WRITE;
/*!40000 ALTER TABLE `tabela_exame` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabela_exame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabela_financas`
--

DROP TABLE IF EXISTS `tabela_financas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabela_financas` (
  `idfinanca` int(11) NOT NULL AUTO_INCREMENT,
  `idEstudante` int(11) NOT NULL,
  `primeira` float NOT NULL,
  `segunda` float NOT NULL,
  `total` float NOT NULL,
  `dataCadastro` int(11) NOT NULL,
  `dataModificacao` int(11) NOT NULL,
  PRIMARY KEY (`idfinanca`),
  KEY `idEstudantefk` (`idEstudante`),
  CONSTRAINT `idEstudantefk` FOREIGN KEY (`idEstudante`) REFERENCES `tabela_estudante` (`idEstudante`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabela_financas`
--

LOCK TABLES `tabela_financas` WRITE;
/*!40000 ALTER TABLE `tabela_financas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabela_financas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabela_nivel_acesso`
--

DROP TABLE IF EXISTS `tabela_nivel_acesso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabela_nivel_acesso` (
  `idNivelAcesso` int(11) NOT NULL AUTO_INCREMENT,
  `nomeNivelAcesso` varchar(50) NOT NULL,
  `DataCadastro` date NOT NULL,
  PRIMARY KEY (`idNivelAcesso`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabela_nivel_acesso`
--

LOCK TABLES `tabela_nivel_acesso` WRITE;
/*!40000 ALTER TABLE `tabela_nivel_acesso` DISABLE KEYS */;
INSERT INTO `tabela_nivel_acesso` VALUES (1,'Administrador  full  ','2017-08-24'),(2,'Area Administrativa ','2017-08-24'),(3,'Professor','2017-08-24'),(4,'Estudante','2017-08-24'),(5,'Chefe da Secretaria','2018-03-06');
/*!40000 ALTER TABLE `tabela_nivel_acesso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabela_notas`
--

DROP TABLE IF EXISTS `tabela_notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabela_notas` (
  `idNota` int(11) NOT NULL AUTO_INCREMENT,
  `idEstudante` varchar(20) NOT NULL,
  `id_Relacao_Disciplina` int(11) NOT NULL,
  `Teste1` varchar(2) NOT NULL,
  `Teste2` varchar(2) NOT NULL,
  `Trabalho1` varchar(2) NOT NULL,
  `Trabalho2` varchar(2) NOT NULL,
  `TP` varchar(2) NOT NULL,
  `Trimestre` varchar(15) NOT NULL,
  `DataCadastro` date NOT NULL,
  `DataModificacao` date DEFAULT NULL,
  PRIMARY KEY (`idNota`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabela_notas`
--

LOCK TABLES `tabela_notas` WRITE;
/*!40000 ALTER TABLE `tabela_notas` DISABLE KEYS */;
INSERT INTO `tabela_notas` VALUES (1,'222222222222H',8,'10','11','4','11','10','1º Trimestre','2018-01-14','2018-06-18'),(2,'111111111111J',8,'10','11','12','14','13','1º Trimestre','2018-01-20','2018-04-05'),(9,'717175564456K',8,'12','12','11','11','11','1º Trimestre','2018-01-31','2018-06-18'),(10,'111111111111J',8,'15','14','17','15','13','2º Trimestre','2018-01-31','2018-04-03'),(11,'222222222222H',8,'12','16','13','','','2º Trimestre','2018-01-31','2018-04-03'),(12,'717175564456K',8,'','','','','','2º Trimestre','2018-01-31','2018-04-03'),(13,'111111111111J',8,'11','7','17','','','3º Trimestre','2018-01-31','2018-02-02'),(14,'222222222222H',8,'11','17','6','','','3º Trimestre','2018-01-31','2018-02-02'),(15,'717175564456K',8,'14','','','','','3º Trimestre','2018-01-31','2018-02-02'),(16,'888888888888M',9,'12','11','13','5','','1º Trimestre','2018-02-01','2018-03-17'),(17,'222222222222H',10,'11','11','12','16','12','1º Trimestre','2018-04-06','2018-04-06'),(18,'888888888888M',10,'13','8','11','11','14','1º Trimestre','2018-04-06','2018-04-06'),(19,'111111111113J',8,'12','11','','12','','1º Trimestre','2018-05-05','2018-06-18'),(20,'2010',8,'','','','','','1º Trimestre','2018-06-13','2018-06-18');
/*!40000 ALTER TABLE `tabela_notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabela_turma`
--

DROP TABLE IF EXISTS `tabela_turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabela_turma` (
  `idTurma` int(11) NOT NULL AUTO_INCREMENT,
  `nomeTurma` varchar(255) NOT NULL,
  `DataCadastro` date NOT NULL,
  `dataModificacao` date NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`idTurma`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabela_turma`
--

LOCK TABLES `tabela_turma` WRITE;
/*!40000 ALTER TABLE `tabela_turma` DISABLE KEYS */;
INSERT INTO `tabela_turma` VALUES (1,'10 A','2017-08-31','0000-00-00',0),(2,'10 B','2017-08-31','0000-00-00',0),(3,'10 C','2017-08-31','0000-00-00',0),(4,'10 D','2017-08-31','0000-00-00',0),(5,'10 E','2017-08-31','0000-00-00',0),(6,'10 F','2017-08-31','0000-00-00',0),(7,'8 A','2017-12-06','0000-00-00',0);
/*!40000 ALTER TABLE `tabela_turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabela_usuarios`
--

DROP TABLE IF EXISTS `tabela_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabela_usuarios` (
  `idUsuario` varchar(50) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `idNivelAcesso` int(11) NOT NULL,
  `dataCadastro` date NOT NULL,
  `dataModificacao` date NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabela_usuarios`
--

LOCK TABLES `tabela_usuarios` WRITE;
/*!40000 ALTER TABLE `tabela_usuarios` DISABLE KEYS */;
INSERT INTO `tabela_usuarios` VALUES ('A','Haggy','c4ca4238a0b923820dcc509a6f75849b','Activo',1,'2017-10-05','2018-05-19'),('Cesar@gmail.com','Cesar Tomas Manjolo','c4ca4238a0b923820dcc509a6f75849b','Activo',3,'2018-01-10','2018-05-19'),('Chaves@gmail.com','Demba Manuel Chaves','c4ca4238a0b923820dcc509a6f75849b','Activo',2,'2018-03-06','2018-05-19'),('Feliz','Felizarda de Fatima Manjolo','c4ca4238a0b923820dcc509a6f75849b','Activo',4,'2018-01-08','2018-06-12'),('Fernanda@Gmail.com','Fernanda Jose Tomossene','c4ca4238a0b923820dcc509a6f75849b','Activo',4,'2018-01-09','2018-05-19'),('Fofa','Amelia Jose Paulo','c4ca4238a0b923820dcc509a6f75849b','Activo',3,'2017-11-05','2018-06-15'),('gomesf.afonso@gmail.com','Gomes Afonso','81dc9bdb52d04dc20036dbd8313ed055','Activo',4,'2018-06-07','0000-00-00'),('M@gmail.com','Martins Antonio','81dc9bdb52d04dc20036dbd8313ed055','Activo',3,'2018-07-09','0000-00-00'),('Mafux','Mafux Gundo','c4ca4238a0b923820dcc509a6f75849b','Activo',4,'2018-01-11','2018-05-19'),('Mo@Gmail.com','Moises Tomas Manjolo','c4ca4238a0b923820dcc509a6f75849b','Activo',4,'2018-01-08','2018-05-19'),('Pengua','Antonio Pengua','c4ca4238a0b923820dcc509a6f75849b','Activo',2,'2017-11-06','2018-05-19');
/*!40000 ALTER TABLE `tabela_usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-24 11:17:57
