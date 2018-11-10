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
  `des` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id_event`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'DISTINCIONES AL MÉRITO POLITÉCNICO 2018',NULL,NULL,'LAS DISTINCIONES AL MÉRITO POLITÉCNICO SON EL RECONOCIMIENTO QUE HACE LA COMUNIDAD POLITÉCNICA A UNA CONDUCTA, TRAYECTORIA, SERVICIO O ACCIÓN EJEMPLAR, SOBRESALIENTE, QUE HAYA TENIDO POR OBJETO EXHALTAR EL PRESTIGIO DEL INSTITUTO POLITÉCNICO NACIONAL, PARA APOYAR LA REALIZACIÓN DE SUS FINALIDADES: IMPULSAR EL DESARROLLO DE LA EDUCACIÓN TÉCNICA EN EL PAÍS O BENEFICIAR A LA HUMANIDAD.\n\nEN ESTA OCASIÓN EL CONSEJO GENERAL CONSULTIVO HA DECIDIDO OTORGAR \n');
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
  KEY `guest_school_idx` (`school`),
  CONSTRAINT `guest_school` FOREIGN KEY (`school`) REFERENCES `school` (`id_school`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
INSERT INTO `guest` VALUES ('AAAC670607',41,'Celia','Ayala','Arellano',NULL,NULL,0,NULL,'O1P000'),('AAFD851118',98,'Daniel','Álvarez','Fuentes',NULL,NULL,0,NULL,'O2R000'),('AAIA810312',159,'José Andrés','Álvarez','Ibarra',NULL,NULL,0,NULL,'R5E000'),('AALE860922',60,'Edith Yuliana','Amador','López',NULL,NULL,0,NULL,'O2G000'),('AAMA580502',39,'José Antonio','Andrade','Morales',NULL,NULL,0,NULL,'O1P000'),('AAMJ550319',42,'José Juan','Aljama','Moral',NULL,NULL,0,NULL,'O1L000'),('AARE791201',179,'María Elena','Álvarez','Rodríguez',NULL,NULL,0,NULL,'O10000'),('AAZA700603',56,'Ana María','Almanza','Zendejas',NULL,NULL,0,NULL,'O2C000'),('AIGE760708',161,'Esperanza','Aviña','García',NULL,NULL,0,NULL,'R5K000'),('AISL760127',33,'Lizeth','Avilés','Sánchez',NULL,NULL,0,NULL,'O1N000'),('AULC650915',67,'Carlos','Aguilar','López',NULL,NULL,0,NULL,'O2H000'),('AUTV660101',203,'Víctor Manuel','Aguilar','Tlapale',NULL,NULL,0,NULL,'K20000'),('BAAC641022',180,'César','Basurto','Acevedo',NULL,NULL,0,NULL,'R40000'),('BABE570407',100,'Epifanio Donato','Barbabosa','Beltrán',NULL,NULL,0,NULL,'O2R000'),('BAEE770115',129,'Elda','Baranda','Esquivel',NULL,NULL,0,NULL,'P0L000'),('BAGA541105',204,'Ana María','Baeza','Gómez',NULL,NULL,0,NULL,'K10000'),('BAHH520810',103,'Hilda','Banda','Hernández',NULL,NULL,0,NULL,'O2T000'),('BAMV840328',52,'Víctor Alejandro','Banderas','Mérida',NULL,NULL,0,NULL,'O2B000'),('BASR381220',224,'José Roberto de Jesús','Bastarrachea','Sabido',NULL,NULL,0,NULL,'O2Q000'),('BEHM730706',46,'Ma. Guadalupe del Carmen','Belmonte','Hernández',NULL,NULL,0,NULL,'O1R000'),('BEJA641207',114,'María Alma','Benitez','Juárez',NULL,NULL,0,NULL,'O2W000'),('BEMG581122',32,'Gerardo','Bernal','Méndez',NULL,NULL,0,NULL,'O1I000'),('BOMJ600427',11,'Jesús Roberto','Bolivar','Meza',NULL,NULL,0,NULL,'O1D000'),('BUAI920831',23,'Ismael','Bruno','Arellano',NULL,NULL,0,NULL,'O1F000'),('CAAG560830',36,'Guadencio','Camacho','Alvarado',NULL,NULL,0,NULL,'O1O000'),('CAAN800412',110,'Norma Alicia','Caltenco','Arceo',NULL,NULL,0,NULL,'O2V000'),('CAAP690310',132,'Pablo','Cabrera','Alvarado',NULL,NULL,0,NULL,'P0H000'),('CABI750704',68,'Isidro','Castillo','Bautista',NULL,NULL,0,NULL,'O2H000'),('CABM811007',7,'Mariana Elizabeth','Chávez','Benítez',NULL,NULL,0,NULL,'O1C000'),('CACJ620311',13,'María Josefina','Campos','Cano',NULL,NULL,0,NULL,'O1M000'),('CACN810816',70,'Nayeli','Caballero','Cerpa',NULL,NULL,0,NULL,'O2I000'),('CADR791106',223,'Rafael','Castañeda','Díaz',NULL,NULL,0,NULL,'O2Z000'),('CAFJ811202',43,'Janet','Cadena','Flores',NULL,NULL,0,NULL,'O1L000'),('CAJC500324',80,'José Claudio','Chávez','Jiménez',NULL,NULL,0,NULL,'O2L000'),('CAJT580925',147,'Teresita','Cardona','Juárez',NULL,NULL,0,NULL,'P0Q000'),('CALA700920',89,'Adolfo','Cabrera','López',NULL,NULL,0,NULL,'O2P000'),('CANC800416',119,'César Servando','Casas','Núñez',NULL,NULL,0,NULL,'P0A000'),('CARA550419',186,'Antonio','Castillo','Rivas',NULL,NULL,0,NULL,'Q50000'),('CARE870706',150,'Edith Berenitze','Calvillo','Ramirez',NULL,NULL,0,NULL,'P0T000'),('CATJ800217',128,'Jorge Ivan','Carrillo','Tellez',NULL,NULL,0,NULL,'P0L000'),('CEBL641209',190,'Luis','Ceballos','Barragán',NULL,NULL,0,NULL,'S30000'),('CEGG770409',188,'Gloria Araceli','Cedillo','González',NULL,NULL,0,NULL,'Q40000'),('CEPP650317',55,'Patricia','Cervantes','Pérez',NULL,NULL,0,NULL,'O2C000'),('CICM700907',20,'María Mireya','Cristino','Castillo',NULL,NULL,0,NULL,'O1E000'),('COGX700718',189,'María Eugenia','Contreras','Gallardo',NULL,NULL,0,NULL,'Q40000'),('COSL680114',139,'María de Lourdes','Correa','Saldaña',NULL,NULL,0,NULL,'P0K000'),('COVC500403',171,'María Cristina','Colín','Villanueva',NULL,NULL,0,NULL,'XXXXXX'),('CUDJ700330',112,'José Juan','Cruz','Durán',NULL,NULL,0,NULL,'O2V000'),('CUPS631212',47,'Sonia Elizabeth','Cruz','Pérez',NULL,NULL,0,NULL,'O1J000'),('CUVA600612',141,'Aida','Cruz','Vega',NULL,NULL,0,NULL,'P0J000'),('DEAV540628',192,'Víctor Manuel','Delgado','Arellano',NULL,NULL,0,NULL,'S30000'),('DUMJ520111',69,'Juana Leydy Yadira','Duarte','Mena',NULL,NULL,0,NULL,'O2H000'),('EAGC770416',6,'Carolina','Estrada','García',NULL,NULL,0,NULL,'O1B000'),('EAMM710909',213,'Martha','Escalante','Morales',NULL,NULL,0,NULL,'T63020'),('EARG821010',155,'Georgina Irasema','Estrada','Rivera',NULL,NULL,0,NULL,'R5D000'),('EIVI600524',74,'José Isaías','Enríquez','Vicente',NULL,NULL,0,NULL,'O2J000'),('FAGJ781015',86,'Jesús','Franco','Gómez',NULL,NULL,0,NULL,'O2Y000'),('FERA561101',166,'Ángela','Félix','Reyes',NULL,NULL,0,NULL,'J60000'),('FOBF680603',113,'María Francisca','Flores','Bárcenas',NULL,NULL,0,NULL,'O2W000'),('FOGR691218',202,'Rubén','Fonseca','Gutiérrez',NULL,NULL,0,NULL,'K00000'),('GACI590603',199,'José Isaac','García','Carmona',NULL,NULL,0,NULL,'T60000'),('GACI730704',84,'Isabel Angélica','Gayosso','de la Cruz',NULL,NULL,0,NULL,'O2N000'),('GACJ590822',118,'Javier','Galván','Chávez',NULL,NULL,0,NULL,'O2X000'),('GACM710712',143,'María Martha','García','Coronado',NULL,NULL,0,NULL,'P0M000'),('GADF790414',201,'Fabiola','García','Durán',NULL,NULL,0,NULL,'T60000'),('GAGE930619',211,'Ernesto Saúl','Galván','González',NULL,NULL,0,NULL,'T63000'),('GAGL620822',138,'María de Lourdes','Galicia','Galicia',NULL,NULL,0,NULL,'P0K000'),('GAJJ611026',117,'Jaime Ernesto','García','Jiménez',NULL,NULL,0,NULL,'O2X000'),('GALL661221',122,'María de Lourdes','García','López',NULL,NULL,0,NULL,'P0C000'),('GARJ640319',16,'Juan José','García','Rivera',NULL,NULL,0,NULL,'O1K000'),('GARV801005',2,'Viridiana Karina','García','Romero',NULL,NULL,0,NULL,'O1A000'),('GASA810421',105,'Annel','Galicia','San Miguel',NULL,NULL,0,NULL,'O2S000'),('GAVT670924',200,'María Teresa','García','Vázquez',NULL,NULL,0,NULL,'T60000'),('GAXG691204',104,'Gustavo','Galicia','Xolalpa',NULL,NULL,0,NULL,'O2S000'),('GOAM910530',108,'Mario Iván','González','Abad',NULL,NULL,0,NULL,'O2U000'),('GODA750831',172,'Alberto Jorge','González','Díaz',NULL,NULL,0,NULL,'XXXXXX'),('GOEE930613',169,'Erick','Gordillo','Escobar',NULL,NULL,0,NULL,'JE0000'),('GOFA671026',58,'Adolfo','Gómez','Flores',NULL,NULL,0,NULL,'O2G000'),('GOHL460918',225,'Luis Arturo','González','Hernández',NULL,NULL,0,NULL,'P0M000'),('GOPF630603',95,'Felipe','González','Pérez',NULL,NULL,0,NULL,'O2O000'),('GOPP651210',73,'María Patricia','Godínez','Pavón',NULL,NULL,0,NULL,'O2J000'),('GOVN621207',181,'Norma Angélica','Godínez','Vallejo',NULL,NULL,0,NULL,'Q00000'),('GOZA600901',135,'Artemio','González','Zamudio',NULL,NULL,0,NULL,'P0I000'),('GUAJ850112',151,'Jazmín','Guerra','Alcántara',NULL,NULL,0,NULL,'L10000'),('GUAV770529',210,'Vianey','Guerra','Alcantara',NULL,NULL,0,NULL,'R0F000'),('GUCY710615',111,'Yolanda','Gutiérrez','Cárdenas',NULL,NULL,0,NULL,'O2V000'),('GUDE820907',35,'Edgar René','Guzmán','Delgado',NULL,NULL,0,NULL,'O1N000'),('GUGM570426',99,'Marcelino','Guzmán','Gallardo',NULL,NULL,0,NULL,'O2R000'),('GUHE740114',15,'Erika','Gutiérrez','Hernández',NULL,NULL,0,NULL,'O1M000'),('GUHL810712',152,'Luis Paul','Gutiérrez','Hernández',NULL,NULL,0,NULL,'L10000'),('GULR860123',127,'Roberto Antonio','Guzmán','León',NULL,NULL,0,NULL,'P0F000'),('GUPE640521',140,'Elías','Gutiérrez','Páramo',NULL,NULL,0,NULL,'P0K000'),('GUPS640707',198,'Silvino','Guerrero','Peña',NULL,NULL,0,NULL,'T50000'),('GURJ720122',64,'Jorge Alberto','Gutiérrez','Ramírez',NULL,NULL,0,NULL,'O2F000'),('GUSJ751114',148,'Juan Manuel','Guzmán','Salas',NULL,NULL,0,NULL,'P0P000'),('GUSV811105',3,'María Vianey','Gudiño','Sánchez',NULL,NULL,0,NULL,'O1A000'),('HEBP580102',167,'Patricia','Hernández','Balderas',NULL,NULL,0,NULL,'J60000'),('HEGU731014',121,'Ubaldo','Hernández','Gutiérrez',NULL,NULL,0,NULL,'P0A000'),('HEIM680226',115,'Martha','Hernández','Iturriaga',NULL,NULL,0,NULL,'O2W000'),('HELI891227',76,'Itzel Marisol','Hernández','Luis',NULL,NULL,0,NULL,'O2K000'),('HEMA760104',78,'Ana Laura','Hernández','Medina',NULL,NULL,0,NULL,'O2M000'),('HEMP610409',1,'Patricia','Hernández','Monsalvo',NULL,NULL,0,NULL,'O1A000'),('HERA631206',218,'Alicia','Hernández','Ramírez',NULL,NULL,0,NULL,'T63010'),('HESR530831',101,'Ramón','Herrera','Segovia',NULL,NULL,0,NULL,'O2T000'),('HUAE800531',96,'Edgar','Hurtado','Ávila',NULL,NULL,0,NULL,'O2O000'),('IANE820517',120,'Nereyda','Guadalupe','Ibarra',NULL,NULL,0,NULL,'P0A000'),('IAOV730304',191,'Víctor Manuel','Islas','Olivos',NULL,NULL,0,NULL,'S30000'),('IAPE721117',193,'Enedelia','Ibarra','Pineda',NULL,NULL,0,NULL,'T40000'),('JAVD540613',226,'David','Jaramillo','Vigueras',NULL,NULL,0,NULL,'P0Q000'),('JEHJ620923',71,'Joselito Abilio','de Jesús','Herrera',NULL,NULL,0,NULL,'O2I000'),('JIMA610709',8,'Alejandra','Jiménez','Méndez',NULL,NULL,0,NULL,'O1C000'),('JUBD720623',145,'Dulce María','Juárez','Banda',NULL,NULL,0,NULL,'P0Q000'),('JULF841004',88,'Francisco','Juanes','Loera',NULL,NULL,0,NULL,'O2Z000'),('JULM671105',175,'Ma. Isabel','Juárez','Lara',NULL,NULL,0,NULL,'N00000'),('LOAA770303',61,'Adaluz','López','Ángeles',NULL,NULL,0,NULL,'O2E000'),('LOFT610501',12,'María Teresa','López','Flores',NULL,NULL,0,NULL,'O1D000'),('LOGE810825',215,'Esmirna Concepción','López','Gallegos',NULL,NULL,0,NULL,'T63040'),('LORC630708',91,'Corina','López','Rangel',NULL,NULL,0,NULL,'O2P000'),('LORJ690319',142,'José','López','Ríos',NULL,NULL,0,NULL,'P0M000'),('LOUS630530',194,'SiIvia Rosa','Lopeandia','Urbina',NULL,NULL,0,NULL,'T40000'),('MABV750223',183,'Víctor Alberto','Martínez','Bautista',NULL,NULL,0,NULL,'Q30000'),('MACM640411',153,'María Magdalena','Martínez','Carrillo',NULL,NULL,0,NULL,'L10000'),('MAIU850513',30,'Uriel','Martínez','Islas',NULL,NULL,0,NULL,'O1I000'),('MALA861025',208,'Alejandra Danae','Martínez','López',NULL,NULL,0,NULL,'O0A000'),('MANK750818',162,'Karol Angélica','Marín','Nova',NULL,NULL,0,NULL,'R5K000'),('MAPD850325',77,'Dalia','Martínez','Próspero',NULL,NULL,0,NULL,'O2K000'),('MAPG741025',137,'Gabino','Martínez','Pérez',NULL,NULL,0,NULL,'P0I000'),('MARA810111',125,'Álvaro','Martínez','Reyes',NULL,NULL,0,NULL,'P0F000'),('MARR730921',205,'Rosario','Márquez','Ramírez',NULL,NULL,0,NULL,'L00000'),('MASC731120',10,'Carolina','Mares','Sandoval',NULL,NULL,0,NULL,'O1D000'),('MASO581005',154,'Sofía','Macías',' ',NULL,NULL,0,NULL,'R5D000'),('MATP810925',81,'Pablo Ricardo','Martínez','Téllez',NULL,NULL,0,NULL,'O2L000'),('MEBC660713',93,'Cesar Miguel','Mejía','Barradas',NULL,NULL,0,NULL,'O2Q000'),('MECV841214',144,'Verónica','Medina','Corral',NULL,NULL,0,NULL,'P0M000'),('MEDC870705',85,'Claudia del Carmen','Mendoza','Delgado',NULL,NULL,0,NULL,'O2Y000'),('MEER810505',229,'Ricardo','Medel','Esquivel',NULL,NULL,0,NULL,'P0I000'),('MERA550906',136,'Arturo','Méndez','Romero',NULL,NULL,0,NULL,'P0I000'),('MOAJ631206',174,'Ma. Julia','Morales','Álvarez',NULL,NULL,0,NULL,'N00000'),('MOCE800511',133,'Esthela','Moreno','Chapa',NULL,NULL,0,NULL,'P0H000'),('MOLP601009',184,'Pablo','Monjarás','López',NULL,NULL,0,NULL,'Q10000'),('MOMA530924',26,'Alfonso','Morales','Martínez',NULL,NULL,0,NULL,'O1G000'),('MORA621123',75,'Alma Delia','Morán','Ruíz',NULL,NULL,0,NULL,'O2K000'),('MORA640123',27,'Arturo','Moreno','Reyes',NULL,NULL,0,NULL,'O1G000'),('MORA740726',65,'Ana Aurora','Montoya','Ramírez',NULL,NULL,0,NULL,'O2F000'),('NAMJ870131',24,'Joaquín Alejandro','Nares','Miller',NULL,NULL,0,NULL,'O1F000'),('NARR700417',107,'María del Rosario','Nájera','Ramírez',NULL,NULL,0,NULL,'O2U000'),('NEEL730512',21,'Laura Alicia','Neyra','Estrada',NULL,NULL,0,NULL,'O1E000'),('NERM870525',87,'María Monserrat','Neria','Reyes',NULL,NULL,0,NULL,'O2Z000'),('NOVJ720424',124,'Jorge','Noriega','Villa',NULL,NULL,0,NULL,'P0C000'),('OELE810505',22,'Edgar Josué','Ojeda','Layseca',NULL,NULL,0,NULL,'O1F000'),('OIRA730527',206,'Alfredo Erasto','Ortiz','Rodríguez',NULL,NULL,0,NULL,'O0A000'),('OORC880806',196,'Carolina','Oropeza','Ramírez',NULL,NULL,0,NULL,'T50000'),('OUFA850727',37,'Andrea Patricia','Olguín','Ferreira',NULL,NULL,0,NULL,'O1O000'),('PAGC570307',28,'Clotilde','Prado','García',NULL,NULL,0,NULL,'O1H000'),('PALG831114',163,'María Guadalupe','Parga','López',NULL,NULL,0,NULL,'JA1000'),('PAMI691010',130,'Irene','Plata','Monroy',NULL,NULL,0,NULL,'P0N000'),('PEDH721121',79,'Héctor','Peña','Domínguez',NULL,NULL,0,NULL,'O2L000'),('PEMN701116',116,'Norma Angélica','Pérez','Moctezuma',NULL,NULL,0,NULL,'O2X000'),('PESL790811',19,'María de Lourdes','Peregrino','Sánchez',NULL,NULL,0,NULL,'O1E000'),('PETS750209',227,'Sonia Mayra','Pérez','Tapia',NULL,NULL,0,NULL,'O2P000'),('PICA790917',160,'Arianna Arozibel','Pineda','Carrasco',NULL,NULL,0,NULL,'R5E000'),('POMP800723',187,'Pablo','Poo','Mendieta',NULL,NULL,0,NULL,'Q40000'),('PUMF820301',212,'Francisco','Pulido','Morales',NULL,NULL,0,NULL,'T63000'),('QUDN750305',219,'Narda Araceli','Quintana','Diosdado',NULL,NULL,0,NULL,'T63050'),('QUHC650913',134,'María del Carmen','Quiroz','Herrera',NULL,NULL,0,NULL,'P0H000'),('RAAA740815',185,'Alfredo','Ramirez','Arechar',NULL,NULL,0,NULL,'Q10000'),('RAAD681019',164,'Diana Laura','Ramírez','Álvarez',NULL,NULL,0,NULL,'JD0000'),('RABC690320',57,'Claudia','Ramírez','Brassetti',NULL,NULL,0,NULL,'O2C000'),('RABP720605',228,'Papik Alfredo','Ramírez','Bernal',NULL,NULL,0,NULL,'R5D000'),('RALT520821',38,'María Teresa','Ramírez','Landeros',NULL,NULL,0,NULL,'O1O000'),('RARC621127',221,'Catalina','Ramos','Ramos',NULL,NULL,0,NULL,'T63050'),('RASR710510',126,'Raquel','Ramón','Sosa',NULL,NULL,0,NULL,'P0F000'),('RAVM650728',50,'Ma. Victoria','Rafael','Valdivia',NULL,NULL,0,NULL,'O2D000'),('REGM590502',53,'Magdalena','Reyes','García',NULL,NULL,0,NULL,'O2B000'),('REHA740406',197,'Armando','Reséndiz','Hernández',NULL,NULL,0,NULL,'T50000'),('REIH830819',40,'Héctor Yair','Reyes','Izquierdo',NULL,NULL,0,NULL,'O1P000'),('RERF841114',123,'Flor Isela','Retana','Rentería',NULL,NULL,0,NULL,'P0C000'),('RICF720523',83,'Francisco Alejandro','Ríos','Coria',NULL,NULL,0,NULL,'O2N000'),('RIRL780924',131,'Luis','Rizo','Ruíz',NULL,NULL,0,NULL,'P0N000'),('RISR610808',156,'María del Rosario','Rivera','Samaniego',NULL,NULL,0,NULL,'R5D000'),('ROAJ530902',48,'Juan','Romero','Amaya',NULL,NULL,0,NULL,'O1J000'),('ROCC730916',63,'Cornelio','Romero','Cruz',NULL,NULL,0,NULL,'O2E000'),('ROCL700110',9,'José Luis Tonatihu','Rojas','Castro',NULL,NULL,0,NULL,'O1C000'),('ROGA801023',182,'Alejandro','Rojas','Guzmán',NULL,NULL,0,NULL,'Q30000'),('ROHI710319',54,'Ivonne','Romo','Hernández',NULL,NULL,0,NULL,'O2A000'),('ROHL720825',72,'Luis Francisco','Rodríguez','Hernández',NULL,NULL,0,NULL,'O2J000'),('ROHP740712',214,'María del Pilar','Roa','Hernández',NULL,NULL,0,NULL,'T63020'),('ROLP651211',34,'Pedro','Rodríguez','Luevano',NULL,NULL,0,NULL,'O1N000'),('ROOD790509',207,'Dalia','Rosas','Olivos',NULL,NULL,0,NULL,'O0A000'),('ROOR690527',165,'José Ramón','Rodríguez','Ojeda',NULL,NULL,0,NULL,'JD0000'),('ROPA880429',102,'Ana Montserrat','Romero','Paredes',NULL,NULL,0,NULL,'O2T000'),('RORE650831',44,'Evangelina','Rojas','Rodríguez',NULL,NULL,0,NULL,'O1L000'),('RORR590111',49,'Rocío','Rodas','Ruíz',NULL,NULL,0,NULL,'O1J000'),('RUBM600910',18,'María Margarita','Ruíz','Badillo',NULL,NULL,0,NULL,'O1K000'),('RUCR841028',158,'Ramón Octavio','Ruíz','Carlón',NULL,NULL,0,NULL,'R5E000'),('SACC820315',17,'Catalina','Sánchez','Castillo',NULL,NULL,0,NULL,'O1K000'),('SADV700522',4,'Víctor Manuel','Salas','Domínguez',NULL,NULL,0,NULL,'O1B000'),('SAEB601008',94,'María Beatriz','Sánchez','Estrada',NULL,NULL,0,NULL,'O2Q000'),('SAHF780227',173,'Fanny','Sauza','Hernández',NULL,NULL,0,NULL,'XXXXXX'),('SALO680206',220,'Olga Alicia','Sánchez','López',NULL,NULL,0,NULL,'T63050'),('SALV610526',62,'Victor','Sandoval','Lobato',NULL,NULL,0,NULL,'O2E000'),('SAME770202',31,'María Esther','Sánchez','Marín',NULL,NULL,0,NULL,'O1I000'),('SAMJ740319',5,'Josefina','Sánchez','Monroy',NULL,NULL,0,NULL,'O1B000'),('SAMJ870323',176,'Juan Jesús','Sánchez','Marín',NULL,NULL,0,NULL,'O00000'),('SAML711230',97,'Luz María','Sánchez','Martínez',NULL,NULL,0,NULL,'O2O000'),('SARF761129',109,'Francisco Javier','Sánchez','Romero',NULL,NULL,0,NULL,'O2U000'),('SASF660302',146,'José Federico','Sánchez','Sosa',NULL,NULL,0,NULL,'P0Q000'),('SIGG840712',14,'Gustavo Rodolfo','Shields','García',NULL,NULL,0,NULL,'O1M000'),('SILL681102',45,'Luis Enrique','Sigler','Licona',NULL,NULL,0,NULL,'O1R000'),('SISD970602',230,'Dante Mir','Schmitter','Sánchez',NULL,NULL,0,NULL,'O2P000'),('SOMM790430',217,'Miriam Selene','Somera','Martinez',NULL,NULL,0,NULL,'T63040'),('SOOE761215',177,'Elizabeth','Solis','Ocampo',NULL,NULL,0,NULL,'O00000'),('SUCA511123',25,'Armando','Suárez','Caudillo',NULL,NULL,0,NULL,'O1G000'),('TAMJ711204',195,'Javier','Tadeo','Márquez',NULL,NULL,0,NULL,'T40000'),('TEMG631204',168,'Ma. Guadalupe','Trejo','Martínez',NULL,NULL,0,NULL,'JE0000'),('TOAF601224',82,'Francisco Javier','Torres','Argüelles',NULL,NULL,0,NULL,'O2N000'),('TOBE620920',92,'Eduardo','Torres','Buenrostro',NULL,NULL,0,NULL,'O2Q000'),('TOEL840404',216,'Lizeth Araceli','Toledo','Escalante',NULL,NULL,0,NULL,'T63040'),('TOGA770224',66,'Alfredo','Torres','García',NULL,NULL,0,NULL,'O2F000'),('TOLV710602',157,'Viridiana','del Toro','López',NULL,NULL,0,NULL,'R5M000'),('TOMJ650420',149,'Joel','Toledo','Molano',NULL,NULL,0,NULL,'P0P000'),('TOOG450118',222,'José Guadalupe','Torres y','Ortega',NULL,NULL,0,NULL,'O2A000'),('TOPE551216',29,'María Eugenia','Tome','Pérez',NULL,NULL,0,NULL,'O1H000'),('TORG630413',90,'Gloria','Tovar','Rojo',NULL,NULL,0,NULL,'O2P000'),('VABA721101',178,'Araceli','Vázquez','Betancourt',NULL,NULL,0,NULL,'O10000'),('VATH760227',209,'Héctor Gilberto Gabriel','Valencia','Trujillo',NULL,NULL,0,NULL,'R0F000'),('VECK781228',106,'Karina Vianey','Vergara','Camacho',NULL,NULL,0,NULL,'O2S000'),('VINA780922',51,'Ana Laura','Villalpando','Nava',NULL,NULL,0,NULL,'O2D000'),('XILS910302',170,'Sergio Yair','Xicotencatl','Llera',NULL,NULL,0,NULL,'JE0000'),('ZACR760228',59,'Rosario Angélica','Zavala','Candelaria',NULL,NULL,0,NULL,'O2G000');
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
INSERT INTO `guest_prize` VALUES ('AAAC670607',1),('AAFD851118',1),('AAIA810312',1),('AALE860922',1),('AAMA580502',1),('AAMJ550319',1),('AARE791201',1),('AAZA700603',1),('AIGE760708',1),('AISL760127',1),('AULC650915',1),('AUTV660101',1),('BAAC641022',1),('BABE570407',1),('BAEE770115',1),('BAGA541105',1),('BAHH520810',1),('BAMV840328',1),('BEHM730706',1),('BEJA641207',1),('BEMG581122',1),('BOMJ600427',1),('BUAI920831',1),('CAAG560830',1),('CAAN800412',1),('CAAP690310',1),('CABI750704',1),('CABM811007',1),('CACJ620311',1),('CACN810816',1),('CAFJ811202',1),('CAJC500324',1),('CAJT580925',1),('CALA700920',1),('CANC800416',1),('CARA550419',1),('CARE870706',1),('CATJ800217',1),('CEBL641209',1),('CEGG770409',1),('CEPP650317',1),('CICM700907',1),('COGX700718',1),('COSL680114',1),('COVC500403',1),('CUDJ700330',1),('CUPS631212',1),('CUVA600612',1),('DEAV540628',1),('DUMJ520111',1),('EAGC770416',1),('EAMM710909',1),('EARG821010',1),('EIVI600524',1),('FAGJ781015',1),('FERA561101',1),('FOBF680603',1),('FOGR691218',1),('GACI590603',1),('GACI730704',1),('GACJ590822',1),('GACM710712',1),('GADF790414',1),('GAGE930619',1),('GAGL620822',1),('GAJJ611026',1),('GALL661221',1),('GARJ640319',1),('GARV801005',1),('GASA810421',1),('GAVT670924',1),('GAXG691204',1),('GOAM910530',1),('GODA750831',1),('GOEE930613',1),('GOFA671026',1),('GOPF630603',1),('GOPP651210',1),('GOVN621207',1),('GOZA600901',1),('GUAJ850112',1),('GUAV770529',1),('GUCY710615',1),('GUDE820907',1),('GUGM570426',1),('GUHE740114',1),('GUHL810712',1),('GULR860123',1),('GUPE640521',1),('GUPS640707',1),('GURJ720122',1),('GUSJ751114',1),('GUSV811105',1),('HEBP580102',1),('HEGU731014',1),('HEIM680226',1),('HELI891227',1),('HEMA760104',1),('HEMP610409',1),('HERA631206',1),('HESR530831',1),('HUAE800531',1),('IANE820517',1),('IAOV730304',1),('IAPE721117',1),('JEHJ620923',1),('JIMA610709',1),('JUBD720623',1),('JULF841004',1),('JULM671105',1),('LOAA770303',1),('LOFT610501',1),('LOGE810825',1),('LORC630708',1),('LORJ690319',1),('LOUS630530',1),('MABV750223',1),('MACM640411',1),('MAIU850513',1),('MALA861025',1),('MANK750818',1),('MAPD850325',1),('MAPG741025',1),('MARA810111',1),('MARR730921',1),('MASC731120',1),('MASO581005',1),('MATP810925',1),('MEBC660713',1),('MECV841214',1),('MEDC870705',1),('MERA550906',1),('MOAJ631206',1),('MOCE800511',1),('MOLP601009',1),('MOMA530924',1),('MORA621123',1),('MORA640123',1),('MORA740726',1),('NAMJ870131',1),('NARR700417',1),('NEEL730512',1),('NERM870525',1),('NOVJ720424',1),('OELE810505',1),('OIRA730527',1),('OORC880806',1),('OUFA850727',1),('PAGC570307',1),('PALG831114',1),('PAMI691010',1),('PEDH721121',1),('PEMN701116',1),('PESL790811',1),('PICA790917',1),('POMP800723',1),('PUMF820301',1),('QUDN750305',1),('QUHC650913',1),('RAAA740815',1),('RAAD681019',1),('RABC690320',1),('RALT520821',1),('RARC621127',1),('RASR710510',1),('RAVM650728',1),('REGM590502',1),('REHA740406',1),('REIH830819',1),('RERF841114',1),('RICF720523',1),('RIRL780924',1),('RISR610808',1),('ROAJ530902',1),('ROCC730916',1),('ROCL700110',1),('ROGA801023',1),('ROHI710319',1),('ROHL720825',1),('ROHP740712',1),('ROLP651211',1),('ROOD790509',1),('ROOR690527',1),('ROPA880429',1),('RORE650831',1),('RORR590111',1),('RUBM600910',1),('RUCR841028',1),('SACC820315',1),('SADV700522',1),('SAEB601008',1),('SAHF780227',1),('SALO680206',1),('SALV610526',1),('SAME770202',1),('SAMJ740319',1),('SAMJ870323',1),('SAML711230',1),('SARF761129',1),('SASF660302',1),('SIGG840712',1),('SILL681102',1),('SOMM790430',1),('SOOE761215',1),('SUCA511123',1),('TAMJ711204',1),('TEMG631204',1),('TOAF601224',1),('TOBE620920',1),('TOEL840404',1),('TOGA770224',1),('TOLV710602',1),('TOMJ650420',1),('TOPE551216',1),('TORG630413',1),('VABA721101',1),('VATH760227',1),('VECK781228',1),('VINA780922',1),('XILS910302',1),('ZACR760228',1),('TOOG450118',2),('BASR381220',3),('CADR791106',3),('GOHL460918',3),('JAVD540613',3),('PETS750209',4),('MEER810505',5),('RABP720605',5),('SISD970602',6);
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
INSERT INTO `prize` VALUES (1,'DIPLOMA A LA \"EFICIENCIA Y EFICACIA\"',1,'EL DIPLOMA A LA \"EFICIENCIA Y EFICACIA\" SE OTORGA AL PERSONAL DE APOYO Y ASISTENCIA A LA EDUCACIÓN QUE, POR RECONOCIDOS Y MERITORIOS SERVICIOS AL INSTITUTO, SE HA DISTINGUIDO EN EL DESEMPEÑO DE SUS LABORES.\n \nPARA NUESTRA COMUNIDAD ES DE GRAN SATISFACCIÓN RECONOCER PÚBLICAMENTE LA LABOR CONSTANTE Y CONSCIENTE QUE LOS COMPAÑEROS DESEMPEÑAN EN SU VIDA LABORAL.\n \nCON LA ANUENCIA DE NUESTRAS AUTORIDADES, EN ESTE MOMENTO DAREMOS INICIO A LA ENTREGA DE DICHOS DIPLOMAS, PARA LO CUAL INVITAMOS A NUESTRO PRESIDIUM A PONERSE DE PIE PARA PROCEDER A LA ENTREGA CORRESPONDIENTE.',221,1),(2,'DIPLOMA DE MAESTRO EMÉRITO',1,'Que se otorga a los profesores e investigadores que habiéndose retirado o jubilado, se hubieran distinguido por su relevante labor docente o de investigación en el Instituto y que hayan prestado sus servicios en éste cuando menos durante veinticinco años.\n\nCON LA ANUENCIA DE NUESTRAS AUTORIDADES EN ESTE MOMENTO RECIBE TAL DISTINCIÓN...\n',1,1),(3,'DIPLOMA DE MAESTRO DECANO',1,'Para elegir al candidato de esta distinción, se deberá considerar además de la antigüedad del maestro, su trayectoria y aportaciones realizadas al Instituto, se otorgará al profesor que haya sido electo decano por el Consejo Técnico Consultivo Escolar. Reciben esta distinción:',4,1),(4,'DIPLOMA A LA INVESTIGACIÓN',1,'Este diploma se otorga a aquellos profesores que se hayan destacado en el campo de la investigación científica y tecnológica, o bien por la realización de una obra científica que por su contenido haya obtenido arbitraje nacional o internacional.\nReciben esta distinción:',1,1),(5,'DIPLOMA A LA CULTURA',1,'El diploma a la cultura es para aquellos miembros de la comunidad politécnica, que hayan apoyado o destaquen en eventos culturales de relevancia nacional o internacional, recibe esta distinción:\nReciben esta distinción:',2,1),(6,'DIPLOMA AL DEPORTE',1,'Se otorga a aquellos integrantes de la comunidad politécnica que hayan sobresalido en eventos deportivos nacionales o internacionales auspiciados por el Instituto Politécnico Nacional, o en representación del mismo o del País, recibe este galardón:',1,1);
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
INSERT INTO `school` VALUES ('J60000','Coordinación de Comunicación Social','AREA',1),('JA1000','Secretaría Particular de la Dirección General','AREA',1),('JD0000','Coordinación de Asesores','AREA',1),('JE0000','Defensoría de los Derechos Politécnicos','AREA',1),('K00000','Oficina del Abogado General','AREA',1),('K10000','Dirección de Asuntos Jurídicos','AREA',1),('K20000','Dirección de Normatividad, Consulta y Dictaminación ','AREA',1),('L00000','Coordinación General de Servicios Informáticos','AREA',1),('L10000','Dirección de Cómputo y Comunicaciones','ADMINISTRACIÓN',1),('N00000','Secretaría General','AREA',1),('O00000','Secretaría Académica','AREA',1),('O0A000','Coordinación General de Formación e Innovación Educativa','AREA',1),('O10000','Dirección de Educación Media Superior','AREA',1),('O1A000','Centro de Estudios Científicos y Tecnológicos 1 \"Gonzálo Vázquez Vela\"','MEDIO SUPERIOR',1),('O1B000','Centro de Estudios Científicos y Tecnológicos 2 \"Miguel Bernard\"','MEDIO SUPERIOR',1),('O1C000','Centro de Estudios Científicos y Tecnológicos 3 \"Estanislao Ramírez Ruíz\"','MEDIO SUPERIOR',1),('O1D000','Centro de Estudios Científicos y Tecnológicos 4 \"Lázaro Cárdenas\"','MEDIO SUPERIOR',1),('O1E000','Centro de Estudios Científicos y Tecnológicos 7 \"Cuauhtémoc\"','MEDIO SUPERIOR',1),('O1F000','Centro de Estudios Científicos y Tecnológicos 8 \"Narciso Bassols\"','MEDIO SUPERIOR',1),('O1G000','Centro de Estudios Científicos y Tecnológicos 9 \"Juan de Dios Bátiz\"','MEDIO SUPERIOR',1),('O1H000','Centro de Estudios Científicos y Tecnológicos 10 \"Carlos Vallejo Márquez\"','MEDIO SUPERIOR',1),('O1I000','Centro de Estudios Científicos y Tecnológicos 11 \"Wilfrido Massieu\"','MEDIO SUPERIOR',1),('O1J000','Centro de Estudios Tecnológicos 1 \"Walter Cross Buchanan\"','MEDIO SUPERIOR',1),('O1K000','Centro de Estudios Científicos y Tecnológicos 6 \"Miguel Othón de Mendizabal\"','MEDIO SUPERIOR',1),('O1L000','Centro de Estudios Científicos y Tecnológicos 15 \"Diódoro Antúnez Echegaray\"','MEDIO SUPERIOR',1),('O1M000','Centro de Estudios Científicos y Tecnológicos 5 \"Benito Juárez\"','MEDIO SUPERIOR',1),('O1N000','Centro de Estudios Científicos y Tecnológicos 12 \"José María Morelos\"','MEDIO SUPERIOR',1),('O1O000','Centro de Estudios Científicos y Tecnológicos 13 \"Ricardo Flores Magón\"','MEDIO SUPERIOR',1),('O1P000','Centro de Estudios Científicos y Tecnológicos 14 \"Luis Enrique Erro\"','MEDIO SUPERIOR',1),('O1Q000','Centro de Estudios Científicos y Tecnológicos 16 \"Hidalgo\"','MEDIO SUPERIOR',1),('O1R000','Centro de Estudios Científicos y Tecnológicos 17 \"León, Guanajuato\"','MEDIO SUPERIOR',1),('O2A000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Azcapotzalco','SUPERIOR',1),('O2B000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Culhuacán','SUPERIOR',1),('O2C000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Ticomán','SUPERIOR',1),('O2D000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Zacatenco','SUPERIOR',1),('O2E000','Escuela Superior de Ingeniería y Arquitectura Unidad Tecamachalco','SUPERIOR',1),('O2F000','Escuela Superior de Ingeniería y Arquitectura Unidad Ticomán','SUPERIOR',1),('O2G000','Escuela Superior de Ingeniería y Arquitectura Unidad Zacatenco','SUPERIOR',1),('O2H000','Escuela Superior de Ingeniería Textil','SUPERIOR',1),('O2I000','Escuela Superior de Ingeniería Química e Industrias Extractivas','SUPERIOR',1),('O2J000','Escuela Superior de Física y Matemáticas','SUPERIOR',1),('O2K000','Escuela Superior de Computación','SUPERIOR',1),('O2L000','Unidad Profesional Interdisciplinaria en Ingeniería y Tecnologías Avanzadas','SUPERIOR',1),('O2M000','Unidad Profesional Interdisciplinaria de Ingeniería y Ciencias Sociales y Administrativas','SUPERIOR',1),('O2N000','Unidad Profesional Interdisciplinaria de Biotecnología','SUPERIOR',1),('O2O000','Escuela Nacional de Medicina y Homeopatía','SUPERIOR',1),('O2P000','Escuela Nacional de Ciencias Biológicas','SUPERIOR',1),('O2Q000','Escuela Superior de Medicina','SUPERIOR',1),('O2R000','Escuela Superior de Enfermería y Obstetricia','SUPERIOR',1),('O2S000','Centro Interdisciplinario de Ciencias de la Salud Unidad Milpa Alta','SUPERIOR',1),('O2T000','Centro Interdisciplinario de Ciencias de la Salud Unidad Santo Tomás','SUPERIOR',1),('O2U000','Escuela Superior de Comercio y Administración Unidad Santo Tomás','SUPERIOR',1),('O2V000','Escuela Superior de Comercio y Administración Unidad Tepepan','SUPERIOR',1),('O2W000','Escuela Superior de Economía','SUPERIOR',1),('O2X000','Escuela Superior de Turismo','SUPERIOR',1),('O2Y000','Unidad Profesional Interdisciplinaria de Ingeniería Campus Guanajuato','SUPERIOR',1),('O2Z000','Unidad Profesional Interdisciplinaria de Ingeniería Campus Zacatecas','SUPERIOR',1),('P0A000','Centro Interdisciplinario de Ciencias Marinas','POSGRADO',1),('P0C000','Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional Unidad Durango','POSGRADO',1),('P0F000','Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional Unidad Oaxaca','POSGRADO',1),('P0H000','Centro de Biotecnología Genómica','POSGRADO',1),('P0I000','Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada Unidad Legaria','POSGRADO',1),('P0J000','Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada Unidad Altamira','POSGRADO',1),('P0K000','Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada Unidad Querétaro','POSGRADO',1),('P0L000','Centro de Investigación en Computación','POSGRADO',1),('P0M000','Centro de Investigación y Desarrollo de Tecnología Digital','POSGRADO',1),('P0N000','Centro de Investigaciones Económicas, Administrativas y Sociales','POSGRADO',1),('P0P000','Centro de Innovación y Desarrollo Tecnológico en Computo','POSGRADO',1),('P0Q000','Centro de Investigación e Innovación Tecnológica','POSGRADO',1),('P0T000','Centro de Nanociencias y Micro y Nanotecnologías','POSGRADO',1),('Q00000','Secretaría de Servicios Educativos','AREA',1),('Q10000','Dirección de Administración Escolar','AREA',1),('Q30000','Dirección de Bibliotecas','AREA',1),('Q40000','Dirección de Difusión y Fomento a la Cultura','AREA',1),('Q50000','Dirección de Desarrollo y Fomento Deportivo','AREA',1),('R0F000','Unidad Politécnica para el Desarrollo y la Competitividad Empresarial','AREA',1),('R40000','Dirección de Publicaciones','AREA',1),('R5D000','Centro de Educación Contínua Unidad Culiacán','CENTRO',1),('R5E000','Centro de Educación Contínua Unidad Los Mochis','CENTRO',1),('R5K000','Centro de Educación Contínua Unidad Tijuana','CENTRO',1),('R5M000','Centro de Educación Contínua Unidad Durango','CENTRO',1),('S30000','Dirección de Evaluación','AREA',1),('T40000','Dirección de Gestión del Capital Humano','AREA',1),('T50000','Dirección de Recursos Financieros','AREA',1),('T60000','Dirección de Recursos Materiales y Servicios','AREA',1),('T63000','Coordinación de Centros de Desarrollo Infantil','AREA',1),('T63010','Centro de Desarrollo Infantil \"Laura Pérez de Bátiz\"','CENTRO',1),('T63020','Centro de Desarrollo Infantil \"Amalia Solórzano de Cárdenas\"','CENTRO',1),('T63040','Centro de Desarrollo Infantil \"Clementina Batalla de Bassols\"','CENTRO',1),('T63050','Centro de Desarrollo Infantil \"Margarita Salazar de Erro\"','CENTRO',1),('XXXXXX','Coordinación Politécnica para la Sustentabilidad','AREA',1);
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

-- Dump completed on 2018-11-10 17:15:30
