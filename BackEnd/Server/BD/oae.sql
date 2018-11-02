-- MySQL dump 10.13  Distrib 5.7.21, for Win64 (x86_64)
--
-- Host: localhost    Database: oae
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `comment` varchar(1000) NOT NULL,
  `rfc` varchar(10) NOT NULL,
  PRIMARY KEY (`comment`,`rfc`),
  KEY `comment_guest_idx` (`rfc`),
  CONSTRAINT `comment_guest` FOREIGN KEY (`rfc`) REFERENCES `guest` (`rfc`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `id_event` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `place` varchar(600) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_event`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'DISTINCIONES AL MÉRITO POLITÉCNICO 2018',NULL,NULL);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest`
--

DROP TABLE IF EXISTS `guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest` (
  `rfc` varchar(10) NOT NULL,
  `number` int(11) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `middleName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `seat` int(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `assistance` tinyint(4) DEFAULT NULL,
  `representative` varchar(100) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `school` varchar(6) NOT NULL,
  PRIMARY KEY (`rfc`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `representative_UNIQUE` (`representative`),
  KEY `guest_school_idx` (`school`),
  CONSTRAINT `guest_school` FOREIGN KEY (`school`) REFERENCES `school` (`id_school`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_prize`
--

DROP TABLE IF EXISTS `guest_prize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest_prize` (
  `rfc` varchar(10) NOT NULL,
  `id_prize` int(11) NOT NULL,
  PRIMARY KEY (`rfc`,`id_prize`),
  KEY `gp_prize_idx` (`id_prize`),
  CONSTRAINT `gp_guest` FOREIGN KEY (`rfc`) REFERENCES `guest` (`rfc`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `gp_prize` FOREIGN KEY (`id_prize`) REFERENCES `prize` (`id_prize`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_prize`
--

LOCK TABLES `guest_prize` WRITE;
/*!40000 ALTER TABLE `guest_prize` DISABLE KEYS */;
/*!40000 ALTER TABLE `guest_prize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institute`
--

DROP TABLE IF EXISTS `institute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institute` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_event` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `institute_event_idx` (`id_event`),
  CONSTRAINT `institute_event` FOREIGN KEY (`id_event`) REFERENCES `event` (`id_event`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institute`
--

LOCK TABLES `institute` WRITE;
/*!40000 ALTER TABLE `institute` DISABLE KEYS */;
INSERT INTO `institute` VALUES (1,'INSTITUTO POLITÉCNICO NACIONAL',1),(2,'UNIVERSIDAD AUTÓNOMA DE MÉXICO',NULL);
/*!40000 ALTER TABLE `institute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `news` varchar(1000) NOT NULL,
  `id_event` int(11) NOT NULL,
  PRIMARY KEY (`news`,`id_event`),
  KEY `news_event_idx` (`id_event`),
  CONSTRAINT `news_event` FOREIGN KEY (`id_event`) REFERENCES `event` (`id_event`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prize`
--

DROP TABLE IF EXISTS `prize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prize` (
  `id_prize` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `block` int(11) NOT NULL,
  `speech` varchar(1000) NOT NULL,
  `amount` int(11) NOT NULL,
  `id_event` int(11) NOT NULL,
  PRIMARY KEY (`id_prize`),
  KEY `event_prize_idx` (`id_event`),
  CONSTRAINT `event_prize` FOREIGN KEY (`id_event`) REFERENCES `event` (`id_event`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prize`
--

LOCK TABLES `prize` WRITE;
/*!40000 ALTER TABLE `prize` DISABLE KEYS */;
INSERT INTO `prize` VALUES (1,'DIPLOMA A LA \"EFICIENCIA Y EFICACIA\"',1,'EL DIPLOMA A LA \"EFICIENCIA Y EFICACIA\" SE OTORGA AL PERSONAL DE APOYO Y ASISTENCIA A LA EDUCACIÓN QUE, POR RECONOCIDOS Y MERITORIOS SERVICIOS AL INSTITUTO, SE HA DISTINGUIDO EN EL DESEMPEÑO DE SUS LABORES.\n \nPARA NUESTRA COMUNIDAD ES DE GRAN SATISFACCIÓN RECONOCER PÚBLICAMENTE LA LABOR CONSTANTE Y CONSCIENTE QUE LOS COMPAÑEROS DESEMPEÑAN EN SU VIDA LABORAL.\n \nCON LA ANUENCIA DE NUESTRAS AUTORIDADES, EN ESTE MOMENTO DAREMOS INICIO A LA ENTREGA DE DICHOS DIPLOMAS, PARA LO CUAL INVITAMOS A NUESTRO PRESIDIUM A PONERSE DE PIE PARA PROCEDER A LA ENTREGA CORRESPONDIENTE.',221,1);
/*!40000 ALTER TABLE `prize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school` (
  `id_school` varchar(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `level` varchar(20) NOT NULL,
  `id_institute` int(11) NOT NULL,
  PRIMARY KEY (`id_school`),
  KEY `institute_school_idx` (`id_institute`),
  CONSTRAINT `institute_school` FOREIGN KEY (`id_institute`) REFERENCES `institute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES ('O1A000','Cecyt 1 \"Gonzálo Vázquez Vela\"','MEDIO SUPERIOR',1),('O1B000','Cecyt 2 \"Miguel Bernard\"','MEDIO SUPERIOR',1),('O1C000','Cecyt 3 \"Estanislao Ramírez Ruíz\"','MEDIO SUPERIOR',1),('O1D000','Cecyt 4 \"Lázaro Cárdenas\"','MEDIO SUPERIOR',1),('O1E000','Cecyt 7 \"Cuauhtémoc\"','MEDIO SUPERIOR',1),('O1F000','Cecyt 8 \"Narciso Bassols\"','MEDIO SUPERIOR',1),('O1G000','Cecyt 9 \"Juan de Dios Bátiz\"','MEDIO SUPERIOR',1),('O1H000','Cecyt 10 \"Carlos Vallejo Márquez\"','MEDIO SUPERIOR',1),('O1I000','Cecyt 11 \"Wilfrido Massieu\"','MEDIO SUPERIOR',1),('O1J000','Cet 1 \"Walter Cross Buchanan\"','MEDIO SUPERIOR',1),('O1K000','Cecyt 6 \"Miguel Othón de Mendizabal\"','MEDIO SUPERIOR',1),('O1L000','Cecyt 15 \"Diódoro Antúnez Echegaray\"','MEDIO SUPERIOR',1),('O1M000','Cecyt 5 \"Benito Juárez\"','MEDIO SUPERIOR',1),('O1N000','Cecyt 12 \"José María Morelos\"','MEDIO SUPERIOR',1),('O1O000','Cecyt 13 \"Ricardo Flores Magón\"','MEDIO SUPERIOR',1),('O1P000','Cecyt 14 \"Luis Enrique Erro\"','MEDIO SUPERIOR',1),('O1Q000','Cecyt 16 \"Hidalgo\"','MEDIO SUPERIOR',1),('O1R000','Cecyt 17 \"León, Guanajuato\"','MEDIO SUPERIOR',1);
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `username` int(11) NOT NULL,
  `password` varchar(256) NOT NULL,
  `job` varchar(60) NOT NULL,
  `id_institute` int(11) NOT NULL,
  PRIMARY KEY (`username`),
  KEY `user_institute_idx` (`id_institute`),
  CONSTRAINT `user_institute` FOREIGN KEY (`id_institute`) REFERENCES `institute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-01 21:15:14
