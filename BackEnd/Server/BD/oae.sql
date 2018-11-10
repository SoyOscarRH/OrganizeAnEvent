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
INSERT INTO `guest` VALUES ('AAAC670607',41,'Celia','Ayala','Arellano',NULL,NULL,NULL,NULL,'O1P000'),('AAFD851118',98,'Daniel','Álvarez','Fuentes',NULL,NULL,NULL,NULL,'O2R000'),('AALE860922',60,'Edith Yuliana','Amador','López',NULL,NULL,NULL,NULL,'O2G000'),('AAMA580502',39,'José Antonio','Andrade','Morales',NULL,NULL,NULL,NULL,'O1P000'),('AAMJ550319',42,'José Juan','Aljama','Moral',NULL,NULL,NULL,NULL,'O1L000'),('AAZA700603',56,'Ana María','Almanza','Zendejas',NULL,NULL,NULL,NULL,'O2C000'),('AISL760127',33,'Lizeth','Avilés','Sánchez',NULL,NULL,NULL,NULL,'O1N000'),('AULC650915',67,'Carlos','Aguilar','López',NULL,NULL,NULL,NULL,'O2H000'),('BABE570407',100,'Epifanio Donato','Barbabosa','Beltrán',NULL,NULL,NULL,NULL,'O2R000'),('BAEE770115',129,'Elda','Baranda','Esquivel',NULL,NULL,NULL,NULL,'P0L000'),('BAHH520810',103,'Hilda','Banda','Hernández',NULL,NULL,NULL,NULL,'O2T000'),('BAMV840328',52,'Víctor Alejandro','Banderas','Mérida',NULL,NULL,NULL,NULL,'O2B000'),('BEHM730706',46,'Ma. Guadalupe del Carmen','Belmonte','Hernández',NULL,NULL,NULL,NULL,'O1R000'),('BEJA641207',114,'María Alma','Benitez','Juárez',NULL,NULL,NULL,NULL,'O2W000'),('BEMG581122',32,'Gerardo','Bernal','Méndez',NULL,NULL,NULL,NULL,'O1I000'),('BOMJ600427',11,'Jesús Roberto','Bolivar','Meza',NULL,NULL,NULL,NULL,'O1D000'),('BUAI920831',23,'Ismael','Bruno','Arellano',NULL,NULL,NULL,NULL,'O1F000'),('CAAG560830',36,'Guadencio','Camacho','Alvarado',NULL,NULL,NULL,NULL,'O1O000'),('CAAN800412',110,'Norma Alicia','Caltenco','Arceo',NULL,NULL,NULL,NULL,'O2V000'),('CAAP690310',132,'Pablo','Cabrera','Alvarado',NULL,NULL,NULL,NULL,'P0H000'),('CABI750704',68,'Isidro','Castillo','Bautista',NULL,NULL,NULL,NULL,'O2H000'),('CABM811007',7,'Mariana Elizabeth','Chávez','Benítez',NULL,NULL,NULL,NULL,'O1C000'),('CACJ620311',13,'María Josefina','Campos','Cano',NULL,NULL,NULL,NULL,'O1M000'),('CACN810816',70,'Nayeli','Caballero','Cerpa',NULL,NULL,NULL,NULL,'O2I000'),('CAFJ811202',43,'Janet','Cadena','Flores',NULL,NULL,NULL,NULL,'O1L000'),('CAJC500324',80,'José Claudio','Chávez','Jiménez',NULL,NULL,NULL,NULL,'O2L000'),('CAJT580925',147,'Teresita','Cardona','Juárez',NULL,NULL,NULL,NULL,'P0Q000'),('CALA700920',89,'Adolfo','Cabrera','López',NULL,NULL,NULL,NULL,'O2P000'),('CANC800416',119,'César Servando','Casas','Núñez',NULL,NULL,NULL,NULL,'P0A000'),('CARE870706',150,'Edith Berenitze','Calvillo','Ramirez',NULL,NULL,NULL,NULL,'P0T000'),('CATJ800217',128,'Jorge Ivan','Carrillo','Tellez',NULL,NULL,NULL,NULL,'P0L000'),('CEPP650317',55,'Patricia','Cervantes','Pérez',NULL,NULL,NULL,NULL,'O2C000'),('CICM700907',20,'María Mireya','Cristino','Castillo',NULL,NULL,NULL,NULL,'O1E000'),('COSL680114',139,'María de Lourdes','Correa','Saldaña',NULL,NULL,NULL,NULL,'P0K000'),('CUDJ700330',112,'José Juan','Cruz','Durán',NULL,NULL,NULL,NULL,'O2V000'),('CUPS631212',47,'Sonia Elizabeth','Cruz','Pérez',NULL,NULL,NULL,NULL,'O1J000'),('CUVA600612',141,'Aida','Cruz','Vega',NULL,NULL,NULL,NULL,'P0J000'),('DUMJ520111',69,'Juana Leydy Yadira','Duarte','Mena',NULL,NULL,NULL,NULL,'O2H000'),('EAGC770416',6,'Carolina','Estrada','García',NULL,NULL,NULL,NULL,'O1B000'),('EIVI600524',74,'José Isaías','Enríquez','Vicente',NULL,NULL,NULL,NULL,'O2J000'),('FAGJ781015',86,'Jesús','Franco','Gómez',NULL,NULL,NULL,NULL,'O2Y000'),('FOBF680603',113,'María Francisca','Flores','Bárcenas',NULL,NULL,NULL,NULL,'O2W000'),('GACI730704',84,'Isabel Angélica','Gayosso','de la Cruz',NULL,NULL,NULL,NULL,'O2N000'),('GACJ590822',118,'Javier','Galván','Chávez',NULL,NULL,NULL,NULL,'O2X000'),('GACM710712',143,'María Martha','García','Coronado',NULL,NULL,NULL,NULL,'P0M000'),('GAGL620822',138,'María de Lourdes','Galicia','Galicia',NULL,NULL,NULL,NULL,'P0K000'),('GAJJ611026',117,'Jaime Ernesto','García','Jiménez',NULL,NULL,NULL,NULL,'O2X000'),('GALL661221',122,'María de Lourdes','García','López',NULL,NULL,NULL,NULL,'P0C000'),('GARJ640319',16,'Juan José','García','Rivera',NULL,NULL,NULL,NULL,'O1K000'),('GARV801005',2,'Viridiana Karina','García','Romero',NULL,NULL,NULL,NULL,'O1A000'),('GASA810421',105,'Annel','Galicia','San Miguel',NULL,NULL,NULL,NULL,'O2S000'),('GAXG691204',104,'Gustavo','Galicia','Xolalpa',NULL,NULL,NULL,NULL,'O2S000'),('GOAM910530',108,'Mario Iván','González','Abad',NULL,NULL,NULL,NULL,'O2U000'),('GOFA671026',58,'Adolfo','Gómez','Flores',NULL,NULL,NULL,NULL,'O2G000'),('GOPF630603',95,'Felipe','González','Pérez',NULL,NULL,NULL,NULL,'O2O000'),('GOPP651210',73,'María Patricia','Godínez','Pavón',NULL,NULL,NULL,NULL,'O2J000'),('GOZA600901',135,'Artemio','González','Zamudio',NULL,NULL,NULL,NULL,'P0I000'),('GUAJ850112',151,'Jazmín','Guerra','Alcántara',NULL,NULL,NULL,NULL,'L10000'),('GUCY710615',111,'Yolanda','Gutiérrez','Cárdenas',NULL,NULL,NULL,NULL,'O2V000'),('GUDE820907',35,'Edgar René','Guzmán','Delgado',NULL,NULL,NULL,NULL,'O1N000'),('GUGM570426',99,'Marcelino','Guzmán','Gallardo',NULL,NULL,NULL,NULL,'O2R000'),('GUHE740114',15,'Erika','Gutiérrez','Hernández',NULL,NULL,NULL,NULL,'O1M000'),('GUHL810712',152,'Luis Paul','Gutiérrez','Hernández',NULL,NULL,NULL,NULL,'L10000'),('GULR860123',127,'Roberto Antonio','Guzmán','León',NULL,NULL,NULL,NULL,'P0F000'),('GUPE640521',140,'Elías','Gutiérrez','Páramo',NULL,NULL,NULL,NULL,'P0K000'),('GURJ720122',64,'Jorge Alberto','Gutiérrez','Ramírez',NULL,NULL,NULL,NULL,'O2F000'),('GUSJ751114',148,'Juan Manuel','Guzmán','Salas',NULL,NULL,NULL,NULL,'P0P000'),('GUSV811105',3,'María Vianey','Gudiño','Sánchez',NULL,NULL,NULL,NULL,'O1A000'),('HEGU731014',121,'Ubaldo','Hernández','Gutiérrez',NULL,NULL,NULL,NULL,'P0A000'),('HEIM680226',115,'Martha','Hernández','Iturriaga',NULL,NULL,NULL,NULL,'O2W000'),('HELI891227',76,'Itzel Marisol','Hernández','Luis',NULL,NULL,NULL,NULL,'O2K000'),('HEMA760104',78,'Ana Laura','Hernández','Medina',NULL,NULL,NULL,NULL,'O2M000'),('HEMP610409',1,'Patricia','Hernández','Monsalvo',NULL,NULL,NULL,NULL,'O1A000'),('HESR530831',101,'Ramón','Herrera','Segovia',NULL,NULL,NULL,NULL,'O2T000'),('HUAE800531',96,'Edgar','Hurtado','Ávila',NULL,NULL,NULL,NULL,'O2O000'),('IANE820517',120,'Nereyda','Guadalupe','Ibarra',NULL,NULL,NULL,NULL,'P0A000'),('JEHJ620923',71,'Joselito Abilio','de Jesús','Herrera',NULL,NULL,NULL,NULL,'O2I000'),('JIMA610709',8,'Alejandra','Jiménez','Méndez',NULL,NULL,NULL,NULL,'O1C000'),('JUBD720623',145,'Dulce María','Juárez','Banda',NULL,NULL,NULL,NULL,'P0Q000'),('JULF841004',88,'Francisco','Juanes','Loera',NULL,NULL,NULL,NULL,'O2Z000'),('LOAA770303',61,'Adaluz','López','Ángeles',NULL,NULL,NULL,NULL,'O2E000'),('LOFT610501',12,'María Teresa','López','Flores',NULL,NULL,NULL,NULL,'O1D000'),('LORC630708',91,'Corina','López','Rangel',NULL,NULL,NULL,NULL,'O2P000'),('LORJ690319',142,'José','López','Ríos',NULL,NULL,NULL,NULL,'P0M000'),('MACM640411',153,'María Magdalena','Martínez','Carrillo',NULL,NULL,NULL,NULL,'L10000'),('MAIU850513',30,'Uriel','Martínez','Islas',NULL,NULL,NULL,NULL,'O1I000'),('MAPD850325',77,'Dalia','Martínez','Próspero',NULL,NULL,NULL,NULL,'O2K000'),('MAPG741025',137,'Gabino','Martínez','Pérez',NULL,NULL,NULL,NULL,'P0I000'),('MARA810111',125,'Álvaro','Martínez','Reyes',NULL,NULL,NULL,NULL,'P0F000'),('MASC731120',10,'Carolina','Mares','Sandoval',NULL,NULL,NULL,NULL,'O1D000'),('MATP810925',81,'Pablo Ricardo','Martínez','Téllez',NULL,NULL,NULL,NULL,'O2L000'),('MEBC660713',93,'Cesar Miguel','Mejía','Barradas',NULL,NULL,NULL,NULL,'O2Q000'),('MECV841214',144,'Verónica','Medina','Corral',NULL,NULL,NULL,NULL,'P0M000'),('MEDC870705',85,'Claudia del Carmen','Mendoza','Delgado',NULL,NULL,NULL,NULL,'O2Y000'),('MERA550906',136,'Arturo','Méndez','Romero',NULL,NULL,NULL,NULL,'P0I000'),('MOCE800511',133,'Esthela','Moreno','Chapa',NULL,NULL,NULL,NULL,'P0H000'),('MOMA530924',26,'Alfonso','Morales','Martínez',NULL,NULL,NULL,NULL,'O1G000'),('MORA621123',75,'Alma Delia','Morán','Ruíz',NULL,NULL,NULL,NULL,'O2K000'),('MORA640123',27,'Arturo','Moreno','Reyes',NULL,NULL,NULL,NULL,'O1G000'),('MORA740726',65,'Ana Aurora','Montoya','Ramírez',NULL,NULL,NULL,NULL,'O2F000'),('NAMJ870131',24,'Joaquín Alejandro','Nares','Miller',NULL,NULL,NULL,NULL,'O1F000'),('NARR700417',107,'María del Rosario','Nájera','Ramírez',NULL,NULL,NULL,NULL,'O2U000'),('NEEL730512',21,'Laura Alicia','Neyra','Estrada',NULL,NULL,NULL,NULL,'O1E000'),('NERM870525',87,'María Monserrat','Neria','Reyes',NULL,NULL,NULL,NULL,'O2Z000'),('NOVJ720424',124,'Jorge','Noriega','Villa',NULL,NULL,NULL,NULL,'P0C000'),('OELE810505',22,'Edgar Josué','Ojeda','Layseca',NULL,NULL,NULL,NULL,'O1F000'),('OUFA850727',37,'Andrea Patricia','Olguín','Ferreira',NULL,NULL,NULL,NULL,'O1O000'),('PAGC570307',28,'Clotilde','Prado','García',NULL,NULL,NULL,NULL,'O1H000'),('PAMI691010',130,'Irene','Plata','Monroy',NULL,NULL,NULL,NULL,'P0N000'),('PEDH721121',79,'Héctor','Peña','Domínguez',NULL,NULL,NULL,NULL,'O2L000'),('PEMN701116',116,'Norma Angélica','Pérez','Moctezuma',NULL,NULL,NULL,NULL,'O2X000'),('PESL790811',19,'María de Lourdes','Peregrino','Sánchez',NULL,NULL,NULL,NULL,'O1E000'),('QUHC650913',134,'María del Carmen','Quiroz','Herrera',NULL,NULL,NULL,NULL,'P0H000'),('RABC690320',57,'Claudia','Ramírez','Brassetti',NULL,NULL,NULL,NULL,'O2C000'),('RALT520821',38,'María Teresa','Ramírez','Landeros',NULL,NULL,NULL,NULL,'O1O000'),('RASR710510',126,'Raquel','Ramón','Sosa',NULL,NULL,NULL,NULL,'P0F000'),('RAVM650728',50,'Ma. Victoria','Rafael','Valdivia',NULL,NULL,NULL,NULL,'O2D000'),('REGM590502',53,'Magdalena','Reyes','García',NULL,NULL,NULL,NULL,'O2B000'),('REIH830819',40,'Héctor Yair','Reyes','Izquierdo',NULL,NULL,NULL,NULL,'O1P000'),('RERF841114',123,'Flor Isela','Retana','Rentería',NULL,NULL,NULL,NULL,'P0C000'),('RICF720523',83,'Francisco Alejandro','Ríos','Coria',NULL,NULL,NULL,NULL,'O2N000'),('RIRL780924',131,'Luis','Rizo','Ruíz',NULL,NULL,NULL,NULL,'P0N000'),('ROAJ530902',48,'Juan','Romero','Amaya',NULL,NULL,NULL,NULL,'O1J000'),('ROCC730916',63,'Cornelio','Romero','Cruz',NULL,NULL,NULL,NULL,'O2E000'),('ROCL700110',9,'José Luis Tonatihu','Rojas','Castro',NULL,NULL,NULL,NULL,'O1C000'),('ROHI710319',54,'Ivonne','Romo','Hernández',NULL,NULL,NULL,NULL,'O2A000'),('ROHL720825',72,'Luis Francisco','Rodríguez','Hernández',NULL,NULL,NULL,NULL,'O2J000'),('ROLP651211',34,'Pedro','Rodríguez','Luevano',NULL,NULL,NULL,NULL,'O1N000'),('ROPA880429',102,'Ana Montserrat','Romero','Paredes',NULL,NULL,NULL,NULL,'O2T000'),('RORE650831',44,'Evangelina','Rojas','Rodríguez',NULL,NULL,NULL,NULL,'O1L000'),('RORR590111',49,'Rocío','Rodas','Ruíz',NULL,NULL,NULL,NULL,'O1J000'),('RUBM600910',18,'María Margarita','Ruíz','Badillo',NULL,NULL,NULL,NULL,'O1K000'),('SACC820315',17,'Catalina','Sánchez','Castillo',NULL,NULL,NULL,NULL,'O1K000'),('SADV700522',4,'Víctor Manuel','Salas','Domínguez',NULL,NULL,NULL,NULL,'O1B000'),('SAEB601008',94,'María Beatriz','Sánchez','Estrada',NULL,NULL,NULL,NULL,'O2Q000'),('SALV610526',62,'Victor','Sandoval','Lobato',NULL,NULL,NULL,NULL,'O2E000'),('SAME770202',31,'María Esther','Sánchez','Marín',NULL,NULL,NULL,NULL,'O1I000'),('SAMJ740319',5,'Josefina','Sánchez','Monroy',NULL,NULL,NULL,NULL,'O1B000'),('SAML711230',97,'Luz María','Sánchez','Martínez',NULL,NULL,NULL,NULL,'O2O000'),('SARF761129',109,'Francisco Javier','Sánchez','Romero',NULL,NULL,NULL,NULL,'O2U000'),('SASF660302',146,'José Federico','Sánchez','Sosa',NULL,NULL,NULL,NULL,'P0Q000'),('SIGG840712',14,'Gustavo Rodolfo','Shields','García',NULL,NULL,NULL,NULL,'O1M000'),('SILL681102',45,'Luis Enrique','Sigler','Licona',NULL,NULL,NULL,NULL,'O1R000'),('SUCA511123',25,'Armando','Suárez','Caudillo',NULL,NULL,NULL,NULL,'O1G000'),('TOAF601224',82,'Francisco Javier','Torres','Argüelles',NULL,NULL,NULL,NULL,'O2N000'),('TOBE620920',92,'Eduardo','Torres','Buenrostro',NULL,NULL,NULL,NULL,'O2Q000'),('TOGA770224',66,'Alfredo','Torres','García',NULL,NULL,NULL,NULL,'O2F000'),('TOMJ650420',149,'Joel','Toledo','Molano',NULL,NULL,NULL,NULL,'P0P000'),('TOPE551216',29,'María Eugenia','Tome','Pérez',NULL,NULL,NULL,NULL,'O1H000'),('TORG630413',90,'Gloria','Tovar','Rojo',NULL,NULL,NULL,NULL,'O2P000'),('VECK781228',106,'Karina Vianey','Vergara','Camacho',NULL,NULL,NULL,NULL,'O2S000'),('VINA780922',51,'Ana Laura','Villalpando','Nava',NULL,NULL,NULL,NULL,'O2D000'),('ZACR760228',59,'Rosario Angélica','Zavala','Candelaria',NULL,NULL,NULL,NULL,'O2G000');
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
INSERT INTO `school` VALUES ('L10000','Dirección de Cómputo y Comunicaciones','ADMINISTRACIÓN',1),('O1A000','Centro de Estudios Científicos y Tecnológicos 1 \"Gonzálo Vázquez Vela\"','MEDIO SUPERIOR',1),('O1B000','Centro de Estudios Científicos y Tecnológicos 2 \"Miguel Bernard\"','MEDIO SUPERIOR',1),('O1C000','Centro de Estudios Científicos y Tecnológicos 3 \"Estanislao Ramírez Ruíz\"','MEDIO SUPERIOR',1),('O1D000','Centro de Estudios Científicos y Tecnológicos 4 \"Lázaro Cárdenas\"','MEDIO SUPERIOR',1),('O1E000','Centro de Estudios Científicos y Tecnológicos 7 \"Cuauhtémoc\"','MEDIO SUPERIOR',1),('O1F000','Centro de Estudios Científicos y Tecnológicos 8 \"Narciso Bassols\"','MEDIO SUPERIOR',1),('O1G000','Centro de Estudios Científicos y Tecnológicos 9 \"Juan de Dios Bátiz\"','MEDIO SUPERIOR',1),('O1H000','Centro de Estudios Científicos y Tecnológicos 10 \"Carlos Vallejo Márquez\"','MEDIO SUPERIOR',1),('O1I000','Centro de Estudios Científicos y Tecnológicos 11 \"Wilfrido Massieu\"','MEDIO SUPERIOR',1),('O1J000','Centro de Estudios Tecnológicos 1 \"Walter Cross Buchanan\"','MEDIO SUPERIOR',1),('O1K000','Centro de Estudios Científicos y Tecnológicos 6 \"Miguel Othón de Mendizabal\"','MEDIO SUPERIOR',1),('O1L000','Centro de Estudios Científicos y Tecnológicos 15 \"Diódoro Antúnez Echegaray\"','MEDIO SUPERIOR',1),('O1M000','Centro de Estudios Científicos y Tecnológicos 5 \"Benito Juárez\"','MEDIO SUPERIOR',1),('O1N000','Centro de Estudios Científicos y Tecnológicos 12 \"José María Morelos\"','MEDIO SUPERIOR',1),('O1O000','Centro de Estudios Científicos y Tecnológicos 13 \"Ricardo Flores Magón\"','MEDIO SUPERIOR',1),('O1P000','Centro de Estudios Científicos y Tecnológicos 14 \"Luis Enrique Erro\"','MEDIO SUPERIOR',1),('O1Q000','Centro de Estudios Científicos y Tecnológicos 16 \"Hidalgo\"','MEDIO SUPERIOR',1),('O1R000','Centro de Estudios Científicos y Tecnológicos 17 \"León, Guanajuato\"','MEDIO SUPERIOR',1),('O2A000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Azcapotzalco','SUPERIOR',1),('O2B000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Culhuacán','SUPERIOR',1),('O2C000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Ticomán','SUPERIOR',1),('O2D000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Zacatenco','SUPERIOR',1),('O2E000','Escuela Superior de Ingeniería y Arquitectura Unidad Tecamachalco','SUPERIOR',1),('O2F000','Escuela Superior de Ingeniería y Arquitectura Unidad Ticomán','SUPERIOR',1),('O2G000','Escuela Superior de Ingeniería y Arquitectura Unidad Zacatenco','SUPERIOR',1),('O2H000','Escuela Superior de Ingeniería Textil','SUPERIOR',1),('O2I000','Escuela Superior de Ingeniería Química e Industrias Extractivas','SUPERIOR',1),('O2J000','Escuela Superior de Física y Matemáticas','SUPERIOR',1),('O2K000','Escuela Superior de Computación','SUPERIOR',1),('O2L000','Unidad Profesional Interdisciplinaria en Ingeniería y Tecnologías Avanzadas','SUPERIOR',1),('O2M000','Unidad Profesional Interdisciplinaria de Ingeniería y Ciencias Sociales y Administrativas','SUPERIOR',1),('O2N000','Unidad Profesional Interdisciplinaria de Biotecnología','SUPERIOR',1),('O2O000','Escuela Nacional de Medicina y Homeopatía','SUPERIOR',1),('O2P000','Escuela Nacional de Ciencias Biológicas','SUPERIOR',1),('O2Q000','Escuela Superior de Medicina','SUPERIOR',1),('O2R000','Escuela Superior de Enfermería y Obstetricia','SUPERIOR',1),('O2S000','Centro Interdisciplinario de Ciencias de la Salud Unidad Milpa Alta','SUPERIOR',1),('O2T000','Centro Interdisciplinario de Ciencias de la Salud Unidad Santo Tomás','SUPERIOR',1),('O2U000','Escuela Superior de Comercio y Administración Unidad Santo Tomás','SUPERIOR',1),('O2V000','Escuela Superior de Comercio y Administración Unidad Tepepan','SUPERIOR',1),('O2W000','Escuela Superior de Economía','SUPERIOR',1),('O2X000','Escuela Superior de Turismo','SUPERIOR',1),('O2Y000','Unidad Profesional Interdisciplinaria de Ingeniería Campus Guanajuato','SUPERIOR',1),('O2Z000','Unidad Profesional Interdisciplinaria de Ingeniería Campus Zacatecas','SUPERIOR',1),('P0A000','Centro Interdisciplinario de Ciencias Marinas','POSGRADO',1),('P0C000','Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional Unidad Durango','POSGRADO',1),('P0F000','Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional Unidad Oaxaca','POSGRADO',1),('P0H000','Centro de Biotecnología Genómica','POSGRADO',1),('P0I000','Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada Unidad Legaria','POSGRADO',1),('P0J000','Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada Unidad Altamira','POSGRADO',1),('P0K000','Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada Unidad Querétaro','POSGRADO',1),('P0L000','Centro de Investigación en Computación','POSGRADO',1),('P0M000','Centro de Investigación y Desarrollo de Tecnología Digital','POSGRADO',1),('P0N000','Centro de Investigaciones Económicas, Administrativas y Sociales','POSGRADO',1),('P0P000','Centro de Innovación y Desarrollo Tecnológico en Computo','POSGRADO',1),('P0Q000','Centro de Investigación e Innovación Tecnológica','POSGRADO',1),('P0T000','Centro de Nanociencias y Micro y Nanotecnologías','POSGRADO',1),('R5D000','Centro de Educación Contínua Unidad Culiacán','CENTRO',1),('R5E000','Centro de Educación Contínua Unidad Los Mochis','CENTRO',1),('R5K000','Centro de Educación Contínua Unidad Tijuana','CENTRO',1),('R5M000','Centro de Educación Contínua Unidad Durango','CENTRO',1);
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

-- Dump completed on 2018-11-10  0:02:10
