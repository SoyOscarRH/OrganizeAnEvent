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
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Text` varchar(1000) DEFAULT NULL,
  `RFC` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `comment_guest_idx` (`RFC`),
  CONSTRAINT `CommentGuest` FOREIGN KEY (`RFC`) REFERENCES `guest` (`RFC`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `EventID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Localization` varchar(600) DEFAULT NULL,
  `Latitude` double DEFAULT NULL,
  `Longitude` double DEFAULT NULL,
  `Time` datetime DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`EventID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'DISTINCIONES AL MÉRITO POLITÉCNICO 2018',NULL,NULL,NULL,NULL,'LAS DISTINCIONES AL MÉRITO POLITÉCNICO SON EL RECONOCIMIENTO QUE HACE LA COMUNIDAD POLITÉCNICA A UNA CONDUCTA, TRAYECTORIA, SERVICIO O ACCIÓN EJEMPLAR, SOBRESALIENTE, QUE HAYA TENIDO POR OBJETO EXHALTAR EL PRESTIGIO DEL INSTITUTO POLITÉCNICO NACIONAL, PARA APOYAR LA REALIZACIÓN DE SUS FINALIDADES: IMPULSAR EL DESARROLLO DE LA EDUCACIÓN TÉCNICA EN EL PAÍS O BENEFICIAR A LA HUMANIDAD.\n\nEN ESTA OCASIÓN EL CONSEJO GENERAL CONSULTIVO HA DECIDIDO OTORGAR');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest`
--

DROP TABLE IF EXISTS `guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest` (
  `RFC` varchar(10) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `FirstSurname` varchar(45) NOT NULL,
  `SecondSurname` varchar(45) NOT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `PlaceID` varchar(6) NOT NULL,
  PRIMARY KEY (`RFC`),
  KEY `guest_place_idx` (`PlaceID`),
  CONSTRAINT `GuestPlace` FOREIGN KEY (`PlaceID`) REFERENCES `place` (`PlaceID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
INSERT INTO `guest` VALUES ('AAAC670607','Celia','Ayala','Arellano',NULL,'O1P000'),('AAFD851118','Daniel','Álvarez','Fuentes',NULL,'O2R000'),('AAIA810312','José Andrés','Álvarez','Ibarra',NULL,'R5E000'),('AALE860922','Edith Yuliana','Amador','López',NULL,'O2G000'),('AAMA580502','José Antonio','Andrade','Morales',NULL,'O1P000'),('AAMJ550319','José Juan','Aljama','Moral',NULL,'O1L000'),('AARE791201','María Elena','Álvarez','Rodríguez',NULL,'O10000'),('AAZA700603','Ana María','Almanza','Zendejas',NULL,'O2C000'),('AIGE760708','Esperanza','Aviña','García',NULL,'R5K000'),('AISL760127','Lizeth','Avilés','Sánchez',NULL,'O1N000'),('AULC650915','Carlos','Aguilar','López',NULL,'O2H000'),('AUTV660101','Víctor Manuel','Aguilar','Tlapale',NULL,'K20000'),('BAAC641022','César','Basurto','Acevedo',NULL,'R40000'),('BABE570407','Epifanio Donato','Barbabosa','Beltrán',NULL,'O2R000'),('BAEE770115','Elda','Baranda','Esquivel',NULL,'P0L000'),('BAGA541105','Ana María','Baeza','Gómez',NULL,'K10000'),('BAHH520810','Hilda','Banda','Hernández',NULL,'O2T000'),('BAMV840328','Víctor Alejandro','Banderas','Mérida',NULL,'O2B000'),('BASR381220','José Roberto de Jesús','Bastarrachea','Sabido',NULL,'O2Q000'),('BEHM730706','Ma. Guadalupe del Carmen','Belmonte','Hernández',NULL,'O1R000'),('BEJA641207','María Alma','Benitez','Juárez',NULL,'O2W000'),('BEMG581122','Gerardo','Bernal','Méndez',NULL,'O1I000'),('BOMJ600427','Jesús Roberto','Bolivar','Meza',NULL,'O1D000'),('BUAI920831','Ismael','Bruno','Arellano',NULL,'O1F000'),('CAAG560830','Guadencio','Camacho','Alvarado',NULL,'O1O000'),('CAAN800412','Norma Alicia','Caltenco','Arceo',NULL,'O2V000'),('CAAP690310','Pablo','Cabrera','Alvarado',NULL,'P0H000'),('CABI750704','Isidro','Castillo','Bautista',NULL,'O2H000'),('CABM811007','Mariana Elizabeth','Chávez','Benítez',NULL,'O1C000'),('CACJ620311','María Josefina','Campos','Cano',NULL,'O1M000'),('CACN810816','Nayeli','Caballero','Cerpa',NULL,'O2I000'),('CADR791106','Rafael','Castañeda','Díaz',NULL,'O2Z000'),('CAFJ811202','Janet','Cadena','Flores',NULL,'O1L000'),('CAJC500324','José Claudio','Chávez','Jiménez',NULL,'O2L000'),('CAJT580925','Teresita','Cardona','Juárez',NULL,'P0Q000'),('CALA700920','Adolfo','Cabrera','López',NULL,'O2P000'),('CANC800416','César Servando','Casas','Núñez',NULL,'P0A000'),('CARA550419','Antonio','Castillo','Rivas',NULL,'Q50000'),('CARE870706','Edith Berenitze','Calvillo','Ramirez',NULL,'P0T000'),('CATJ800217','Jorge Ivan','Carrillo','Tellez',NULL,'P0L000'),('CEBL641209','Luis','Ceballos','Barragán',NULL,'S30000'),('CEGG770409','Gloria Araceli','Cedillo','González',NULL,'Q40000'),('CEPP650317','Patricia','Cervantes','Pérez',NULL,'O2C000'),('CICM700907','María Mireya','Cristino','Castillo',NULL,'O1E000'),('COGX700718','María Eugenia','Contreras','Gallardo',NULL,'Q40000'),('COSL680114','María de Lourdes','Correa','Saldaña',NULL,'P0K000'),('COVC500403','María Cristina','Colín','Villanueva',NULL,'XXXXXX'),('CUDJ700330','José Juan','Cruz','Durán',NULL,'O2V000'),('CUPS631212','Sonia Elizabeth','Cruz','Pérez',NULL,'O1J000'),('CUVA600612','Aida','Cruz','Vega',NULL,'P0J000'),('DEAV540628','Víctor Manuel','Delgado','Arellano',NULL,'S30000'),('DUMJ520111','Juana Leydy Yadira','Duarte','Mena',NULL,'O2H000'),('EAGC770416','Carolina','Estrada','García',NULL,'O1B000'),('EAMM710909','Martha','Escalante','Morales',NULL,'T63020'),('EARG821010','Georgina Irasema','Estrada','Rivera',NULL,'R5D000'),('EIVI600524','José Isaías','Enríquez','Vicente',NULL,'O2J000'),('FAGJ781015','Jesús','Franco','Gómez',NULL,'O2Y000'),('FERA561101','Ángela','Félix','Reyes',NULL,'J60000'),('FOBF680603','María Francisca','Flores','Bárcenas',NULL,'O2W000'),('FOGR691218','Rubén','Fonseca','Gutiérrez',NULL,'K00000'),('GACI590603','José Isaac','García','Carmona',NULL,'T60000'),('GACI730704','Isabel Angélica','Gayosso','de la Cruz',NULL,'O2N000'),('GACJ590822','Javier','Galván','Chávez',NULL,'O2X000'),('GACM710712','María Martha','García','Coronado',NULL,'P0M000'),('GADF790414','Fabiola','García','Durán',NULL,'T60000'),('GAGE930619','Ernesto Saúl','Galván','González',NULL,'T63000'),('GAGL620822','María de Lourdes','Galicia','Galicia',NULL,'P0K000'),('GAJJ611026','Jaime Ernesto','García','Jiménez',NULL,'O2X000'),('GALL661221','María de Lourdes','García','López',NULL,'P0C000'),('GARJ640319','Juan José','García','Rivera',NULL,'O1K000'),('GARV801005','Viridiana Karina','García','Romero',NULL,'O1A000'),('GASA810421','Annel','Galicia','San Miguel',NULL,'O2S000'),('GAVT670924','María Teresa','García','Vázquez',NULL,'T60000'),('GAXG691204','Gustavo','Galicia','Xolalpa',NULL,'O2S000'),('GOAM910530','Mario Iván','González','Abad',NULL,'O2U000'),('GODA750831','Alberto Jorge','González','Díaz',NULL,'XXXXXX'),('GOEE930613','Erick','Gordillo','Escobar',NULL,'JE0000'),('GOFA671026','Adolfo','Gómez','Flores',NULL,'O2G000'),('GOHL460918','Luis Arturo','González','Hernández',NULL,'P0M000'),('GOPF630603','Felipe','González','Pérez',NULL,'O2O000'),('GOPP651210','María Patricia','Godínez','Pavón',NULL,'O2J000'),('GOVN621207','Norma Angélica','Godínez','Vallejo',NULL,'Q00000'),('GOZA600901','Artemio','González','Zamudio',NULL,'P0I000'),('GUAJ850112','Jazmín','Guerra','Alcántara',NULL,'L10000'),('GUAV770529','Vianey','Guerra','Alcantara',NULL,'R0F000'),('GUCY710615','Yolanda','Gutiérrez','Cárdenas',NULL,'O2V000'),('GUDE820907','Edgar René','Guzmán','Delgado',NULL,'O1N000'),('GUGM570426','Marcelino','Guzmán','Gallardo',NULL,'O2R000'),('GUHE740114','Erika','Gutiérrez','Hernández',NULL,'O1M000'),('GUHL810712','Luis Paul','Gutiérrez','Hernández',NULL,'L10000'),('GULR860123','Roberto Antonio','Guzmán','León',NULL,'P0F000'),('GUPE640521','Elías','Gutiérrez','Páramo',NULL,'P0K000'),('GUPS640707','Silvino','Guerrero','Peña',NULL,'T50000'),('GURJ720122','Jorge Alberto','Gutiérrez','Ramírez',NULL,'O2F000'),('GUSJ751114','Juan Manuel','Guzmán','Salas',NULL,'P0P000'),('GUSV811105','María Vianey','Gudiño','Sánchez',NULL,'O1A000'),('HEBP580102','Patricia','Hernández','Balderas',NULL,'J60000'),('HEGU731014','Ubaldo','Hernández','Gutiérrez',NULL,'P0A000'),('HEIM680226','Martha','Hernández','Iturriaga',NULL,'O2W000'),('HELI891227','Itzel Marisol','Hernández','Luis',NULL,'O2K000'),('HEMA760104','Ana Laura','Hernández','Medina',NULL,'O2M000'),('HEMP610409','Patricia','Hernández','Monsalvo',NULL,'O1A000'),('HERA631206','Alicia','Hernández','Ramírez',NULL,'T63010'),('HESR530831','Ramón','Herrera','Segovia',NULL,'O2T000'),('HUAE800531','Edgar','Hurtado','Ávila',NULL,'O2O000'),('IANE820517','Nereyda','Guadalupe','Ibarra',NULL,'P0A000'),('IAOV730304','Víctor Manuel','Islas','Olivos',NULL,'S30000'),('IAPE721117','Enedelia','Ibarra','Pineda',NULL,'T40000'),('JAVD540613','David','Jaramillo','Vigueras',NULL,'P0Q000'),('JEHJ620923','Joselito Abilio','de Jesús','Herrera',NULL,'O2I000'),('JIMA610709','Alejandra','Jiménez','Méndez',NULL,'O1C000'),('JUBD720623','Dulce María','Juárez','Banda',NULL,'P0Q000'),('JULF841004','Francisco','Juanes','Loera',NULL,'O2Z000'),('JULM671105','Ma. Isabel','Juárez','Lara',NULL,'N00000'),('LOAA770303','Adaluz','López','Ángeles',NULL,'O2E000'),('LOFT610501','María Teresa','López','Flores',NULL,'O1D000'),('LOGE810825','Esmirna Concepción','López','Gallegos',NULL,'T63040'),('LORC630708','Corina','López','Rangel',NULL,'O2P000'),('LORJ690319','José','López','Ríos',NULL,'P0M000'),('LOUS630530','SiIvia Rosa','Lopeandia','Urbina',NULL,'T40000'),('MABV750223','Víctor Alberto','Martínez','Bautista',NULL,'Q30000'),('MACM640411','María Magdalena','Martínez','Carrillo',NULL,'L10000'),('MAIU850513','Uriel','Martínez','Islas',NULL,'O1I000'),('MALA861025','Alejandra Danae','Martínez','López',NULL,'O0A000'),('MANK750818','Karol Angélica','Marín','Nova',NULL,'R5K000'),('MAPD850325','Dalia','Martínez','Próspero',NULL,'O2K000'),('MAPG741025','Gabino','Martínez','Pérez',NULL,'P0I000'),('MARA810111','Álvaro','Martínez','Reyes',NULL,'P0F000'),('MARR730921','Rosario','Márquez','Ramírez',NULL,'L00000'),('MASC731120','Carolina','Mares','Sandoval',NULL,'O1D000'),('MASO581005','Sofía','Macías',' ',NULL,'R5D000'),('MATP810925','Pablo Ricardo','Martínez','Téllez',NULL,'O2L000'),('MEBC660713','Cesar Miguel','Mejía','Barradas',NULL,'O2Q000'),('MECV841214','Verónica','Medina','Corral',NULL,'P0M000'),('MEDC870705','Claudia del Carmen','Mendoza','Delgado',NULL,'O2Y000'),('MEER810505','Ricardo','Medel','Esquivel',NULL,'P0I000'),('MERA550906','Arturo','Méndez','Romero',NULL,'P0I000'),('MOAJ631206','Ma. Julia','Morales','Álvarez',NULL,'N00000'),('MOCE800511','Esthela','Moreno','Chapa',NULL,'P0H000'),('MOLP601009','Pablo','Monjarás','López',NULL,'Q10000'),('MOMA530924','Alfonso','Morales','Martínez',NULL,'O1G000'),('MORA621123','Alma Delia','Morán','Ruíz',NULL,'O2K000'),('MORA640123','Arturo','Moreno','Reyes',NULL,'O1G000'),('MORA740726','Ana Aurora','Montoya','Ramírez',NULL,'O2F000'),('NAMJ870131','Joaquín Alejandro','Nares','Miller',NULL,'O1F000'),('NARR700417','María del Rosario','Nájera','Ramírez',NULL,'O2U000'),('NEEL730512','Laura Alicia','Neyra','Estrada',NULL,'O1E000'),('NERM870525','María Monserrat','Neria','Reyes',NULL,'O2Z000'),('NOVJ720424','Jorge','Noriega','Villa',NULL,'P0C000'),('OELE810505','Edgar Josué','Ojeda','Layseca',NULL,'O1F000'),('OIRA730527','Alfredo Erasto','Ortiz','Rodríguez',NULL,'O0A000'),('OORC880806','Carolina','Oropeza','Ramírez',NULL,'T50000'),('OUFA850727','Andrea Patricia','Olguín','Ferreira',NULL,'O1O000'),('PAGC570307','Clotilde','Prado','García',NULL,'O1H000'),('PALG831114','María Guadalupe','Parga','López',NULL,'JA1000'),('PAMI691010','Irene','Plata','Monroy',NULL,'P0N000'),('PEDH721121','Héctor','Peña','Domínguez',NULL,'O2L000'),('PEMN701116','Norma Angélica','Pérez','Moctezuma',NULL,'O2X000'),('PESL790811','María de Lourdes','Peregrino','Sánchez',NULL,'O1E000'),('PETS750209','Sonia Mayra','Pérez','Tapia',NULL,'O2P000'),('PICA790917','Arianna Arozibel','Pineda','Carrasco',NULL,'R5E000'),('POMP800723','Pablo','Poo','Mendieta',NULL,'Q40000'),('PUMF820301','Francisco','Pulido','Morales',NULL,'T63000'),('QUDN750305','Narda Araceli','Quintana','Diosdado',NULL,'T63050'),('QUHC650913','María del Carmen','Quiroz','Herrera',NULL,'P0H000'),('RAAA740815','Alfredo','Ramirez','Arechar',NULL,'Q10000'),('RAAD681019','Diana Laura','Ramírez','Álvarez',NULL,'JD0000'),('RABC690320','Claudia','Ramírez','Brassetti',NULL,'O2C000'),('RABP720605','Papik Alfredo','Ramírez','Bernal',NULL,'R5D000'),('RALT520821','María Teresa','Ramírez','Landeros',NULL,'O1O000'),('RARC621127','Catalina','Ramos','Ramos',NULL,'T63050'),('RASR710510','Raquel','Ramón','Sosa',NULL,'P0F000'),('RAVM650728','Ma. Victoria','Rafael','Valdivia',NULL,'O2D000'),('REGM590502','Magdalena','Reyes','García',NULL,'O2B000'),('REHA740406','Armando','Reséndiz','Hernández',NULL,'T50000'),('REIH830819','Héctor Yair','Reyes','Izquierdo',NULL,'O1P000'),('RERF841114','Flor Isela','Retana','Rentería',NULL,'P0C000'),('RICF720523','Francisco Alejandro','Ríos','Coria',NULL,'O2N000'),('RIRL780924','Luis','Rizo','Ruíz',NULL,'P0N000'),('RISR610808','María del Rosario','Rivera','Samaniego',NULL,'R5D000'),('ROAJ530902','Juan','Romero','Amaya',NULL,'O1J000'),('ROCC730916','Cornelio','Romero','Cruz',NULL,'O2E000'),('ROCL700110','José Luis Tonatihu','Rojas','Castro',NULL,'O1C000'),('ROGA801023','Alejandro','Rojas','Guzmán',NULL,'Q30000'),('ROHI710319','Ivonne','Romo','Hernández',NULL,'O2A000'),('ROHL720825','Luis Francisco','Rodríguez','Hernández',NULL,'O2J000'),('ROHP740712','María del Pilar','Roa','Hernández',NULL,'T63020'),('ROLP651211','Pedro','Rodríguez','Luevano',NULL,'O1N000'),('ROOD790509','Dalia','Rosas','Olivos',NULL,'O0A000'),('ROOR690527','José Ramón','Rodríguez','Ojeda',NULL,'JD0000'),('ROPA880429','Ana Montserrat','Romero','Paredes',NULL,'O2T000'),('RORE650831','Evangelina','Rojas','Rodríguez',NULL,'O1L000'),('RORR590111','Rocío','Rodas','Ruíz',NULL,'O1J000'),('RUBM600910','María Margarita','Ruíz','Badillo',NULL,'O1K000'),('RUCR841028','Ramón Octavio','Ruíz','Carlón',NULL,'R5E000'),('SACC820315','Catalina','Sánchez','Castillo',NULL,'O1K000'),('SADV700522','Víctor Manuel','Salas','Domínguez',NULL,'O1B000'),('SAEB601008','María Beatriz','Sánchez','Estrada',NULL,'O2Q000'),('SAHF780227','Fanny','Sauza','Hernández',NULL,'XXXXXX'),('SALO680206','Olga Alicia','Sánchez','López',NULL,'T63050'),('SALV610526','Victor','Sandoval','Lobato',NULL,'O2E000'),('SAME770202','María Esther','Sánchez','Marín',NULL,'O1I000'),('SAMJ740319','Josefina','Sánchez','Monroy',NULL,'O1B000'),('SAMJ870323','Juan Jesús','Sánchez','Marín',NULL,'O00000'),('SAML711230','Luz María','Sánchez','Martínez',NULL,'O2O000'),('SARF761129','Francisco Javier','Sánchez','Romero',NULL,'O2U000'),('SASF660302','José Federico','Sánchez','Sosa',NULL,'P0Q000'),('SIGG840712','Gustavo Rodolfo','Shields','García',NULL,'O1M000'),('SILL681102','Luis Enrique','Sigler','Licona',NULL,'O1R000'),('SISD970602','Dante Mir','Schmitter','Sánchez',NULL,'O2P000'),('SOMM790430','Miriam Selene','Somera','Martinez',NULL,'T63040'),('SOOE761215','Elizabeth','Solis','Ocampo',NULL,'O00000'),('SUCA511123','Armando','Suárez','Caudillo',NULL,'O1G000'),('TAMJ711204','Javier','Tadeo','Márquez',NULL,'T40000'),('TEMG631204','Ma. Guadalupe','Trejo','Martínez',NULL,'JE0000'),('TOAF601224','Francisco Javier','Torres','Argüelles',NULL,'O2N000'),('TOBE620920','Eduardo','Torres','Buenrostro',NULL,'O2Q000'),('TOEL840404','Lizeth Araceli','Toledo','Escalante',NULL,'T63040'),('TOGA770224','Alfredo','Torres','García',NULL,'O2F000'),('TOLV710602','Viridiana','del Toro','López',NULL,'R5M000'),('TOMJ650420','Joel','Toledo','Molano',NULL,'P0P000'),('TOOG450118','José Guadalupe','Torres y','Ortega',NULL,'O2A000'),('TOPE551216','María Eugenia','Tome','Pérez',NULL,'O1H000'),('TORG630413','Gloria','Tovar','Rojo',NULL,'O2P000'),('VABA721101','Araceli','Vázquez','Betancourt',NULL,'O10000'),('VATH760227','Héctor Gilberto Gabriel','Valencia','Trujillo',NULL,'R0F000'),('VECK781228','Karina Vianey','Vergara','Camacho',NULL,'O2S000'),('VINA780922','Ana Laura','Villalpando','Nava',NULL,'O2D000'),('XILS910302','Sergio Yair','Xicotencatl','Llera',NULL,'JE0000'),('ZACR760228','Rosario Angélica','Zavala','Candelaria',NULL,'O2G000');
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guestevent`
--

DROP TABLE IF EXISTS `guestevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guestevent` (
  `RFC` varchar(10) NOT NULL,
  `EventID` int(11) NOT NULL,
  `Number` int(11) DEFAULT NULL,
  `Confirmation` tinyint(4) DEFAULT NULL,
  `Assistance` tinyint(4) DEFAULT NULL,
  `Seat` int(11) DEFAULT NULL,
  `Representative` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RFC`,`EventID`),
  KEY `GEEvent_idx` (`EventID`),
  CONSTRAINT `GEEvent` FOREIGN KEY (`EventID`) REFERENCES `event` (`EventID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `GEGuest` FOREIGN KEY (`RFC`) REFERENCES `guest` (`RFC`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guestevent`
--

LOCK TABLES `guestevent` WRITE;
/*!40000 ALTER TABLE `guestevent` DISABLE KEYS */;
INSERT INTO `guestevent` VALUES ('AAAC670607',1,41,0,0,NULL,NULL),('AAFD851118',1,98,0,0,NULL,NULL),('AAIA810312',1,159,0,0,NULL,NULL),('AALE860922',1,60,0,0,NULL,NULL),('AAMA580502',1,39,0,0,NULL,NULL),('AAMJ550319',1,42,0,0,NULL,NULL),('AARE791201',1,179,0,0,NULL,NULL),('AAZA700603',1,56,0,0,NULL,NULL),('AIGE760708',1,161,0,0,NULL,NULL),('AISL760127',1,33,0,0,NULL,NULL),('AULC650915',1,67,0,0,NULL,NULL),('AUTV660101',1,203,0,0,NULL,NULL),('BAAC641022',1,180,0,0,NULL,NULL),('BABE570407',1,100,0,0,NULL,NULL),('BAEE770115',1,129,0,0,NULL,NULL),('BAGA541105',1,204,0,0,NULL,NULL),('BAHH520810',1,103,0,0,NULL,NULL),('BAMV840328',1,52,0,0,NULL,NULL),('BASR381220',1,224,0,0,NULL,NULL),('BEHM730706',1,46,0,0,NULL,NULL),('BEJA641207',1,114,0,0,NULL,NULL),('BEMG581122',1,32,0,0,NULL,NULL),('BOMJ600427',1,11,0,0,NULL,NULL),('BUAI920831',1,23,0,0,NULL,NULL),('CAAG560830',1,36,0,0,NULL,NULL),('CAAN800412',1,110,0,0,NULL,NULL),('CAAP690310',1,132,0,0,NULL,NULL),('CABI750704',1,68,0,0,NULL,NULL),('CABM811007',1,7,0,0,NULL,NULL),('CACJ620311',1,13,0,0,NULL,NULL),('CACN810816',1,70,0,0,NULL,NULL),('CADR791106',1,223,0,0,NULL,NULL),('CAFJ811202',1,43,0,0,NULL,NULL),('CAJC500324',1,80,0,0,NULL,NULL),('CAJT580925',1,147,0,0,NULL,NULL),('CALA700920',1,89,0,0,NULL,NULL),('CANC800416',1,119,0,0,NULL,NULL),('CARA550419',1,186,0,0,NULL,NULL),('CARE870706',1,150,0,0,NULL,NULL),('CATJ800217',1,128,0,0,NULL,NULL),('CEBL641209',1,190,0,0,NULL,NULL),('CEGG770409',1,188,0,0,NULL,NULL),('CEPP650317',1,55,0,0,NULL,NULL),('CICM700907',1,20,0,0,NULL,NULL),('COGX700718',1,189,0,0,NULL,NULL),('COSL680114',1,139,0,0,NULL,NULL),('COVC500403',1,171,0,0,NULL,NULL),('CUDJ700330',1,112,0,0,NULL,NULL),('CUPS631212',1,47,0,0,NULL,NULL),('CUVA600612',1,141,0,0,NULL,NULL),('DEAV540628',1,192,0,0,NULL,NULL),('DUMJ520111',1,69,0,0,NULL,NULL),('EAGC770416',1,6,0,0,NULL,NULL),('EAMM710909',1,213,0,0,NULL,NULL),('EARG821010',1,155,0,0,NULL,NULL),('EIVI600524',1,74,0,0,NULL,NULL),('FAGJ781015',1,86,0,0,NULL,NULL),('FERA561101',1,166,0,0,NULL,NULL),('FOBF680603',1,113,0,0,NULL,NULL),('FOGR691218',1,202,0,0,NULL,NULL),('GACI590603',1,199,0,0,NULL,NULL),('GACI730704',1,84,0,0,NULL,NULL),('GACJ590822',1,118,0,0,NULL,NULL),('GACM710712',1,143,0,0,NULL,NULL),('GADF790414',1,201,0,0,NULL,NULL),('GAGE930619',1,211,0,0,NULL,NULL),('GAGL620822',1,138,0,0,NULL,NULL),('GAJJ611026',1,117,0,0,NULL,NULL),('GALL661221',1,122,0,0,NULL,NULL),('GARJ640319',1,16,0,0,NULL,NULL),('GARV801005',1,2,0,0,NULL,NULL),('GASA810421',1,105,0,0,NULL,NULL),('GAVT670924',1,200,0,0,NULL,NULL),('GAXG691204',1,104,0,0,NULL,NULL),('GOAM910530',1,108,0,0,NULL,NULL),('GODA750831',1,172,0,0,NULL,NULL),('GOEE930613',1,169,0,0,NULL,NULL),('GOFA671026',1,58,0,0,NULL,NULL),('GOHL460918',1,225,0,0,NULL,NULL),('GOPF630603',1,95,0,0,NULL,NULL),('GOPP651210',1,73,0,0,NULL,NULL),('GOVN621207',1,181,0,0,NULL,NULL),('GOZA600901',1,135,0,0,NULL,NULL),('GUAJ850112',1,151,0,0,NULL,NULL),('GUAV770529',1,210,0,0,NULL,NULL),('GUCY710615',1,111,0,0,NULL,NULL),('GUDE820907',1,35,0,0,NULL,NULL),('GUGM570426',1,99,0,0,NULL,NULL),('GUHE740114',1,15,0,0,NULL,NULL),('GUHL810712',1,152,0,0,NULL,NULL),('GULR860123',1,127,0,0,NULL,NULL),('GUPE640521',1,140,0,0,NULL,NULL),('GUPS640707',1,198,0,0,NULL,NULL),('GURJ720122',1,64,0,0,NULL,NULL),('GUSJ751114',1,148,0,0,NULL,NULL),('GUSV811105',1,3,0,0,NULL,NULL),('HEBP580102',1,167,0,0,NULL,NULL),('HEGU731014',1,121,0,0,NULL,NULL),('HEIM680226',1,115,0,0,NULL,NULL),('HELI891227',1,76,0,0,NULL,NULL),('HEMA760104',1,78,0,0,NULL,NULL),('HEMP610409',1,1,0,0,NULL,NULL),('HERA631206',1,218,0,0,NULL,NULL),('HESR530831',1,101,0,0,NULL,NULL),('HUAE800531',1,96,0,0,NULL,NULL),('IANE820517',1,120,0,0,NULL,NULL),('IAOV730304',1,191,0,0,NULL,NULL),('IAPE721117',1,193,0,0,NULL,NULL),('JAVD540613',1,226,0,0,NULL,NULL),('JEHJ620923',1,71,0,0,NULL,NULL),('JIMA610709',1,8,0,0,NULL,NULL),('JUBD720623',1,145,0,0,NULL,NULL),('JULF841004',1,88,0,0,NULL,NULL),('JULM671105',1,175,0,0,NULL,NULL),('LOAA770303',1,61,0,0,NULL,NULL),('LOFT610501',1,12,0,0,NULL,NULL),('LOGE810825',1,215,0,0,NULL,NULL),('LORC630708',1,91,0,0,NULL,NULL),('LORJ690319',1,142,0,0,NULL,NULL),('LOUS630530',1,194,0,0,NULL,NULL),('MABV750223',1,183,0,0,NULL,NULL),('MACM640411',1,153,0,0,NULL,NULL),('MAIU850513',1,30,0,0,NULL,NULL),('MALA861025',1,208,0,0,NULL,NULL),('MANK750818',1,162,0,0,NULL,NULL),('MAPD850325',1,77,0,0,NULL,NULL),('MAPG741025',1,137,0,0,NULL,NULL),('MARA810111',1,125,0,0,NULL,NULL),('MARR730921',1,205,0,0,NULL,NULL),('MASC731120',1,10,0,0,NULL,NULL),('MASO581005',1,154,0,0,NULL,NULL),('MATP810925',1,81,0,0,NULL,NULL),('MEBC660713',1,93,0,0,NULL,NULL),('MECV841214',1,144,0,0,NULL,NULL),('MEDC870705',1,85,0,0,NULL,NULL),('MEER810505',1,229,0,0,NULL,NULL),('MERA550906',1,136,0,0,NULL,NULL),('MOAJ631206',1,174,0,0,NULL,NULL),('MOCE800511',1,133,0,0,NULL,NULL),('MOLP601009',1,184,0,0,NULL,NULL),('MOMA530924',1,26,0,0,NULL,NULL),('MORA621123',1,75,0,0,NULL,NULL),('MORA640123',1,27,0,0,NULL,NULL),('MORA740726',1,65,0,0,NULL,NULL),('NAMJ870131',1,24,0,0,NULL,NULL),('NARR700417',1,107,0,0,NULL,NULL),('NEEL730512',1,21,0,0,NULL,NULL),('NERM870525',1,87,0,0,NULL,NULL),('NOVJ720424',1,124,0,0,NULL,NULL),('OELE810505',1,22,0,0,NULL,NULL),('OIRA730527',1,206,0,0,NULL,NULL),('OORC880806',1,196,0,0,NULL,NULL),('OUFA850727',1,37,0,0,NULL,NULL),('PAGC570307',1,28,0,0,NULL,NULL),('PALG831114',1,163,0,0,NULL,NULL),('PAMI691010',1,130,0,0,NULL,NULL),('PEDH721121',1,79,0,0,NULL,NULL),('PEMN701116',1,116,0,0,NULL,NULL),('PESL790811',1,19,0,0,NULL,NULL),('PETS750209',1,227,0,0,NULL,NULL),('PICA790917',1,160,0,0,NULL,NULL),('POMP800723',1,187,0,0,NULL,NULL),('PUMF820301',1,212,0,0,NULL,NULL),('QUDN750305',1,219,0,0,NULL,NULL),('QUHC650913',1,134,0,0,NULL,NULL),('RAAA740815',1,185,0,0,NULL,NULL),('RAAD681019',1,164,0,0,NULL,NULL),('RABC690320',1,57,0,0,NULL,NULL),('RABP720605',1,228,0,0,NULL,NULL),('RALT520821',1,38,0,0,NULL,NULL),('RARC621127',1,221,0,0,NULL,NULL),('RASR710510',1,126,0,0,NULL,NULL),('RAVM650728',1,50,0,0,NULL,NULL),('REGM590502',1,53,0,0,NULL,NULL),('REHA740406',1,197,0,0,NULL,NULL),('REIH830819',1,40,0,0,NULL,NULL),('RERF841114',1,123,0,0,NULL,NULL),('RICF720523',1,83,0,0,NULL,NULL),('RIRL780924',1,131,0,0,NULL,NULL),('RISR610808',1,156,0,0,NULL,NULL),('ROAJ530902',1,48,0,0,NULL,NULL),('ROCC730916',1,63,0,0,NULL,NULL),('ROCL700110',1,9,0,0,NULL,NULL),('ROGA801023',1,182,0,0,NULL,NULL),('ROHI710319',1,54,0,0,NULL,NULL),('ROHL720825',1,72,0,0,NULL,NULL),('ROHP740712',1,214,0,0,NULL,NULL),('ROLP651211',1,34,0,0,NULL,NULL),('ROOD790509',1,207,0,0,NULL,NULL),('ROOR690527',1,165,0,0,NULL,NULL),('ROPA880429',1,102,0,0,NULL,NULL),('RORE650831',1,44,0,0,NULL,NULL),('RORR590111',1,49,0,0,NULL,NULL),('RUBM600910',1,18,0,0,NULL,NULL),('RUCR841028',1,158,0,0,NULL,NULL),('SACC820315',1,17,0,0,NULL,NULL),('SADV700522',1,4,0,0,NULL,NULL),('SAEB601008',1,94,0,0,NULL,NULL),('SAHF780227',1,173,0,0,NULL,NULL),('SALO680206',1,220,0,0,NULL,NULL),('SALV610526',1,62,0,0,NULL,NULL),('SAME770202',1,31,0,0,NULL,NULL),('SAMJ740319',1,5,0,0,NULL,NULL),('SAMJ870323',1,176,0,0,NULL,NULL),('SAML711230',1,97,0,0,NULL,NULL),('SARF761129',1,109,0,0,NULL,NULL),('SASF660302',1,146,0,0,NULL,NULL),('SIGG840712',1,14,0,0,NULL,NULL),('SILL681102',1,45,0,0,NULL,NULL),('SISD970602',1,230,0,0,NULL,NULL),('SOMM790430',1,217,0,0,NULL,NULL),('SOOE761215',1,177,0,0,NULL,NULL),('SUCA511123',1,25,0,0,NULL,NULL),('TAMJ711204',1,195,0,0,NULL,NULL),('TEMG631204',1,168,0,0,NULL,NULL),('TOAF601224',1,82,0,0,NULL,NULL),('TOBE620920',1,92,0,0,NULL,NULL),('TOEL840404',1,216,0,0,NULL,NULL),('TOGA770224',1,66,0,0,NULL,NULL),('TOLV710602',1,157,0,0,NULL,NULL),('TOMJ650420',1,149,0,0,NULL,NULL),('TOOG450118',1,222,0,0,NULL,NULL),('TOPE551216',1,29,0,0,NULL,NULL),('TORG630413',1,90,0,0,NULL,NULL),('VABA721101',1,178,0,0,NULL,NULL),('VATH760227',1,209,0,0,NULL,NULL),('VECK781228',1,106,0,0,NULL,NULL),('VINA780922',1,51,0,0,NULL,NULL),('XILS910302',1,170,0,0,NULL,NULL),('ZACR760228',1,59,0,0,NULL,NULL);
/*!40000 ALTER TABLE `guestevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guestprize`
--

DROP TABLE IF EXISTS `guestprize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guestprize` (
  `RFC` varchar(10) NOT NULL,
  `PrizeID` int(11) NOT NULL,
  PRIMARY KEY (`PrizeID`,`RFC`),
  KEY `gp_prize_idx` (`PrizeID`),
  KEY `GPGuest` (`RFC`),
  CONSTRAINT `GPGuest` FOREIGN KEY (`RFC`) REFERENCES `guest` (`RFC`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `GPPrize` FOREIGN KEY (`PrizeID`) REFERENCES `prize` (`PrizeID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guestprize`
--

LOCK TABLES `guestprize` WRITE;
/*!40000 ALTER TABLE `guestprize` DISABLE KEYS */;
INSERT INTO `guestprize` VALUES ('AAAC670607',1),('AAFD851118',1),('AAIA810312',1),('AALE860922',1),('AAMA580502',1),('AAMJ550319',1),('AARE791201',1),('AAZA700603',1),('AIGE760708',1),('AISL760127',1),('AULC650915',1),('AUTV660101',1),('BAAC641022',1),('BABE570407',1),('BAEE770115',1),('BAGA541105',1),('BAHH520810',1),('BAMV840328',1),('BEHM730706',1),('BEJA641207',1),('BEMG581122',1),('BOMJ600427',1),('BUAI920831',1),('CAAG560830',1),('CAAN800412',1),('CAAP690310',1),('CABI750704',1),('CABM811007',1),('CACJ620311',1),('CACN810816',1),('CAFJ811202',1),('CAJC500324',1),('CAJT580925',1),('CALA700920',1),('CANC800416',1),('CARA550419',1),('CARE870706',1),('CATJ800217',1),('CEBL641209',1),('CEGG770409',1),('CEPP650317',1),('CICM700907',1),('COGX700718',1),('COSL680114',1),('COVC500403',1),('CUDJ700330',1),('CUPS631212',1),('CUVA600612',1),('DEAV540628',1),('DUMJ520111',1),('EAGC770416',1),('EAMM710909',1),('EARG821010',1),('EIVI600524',1),('FAGJ781015',1),('FERA561101',1),('FOBF680603',1),('FOGR691218',1),('GACI590603',1),('GACI730704',1),('GACJ590822',1),('GACM710712',1),('GADF790414',1),('GAGE930619',1),('GAGL620822',1),('GAJJ611026',1),('GALL661221',1),('GARJ640319',1),('GARV801005',1),('GASA810421',1),('GAVT670924',1),('GAXG691204',1),('GOAM910530',1),('GODA750831',1),('GOEE930613',1),('GOFA671026',1),('GOPF630603',1),('GOPP651210',1),('GOVN621207',1),('GOZA600901',1),('GUAJ850112',1),('GUAV770529',1),('GUCY710615',1),('GUDE820907',1),('GUGM570426',1),('GUHE740114',1),('GUHL810712',1),('GULR860123',1),('GUPE640521',1),('GUPS640707',1),('GURJ720122',1),('GUSJ751114',1),('GUSV811105',1),('HEBP580102',1),('HEGU731014',1),('HEIM680226',1),('HELI891227',1),('HEMA760104',1),('HEMP610409',1),('HERA631206',1),('HESR530831',1),('HUAE800531',1),('IANE820517',1),('IAOV730304',1),('IAPE721117',1),('JEHJ620923',1),('JIMA610709',1),('JUBD720623',1),('JULF841004',1),('JULM671105',1),('LOAA770303',1),('LOFT610501',1),('LOGE810825',1),('LORC630708',1),('LORJ690319',1),('LOUS630530',1),('MABV750223',1),('MACM640411',1),('MAIU850513',1),('MALA861025',1),('MANK750818',1),('MAPD850325',1),('MAPG741025',1),('MARA810111',1),('MARR730921',1),('MASC731120',1),('MASO581005',1),('MATP810925',1),('MEBC660713',1),('MECV841214',1),('MEDC870705',1),('MERA550906',1),('MOAJ631206',1),('MOCE800511',1),('MOLP601009',1),('MOMA530924',1),('MORA621123',1),('MORA640123',1),('MORA740726',1),('NAMJ870131',1),('NARR700417',1),('NEEL730512',1),('NERM870525',1),('NOVJ720424',1),('OELE810505',1),('OIRA730527',1),('OORC880806',1),('OUFA850727',1),('PAGC570307',1),('PALG831114',1),('PAMI691010',1),('PEDH721121',1),('PEMN701116',1),('PESL790811',1),('PICA790917',1),('POMP800723',1),('PUMF820301',1),('QUDN750305',1),('QUHC650913',1),('RAAA740815',1),('RAAD681019',1),('RABC690320',1),('RALT520821',1),('RARC621127',1),('RASR710510',1),('RAVM650728',1),('REGM590502',1),('REHA740406',1),('REIH830819',1),('RERF841114',1),('RICF720523',1),('RIRL780924',1),('RISR610808',1),('ROAJ530902',1),('ROCC730916',1),('ROCL700110',1),('ROGA801023',1),('ROHI710319',1),('ROHL720825',1),('ROHP740712',1),('ROLP651211',1),('ROOD790509',1),('ROOR690527',1),('ROPA880429',1),('RORE650831',1),('RORR590111',1),('RUBM600910',1),('RUCR841028',1),('SACC820315',1),('SADV700522',1),('SAEB601008',1),('SAHF780227',1),('SALO680206',1),('SALV610526',1),('SAME770202',1),('SAMJ740319',1),('SAMJ870323',1),('SAML711230',1),('SARF761129',1),('SASF660302',1),('SIGG840712',1),('SILL681102',1),('SOMM790430',1),('SOOE761215',1),('SUCA511123',1),('TAMJ711204',1),('TEMG631204',1),('TOAF601224',1),('TOBE620920',1),('TOEL840404',1),('TOGA770224',1),('TOLV710602',1),('TOMJ650420',1),('TOPE551216',1),('TORG630413',1),('VABA721101',1),('VATH760227',1),('VECK781228',1),('VINA780922',1),('XILS910302',1),('ZACR760228',1),('TOOG450118',2),('BASR381220',3),('CADR791106',3),('GOHL460918',3),('JAVD540613',3),('PETS750209',4),('MEER810505',5),('RABP720605',5),('SISD970602',6);
/*!40000 ALTER TABLE `guestprize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution`
--

DROP TABLE IF EXISTS `institution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution` (
  `InstitutionID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `EventID` int(11) DEFAULT NULL,
  PRIMARY KEY (`InstitutionID`),
  KEY `institution_event_idx` (`EventID`),
  CONSTRAINT `InstitutionEvent` FOREIGN KEY (`EventID`) REFERENCES `event` (`EventID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution`
--

LOCK TABLES `institution` WRITE;
/*!40000 ALTER TABLE `institution` DISABLE KEYS */;
INSERT INTO `institution` VALUES (1,'INSTITUTO POLITÉCNICO NACIONAL',1),(2,'UNIVERSIDAD AUTÓNOMA DE MÉXICO',NULL);
/*!40000 ALTER TABLE `institution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Text` varchar(1000) DEFAULT NULL,
  `EventID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `news_event_idx` (`EventID`),
  CONSTRAINT `NewsEvent` FOREIGN KEY (`EventID`) REFERENCES `event` (`EventID`) ON DELETE CASCADE ON UPDATE CASCADE
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
-- Table structure for table `place`
--

DROP TABLE IF EXISTS `place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `place` (
  `PlaceID` varchar(6) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Level` varchar(20) NOT NULL,
  `InstitutionID` int(11) NOT NULL,
  PRIMARY KEY (`PlaceID`),
  KEY `institution_place_idx` (`InstitutionID`),
  CONSTRAINT `InstitutionPlace` FOREIGN KEY (`InstitutionID`) REFERENCES `institution` (`InstitutionID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place`
--

LOCK TABLES `place` WRITE;
/*!40000 ALTER TABLE `place` DISABLE KEYS */;
INSERT INTO `place` VALUES ('J60000','Coordinación de Comunicación Social','AREA',1),('JA1000','Secretaría Particular de la Dirección General','AREA',1),('JD0000','Coordinación de Asesores','AREA',1),('JE0000','Defensoría de los Derechos Politécnicos','AREA',1),('K00000','Oficina del Abogado General','AREA',1),('K10000','Dirección de Asuntos Jurídicos','AREA',1),('K20000','Dirección de Normatividad, Consulta y Dictaminación ','AREA',1),('L00000','Coordinación General de Servicios Informáticos','AREA',1),('L10000','Dirección de Cómputo y Comunicaciones','ADMINISTRACIÓN',1),('N00000','Secretaría General','AREA',1),('O00000','Secretaría Académica','AREA',1),('O0A000','Coordinación General de Formación e Innovación Educativa','AREA',1),('O10000','Dirección de Educación Media Superior','AREA',1),('O1A000','Centro de Estudios Científicos y Tecnológicos 1 \"Gonzálo Vázquez Vela\"','MEDIO SUPERIOR',1),('O1B000','Centro de Estudios Científicos y Tecnológicos 2 \"Miguel Bernard\"','MEDIO SUPERIOR',1),('O1C000','Centro de Estudios Científicos y Tecnológicos 3 \"Estanislao Ramírez Ruíz\"','MEDIO SUPERIOR',1),('O1D000','Centro de Estudios Científicos y Tecnológicos 4 \"Lázaro Cárdenas\"','MEDIO SUPERIOR',1),('O1E000','Centro de Estudios Científicos y Tecnológicos 7 \"Cuauhtémoc\"','MEDIO SUPERIOR',1),('O1F000','Centro de Estudios Científicos y Tecnológicos 8 \"Narciso Bassols\"','MEDIO SUPERIOR',1),('O1G000','Centro de Estudios Científicos y Tecnológicos 9 \"Juan de Dios Bátiz\"','MEDIO SUPERIOR',1),('O1H000','Centro de Estudios Científicos y Tecnológicos 10 \"Carlos Vallejo Márquez\"','MEDIO SUPERIOR',1),('O1I000','Centro de Estudios Científicos y Tecnológicos 11 \"Wilfrido Massieu\"','MEDIO SUPERIOR',1),('O1J000','Centro de Estudios Tecnológicos 1 \"Walter Cross Buchanan\"','MEDIO SUPERIOR',1),('O1K000','Centro de Estudios Científicos y Tecnológicos 6 \"Miguel Othón de Mendizabal\"','MEDIO SUPERIOR',1),('O1L000','Centro de Estudios Científicos y Tecnológicos 15 \"Diódoro Antúnez Echegaray\"','MEDIO SUPERIOR',1),('O1M000','Centro de Estudios Científicos y Tecnológicos 5 \"Benito Juárez\"','MEDIO SUPERIOR',1),('O1N000','Centro de Estudios Científicos y Tecnológicos 12 \"José María Morelos\"','MEDIO SUPERIOR',1),('O1O000','Centro de Estudios Científicos y Tecnológicos 13 \"Ricardo Flores Magón\"','MEDIO SUPERIOR',1),('O1P000','Centro de Estudios Científicos y Tecnológicos 14 \"Luis Enrique Erro\"','MEDIO SUPERIOR',1),('O1Q000','Centro de Estudios Científicos y Tecnológicos 16 \"Hidalgo\"','MEDIO SUPERIOR',1),('O1R000','Centro de Estudios Científicos y Tecnológicos 17 \"León, Guanajuato\"','MEDIO SUPERIOR',1),('O2A000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Azcapotzalco','SUPERIOR',1),('O2B000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Culhuacán','SUPERIOR',1),('O2C000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Ticomán','SUPERIOR',1),('O2D000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Zacatenco','SUPERIOR',1),('O2E000','Escuela Superior de Ingeniería y Arquitectura Unidad Tecamachalco','SUPERIOR',1),('O2F000','Escuela Superior de Ingeniería y Arquitectura Unidad Ticomán','SUPERIOR',1),('O2G000','Escuela Superior de Ingeniería y Arquitectura Unidad Zacatenco','SUPERIOR',1),('O2H000','Escuela Superior de Ingeniería Textil','SUPERIOR',1),('O2I000','Escuela Superior de Ingeniería Química e Industrias Extractivas','SUPERIOR',1),('O2J000','Escuela Superior de Física y Matemáticas','SUPERIOR',1),('O2K000','Escuela Superior de Computación','SUPERIOR',1),('O2L000','Unidad Profesional Interdisciplinaria en Ingeniería y Tecnologías Avanzadas','SUPERIOR',1),('O2M000','Unidad Profesional Interdisciplinaria de Ingeniería y Ciencias Sociales y Administrativas','SUPERIOR',1),('O2N000','Unidad Profesional Interdisciplinaria de Biotecnología','SUPERIOR',1),('O2O000','Escuela Nacional de Medicina y Homeopatía','SUPERIOR',1),('O2P000','Escuela Nacional de Ciencias Biológicas','SUPERIOR',1),('O2Q000','Escuela Superior de Medicina','SUPERIOR',1),('O2R000','Escuela Superior de Enfermería y Obstetricia','SUPERIOR',1),('O2S000','Centro Interdisciplinario de Ciencias de la Salud Unidad Milpa Alta','SUPERIOR',1),('O2T000','Centro Interdisciplinario de Ciencias de la Salud Unidad Santo Tomás','SUPERIOR',1),('O2U000','Escuela Superior de Comercio y Administración Unidad Santo Tomás','SUPERIOR',1),('O2V000','Escuela Superior de Comercio y Administración Unidad Tepepan','SUPERIOR',1),('O2W000','Escuela Superior de Economía','SUPERIOR',1),('O2X000','Escuela Superior de Turismo','SUPERIOR',1),('O2Y000','Unidad Profesional Interdisciplinaria de Ingeniería Campus Guanajuato','SUPERIOR',1),('O2Z000','Unidad Profesional Interdisciplinaria de Ingeniería Campus Zacatecas','SUPERIOR',1),('P0A000','Centro Interdisciplinario de Ciencias Marinas','POSGRADO',1),('P0C000','Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional Unidad Durango','POSGRADO',1),('P0F000','Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional Unidad Oaxaca','POSGRADO',1),('P0H000','Centro de Biotecnología Genómica','POSGRADO',1),('P0I000','Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada Unidad Legaria','POSGRADO',1),('P0J000','Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada Unidad Altamira','POSGRADO',1),('P0K000','Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada Unidad Querétaro','POSGRADO',1),('P0L000','Centro de Investigación en Computación','POSGRADO',1),('P0M000','Centro de Investigación y Desarrollo de Tecnología Digital','POSGRADO',1),('P0N000','Centro de Investigaciones Económicas, Administrativas y Sociales','POSGRADO',1),('P0P000','Centro de Innovación y Desarrollo Tecnológico en Computo','POSGRADO',1),('P0Q000','Centro de Investigación e Innovación Tecnológica','POSGRADO',1),('P0T000','Centro de Nanociencias y Micro y Nanotecnologías','POSGRADO',1),('Q00000','Secretaría de Servicios Educativos','AREA',1),('Q10000','Dirección de Administración Escolar','AREA',1),('Q30000','Dirección de Bibliotecas','AREA',1),('Q40000','Dirección de Difusión y Fomento a la Cultura','AREA',1),('Q50000','Dirección de Desarrollo y Fomento Deportivo','AREA',1),('R0F000','Unidad Politécnica para el Desarrollo y la Competitividad Empresarial','AREA',1),('R40000','Dirección de Publicaciones','AREA',1),('R5D000','Centro de Educación Contínua Unidad Culiacán','CENTRO',1),('R5E000','Centro de Educación Contínua Unidad Los Mochis','CENTRO',1),('R5K000','Centro de Educación Contínua Unidad Tijuana','CENTRO',1),('R5M000','Centro de Educación Contínua Unidad Durango','CENTRO',1),('S30000','Dirección de Evaluación','AREA',1),('T40000','Dirección de Gestión del Capital Humano','AREA',1),('T50000','Dirección de Recursos Financieros','AREA',1),('T60000','Dirección de Recursos Materiales y Servicios','AREA',1),('T63000','Coordinación de Centros de Desarrollo Infantil','AREA',1),('T63010','Centro de Desarrollo Infantil \"Laura Pérez de Bátiz\"','CENTRO',1),('T63020','Centro de Desarrollo Infantil \"Amalia Solórzano de Cárdenas\"','CENTRO',1),('T63040','Centro de Desarrollo Infantil \"Clementina Batalla de Bassols\"','CENTRO',1),('T63050','Centro de Desarrollo Infantil \"Margarita Salazar de Erro\"','CENTRO',1),('XXXXXX','Coordinación Politécnica para la Sustentabilidad','AREA',1);
/*!40000 ALTER TABLE `place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prize`
--

DROP TABLE IF EXISTS `prize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prize` (
  `PrizeID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Block` int(11) NOT NULL,
  `Speech` varchar(1000) NOT NULL,
  `Amount` int(11) NOT NULL,
  `EventID` int(11) NOT NULL,
  PRIMARY KEY (`PrizeID`),
  KEY `event_prize_idx` (`EventID`),
  CONSTRAINT `EventPrize` FOREIGN KEY (`EventID`) REFERENCES `event` (`EventID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `Username` int(11) NOT NULL,
  `Password` varchar(256) NOT NULL,
  `Type` varchar(60) NOT NULL,
  `InstitutionID` int(11) NOT NULL,
  PRIMARY KEY (`Username`),
  KEY `user_institution_idx` (`InstitutionID`),
  CONSTRAINT `UserInstitution` FOREIGN KEY (`InstitutionID`) REFERENCES `institution` (`InstitutionID`) ON DELETE CASCADE ON UPDATE CASCADE
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

-- Dump completed on 2018-11-13 19:15:43
