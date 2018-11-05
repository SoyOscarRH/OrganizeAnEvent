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
INSERT INTO `guest` VALUES ('AAAC670607',41,'Celia','Ayala','Arellano',NULL,NULL,NULL,NULL,'student','O1P000'),('AAMA580502',39,'José Antonio','Andrade','Morales',NULL,NULL,NULL,NULL,'student','O1P000'),('AAMJ550319',42,'José Juan','Aljama','Moral',NULL,NULL,NULL,NULL,'student','O1L000'),('AISL760127',33,'Lizeth','Avilés','Sánchez',NULL,NULL,NULL,NULL,'student','O1N000'),('BEHM730706',46,'Ma. Guadalupe del Carmen','Belmonte','Hernández',NULL,NULL,NULL,NULL,'student','O1R000'),('BEMG581122',32,'Gerardo','Bernal','Méndez',NULL,NULL,NULL,NULL,'student','O1I000'),('BOMJ600427',11,'Jesús Roberto','Bolivar','Meza',NULL,NULL,NULL,NULL,'student','O1D000'),('BUAI920831',23,'Ismael','Bruno','Arellano',NULL,NULL,NULL,NULL,'student','O1F000'),('CAAG560830',36,'Guadencio','Camacho','Alvarado',NULL,NULL,NULL,NULL,'student','O1O000'),('CABM811007',7,'Mariana Elizabeth','Chávez','Benítez',NULL,NULL,NULL,NULL,'student','O1C000'),('CACJ620311',13,'María Josefina','Campos','Cano',NULL,NULL,NULL,NULL,'student','O1M000'),('CAFJ811202',43,'Janet','Cadena','Flores',NULL,NULL,NULL,NULL,'student','O1L000'),('CICM700907',20,'María Mireya','Cristino','Castillo',NULL,NULL,NULL,NULL,'student','O1E000'),('CUPS631212',47,'Sonia Elizabeth','Cruz','Pérez',NULL,NULL,NULL,NULL,'student','O1J000'),('EAGC770416',6,'Carolina','Estrada','García',NULL,NULL,NULL,NULL,'student','O1B000'),('GARJ640319',16,'Juan José','García','Rivera',NULL,NULL,NULL,NULL,'student','O1K000'),('GARV801005',2,'Viridiana Karina','García','Romero',NULL,NULL,NULL,NULL,'student','O1A000'),('GUDE820907',35,'Edgar René','Guzmán','Delgado',NULL,NULL,NULL,NULL,'student','O1N000'),('GUHE740114',15,'Erika','Gutiérrez','Hernández',NULL,NULL,NULL,NULL,'student','O1M000'),('GUSV811105',3,'María Vianey','Gudiño','Sánchez',NULL,NULL,NULL,NULL,'student','O1A000'),('HEMP610409',1,'Patricia','Hernández','Monsalvo',NULL,NULL,NULL,NULL,'student','O1A000'),('JIMA610709',8,'Alejandra','Jiménez','Méndez',NULL,NULL,NULL,NULL,'student','O1C000'),('LOFT610501',12,'María Teresa','López','Flores',NULL,NULL,NULL,NULL,'student','O1D000'),('MAIU850513',30,'Uriel','Martínez','Islas',NULL,NULL,NULL,NULL,'student','O1I000'),('MASC731120',10,'Carolina','Mares','Sandoval',NULL,NULL,NULL,NULL,'student','O1D000'),('MOMA530924',26,'Alfonso','Morales','Martínez',NULL,NULL,NULL,NULL,'student','O1G000'),('MORA640123',27,'Arturo','Moreno','Reyes',NULL,NULL,NULL,NULL,'student','O1G000'),('NAMJ870131',24,'Joaquín Alejandro','Nares','Miller',NULL,NULL,NULL,NULL,'student','O1F000'),('NEEL730512',21,'Laura Alicia','Neyra','Estrada',NULL,NULL,NULL,NULL,'student','O1E000'),('OELE810505',22,'Edgar Josué','Ojeda','Layseca',NULL,NULL,NULL,NULL,'student','O1F000'),('OUFA850727',37,'Andrea Patricia','Olguín','Ferreira',NULL,NULL,NULL,NULL,'student','O1O000'),('PAGC570307',28,'Clotilde','Prado','García',NULL,NULL,NULL,NULL,'student','O1H000'),('PESL790811',19,'María de Lourdes','Peregrino','Sánchez',NULL,NULL,NULL,NULL,'student','O1E000'),('RALT520821',38,'María Teresa','Ramírez','Landeros',NULL,NULL,NULL,NULL,'student','O1O000'),('REIH830819',40,'Héctor Yair','Reyes','Izquierdo',NULL,NULL,NULL,NULL,'student','O1P000'),('ROAJ530902',48,'Juan','Romero','Amaya',NULL,NULL,NULL,NULL,'student','O1J000'),('ROCL700110',9,'José Luis Tonatihu','Rojas','Castro',NULL,NULL,NULL,NULL,'student','O1C000'),('ROLP651211',34,'Pedro','Rodríguez','Luevano',NULL,NULL,NULL,NULL,'student','O1N000'),('RORE650831',44,'Evangelina','Rojas','Rodríguez',NULL,NULL,NULL,NULL,'student','O1L000'),('RORR590111',49,'Rocío','Rodas','Ruíz',NULL,NULL,NULL,NULL,'student','O1J000'),('RUBM600910',18,'María Margarita','Ruíz','Badillo',NULL,NULL,NULL,NULL,'student','O1K000'),('SACC820315',17,'Catalina','Sánchez','Castillo',NULL,NULL,NULL,NULL,'student','O1K000'),('SADV700522',4,'Víctor Manuel','Salas','Domínguez',NULL,NULL,NULL,NULL,'student','O1B000'),('SAME770202',31,'María Esther','Sánchez','Marín',NULL,NULL,NULL,NULL,'student','O1I000'),('SAMJ740319',5,'Josefina','Sánchez','Monroy',NULL,NULL,NULL,NULL,'student','O1B000'),('SIGG840712',14,'Gustavo Rodolfo','Shields','García',NULL,NULL,NULL,NULL,'student','O1M000'),('SILL681102',45,'Luis Enrique','Sigler','Licona',NULL,NULL,NULL,NULL,'student','O1R000'),('SUCA511123',25,'Armando','Suárez','Caudillo',NULL,NULL,NULL,NULL,'student','O1G000'),('TOPE551216',29,'María Eugenia','Tome','Pérez',NULL,NULL,NULL,NULL,'student','O1H000');
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

-- Dump completed on 2018-11-04 18:51:51
