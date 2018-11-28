-- MySQL dump 10.13  Distrib 5.7.21, for Win64 (x86_64)
--
-- Host: localhost    Database: OrganizeAnEvent
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
  `EventID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `comment_guest_idx` (`RFC`),
  KEY `comment_event_idx` (`EventID`),
  CONSTRAINT `CommentEvent` FOREIGN KEY (`EventID`) REFERENCES `event` (`EventID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `CommentGuest` FOREIGN KEY (`RFC`) REFERENCES `guest` (`RFC`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'Primera fila incapacidad','SARM501017',1),(2,'Dificultad para caminar, requiere acompañante','PECA340531',1);
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
  `InstitutionID` int(11) DEFAULT NULL,
  PRIMARY KEY (`EventID`),
  KEY `event_institution_idx` (`InstitutionID`),
  CONSTRAINT `EventInstitution` FOREIGN KEY (`InstitutionID`) REFERENCES `institution` (`InstitutionID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'DISTINCIONES AL MÉRITO POLITÉCNICO 2018',NULL,NULL,NULL,NULL,'LAS DISTINCIONES AL MÉRITO POLITÉCNICO SON EL RECONOCIMIENTO QUE HACE LA COMUNIDAD POLITÉCNICA A UNA CONDUCTA, TRAYECTORIA, SERVICIO O ACCIÓN EJEMPLAR, SOBRESALIENTE, QUE HAYA TENIDO POR OBJETO EXHALTAR EL PRESTIGIO DEL INSTITUTO POLITÉCNICO NACIONAL, PARA APOYAR LA REALIZACIÓN DE SUS FINALIDADES: IMPULSAR EL DESARROLLO DE LA EDUCACIÓN TÉCNICA EN EL PAÍS O BENEFICIAR A LA HUMANIDAD.\n\nEN ESTA OCASIÓN EL CONSEJO GENERAL CONSULTIVO HA DECIDIDO OTORGAR',1);
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
INSERT INTO `guest` VALUES ('AAAC670607','Celia','Ayala','Arellano','enriquebroly@gmail.com','O1P000'),('AAAJ410118','Jorge Helio','Altamirano','Aguilar','yngmeizhu@gmail.com','O2P000'),('AABS460521','Salvador','Álvarez','Ballesteros','yngmeizhu@gmail.com','O2D000'),('AAER600805','Rosa Martha','Alcántara','Escamilla','abigail3nic.say@gmail.com','O1P000'),('AAFD851118','Daniel','Álvarez','Fuentes','enriquebroly@gmail.com','O2R000'),('AAGG570404','Gonzalo Isidro','Alvarado','González','yngmeizhu@gmail.com','O2I000'),('AAIA810312','José Andrés','Álvarez','Ibarra','soyoscarrh@gmail.com','R5E000'),('AALE860922','Edith Yuliana','Amador','López','enriquebroly@gmail.com','O2G000'),('AAMA580502','José Antonio','Andrade','Morales','enriquebroly@gmail.com','O1P000'),('AAMJ470215','Juan','Álvarez','Mendoza','abigail3nic.say@gmail.com','O1F000'),('AAMJ550319','José Juan','Aljama','Moral','enriquebroly@gmail.com','O1L000'),('AAMS420723','Samuel','Alcantara','Montes','yngmeizhu@gmail.com','O2D000'),('AAOE530715','Enrique','Anaya','Ornelas','yngmeizhu@gmail.com','O2M000'),('AARE791201','María Elena','Álvarez','Rodríguez','soyoscarrh@gmail.com','O10000'),('AASA570727','Alfonso Javier','Álvarez','Sierra','abigail3nic.say@gmail.com','O1H000'),('AASR630322','Rosaura','Amador','Sánchez','yngmeizhu@gmail.com','Q40000'),('AAZA700603','Ana María','Almanza','Zendejas','enriquebroly@gmail.com','O2C000'),('AEMA610302','Agustín Humberto','Ángeles','Mejía','yngmeizhu@gmail.com','O2A000'),('AERL450609','Lucio','Alemán','Rodríguez','yngmeizhu@gmail.com','O2T000'),('AIGE760708','Esperanza','Aviña','García','soyoscarrh@gmail.com','R5K000'),('AIRR361024','Rafael','Ávila','Reyes','yngmeizhu@gmail.com','O2E000'),('AISL760127','Lizeth','Avilés','Sánchez','enriquebroly@gmail.com','O1N000'),('AIVJ410529','Jorge Arturo','Aviña','Valencia','yngmeizhu@gmail.com','O2Q000'),('AOAR441112','Roberto Segundo','Acosta','Abreu','yngmeizhu@gmail.com','O2J000'),('AOOE651222','Emilio','Arroyo','Orrala','yngmeizhu@gmail.com','P0P000'),('AORG480916','María Guadalupe','Alonso','Ríos','abigail3nic.say@gmail.com','O1I000'),('AOTS630428','Sergio Cesar','Arroyo','Trejo','yngmeizhu@gmail.com','O2G000'),('AUAJ590101','Julio','Aquino','Aquino','abigail3nic.say@gmail.com','O1L000'),('AUBF470810','Fernando','Angulo','Brown','yngmeizhu@gmail.com','O2J000'),('AUCJ600223','Jesús Raúl','Aguilar','Caballero','yngmeizhu@gmail.com','O2P000'),('AUFB570717','Blanca Rosa','Aguilar','Figueroa','yngmeizhu@gmail.com','O2P000'),('AULC650915','Carlos','Aguilar','López','enriquebroly@gmail.com','O2H000'),('AUMF640309','Fernando Raul','Aguilar','Martínez','yngmeizhu@gmail.com','O2P000'),('AUTV660101','Víctor Manuel','Aguilar','Tlapale','abigail3nic.say@gmail.com','K20000'),('BAAC641022','César','Basurto','Acevedo','soyoscarrh@gmail.com','R40000'),('BABE570407','Epifanio Donato','Barbabosa','Beltrán','enriquebroly@gmail.com','O2R000'),('BACM520429','Mario Alberto','Ballesteros','Curiel','abigail3nic.say@gmail.com','O1O000'),('BAEE770115','Elda','Baranda','Esquivel','soyoscarrh@gmail.com','P0L000'),('BAFM531103','Mario Alfredo','Batta','Fonseca','yngmeizhu@gmail.com','O2C000'),('BAGA541105','Ana María','Baeza','Gómez','abigail3nic.say@gmail.com','K10000'),('BAHH520810','Hilda','Banda','Hernández','soyoscarrh@gmail.com','O2T000'),('BAJO591030','Jorge','Barrón','','abigail3nic.say@gmail.com','O1C000'),('BALH681010','Homar Jorge','Bautista','Lugo','yngmeizhu@gmail.com','O2F000'),('BAMV840328','Víctor Alejandro','Banderas','Mérida','enriquebroly@gmail.com','O2B000'),('BANL531018','Laura Leticia','Barrera','Necha','yngmeizhu@gmail.com','P0G000'),('BASR381220','José Roberto de Jesús','Bastarrachea','Sabido','abigail3nic.say@gmail.com','O2Q000'),('BAVD370403','Daniel','Barajas y','Valencia','yngmeizhu@gmail.com','O2D000'),('BEEJ580206','Jesús Gonzalo','Benítez','Escobar','yngmeizhu@gmail.com','O2I000'),('BEFG410730','José Guadalupe','Becerra','Ferreyra','yngmeizhu@gmail.com','O2X000'),('BEHJ600304','Judith','Benitez','Hernández','yngmeizhu@gmail.com','O2Q000'),('BEHM730706','Ma. Guadalupe del Carmen','Belmonte','Hernández','enriquebroly@gmail.com','O1R000'),('BEJA641207','María Alma','Benitez','Juárez','soyoscarrh@gmail.com','O2W000'),('BELA640913','Amada Gabriela','Brenes','López','yngmeizhu@gmail.com','O2C000'),('BEMB431109','Blanca Margarita','Berdeja','Martínez','yngmeizhu@gmail.com','O2P000'),('BEMG581122','Gerardo','Bernal','Méndez','enriquebroly@gmail.com','O1I000'),('BERJ620714','Judith','Betancourt','Ruiz','abigail3nic.say@gmail.com','O1J000'),('BESH660721','Maria Haydee','Bernal','Sanchez','yngmeizhu@gmail.com','O2D000'),('BIMR670106','Rocío','Bizarro','Moreno','abigail3nic.say@gmail.com','O1H000'),('BOMJ600427','Jesús Roberto','Bolivar','Meza','enriquebroly@gmail.com','O1D000'),('BUAI920831','Ismael','Bruno','Arellano','enriquebroly@gmail.com','O1F000'),('BUGT430510','Maria Teresa','Bustamante','Garcia','yngmeizhu@gmail.com','O2U000'),('BUMM681026','Miguel Alejandro','Buendía','Meneses','yngmeizhu@gmail.com','O2Q000'),('CAAA660515','Aida Areli','Castro','Aguirre','abigail3nic.say@gmail.com','O1K000'),('CAAE620708','Maria Elena','Campos','Aldrete','yngmeizhu@gmail.com','O2P000'),('CAAG560830','Guadencio','Camacho','Alvarado','enriquebroly@gmail.com','O1O000'),('CAAH551119','Higinio','Carballar','Aranda','yngmeizhu@gmail.com','Q50000'),('CAAN800412','Norma Alicia','Caltenco','Arceo','soyoscarrh@gmail.com','O2V000'),('CAAP690310','Pablo','Cabrera','Alvarado','soyoscarrh@gmail.com','P0H000'),('CABI750704','Isidro','Castillo','Bautista','enriquebroly@gmail.com','O2H000'),('CABM811007','Mariana Elizabeth','Chávez','Benítez','enriquebroly@gmail.com','O1C000'),('CACG660118','Gema','Cancino','Calderón','abigail3nic.say@gmail.com','O2D000'),('CACJ361020','Juan','Castro','Carrillo','yngmeizhu@gmail.com','O2Q000'),('CACJ600212','María de Jesús','Calva','Calva','yngmeizhu@gmail.com','Q40000'),('CACJ620311','María Josefina','Campos','Cano','enriquebroly@gmail.com','O1M000'),('CACN810816','Nayeli','Caballero','Cerpa','enriquebroly@gmail.com','O2I000'),('CADB581204','Blanca Leticia','Callejas','Dávila','yngmeizhu@gmail.com','O2Q000'),('CADR791106','Rafael','Castañeda','Díaz','abigail3nic.say@gmail.com','O2Z000'),('CAFA661128','Angelina','Cadena','Flores','abigail3nic.say@gmail.com','O1O000'),('CAFJ811202','Janet','Cadena','Flores','enriquebroly@gmail.com','O1L000'),('CAGD601102','Diana Rocío','Castañeda','García','yngmeizhu@gmail.com','O2Q000'),('CAGE550405','Emilio','Calixto','González','abigail3nic.say@gmail.com','O1A000'),('CAGG640505','Guillermo','Carrasco','García','abigail3nic.say@gmail.com','O1G000'),('CAGL570825','José Luis','Carvajal','Gómez','yngmeizhu@gmail.com','O2H000'),('CAGM440225','Modesto','Cárdenas','García','yngmeizhu@gmail.com','O2J000'),('CAGN631226','Noe Marina','Chagolla','Guerrero','yngmeizhu@gmail.com','O2P000'),('CAGX671023','José Alberto','Chagolla','Guerrero','yngmeizhu@gmail.com','O2P000'),('CAJC500324','José Claudio','Chávez','Jiménez','enriquebroly@gmail.com','O2L000'),('CAJC700425','Celia','Carrasco','Jiménez ','abigail3nic.say@gmail.com','O1P000'),('CAJG620516','María Guadalupe','Castelán','Jiménez','abigail3nic.say@gmail.com','O1O000'),('CAJT580925','Teresita','Cardona','Juárez','soyoscarrh@gmail.com','P0Q000'),('CALA700920','Adolfo','Cabrera','López','enriquebroly@gmail.com','O2P000'),('CAMA630623','José Armando','Campos','Martínez','yngmeizhu@gmail.com','O2U000'),('CANC800416','César Servando','Casas','Núñez','soyoscarrh@gmail.com','P0A000'),('CANO650124','Oscar','Camacho','Nieto','yngmeizhu@gmail.com','P0P000'),('CAOL521221','Luis','Castillo','Olivares','yngmeizhu@gmail.com','O2A000'),('CAOM641215','Miroslava','Castelán','Olguín','yngmeizhu@gmail.com','O2D000'),('CAOV650225','Virginia','Chávez','Orozco','yngmeizhu@gmail.com','O2A000'),('CAPM560515','Manuela','Calva','Pérez','yngmeizhu@gmail.com','O2M000'),('CAQD650908','David Filiberto','Calderón','Quintana','yngmeizhu@gmail.com','O2P000'),('CARA550419','Antonio','Castillo','Rivas','soyoscarrh@gmail.com','Q50000'),('CARE870706','Edith Berenitze','Calvillo','Ramirez','soyoscarrh@gmail.com','P0T000'),('CATJ800217','Jorge Ivan','Carrillo','Tellez','soyoscarrh@gmail.com','P0L000'),('CAVM560102','Macario','Camacho','Valdez','yngmeizhu@gmail.com','P0A000'),('CAVS680901','Silvia Lucila','Chávez','Valdez','yngmeizhu@gmail.com','N00000'),('CEBL641209','Luis','Ceballos','Barragán','soyoscarrh@gmail.com','S30000'),('CECD550401','María Dolores','Cervantes','Cadena','abigail3nic.say@gmail.com','O1N000'),('CEEV640206','Victor Manuel','Cedillo','Estrada','yngmeizhu@gmail.com','O2A000'),('CEGG770409','Gloria Araceli','Cedillo','González','soyoscarrh@gmail.com','Q40000'),('CEMJ490521','Jaime','Celis','Méndez','yngmeizhu@gmail.com','O2N000'),('CEPP650317','Patricia','Cervantes','Pérez','enriquebroly@gmail.com','O2C000'),('CEQI610121','María Ines','Centeno','Quintanar','abigail3nic.say@gmail.com','O1D000'),('CICM700907','María Mireya','Cristino','Castillo','enriquebroly@gmail.com','O1E000'),('CIDP680624','Patricia Ramona','Cisneros','Díaz','abigail3nic.say@gmail.com','O1O000'),('COAM650109','Miguel Ángel','Correa','Ascencio','yngmeizhu@gmail.com','O2P000'),('COGX700718','María Eugenia','Contreras','Gallardo','soyoscarrh@gmail.com','Q40000'),('COJD560226','Denise','Córdova','Just','yngmeizhu@gmail.com','YYYYYY'),('COMS580919','José Salvador','Contreras','Mascota','yngmeizhu@gmail.com','O2P000'),('COPJ590902','Julian','Cordero','Pérez','abigail3nic.say@gmail.com','O1J000'),('COSL680114','María de Lourdes','Correa','Saldaña','soyoscarrh@gmail.com','P0K000'),('COVC500403','María Cristina','Colín','Villanueva','soyoscarrh@gmail.com','XXXXXX'),('CUAE610405','Emilio Alberto','Cruz','Aguirre','yngmeizhu@gmail.com','P0F000'),('CUBB650629','Blanca Estela','Cuevas','Bribiesca','abigail3nic.say@gmail.com','O1A000'),('CUDJ700330','José Juan','Cruz','Durán','soyoscarrh@gmail.com','O2V000'),('CUPA641214','Alejandro','Cruz','Paniagua','yngmeizhu@gmail.com','O2Q000'),('CUPS631212','Sonia Elizabeth','Cruz','Pérez','enriquebroly@gmail.com','O1J000'),('CURE671008','María Eugenia','Cruz','Reyes','yngmeizhu@gmail.com','O2B000'),('CUVA600612','Aida','Cruz','Vega','soyoscarrh@gmail.com','P0J000'),('DEAV540628','Víctor Manuel','Delgado','Arellano','soyoscarrh@gmail.com','S30000'),('DOAS541112','Samuel','Dorantes','Álvarez','yngmeizhu@gmail.com','O2N000'),('DUMJ520111','Juana Leydy Yadira','Duarte','Mena','enriquebroly@gmail.com','O2H000'),('DUVM620927','Mónica','Durán','Velasco','yngmeizhu@gmail.com','O2P000'),('EAGC770416','Carolina','Estrada','García','enriquebroly@gmail.com','O1B000'),('EAMM710909','Martha','Escalante','Morales','abigail3nic.say@gmail.com','T63020'),('EARG821010','Georgina Irasema','Estrada','Rivera','soyoscarrh@gmail.com','R5D000'),('EEBA650625','Alma Araceli','Erceg','Bravo','abigail3nic.say@gmail.com','O1J000'),('EEGG660911','Graciela','Erreguín','González','abigail3nic.say@gmail.com','O1P000'),('EEUS570818','Sergio Federico','Eckstein','Ugarte','yngmeizhu@gmail.com','Q40000'),('EIGL470116','Lucas','Encinas','García ','abigail3nic.say@gmail.com','O1K000'),('EILJ440328','Juana Mercedes','Espinosa','Lara','yngmeizhu@gmail.com','O2P000'),('EIVA450412','Albertina','Espinoza','Venegas','yngmeizhu@gmail.com','O2V000'),('EIVI600524','José Isaías','Enríquez','Vicente','enriquebroly@gmail.com','O2J000'),('EUMA630826','Adolfo','Esquivel','Martínez','yngmeizhu@gmail.com','P0M000'),('FAGA530612','Armando','Frausto','Guerrero','yngmeizhu@gmail.com','O2Q000'),('FAGJ781015','Jesús','Franco','Gómez','enriquebroly@gmail.com','O2Y000'),('FARM481129','Miguel','Franco','Romano','yngmeizhu@gmail.com','N00000'),('FATE610606','Enrique','Frasco','Tapia','yngmeizhu@gmail.com','P0F000'),('FERA561101','Ángela','Félix','Reyes','soyoscarrh@gmail.com','J60000'),('FETD600118','Dionisio Salomon','Fernández','Tapia','yngmeizhu@gmail.com','O2M000'),('FOBF680603','María Francisca','Flores','Bárcenas','soyoscarrh@gmail.com','O2W000'),('FOGR691218','Rubén','Fonseca','Gutiérrez','abigail3nic.say@gmail.com','K00000'),('FOLD600328','Dora María','Fonseca','López','yngmeizhu@gmail.com','P0K000'),('FOMS580218','Sergio','Flores','Meza','yngmeizhu@gmail.com','O2I000'),('GAAA630612','Antonio','García','Aguilar','yngmeizhu@gmail.com','O2A000'),('GAAJ580420','Jorge','García','Ángeles','yngmeizhu@gmail.com','O2D000'),('GAAN560517','Nadia','Garín','Aguilar','yngmeizhu@gmail.com','O2Q000'),('GAAP490622','Paulino','García','Altamirano','yngmeizhu@gmail.com','O2P000'),('GAAS600109','Silva','Gallegos','Alcantara','yngmeizhu@gmail.com','O2X000'),('GABJ630131','Juan Manuel','García','Barrios','abigail3nic.say@gmail.com','O1C000'),('GABR450924','Rubén Joel','García','Barajas','yngmeizhu@gmail.com','O2I000'),('GACG621104','Gonzalo','Galvez','Coyt','yngmeizhu@gmail.com','O2N000'),('GACH581217','Héctor Hugo','García','Castillo','yngmeizhu@gmail.com','O10000'),('GACI590603','José Isaac','García','Carmona','soyoscarrh@gmail.com','T60000'),('GACI730704','Isabel Angélica','Gayosso','de la Cruz','enriquebroly@gmail.com','O2N000'),('GACJ570530','Jorge','Gallegos','Contreras','yngmeizhu@gmail.com','O2G000'),('GACJ590822','Javier','Galván','Chávez','soyoscarrh@gmail.com','O2X000'),('GACM710712','María Martha','García','Coronado','soyoscarrh@gmail.com','P0M000'),('GADF790414','Fabiola','García','Durán','abigail3nic.say@gmail.com','T60000'),('GAGA651215','Arturo','García','González','abigail3nic.say@gmail.com','O1A000'),('GAGE930619','Ernesto Saúl','Galván','González','abigail3nic.say@gmail.com','T63000'),('GAGL620822','María de Lourdes','Galicia','Galicia','soyoscarrh@gmail.com','P0K000'),('GAHE570925','Engracia Mireya','García','Hernández','abigail3nic.say@gmail.com','O1K000'),('GAHF630822','Filiberto','García','Hernández','abigail3nic.say@gmail.com','O1F000'),('GAHG471123','Gabriel','García','Hernández','yngmeizhu@gmail.com','O1D000'),('GAJJ611026','Jaime Ernesto','García','Jiménez','soyoscarrh@gmail.com','O2X000'),('GALL661221','María de Lourdes','García','López','soyoscarrh@gmail.com','P0C000'),('GAMC530827','Cesárea Rosa María','Garduño','Mendieta','yngmeizhu@gmail.com','O2C000'),('GAPC680404','Claudia','Garces','Peñaloza','abigail3nic.say@gmail.com','O1A000'),('GARJ640319','Juan José','García','Rivera','enriquebroly@gmail.com','O1K000'),('GARV801005','Viridiana Karina','García','Romero','enriquebroly@gmail.com','O1A000'),('GASA810421','Annel','Galicia','San Miguel','soyoscarrh@gmail.com','O2S000'),('GAVS530520','Silvia','Galicia','Villanueva','yngmeizhu@gmail.com','O2V000'),('GAVT670924','María Teresa','García','Vázquez','soyoscarrh@gmail.com','T60000'),('GAXG691204','Gustavo','Galicia','Xolalpa','soyoscarrh@gmail.com','O2S000'),('GIGJ590910','Julia','Grijalva','García','yngmeizhu@gmail.com','O2P000'),('GOAM910530','Mario Iván','González','Abad','soyoscarrh@gmail.com','O2U000'),('GOCA520427','Ma. Anastasia Mónica','Gordiano','Cervantes','abigail3nic.say@gmail.com','O1D000'),('GOCJ540509','Jorge','Gómez','Contreras','yngmeizhu@gmail.com','Q40000'),('GOCL610302','Luis Alfonso','Godinez','Contreras','yngmeizhu@gmail.com','O2J000'),('GODA750831','Alberto Jorge','González','Díaz','soyoscarrh@gmail.com','XXXXXX'),('GOEE930613','Erick','Gordillo','Escobar','soyoscarrh@gmail.com','JE0000'),('GOFA671026','Adolfo','Gómez','Flores','enriquebroly@gmail.com','O2G000'),('GOHG580525','Gregorio','Gómez','Hernández','yngmeizhu@gmail.com','O2Q000'),('GOHL460918','Luis Arturo','González','Hernández','abigail3nic.say@gmail.com','P0M000'),('GOLU570429','José Luis','González','','yngmeizhu@gmail.com','O2A000'),('GOMJ590712','Juana','González','Monroy','yngmeizhu@gmail.com','O2X000'),('GOML560209','María Luisa','González','Moreno','yngmeizhu@gmail.com','P0P000'),('GOMV580325','Vicente Hugo','González','Majul','abigail3nic.say@gmail.com','O1M000'),('GOPF630603','Felipe','González','Pérez','enriquebroly@gmail.com','O2O000'),('GOPP651210','María Patricia','Godínez','Pavón','enriquebroly@gmail.com','O2J000'),('GORA611230','Abel','Gonzalez','Reyes','abigail3nic.say@gmail.com','O1J000'),('GORJ580113','Juan Carlos','González','Robles','yngmeizhu@gmail.com','P0P000'),('GOVA480616','Aurelio','Gómez','Velázquez','yngmeizhu@gmail.com','O2B000'),('GOVN621207','Norma Angélica','Godínez','Vallejo','soyoscarrh@gmail.com','Q00000'),('GOZA600901','Artemio','González','Zamudio','soyoscarrh@gmail.com','P0I000'),('GUAJ850112','Jazmín','Guerra','Alcántara','soyoscarrh@gmail.com','L10000'),('GUAV770529','Vianey','Guerra','Alcantara','abigail3nic.say@gmail.com','R0F000'),('GUCE590602','Maria Eugenia','Gutiérrez','Castillo','yngmeizhu@gmail.com','P0B000'),('GUCY710615','Yolanda','Gutiérrez','Cárdenas','soyoscarrh@gmail.com','O2V000'),('GUDE820907','Edgar René','Guzmán','Delgado','enriquebroly@gmail.com','O1N000'),('GUGC640225','Cesareo','Guillén','García','yngmeizhu@gmail.com','O2V000'),('GUGM570426','Marcelino','Guzmán','Gallardo','enriquebroly@gmail.com','O2R000'),('GUHE740114','Erika','Gutiérrez','Hernández','enriquebroly@gmail.com','O1M000'),('GUHL810712','Luis Paul','Gutiérrez','Hernández','soyoscarrh@gmail.com','L10000'),('GUIF610129','Fernando Martín','Guerra','Infante','yngmeizhu@gmail.com','O2P000'),('GULR860123','Roberto Antonio','Guzmán','León','soyoscarrh@gmail.com','P0F000'),('GUMG560331','Gloria','Gutierrez','Menchaca','yngmeizhu@gmail.com','O2Q000'),('GUPE640521','Elías','Gutiérrez','Páramo','soyoscarrh@gmail.com','P0K000'),('GUPS640707','Silvino','Guerrero','Peña','soyoscarrh@gmail.com','T50000'),('GURJ720122','Jorge Alberto','Gutiérrez','Ramírez','enriquebroly@gmail.com','O2F000'),('GUSJ751114','Juan Manuel','Guzmán','Salas','soyoscarrh@gmail.com','P0P000'),('GUSV811105','María Vianey','Gudiño','Sánchez','enriquebroly@gmail.com','O1A000'),('GUTA410412','Armando','Guerra','Trejo','yngmeizhu@gmail.com','O2P000'),('GUTF561129','Filomeno','Gutiérrez','Toribio','yngmeizhu@gmail.com','R40000'),('HALM580923','José Manuel','Hallen','López','yngmeizhu@gmail.com','O2I000'),('HEAJ480905','Jesús','Herrnández','Almaguer','yngmeizhu@gmail.com','O2Q000'),('HEBP580102','Patricia','Hernández','Balderas','soyoscarrh@gmail.com','J60000'),('HEGB680314','Benito','Hernández','García','yngmeizhu@gmail.com','O2O000'),('HEGJ590310','Juana','Hernández','Gutiérrez','abigail3nic.say@gmail.com','O1H000'),('HEGL560415','Luis Héctor','Hernández','Gómez','yngmeizhu@gmail.com','O2D000'),('HEGP610330','Pedro Roberto','Hernández','García','abigail3nic.say@gmail.com','O1B000'),('HEGR450905','Rosa Isabel','Hernández','Gómez','yngmeizhu@gmail.com','O2B000'),('HEGU731014','Ubaldo','Hernández','Gutiérrez','soyoscarrh@gmail.com','P0A000'),('HEHS611127','Santa Adriana','Hernandez','Hernandez','yngmeizhu@gmail.com','O2U000'),('HEIM680226','Martha','Hernández','Iturriaga','soyoscarrh@gmail.com','O2W000'),('HELI891227','Itzel Marisol','Hernández','Luis','enriquebroly@gmail.com','O2K000'),('HEMA760104','Ana Laura','Hernández','Medina','enriquebroly@gmail.com','O2M000'),('HEMP610409','Patricia','Hernández','Monsalvo','enriquebroly@gmail.com','O1A000'),('HERA631206','Alicia','Hernández','Ramírez','abigail3nic.say@gmail.com','T63010'),('HERF391001','Francisco','Hernández','Rangel','yngmeizhu@gmail.com','O2D000'),('HESR530831','Ramón','Herrera','Segovia','soyoscarrh@gmail.com','O2T000'),('HEVO590818','Othón Enrique','Herrera','Villegas','yngmeizhu@gmail.com','O2P000'),('HUAE800531','Edgar','Hurtado','Ávila','enriquebroly@gmail.com','O2O000'),('HUAF470205','Felipe Placido','Hueramo','Acosta','yngmeizhu@gmail.com','O2U000'),('HUGF680607','José Francisco','Huerta','Gutiérrez','abigail3nic.say@gmail.com','O1F000'),('IACA610703','Ana María','Islas','Cortes','yngmeizhu@gmail.com','O2H000'),('IANE820517','Nereyda','Guadalupe','Ibarra','soyoscarrh@gmail.com','P0A000'),('IAOV730304','Víctor Manuel','Islas','Olivos','soyoscarrh@gmail.com','S30000'),('IAPE721117','Enedelia','Ibarra','Pineda','soyoscarrh@gmail.com','T40000'),('IIAY431021','Yolanda','Iriarte','Arteaga','yngmeizhu@gmail.com','O2O000'),('JAVD540613','David','Jaramillo','Vigueras','abigail3nic.say@gmail.com','P0Q000'),('JEHJ620923','Joselito Abilio','de Jesús','Herrera','enriquebroly@gmail.com','O2I000'),('JICJ500418','Jorge','Jiménez','Cervantes','abigail3nic.say@gmail.com','O1D000'),('JIGF420129','Felipe Ignacio','Jiménez','García','yngmeizhu@gmail.com','O2P000'),('JIMA610709','Alejandra','Jiménez','Méndez','enriquebroly@gmail.com','O1C000'),('JIMI631018','Ignacio','Jiménez','Martínez','yngmeizhu@gmail.com','O2J000'),('JIPG660523','Guadalupe','Jiménez','Pérez','yngmeizhu@gmail.com','O2I000'),('JUBD720623','Dulce María','Juárez','Banda','soyoscarrh@gmail.com','P0Q000'),('JULF841004','Francisco','Juanes','Loera','enriquebroly@gmail.com','O2Z000'),('JULM671105','Ma. Isabel','Juárez','Lara','soyoscarrh@gmail.com','N00000'),('JUMM651228','María Martha','Juárez','Morales','yngmeizhu@gmail.com','N00000'),('JUSM570722','Magdaleno Rafael','Juárez','Sánchez','yngmeizhu@gmail.com','Q40000'),('KEML370228','Leonel','Kelly','Mexia','yngmeizhu@gmail.com','O2Q000'),('LIFM570506','Magdalena','Licona','Flores','abigail3nic.say@gmail.com','O1K000'),('LOAA770303','Adaluz','López','Ángeles','enriquebroly@gmail.com','O2E000'),('LOAP630409','Pedro Antonio','Loyola','Abitia','yngmeizhu@gmail.com','O2P000'),('LOCS670617','Salvador','López','Chávez','yngmeizhu@gmail.com','O2Q000'),('LOFT610501','María Teresa','López','Flores','enriquebroly@gmail.com','O1D000'),('LOGE810825','Esmirna Concepción','López','Gallegos','abigail3nic.say@gmail.com','T63040'),('LORC630708','Corina','López','Rangel','enriquebroly@gmail.com','O2P000'),('LORJ690319','José','López','Ríos','soyoscarrh@gmail.com','P0M000'),('LOUS630530','SiIvia Rosa','Lopeandia','Urbina','soyoscarrh@gmail.com','T40000'),('LOVS570524','Susana','López','Valenzuela','yngmeizhu@gmail.com','O2S000'),('MAAC530822','Carlos','Martínez','Álvarez','yngmeizhu@gmail.com','P0F000'),('MAAO560123','Olivia','Martínez','Abad','abigail3nic.say@gmail.com','O1C000'),('MABV750223','Víctor Alberto','Martínez','Bautista','soyoscarrh@gmail.com','Q30000'),('MACJ590327','Juan Raymundo','Mayorga','Cervantes','yngmeizhu@gmail.com','O2E000'),('MACM640411','María Magdalena','Martínez','Carrillo','soyoscarrh@gmail.com','L10000'),('MADG430608','Gildardo Carlos','Magdaleno','Domínguez','yngmeizhu@gmail.com','O2G000'),('MAFE621217','Everardo Elías','Martinez','Flores','abigail3nic.say@gmail.com','O1B000'),('MAFJ450121','José','Madrid','Flores','yngmeizhu@gmail.com','J00000'),('MAFV600123','Victor Manuel','Martínez','Fuentes','yngmeizhu@gmail.com','O2G000'),('MAGG600807','Gabino Alberto','Martínez','Gutiérrez','yngmeizhu@gmail.com','P0F000'),('MAGJ460629','Josefina','Martínez','Guzmán','yngmeizhu@gmail.com','O2V000'),('MAGJ611102','Juan Carlos','Mares','Gutiérrez','yngmeizhu@gmail.com','O2P000'),('MAIU850513','Uriel','Martínez','Islas','enriquebroly@gmail.com','O1I000'),('MAJV541230','Venustiano','Martinez','Jimenez','yngmeizhu@gmail.com','O2V000'),('MALA861025','Alejandra Danae','Martínez','López','abigail3nic.say@gmail.com','O0A000'),('MALS631205','Sandra Carolina','Marín','López','yngmeizhu@gmail.com','P0K000'),('MAMR670830','Ramón Leonardo','Martínez','Montes','yngmeizhu@gmail.com','O2I000'),('MAMS570302','María Susana','Martínez','Morales','yngmeizhu@gmail.com','O2D000'),('MANK750818','Karol Angélica','Marín','Nova','soyoscarrh@gmail.com','R5K000'),('MAOA620915','Ma. de los Ángeles','Martínez','Ortega','yngmeizhu@gmail.com','O2E000'),('MAPD850325','Dalia','Martínez','Próspero','enriquebroly@gmail.com','O2K000'),('MAPG741025','Gabino','Martínez','Pérez','soyoscarrh@gmail.com','P0I000'),('MAPM660426','Miriam','Martínez','Pradel','abigail3nic.say@gmail.com','O1L000'),('MAPO581026','Olga Goretty','Mandujano','Pérez','yngmeizhu@gmail.com','P0T000'),('MARA810111','Álvaro','Martínez','Reyes','soyoscarrh@gmail.com','P0F000'),('MARL600702','Luis Manuel','Martínez','Reyes','abigail3nic.say@gmail.com','O1A000'),('MARR450109','Rogelio','Maldonado','Rodríguez','yngmeizhu@gmail.com','O2P000'),('MARR730921','Rosario','Márquez','Ramírez','abigail3nic.say@gmail.com','L00000'),('MARS461224','Salvador','Mata','Ramírez','yngmeizhu@gmail.com','T60000'),('MASC731120','Carolina','Mares','Sandoval','enriquebroly@gmail.com','O1D000'),('MASO581005','Sofía','Macías',' ','soyoscarrh@gmail.com','R5D000'),('MATP810925','Pablo Ricardo','Martínez','Téllez','enriquebroly@gmail.com','O2L000'),('MAVH550316','Heriberto Efrén','Maldonado','Victoria','yngmeizhu@gmail.com','O2G000'),('MEBC660713','Cesar Miguel','Mejía','Barradas','enriquebroly@gmail.com','O2Q000'),('MECE501109','María Estela','Melendez','Camargo','yngmeizhu@gmail.com','O2P000'),('MECV841214','Verónica','Medina','Corral','soyoscarrh@gmail.com','P0M000'),('MEDC870705','Claudia del Carmen','Mendoza','Delgado','enriquebroly@gmail.com','O2Y000'),('MEER810505','Ricardo','Medel','Esquivel','abigail3nic.say@gmail.com','P0I000'),('MEGC640919','Concepción','Mejía','García','yngmeizhu@gmail.com','O2J000'),('MEGS581117','Salvador Ricardo','Meneses','González','yngmeizhu@gmail.com','O2D000'),('MERA550906','Arturo','Méndez','Romero','soyoscarrh@gmail.com','P0I000'),('MESL420327','José Luis','Mejía','Soler','yngmeizhu@gmail.com','O2J000'),('MITI600219','Ignacio','Minjares','Tarazena','yngmeizhu@gmail.com','P0P000'),('MOAC651030','Carlos','Moreno','Ayala','yngmeizhu@gmail.com','O2P000'),('MOAC701121','Claudia Adriana','Moreno','Arenas','yngmeizhu@gmail.com','O2G000'),('MOAJ631206','Ma. Julia','Morales','Álvarez','soyoscarrh@gmail.com','N00000'),('MOAS610429','Sofía Beatríz','Moreno','Acosta','yngmeizhu@gmail.com','O2O000'),('MOCB620227','Baldomero','Morales','Campos','yngmeizhu@gmail.com','O2S000'),('MOCE800511','Esthela','Moreno','Chapa','soyoscarrh@gmail.com','P0H000'),('MOGR571111','Rodrigo','Mondragón','Guzmán','yngmeizhu@gmail.com','O2F000'),('MOHV680927','Verónica','Morales','Hernández','yngmeizhu@gmail.com','Q20000'),('MOIR590502','Ricardo','Moreno','Ibarra','yngmeizhu@gmail.com','O0C000'),('MOLP601009','Pablo','Monjarás','López','soyoscarrh@gmail.com','Q10000'),('MOMA530924','Alfonso','Morales','Martínez','enriquebroly@gmail.com','O1G000'),('MOMA540122','Armando','Morales','Meza','yngmeizhu@gmail.com','O2W000'),('MORA621123','Alma Delia','Morán','Ruíz','enriquebroly@gmail.com','O2K000'),('MORA640123','Arturo','Moreno','Reyes','enriquebroly@gmail.com','O1G000'),('MORA740726','Ana Aurora','Montoya','Ramírez','enriquebroly@gmail.com','O2F000'),('MORC551103','Carlos Fernando','Montes de Oca','Rasgado','abigail3nic.say@gmail.com','O1B000'),('MORE680104','Eva','Moreno','Reyes','yngmeizhu@gmail.com','Q40000'),('MORJ410214','Juan Bautista','Morales','Rodriguez','yngmeizhu@gmail.com','O2X000'),('MOSF661214','Fernando Javier','Montes de Oca','Segura','yngmeizhu@gmail.com','Q50000'),('MOVG601118','María Guadalupe','Morales','Vázquez','yngmeizhu@gmail.com','J60000'),('NACF571118','Francisco','Nava','Cervantes','yngmeizhu@gmail.com','O2P000'),('NAHG510514','Gerardo Bonifacio','Nava','Hernandez','yngmeizhu@gmail.com','O2U000'),('NAMJ870131','Joaquín Alejandro','Nares','Miller','enriquebroly@gmail.com','O1F000'),('NARR700417','María del Rosario','Nájera','Ramírez','soyoscarrh@gmail.com','O2U000'),('NEEL730512','Laura Alicia','Neyra','Estrada','enriquebroly@gmail.com','O1E000'),('NERM870525','María Monserrat','Neria','Reyes','enriquebroly@gmail.com','O2Z000'),('NOVJ720424','Jorge','Noriega','Villa','soyoscarrh@gmail.com','P0C000'),('NURA470505','María de los Ángeles','Núñez','Robles','yngmeizhu@gmail.com','O2I000'),('OELE810505','Edgar Josué','Ojeda','Layseca','enriquebroly@gmail.com','O1F000'),('OIRA730527','Alfredo Erasto','Ortiz','Rodríguez','abigail3nic.say@gmail.com','O0A000'),('OIRG550715','Gloria','Olivos','Rosas','yngmeizhu@gmail.com','Q30000'),('OIVG660721','Guillermina Isabel','Oliva','Vallejo','yngmeizhu@gmail.com','O2D000'),('OOLC571220','Crisóforo','Ordoñes','López','yngmeizhu@gmail.com','O2O000'),('OORC880806','Carolina','Oropeza','Ramírez','soyoscarrh@gmail.com','T50000'),('OOSN660502','Norma Marisol','Ordoñez','Sánchez','yngmeizhu@gmail.com','O0C000'),('OUDJ370713','José','Osuna','Díaz','yngmeizhu@gmail.com','O2E000'),('OUFA850727','Andrea Patricia','Olguín','Ferreira','enriquebroly@gmail.com','O1O000'),('OUGU580124','Ubaldo','Olguín','García','abigail3nic.say@gmail.com','O1G000'),('PAGC570307','Clotilde','Prado','García','enriquebroly@gmail.com','O1H000'),('PAGI560421','Ixtaccihuatl Alejandra','Padilla','García','yngmeizhu@gmail.com','O2Q000'),('PALG831114','María Guadalupe','Parga','López','soyoscarrh@gmail.com','JA1000'),('PAMI691010','Irene','Plata','Monroy','soyoscarrh@gmail.com','P0N000'),('PAOA571102','Ángel Francisco','Paz','Orzuna','abigail3nic.say@gmail.com','O1F000'),('PAYO680604','Orlando','Palacios','Yañez','yngmeizhu@gmail.com','O2N000'),('PECA340531','Alberto','Perez','Calderón','yngmeizhu@gmail.com','O2W000'),('PEDH721121','Héctor','Peña','Domínguez','enriquebroly@gmail.com','O2L000'),('PELC600109','Cecilia Yolanda','Pérez','López','abigail3nic.say@gmail.com','O1A000'),('PELE580813','María Elena','Pérez','Lucio','abigail3nic.say@gmail.com','O1P000'),('PEME560514','Enedino','Pérez','Mendoza','yngmeizhu@gmail.com','O2Q000'),('PEMI611213','Isaac','Perusquia','Medina','yngmeizhu@gmail.com','O2P000'),('PEMN701116','Norma Angélica','Pérez','Moctezuma','soyoscarrh@gmail.com','O2X000'),('PEMV670606','Venustiano','Pérez','Medina','yngmeizhu@gmail.com','O2V000'),('PEOE560828','Eduardo','Pérez','Orta','yngmeizhu@gmail.com','O2B000'),('PEPJ550328','Juan Alejandro','Perales','Pastrana','yngmeizhu@gmail.com','O2G000'),('PEPM451130','Mauricio','Pedraza','Pérez','yngmeizhu@gmail.com','O2A000'),('PERJ440727','Jorge','Pérez','Rosas','yngmeizhu@gmail.com','O2A000'),('PESL790811','María de Lourdes','Peregrino','Sánchez','enriquebroly@gmail.com','O1E000'),('PETS750209','Sonia Mayra','Pérez','Tapia','abigail3nic.say@gmail.com','O2P000'),('PEVM561221','Martha','Pérez','Vargas','yngmeizhu@gmail.com','S40000'),('PICA790917','Arianna Arozibel','Pineda','Carrasco','soyoscarrh@gmail.com','R5E000'),('PISJ580125','Juventino','Pineda','Sánchez','yngmeizhu@gmail.com','O2Q000'),('POAE661230','Enrique','Portillo','Arenas','abigail3nic.say@gmail.com','O1B000'),('POMP800723','Pablo','Poo','Mendieta','soyoscarrh@gmail.com','Q40000'),('POPG570126','Graciela','Portillo','Padilla','yngmeizhu@gmail.com','O2W000'),('PUEG530218','Griselda','Puebla','Espinosa','yngmeizhu@gmail.com','O2U000'),('PUMF820301','Francisco','Pulido','Morales','abigail3nic.say@gmail.com','T63000'),('PURP650517','Pascual','Puebla','Robles ','yngmeizhu@gmail.com','O2S000'),('QUDN750305','Narda Araceli','Quintana','Diosdado','abigail3nic.say@gmail.com','T63050'),('QUHC650913','María del Carmen','Quiroz','Herrera','soyoscarrh@gmail.com','P0H000'),('QUMR681113','Rosa Isela','Quiterio','Martinez','yngmeizhu@gmail.com','Q10000'),('QUVH590512','Hilda Jesús','Quezada','Villegas','yngmeizhu@gmail.com','O2J000'),('RAAA740815','Alfredo','Ramirez','Arechar','soyoscarrh@gmail.com','Q10000'),('RAAD681019','Diana Laura','Ramírez','Álvarez','soyoscarrh@gmail.com','JD0000'),('RABC690320','Claudia','Ramírez','Brassetti','enriquebroly@gmail.com','O2C000'),('RABP720605','Papik Alfredo','Ramírez','Bernal','abigail3nic.say@gmail.com','R5D000'),('RACL670606','José Luis','Ramírez','Contreras','yngmeizhu@gmail.com','O2V000'),('RAGA691007','Alicia Marcela','Ramírez','Guzmán','yngmeizhu@gmail.com','J00000'),('RALT520821','María Teresa','Ramírez','Landeros','enriquebroly@gmail.com','O1O000'),('RAPF560820','Florencio Enrique','Ramírez','Pérez','yngmeizhu@gmail.com','O2I000'),('RAPM631028','Martín','Ramírez','Pérez','yngmeizhu@gmail.com','O2A000'),('RARC621127','Catalina','Ramos','Ramos','abigail3nic.say@gmail.com','T63050'),('RARE551026','Evaristo Gabino','Ramírez','Rojas','yngmeizhu@gmail.com','O2P000'),('RASF610711','Fernando','Ramírez','Saavedra','abigail3nic.say@gmail.com','O1E000'),('RASR710510','Raquel','Ramón','Sosa','soyoscarrh@gmail.com','P0F000'),('RAVM650728','Ma. Victoria','Rafael','Valdivia','enriquebroly@gmail.com','O2D000'),('REBS560910','Sergio','Rea','Blanquet','yngmeizhu@gmail.com','O2Q000'),('REGG611025','Guadalupe del Socorro','Reyes','García','yngmeizhu@gmail.com','T63000'),('REGJ420909','Juan Ignacio','Reyes','García','yngmeizhu@gmail.com','O2M000'),('REGM590502','Magdalena','Reyes','García','enriquebroly@gmail.com','O2B000'),('REHA740406','Armando','Reséndiz','Hernández','soyoscarrh@gmail.com','T50000'),('REIH830819','Héctor Yair','Reyes','Izquierdo','enriquebroly@gmail.com','O1P000'),('REMH610209','Heriberto','Reyes','Mantilla','yngmeizhu@gmail.com','O2W000'),('RERF841114','Flor Isela','Retana','Rentería','soyoscarrh@gmail.com','P0C000'),('RERN651110','Noemí','del Real','Rodríguez','yngmeizhu@gmail.com','J00000'),('RICF720523','Francisco Alejandro','Ríos','Coria','enriquebroly@gmail.com','O2N000'),('RIFJ621206','Javier','Rivera','Flores','yngmeizhu@gmail.com','O2M000'),('RIHF580501','Felipe','Rivera','Hernández','abigail3nic.say@gmail.com','O1F000'),('RIJR571220','Rosa María','Ribas','Jaimes','yngmeizhu@gmail.com','O2P000'),('RIRL780924','Luis','Rizo','Ruíz','soyoscarrh@gmail.com','P0N000'),('RISJ410709','Jorge','Rivera','Salcedo ','yngmeizhu@gmail.com','O2V000'),('RISR610808','María del Rosario','Rivera','Samaniego','soyoscarrh@gmail.com','R5D000'),('ROAB630611','Bernabe','Rodríguez','Almanza','yngmeizhu@gmail.com','O2B000'),('ROAJ530902','Juan','Romero','Amaya','enriquebroly@gmail.com','O1J000'),('ROCC730916','Cornelio','Romero','Cruz','enriquebroly@gmail.com','O2E000'),('ROCG600508','Guillermo','Romero','Carsolio','yngmeizhu@gmail.com','O10000'),('ROCL700110','José Luis Tonatihu','Rojas','Castro','enriquebroly@gmail.com','O1C000'),('ROCR620603','Rubén','Rosas','Casados','abigail3nic.say@gmail.com','O1M000'),('ROEO430714','Oscar','Rojas','Espinosa','yngmeizhu@gmail.com','O2P000'),('ROGA651102','Alfredo','Rodríguez','Gómez','abigail3nic.say@gmail.com','O1B000'),('ROGA801023','Alejandro','Rojas','Guzmán','soyoscarrh@gmail.com','Q30000'),('ROHI710319','Ivonne','Romo','Hernández','enriquebroly@gmail.com','O2A000'),('ROHL600403','Lucía','Román','Hinojosa','yngmeizhu@gmail.com','O2T000'),('ROHL720825','Luis Francisco','Rodríguez','Hernández','enriquebroly@gmail.com','O2J000'),('ROHP740712','María del Pilar','Roa','Hernández','abigail3nic.say@gmail.com','T63020'),('ROLA460505','Ángel','Rodríguez y','Leyva','yngmeizhu@gmail.com','O2P000'),('ROLL520413','José Luis','Rosas','López','yngmeizhu@gmail.com','O2F000'),('ROLP651211','Pedro','Rodríguez','Luevano','enriquebroly@gmail.com','O1N000'),('ROOD790509','Dalia','Rosas','Olivos','abigail3nic.say@gmail.com','O0A000'),('ROOL570306','Laura Felicitas','Rodríguez','Ortega','abigail3nic.say@gmail.com','O1C000'),('ROOP561012','María del Pilar','Rodríguez','Olmedo','yngmeizhu@gmail.com','O10000'),('ROOR690527','José Ramón','Rodríguez','Ojeda','soyoscarrh@gmail.com','JD0000'),('ROPA550531','Ángel','Rodríguez','Paez','yngmeizhu@gmail.com','Q40000'),('ROPA880429','Ana Montserrat','Romero','Paredes','soyoscarrh@gmail.com','O2T000'),('RORE650831','Evangelina','Rojas','Rodríguez','enriquebroly@gmail.com','O1L000'),('RORM630319','Miguel Ángel','Rodríguez','Ruíz','abigail3nic.say@gmail.com','O1C000'),('RORO370912','Octavio','Rojas','Rodriguez','yngmeizhu@gmail.com','O2U000'),('RORR590111','Rocío','Rodas','Ruíz','enriquebroly@gmail.com','O1J000'),('RORS491127','Santiago','Rodríguez','Rojas','yngmeizhu@gmail.com','O2Q000'),('ROSA580505','José Artemio','Rodríguez','Salas','yngmeizhu@gmail.com','O2V000'),('ROSL540909','Laura Catalina','Romero','Sotomayor','yngmeizhu@gmail.com','O2V000'),('RUBM600910','María Margarita','Ruíz','Badillo','enriquebroly@gmail.com','O1K000'),('RUCR841028','Ramón Octavio','Ruíz','Carlón','soyoscarrh@gmail.com','R5E000'),('RURA600723','María Adoración','Ruíz','Ramírez','yngmeizhu@gmail.com','O2I000'),('RUZJ530430','Jaime Roberto','Ruíz y Zurvia','Flores','yngmeizhu@gmail.com','O2G000'),('SAAM630318','Moisés','Sánchez','Adame','yngmeizhu@gmail.com','P0M000'),('SABM670425','Marcos','Salazar','Bolaños','yngmeizhu@gmail.com','O2V000'),('SABN621118','Norma Ángelica','Sánchez','Barragán','abigail3nic.say@gmail.com','O1C000'),('SACC820315','Catalina','Sánchez','Castillo','enriquebroly@gmail.com','O1K000'),('SACG371110','Guadalupe','Salinas','Castillo','yngmeizhu@gmail.com','O2V000'),('SADC571215','Carolina Margarita','Sánchez','Díaz','abigail3nic.say@gmail.com','O1D000'),('SADV700522','Víctor Manuel','Salas','Domínguez','enriquebroly@gmail.com','O1B000'),('SAEB601008','María Beatriz','Sánchez','Estrada','enriquebroly@gmail.com','O2Q000'),('SAGG641221','Germán Adalberto','Sandoval','Gonzalez','abigail3nic.say@gmail.com','O1I000'),('SAHF780227','Fanny','Sauza','Hernández','soyoscarrh@gmail.com','XXXXXX'),('SALJ650711','Jorge','Sánchez','Leal','abigail3nic.say@gmail.com','O1C000'),('SALL490808','Luis Emilio','Sánchez','Licéaga','abigail3nic.say@gmail.com','O1L000'),('SALM390114','Macrino','Sánchez','Lara','yngmeizhu@gmail.com','O2B000'),('SALO680206','Olga Alicia','Sánchez','López','abigail3nic.say@gmail.com','T63050'),('SALR400622','Rafael','Sánchez','López','yngmeizhu@gmail.com','O2D000'),('SALU600601','María','de la Luz','Santillán','abigail3nic.say@gmail.com','O1E000'),('SALV610526','Victor','Sandoval','Lobato','enriquebroly@gmail.com','O2E000'),('SAME770202','María Esther','Sánchez','Marín','enriquebroly@gmail.com','O1I000'),('SAMG560528','Gloria','Salgado','Morgan','abigail3nic.say@gmail.com','O1I000'),('SAMJ740319','Josefina','Sánchez','Monroy','enriquebroly@gmail.com','O1B000'),('SAMJ870323','Juan Jesús','Sánchez','Marín','soyoscarrh@gmail.com','O00000'),('SAML711230','Luz María','Sánchez','Martínez','enriquebroly@gmail.com','O2O000'),('SAOA620508','Álvaro','Sánchez','Osuna','yngmeizhu@gmail.com','O2B000'),('SAPL540211','Leobardo','Sánchez','Pimentel','abigail3nic.say@gmail.com','O1A000'),('SAPM670320','María Magdalena','Salazar','Páramo','yngmeizhu@gmail.com','O2D000'),('SARA500917','Alberto','Sandoval','Romero','yngmeizhu@gmail.com','O2W000'),('SARE620826','Enrique','Salinas','Rodríguez','abigail3nic.say@gmail.com','O1C000'),('SARF761129','Francisco Javier','Sánchez','Romero','soyoscarrh@gmail.com','O2U000'),('SARL560604','Laura Patricia','Salas','Rangel','yngmeizhu@gmail.com','O2P000'),('SARM501017','Margarita del Pilar','Sam','Rodríguez','yngmeizhu@gmail.com','R40000'),('SARM610123','Mauricio Darío','Sánchez','Ramos','yngmeizhu@gmail.com','O2D000'),('SASF660302','José Federico','Sánchez','Sosa','soyoscarrh@gmail.com','P0Q000'),('SATR610723','María del Rosario','Salinas','Tobón','yngmeizhu@gmail.com','O2P000'),('SAZA451003','Alfonso','Salazar','Zorrilla','yngmeizhu@gmail.com','O2D000'),('SEGB500831','Blanca Rosa','Servin','Gonzalez','yngmeizhu@gmail.com','O20000'),('SEPS580912','María Sara','Serrano','Perez','yngmeizhu@gmail.com','O2W000'),('SERE560311','Erik Gilberto','Strevel','Roche','yngmeizhu@gmail.com','Q50000'),('SIBM600702','Mario','Silva','Barrera','abigail3nic.say@gmail.com','O1D000'),('SIGG840712','Gustavo Rodolfo','Shields','García','enriquebroly@gmail.com','O1M000'),('SIGT601109','José Teodoro','Silva','García','yngmeizhu@gmail.com','P0E000'),('SILL681102','Luis Enrique','Sigler','Licona','enriquebroly@gmail.com','O1R000'),('SISD970602','Dante Mir','Schmitter','Sánchez','abigail3nic.say@gmail.com','O2P000'),('SOAE590718','Ezequiel','Solis','Araujo','yngmeizhu@gmail.com','O2D000'),('SOCR591028','Rosa Gabriela','Sotelo','Candelaria','yngmeizhu@gmail.com','O2P000'),('SOGE490329','Gerardo','Sosa','','yngmeizhu@gmail.com','O2I000'),('SOGE650823','Eleazar','Sosa','González','abigail3nic.say@gmail.com','O1O000'),('SOMM790430','Miriam Selene','Somera','Martinez','abigail3nic.say@gmail.com','T63040'),('SOOE761215','Elizabeth','Solis','Ocampo','soyoscarrh@gmail.com','O00000'),('SUAS530117','Samuel','Suazo','Abarca','yngmeizhu@gmail.com','O2N000'),('SUCA511123','Armando','Suárez','Caudillo','enriquebroly@gmail.com','O1G000'),('TACT460218','José Trinidad','Tapia','Cisneros','yngmeizhu@gmail.com','O2A000'),('TAMJ711204','Javier','Tadeo','Márquez','soyoscarrh@gmail.com','T40000'),('TASA630119','Adolfo','Tapia','Sánchez','yngmeizhu@gmail.com','Q40000'),('TAVL610516','José Luis','Tagle','Vargas','abigail3nic.say@gmail.com','O1E000'),('TEMA670502','Alberto','Trejo','Moreno','abigail3nic.say@gmail.com','O1I000'),('TEMG631204','Ma. Guadalupe','Trejo','Martínez','soyoscarrh@gmail.com','JE0000'),('TOAF601224','Francisco Javier','Torres','Argüelles','enriquebroly@gmail.com','O2N000'),('TOBE620920','Eduardo','Torres','Buenrostro','enriquebroly@gmail.com','O2Q000'),('TOEL840404','Lizeth Araceli','Toledo','Escalante','abigail3nic.say@gmail.com','T63040'),('TOGA770224','Alfredo','Torres','García','enriquebroly@gmail.com','O2F000'),('TOLV710602','Viridiana','del Toro','López','soyoscarrh@gmail.com','R5M000'),('TOMJ650420','Joel','Toledo','Molano','soyoscarrh@gmail.com','P0P000'),('TOMM430929','Miguel Ángel','Toledo','Martínez','yngmeizhu@gmail.com','O2D000'),('TOOG450118','José Guadalupe','Torres y','Ortega','abigail3nic.say@gmail.com','O2A000'),('TOPE551216','María Eugenia','Tome','Pérez','enriquebroly@gmail.com','O1H000'),('TORG630413','Gloria','Tovar','Rojo','enriquebroly@gmail.com','O2P000'),('TORM471203','Mirta Araceli','Toledo','Rojas','yngmeizhu@gmail.com','Q20000'),('TORR491029','Rebeca','Tovar','Ramírez','yngmeizhu@gmail.com','O2X000'),('VAAL680202','María de Lourdes','Valdes','Alcantar','yngmeizhu@gmail.com','O2P000'),('VABA721101','Araceli','Vázquez','Betancourt','soyoscarrh@gmail.com','O10000'),('VADF430822','Filiberto','Vázquez','Dávila','yngmeizhu@gmail.com','O2P000'),('VARA570908','Adrián','Valdez','Rodríguez','yngmeizhu@gmail.com','T60000'),('VARB570219','Bersain','Vázquez','Rincón','abigail3nic.say@gmail.com','O1G000'),('VARC580808','María del Consuelo','Vázquez','Romero','yngmeizhu@gmail.com','O2K000'),('VATH760227','Héctor Gilberto Gabriel','Valencia','Trujillo','abigail3nic.say@gmail.com','R0F000'),('VEAE651027','Eduardo','Vega','Alvarado','yngmeizhu@gmail.com','P0P000'),('VECG481101','Gustavo','Velázquez','Corichi','yngmeizhu@gmail.com','O2I000'),('VECK781228','Karina Vianey','Vergara','Camacho','soyoscarrh@gmail.com','O2S000'),('VEPS580519','Saúl','Vega','Pérez','yngmeizhu@gmail.com','O2C000'),('VESG530225','Guillermo','Velazquez','Samano','yngmeizhu@gmail.com','O2Q000'),('VIAL571012','José Luis','Villareal','Aguirre','yngmeizhu@gmail.com','O2B000'),('VIHA670801','Alejandro Isauro','Villagrán','Hernández','yngmeizhu@gmail.com','O2D000'),('VINA780922','Ana Laura','Villalpando','Nava','enriquebroly@gmail.com','O2D000'),('VIRC600318','Carmelo','Villanueva','Ruíz','abigail3nic.say@gmail.com','O1C000'),('VIRE550813','Enrique','Villaseñor','Rosas','yngmeizhu@gmail.com','O2V000'),('VISE630124','Enrique','Vignati','Sánchez','yngmeizhu@gmail.com','O2M000'),('VISH570106','Héctor','Villanueva','Silva','abigail3nic.say@gmail.com','O1L000'),('XACR421024','Rafael','Xala','Camacho','yngmeizhu@gmail.com','O2I000'),('XILS910302','Sergio Yair','Xicotencatl','Llera','soyoscarrh@gmail.com','JE0000'),('ZACM620126','Ma. Elena','Zavala','Castillo','yngmeizhu@gmail.com','O2S000'),('ZACR760228','Rosario Angélica','Zavala','Candelaria','enriquebroly@gmail.com','O2G000'),('ZAMR680730','María del Rocío','Zamora','Mendoza','yngmeizhu@gmail.com','O2J000'),('ZASE420615','Etelvina','Zavala','Suárez','yngmeizhu@gmail.com','O2Q000'),('ZEGV620728','Victor','Zepeda','González','abigail3nic.say@gmail.com','O2D000'),('ZUCM690919','Mayra Elizabeth','Zuñiga','Coss','yngmeizhu@gmail.com','O2D000');
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
  `Confirmation` tinyint(1) DEFAULT NULL,
  `Assistance` tinyint(1) DEFAULT NULL,
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
INSERT INTO `guestevent` VALUES ('AAAC670607',1,41,0,0,NULL,NULL),('AAAJ410118',1,531,0,0,NULL,NULL),('AABS460521',1,507,0,0,NULL,NULL),('AAER600805',1,290,0,0,NULL,NULL),('AAFD851118',1,98,0,0,NULL,NULL),('AAGG570404',1,346,0,0,NULL,NULL),('AAIA810312',1,159,0,0,NULL,NULL),('AALE860922',1,60,0,0,NULL,NULL),('AAMA580502',1,39,0,0,NULL,NULL),('AAMJ470215',1,270,0,0,NULL,NULL),('AAMJ550319',1,42,0,0,NULL,NULL),('AAMS420723',1,508,0,0,NULL,NULL),('AAOE530715',1,362,0,0,NULL,NULL),('AARE791201',1,179,0,0,NULL,NULL),('AASA570727',1,274,0,0,NULL,NULL),('AASR630322',1,494,0,0,NULL,NULL),('AAZA700603',1,56,0,0,NULL,NULL),('AEMA610302',1,321,0,0,NULL,NULL),('AERL450609',1,541,0,0,NULL,NULL),('AIGE760708',1,161,0,0,NULL,NULL),('AIRR361024',1,517,0,0,NULL,NULL),('AISL760127',1,33,0,0,NULL,NULL),('AIVJ410529',1,412,0,0,NULL,NULL),('AOAR441112',1,522,0,0,NULL,NULL),('AOOE651222',1,468,0,0,NULL,NULL),('AORG480916',1,277,0,0,NULL,NULL),('AOTS630428',1,338,0,0,NULL,NULL),('AUAJ590101',1,292,0,0,NULL,NULL),('AUBF470810',1,524,0,0,NULL,NULL),('AUCJ600223',1,387,0,0,NULL,NULL),('AUFB570717',1,394,0,0,NULL,NULL),('AULC650915',1,67,0,0,NULL,NULL),('AUMF640309',1,373,0,0,NULL,NULL),('AUTV660101',1,203,0,0,NULL,NULL),('BAAC641022',1,180,0,0,NULL,NULL),('BABE570407',1,100,0,0,NULL,NULL),('BACM520429',1,284,0,0,NULL,NULL),('BAEE770115',1,129,0,0,NULL,NULL),('BAFM531103',1,329,0,0,NULL,NULL),('BAGA541105',1,204,0,0,NULL,NULL),('BAHH520810',1,103,0,0,NULL,NULL),('BAJO591030',1,249,0,0,NULL,NULL),('BALH681010',1,334,0,0,NULL,NULL),('BAMV840328',1,52,0,0,NULL,NULL),('BANL531018',1,455,0,0,NULL,NULL),('BASR381220',1,224,0,0,NULL,NULL),('BAVD370403',1,511,0,0,NULL,NULL),('BEEJ580206',1,347,0,0,NULL,NULL),('BEFG410730',1,452,0,0,NULL,NULL),('BEHJ600304',1,415,0,0,NULL,NULL),('BEHM730706',1,46,0,0,NULL,NULL),('BEJA641207',1,114,0,0,NULL,NULL),('BELA640913',1,328,0,0,NULL,NULL),('BEMB431109',1,532,0,0,NULL,NULL),('BEMG581122',1,32,0,0,NULL,NULL),('BERJ620714',1,296,0,0,NULL,NULL),('BESH660721',1,307,0,0,NULL,NULL),('BIMR670106',1,276,0,0,NULL,NULL),('BOMJ600427',1,11,0,0,NULL,NULL),('BUAI920831',1,23,0,0,NULL,NULL),('BUGT430510',1,428,0,0,NULL,NULL),('BUMM681026',1,400,0,0,NULL,NULL),('CAAA660515',1,262,0,0,NULL,NULL),('CAAE620708',1,388,0,0,NULL,NULL),('CAAG560830',1,36,0,0,NULL,NULL),('CAAH551119',1,489,0,0,NULL,NULL),('CAAN800412',1,110,0,0,NULL,NULL),('CAAP690310',1,132,0,0,NULL,NULL),('CABI750704',1,68,0,0,NULL,NULL),('CABM811007',1,7,0,0,NULL,NULL),('CACG660118',1,299,0,0,NULL,NULL),('CACJ361020',1,406,0,0,NULL,NULL),('CACJ600212',1,495,0,0,NULL,NULL),('CACJ620311',1,13,0,0,NULL,NULL),('CACN810816',1,70,0,0,NULL,NULL),('CADB581204',1,407,0,0,NULL,NULL),('CADR791106',1,223,0,0,NULL,NULL),('CAFA661128',1,285,0,0,NULL,NULL),('CAFJ811202',1,43,0,0,NULL,NULL),('CAGD601102',1,399,0,0,NULL,NULL),('CAGE550405',1,235,0,0,NULL,NULL),('CAGG640505',1,273,0,0,NULL,NULL),('CAGL570825',1,345,0,0,NULL,NULL),('CAGM440225',1,523,0,0,NULL,NULL),('CAGN631226',1,377,0,0,NULL,NULL),('CAGX671023',1,376,0,0,NULL,NULL),('CAJC500324',1,80,0,0,NULL,NULL),('CAJC700425',1,289,0,0,NULL,NULL),('CAJG620516',1,286,0,0,NULL,NULL),('CAJT580925',1,147,0,0,NULL,NULL),('CALA700920',1,89,0,0,NULL,NULL),('CAMA630623',1,427,0,0,NULL,NULL),('CANC800416',1,119,0,0,NULL,NULL),('CANO650124',1,471,0,0,NULL,NULL),('CAOL521221',1,322,0,0,NULL,NULL),('CAOM641215',1,301,0,0,NULL,NULL),('CAOV650225',1,319,0,0,NULL,NULL),('CAPM560515',1,363,0,0,NULL,NULL),('CAQD650908',1,374,0,0,NULL,NULL),('CARA550419',1,186,0,0,NULL,NULL),('CARE870706',1,150,0,0,NULL,NULL),('CATJ800217',1,128,0,0,NULL,NULL),('CAVM560102',1,456,0,0,NULL,NULL),('CAVS680901',1,477,0,0,NULL,NULL),('CEBL641209',1,190,0,0,NULL,NULL),('CECD550401',1,281,0,0,NULL,NULL),('CEEV640206',1,318,0,0,NULL,NULL),('CEGG770409',1,188,0,0,NULL,NULL),('CEMJ490521',1,527,0,0,NULL,NULL),('CEPP650317',1,55,0,0,NULL,NULL),('CEQI610121',1,255,0,0,NULL,NULL),('CICM700907',1,20,0,0,NULL,NULL),('CIDP680624',1,282,0,0,NULL,NULL),('COAM650109',1,371,0,0,NULL,NULL),('COGX700718',1,189,0,0,NULL,NULL),('COJD560226',1,474,0,0,NULL,NULL),('COMS580919',1,375,0,0,NULL,NULL),('COPJ590902',1,297,0,0,NULL,NULL),('COSL680114',1,139,0,0,NULL,NULL),('COVC500403',1,171,0,0,NULL,NULL),('CUAE610405',1,458,0,0,NULL,NULL),('CUBB650629',1,232,0,0,NULL,NULL),('CUDJ700330',1,112,0,0,NULL,NULL),('CUPA641214',1,398,0,0,NULL,NULL),('CUPS631212',1,47,0,0,NULL,NULL),('CURE671008',1,313,0,0,NULL,NULL),('CUVA600612',1,141,0,0,NULL,NULL),('DEAV540628',1,192,0,0,NULL,NULL),('DOAS541112',1,368,0,0,NULL,NULL),('DUMJ520111',1,69,0,0,NULL,NULL),('DUVM620927',1,378,0,0,NULL,NULL),('EAGC770416',1,6,0,0,NULL,NULL),('EAMM710909',1,213,0,0,NULL,NULL),('EARG821010',1,155,0,0,NULL,NULL),('EEBA650625',1,295,0,0,NULL,NULL),('EEGG660911',1,287,0,0,NULL,NULL),('EEUS570818',1,492,0,0,NULL,NULL),('EIGL470116',1,259,0,0,NULL,NULL),('EILJ440328',1,528,0,0,NULL,NULL),('EIVA450412',1,539,0,0,NULL,NULL),('EIVI600524',1,74,0,0,NULL,NULL),('EUMA630826',1,465,0,0,NULL,NULL),('FAGA530612',1,416,0,0,NULL,NULL),('FAGJ781015',1,86,0,0,NULL,NULL),('FARM481129',1,478,0,0,NULL,NULL),('FATE610606',1,459,0,0,NULL,NULL),('FERA561101',1,166,0,0,NULL,NULL),('FETD600118',1,366,0,0,NULL,NULL),('FOBF680603',1,113,0,0,NULL,NULL),('FOGR691218',1,202,0,0,NULL,NULL),('FOLD600328',1,463,0,0,NULL,NULL),('FOMS580218',1,352,0,0,NULL,NULL),('GAAA630612',1,320,0,0,NULL,NULL),('GAAJ580420',1,306,0,0,NULL,NULL),('GAAN560517',1,417,0,0,NULL,NULL),('GAAP490622',1,379,0,0,NULL,NULL),('GAAS600109',1,453,0,0,NULL,NULL),('GABJ630131',1,245,0,0,NULL,NULL),('GABR450924',1,520,0,0,NULL,NULL),('GACG621104',1,369,0,0,NULL,NULL),('GACH581217',1,480,0,0,NULL,NULL),('GACI590603',1,199,0,0,NULL,NULL),('GACI730704',1,84,0,0,NULL,NULL),('GACJ570530',1,343,0,0,NULL,NULL),('GACJ590822',1,118,0,0,NULL,NULL),('GACM710712',1,143,0,0,NULL,NULL),('GADF790414',1,201,0,0,NULL,NULL),('GAGA651215',1,236,0,0,NULL,NULL),('GAGE930619',1,211,0,0,NULL,NULL),('GAGL620822',1,138,0,0,NULL,NULL),('GAHE570925',1,260,0,0,NULL,NULL),('GAHF630822',1,266,0,0,NULL,NULL),('GAHG471123',1,506,0,0,NULL,NULL),('GAJJ611026',1,117,0,0,NULL,NULL),('GALL661221',1,122,0,0,NULL,NULL),('GAMC530827',1,330,0,0,NULL,NULL),('GAPC680404',1,231,0,0,NULL,NULL),('GARJ640319',1,16,0,0,NULL,NULL),('GARV801005',1,2,0,0,NULL,NULL),('GASA810421',1,105,0,0,NULL,NULL),('GAVS530520',1,442,0,0,NULL,NULL),('GAVT670924',1,200,0,0,NULL,NULL),('GAXG691204',1,104,0,0,NULL,NULL),('GIGJ590910',1,372,0,0,NULL,NULL),('GOAM910530',1,108,0,0,NULL,NULL),('GOCA520427',1,254,0,0,NULL,NULL),('GOCJ540509',1,498,0,0,NULL,NULL),('GOCL610302',1,361,0,0,NULL,NULL),('GODA750831',1,172,0,0,NULL,NULL),('GOEE930613',1,169,0,0,NULL,NULL),('GOFA671026',1,58,0,0,NULL,NULL),('GOHG580525',1,414,0,0,NULL,NULL),('GOHL460918',1,225,0,0,NULL,NULL),('GOLU570429',1,326,0,0,NULL,NULL),('GOMJ590712',1,449,0,0,NULL,NULL),('GOML560209',1,467,0,0,NULL,NULL),('GOMV580325',1,258,0,0,NULL,NULL),('GOPF630603',1,95,0,0,NULL,NULL),('GOPP651210',1,73,0,0,NULL,NULL),('GORA611230',1,298,0,0,NULL,NULL),('GORJ580113',1,472,0,0,NULL,NULL),('GOVA480616',1,516,0,0,NULL,NULL),('GOVN621207',1,181,0,0,NULL,NULL),('GOZA600901',1,135,0,0,NULL,NULL),('GUAJ850112',1,151,0,0,NULL,NULL),('GUAV770529',1,210,0,0,NULL,NULL),('GUCE590602',1,462,0,0,NULL,NULL),('GUCY710615',1,111,0,0,NULL,NULL),('GUDE820907',1,35,0,0,NULL,NULL),('GUGC640225',1,434,0,0,NULL,NULL),('GUGM570426',1,99,0,0,NULL,NULL),('GUHE740114',1,15,0,0,NULL,NULL),('GUHL810712',1,152,0,0,NULL,NULL),('GUIF610129',1,389,0,0,NULL,NULL),('GULR860123',1,127,0,0,NULL,NULL),('GUMG560331',1,413,0,0,NULL,NULL),('GUPE640521',1,140,0,0,NULL,NULL),('GUPS640707',1,198,0,0,NULL,NULL),('GURJ720122',1,64,0,0,NULL,NULL),('GUSJ751114',1,148,0,0,NULL,NULL),('GUSV811105',1,3,0,0,NULL,NULL),('GUTA410412',1,533,0,0,NULL,NULL),('GUTF561129',1,488,0,0,NULL,NULL),('HALM580923',1,356,0,0,NULL,NULL),('HEAJ480905',1,397,0,0,NULL,NULL),('HEBP580102',1,167,0,0,NULL,NULL),('HEGB680314',1,419,0,0,NULL,NULL),('HEGJ590310',1,275,0,0,NULL,NULL),('HEGL560415',1,311,0,0,NULL,NULL),('HEGP610330',1,239,0,0,NULL,NULL),('HEGR450905',1,514,0,0,NULL,NULL),('HEGU731014',1,121,0,0,NULL,NULL),('HEHS611127',1,431,0,0,NULL,NULL),('HEIM680226',1,115,0,0,NULL,NULL),('HELI891227',1,76,0,0,NULL,NULL),('HEMA760104',1,78,0,0,NULL,NULL),('HEMP610409',1,1,0,0,NULL,NULL),('HERA631206',1,218,0,0,NULL,NULL),('HERF391001',1,509,0,0,NULL,NULL),('HESR530831',1,101,0,0,NULL,NULL),('HEVO590818',1,380,0,0,NULL,NULL),('HUAE800531',1,96,0,0,NULL,NULL),('HUAF470205',1,432,0,0,NULL,NULL),('HUGF680607',1,267,0,0,NULL,NULL),('IACA610703',1,344,0,0,NULL,NULL),('IANE820517',1,120,0,0,NULL,NULL),('IAOV730304',1,191,0,0,NULL,NULL),('IAPE721117',1,193,0,0,NULL,NULL),('IIAY431021',1,418,0,0,NULL,NULL),('JAVD540613',1,226,0,0,NULL,NULL),('JEHJ620923',1,71,0,0,NULL,NULL),('JICJ500418',1,256,0,0,NULL,NULL),('JIGF420129',1,534,0,0,NULL,NULL),('JIMA610709',1,8,0,0,NULL,NULL),('JIMI631018',1,359,0,0,NULL,NULL),('JIPG660523',1,348,0,0,NULL,NULL),('JUBD720623',1,145,0,0,NULL,NULL),('JULF841004',1,88,0,0,NULL,NULL),('JULM671105',1,175,0,0,NULL,NULL),('JUMM651228',1,479,0,0,NULL,NULL),('JUSM570722',1,496,0,0,NULL,NULL),('KEML370228',1,408,0,0,NULL,NULL),('LIFM570506',1,261,0,0,NULL,NULL),('LOAA770303',1,61,0,0,NULL,NULL),('LOAP630409',1,392,0,0,NULL,NULL),('LOCS670617',1,405,0,0,NULL,NULL),('LOFT610501',1,12,0,0,NULL,NULL),('LOGE810825',1,215,0,0,NULL,NULL),('LORC630708',1,91,0,0,NULL,NULL),('LORJ690319',1,142,0,0,NULL,NULL),('LOUS630530',1,194,0,0,NULL,NULL),('LOVS570524',1,424,0,0,NULL,NULL),('MAAC530822',1,460,0,0,NULL,NULL),('MAAO560123',1,247,0,0,NULL,NULL),('MABV750223',1,183,0,0,NULL,NULL),('MACJ590327',1,333,0,0,NULL,NULL),('MACM640411',1,153,0,0,NULL,NULL),('MADG430608',1,519,0,0,NULL,NULL),('MAFE621217',1,238,0,0,NULL,NULL),('MAFJ450121',1,542,0,0,NULL,NULL),('MAFV600123',1,339,0,0,NULL,NULL),('MAGG600807',1,461,0,0,NULL,NULL),('MAGJ460629',1,440,0,0,NULL,NULL),('MAGJ611102',1,395,0,0,NULL,NULL),('MAIU850513',1,30,0,0,NULL,NULL),('MAJV541230',1,443,0,0,NULL,NULL),('MALA861025',1,208,0,0,NULL,NULL),('MALS631205',1,464,0,0,NULL,NULL),('MAMR670830',1,349,0,0,NULL,NULL),('MAMS570302',1,309,0,0,NULL,NULL),('MANK750818',1,162,0,0,NULL,NULL),('MAOA620915',1,332,0,0,NULL,NULL),('MAPD850325',1,77,0,0,NULL,NULL),('MAPG741025',1,137,0,0,NULL,NULL),('MAPM660426',1,291,0,0,NULL,NULL),('MAPO581026',1,473,0,0,NULL,NULL),('MARA810111',1,125,0,0,NULL,NULL),('MARL600702',1,234,0,0,NULL,NULL),('MARR450109',1,529,0,0,NULL,NULL),('MARR730921',1,205,0,0,NULL,NULL),('MARS461224',1,544,0,0,NULL,NULL),('MASC731120',1,10,0,0,NULL,NULL),('MASO581005',1,154,0,0,NULL,NULL),('MATP810925',1,81,0,0,NULL,NULL),('MAVH550316',1,342,0,0,NULL,NULL),('MEBC660713',1,93,0,0,NULL,NULL),('MECE501109',1,530,0,0,NULL,NULL),('MECV841214',1,144,0,0,NULL,NULL),('MEDC870705',1,85,0,0,NULL,NULL),('MEER810505',1,229,0,0,NULL,NULL),('MEGC640919',1,360,0,0,NULL,NULL),('MEGS581117',1,312,0,0,NULL,NULL),('MERA550906',1,136,0,0,NULL,NULL),('MESL420327',1,525,0,0,NULL,NULL),('MITI600219',1,470,0,0,NULL,NULL),('MOAC651030',1,381,0,0,NULL,NULL),('MOAC701121',1,337,0,0,NULL,NULL),('MOAJ631206',1,174,0,0,NULL,NULL),('MOAS610429',1,420,0,0,NULL,NULL),('MOCB620227',1,425,0,0,NULL,NULL),('MOCE800511',1,133,0,0,NULL,NULL),('MOGR571111',1,336,0,0,NULL,NULL),('MOHV680927',1,486,0,0,NULL,NULL),('MOIR590502',1,502,0,0,NULL,NULL),('MOLP601009',1,184,0,0,NULL,NULL),('MOMA530924',1,26,0,0,NULL,NULL),('MOMA540122',1,447,0,0,NULL,NULL),('MORA621123',1,75,0,0,NULL,NULL),('MORA640123',1,27,0,0,NULL,NULL),('MORA740726',1,65,0,0,NULL,NULL),('MORC551103',1,240,0,0,NULL,NULL),('MORE680104',1,493,0,0,NULL,NULL),('MORJ410214',1,451,0,0,NULL,NULL),('MOSF661214',1,490,0,0,NULL,NULL),('MOVG601118',1,501,0,0,NULL,NULL),('NACF571118',1,393,0,0,NULL,NULL),('NAHG510514',1,433,0,0,NULL,NULL),('NAMJ870131',1,24,0,0,NULL,NULL),('NARR700417',1,107,0,0,NULL,NULL),('NEEL730512',1,21,0,0,NULL,NULL),('NERM870525',1,87,0,0,NULL,NULL),('NOVJ720424',1,124,0,0,NULL,NULL),('NURA470505',1,353,0,0,NULL,NULL),('OELE810505',1,22,0,0,NULL,NULL),('OIRA730527',1,206,0,0,NULL,NULL),('OIRG550715',1,484,0,0,NULL,NULL),('OIVG660721',1,304,0,0,NULL,NULL),('OOLC571220',1,421,0,0,NULL,NULL),('OORC880806',1,196,0,0,NULL,NULL),('OOSN660502',1,503,0,0,NULL,NULL),('OUDJ370713',1,518,0,0,NULL,NULL),('OUFA850727',1,37,0,0,NULL,NULL),('OUGU580124',1,271,0,0,NULL,NULL),('PAGC570307',1,28,0,0,NULL,NULL),('PAGI560421',1,411,0,0,NULL,NULL),('PALG831114',1,163,0,0,NULL,NULL),('PAMI691010',1,130,0,0,NULL,NULL),('PAOA571102',1,268,0,0,NULL,NULL),('PAYO680604',1,367,0,0,NULL,NULL),('PECA340531',1,540,0,0,NULL,NULL),('PEDH721121',1,79,0,0,NULL,NULL),('PELC600109',1,233,0,0,NULL,NULL),('PELE580813',1,288,0,0,NULL,NULL),('PEME560514',1,404,0,0,NULL,NULL),('PEMI611213',1,382,0,0,NULL,NULL),('PEMN701116',1,116,0,0,NULL,NULL),('PEMV670606',1,435,0,0,NULL,NULL),('PEOE560828',1,316,0,0,NULL,NULL),('PEPJ550328',1,340,0,0,NULL,NULL),('PEPM451130',1,323,0,0,NULL,NULL),('PERJ440727',1,327,0,0,NULL,NULL),('PESL790811',1,19,0,0,NULL,NULL),('PETS750209',1,227,0,0,NULL,NULL),('PEVM561221',1,504,0,0,NULL,NULL),('PICA790917',1,160,0,0,NULL,NULL),('PISJ580125',1,403,0,0,NULL,NULL),('POAE661230',1,241,0,0,NULL,NULL),('POMP800723',1,187,0,0,NULL,NULL),('POPG570126',1,445,0,0,NULL,NULL),('PUEG530218',1,430,0,0,NULL,NULL),('PUMF820301',1,212,0,0,NULL,NULL),('PURP650517',1,423,0,0,NULL,NULL),('QUDN750305',1,219,0,0,NULL,NULL),('QUHC650913',1,134,0,0,NULL,NULL),('QUMR681113',1,485,0,0,NULL,NULL),('QUVH590512',1,357,0,0,NULL,NULL),('RAAA740815',1,185,0,0,NULL,NULL),('RAAD681019',1,164,0,0,NULL,NULL),('RABC690320',1,57,0,0,NULL,NULL),('RABP720605',1,228,0,0,NULL,NULL),('RACL670606',1,436,0,0,NULL,NULL),('RAGA691007',1,476,0,0,NULL,NULL),('RALT520821',1,38,0,0,NULL,NULL),('RAPF560820',1,351,0,0,NULL,NULL),('RAPM631028',1,325,0,0,NULL,NULL),('RARC621127',1,221,0,0,NULL,NULL),('RARE551026',1,383,0,0,NULL,NULL),('RASF610711',1,263,0,0,NULL,NULL),('RASR710510',1,126,0,0,NULL,NULL),('RAVM650728',1,50,0,0,NULL,NULL),('REBS560910',1,402,0,0,NULL,NULL),('REGG611025',1,505,0,0,NULL,NULL),('REGJ420909',1,526,0,0,NULL,NULL),('REGM590502',1,53,0,0,NULL,NULL),('REHA740406',1,197,0,0,NULL,NULL),('REIH830819',1,40,0,0,NULL,NULL),('REMH610209',1,444,0,0,NULL,NULL),('RERF841114',1,123,0,0,NULL,NULL),('RERN651110',1,475,0,0,NULL,NULL),('RICF720523',1,83,0,0,NULL,NULL),('RIFJ621206',1,364,0,0,NULL,NULL),('RIHF580501',1,269,0,0,NULL,NULL),('RIJR571220',1,390,0,0,NULL,NULL),('RIRL780924',1,131,0,0,NULL,NULL),('RISJ410709',1,537,0,0,NULL,NULL),('RISR610808',1,156,0,0,NULL,NULL),('ROAB630611',1,314,0,0,NULL,NULL),('ROAJ530902',1,48,0,0,NULL,NULL),('ROCC730916',1,63,0,0,NULL,NULL),('ROCG600508',1,482,0,0,NULL,NULL),('ROCL700110',1,9,0,0,NULL,NULL),('ROCR620603',1,257,0,0,NULL,NULL),('ROEO430714',1,536,0,0,NULL,NULL),('ROGA651102',1,242,0,0,NULL,NULL),('ROGA801023',1,182,0,0,NULL,NULL),('ROHI710319',1,54,0,0,NULL,NULL),('ROHL600403',1,422,0,0,NULL,NULL),('ROHL720825',1,72,0,0,NULL,NULL),('ROHP740712',1,214,0,0,NULL,NULL),('ROLA460505',1,384,0,0,NULL,NULL),('ROLL520413',1,335,0,0,NULL,NULL),('ROLP651211',1,34,0,0,NULL,NULL),('ROOD790509',1,207,0,0,NULL,NULL),('ROOL570306',1,248,0,0,NULL,NULL),('ROOP561012',1,481,0,0,NULL,NULL),('ROOR690527',1,165,0,0,NULL,NULL),('ROPA550531',1,499,0,0,NULL,NULL),('ROPA880429',1,102,0,0,NULL,NULL),('RORE650831',1,44,0,0,NULL,NULL),('RORM630319',1,246,0,0,NULL,NULL),('RORO370912',1,429,0,0,NULL,NULL),('RORR590111',1,49,0,0,NULL,NULL),('RORS491127',1,401,0,0,NULL,NULL),('ROSA580505',1,437,0,0,NULL,NULL),('ROSL540909',1,441,0,0,NULL,NULL),('RUBM600910',1,18,0,0,NULL,NULL),('RUCR841028',1,158,0,0,NULL,NULL),('RURA600723',1,350,0,0,NULL,NULL),('RUZJ530430',1,341,0,0,NULL,NULL),('SAAM630318',1,466,0,0,NULL,NULL),('SABM670425',1,438,0,0,NULL,NULL),('SABN621118',1,244,0,0,NULL,NULL),('SACC820315',1,17,0,0,NULL,NULL),('SACG371110',1,538,0,0,NULL,NULL),('SADC571215',1,253,0,0,NULL,NULL),('SADV700522',1,4,0,0,NULL,NULL),('SAEB601008',1,94,0,0,NULL,NULL),('SAGG641221',1,279,0,0,NULL,NULL),('SAHF780227',1,173,0,0,NULL,NULL),('SALJ650711',1,243,0,0,NULL,NULL),('SALL490808',1,294,0,0,NULL,NULL),('SALM390114',1,515,0,0,NULL,NULL),('SALO680206',1,220,0,0,NULL,NULL),('SALR400622',1,512,0,0,NULL,NULL),('SALU600601',1,264,0,0,NULL,NULL),('SALV610526',1,62,0,0,NULL,NULL),('SAME770202',1,31,0,0,NULL,NULL),('SAMG560528',1,280,0,0,NULL,NULL),('SAMJ740319',1,5,0,0,NULL,NULL),('SAMJ870323',1,176,0,0,NULL,NULL),('SAML711230',1,97,0,0,NULL,NULL),('SAOA620508',1,315,0,0,NULL,NULL),('SAPL540211',1,237,0,0,NULL,NULL),('SAPM670320',1,305,0,0,NULL,NULL),('SARA500917',1,446,0,0,NULL,NULL),('SARE620826',1,250,0,0,NULL,NULL),('SARF761129',1,109,0,0,NULL,NULL),('SARL560604',1,391,0,0,NULL,NULL),('SARM501017',1,487,0,0,NULL,NULL),('SARM610123',1,308,0,0,NULL,NULL),('SASF660302',1,146,0,0,NULL,NULL),('SATR610723',1,396,0,0,NULL,NULL),('SAZA451003',1,510,0,0,NULL,NULL),('SEGB500831',1,483,0,0,NULL,NULL),('SEPS580912',1,448,0,0,NULL,NULL),('SERE560311',1,491,0,0,NULL,NULL),('SIBM600702',1,252,0,0,NULL,NULL),('SIGG840712',1,14,0,0,NULL,NULL),('SIGT601109',1,457,0,0,NULL,NULL),('SILL681102',1,45,0,0,NULL,NULL),('SISD970602',1,230,0,0,NULL,NULL),('SOAE590718',1,310,0,0,NULL,NULL),('SOCR591028',1,385,0,0,NULL,NULL),('SOGE490329',1,354,0,0,NULL,NULL),('SOGE650823',1,283,0,0,NULL,NULL),('SOMM790430',1,217,0,0,NULL,NULL),('SOOE761215',1,177,0,0,NULL,NULL),('SUAS530117',1,370,0,0,NULL,NULL),('SUCA511123',1,25,0,0,NULL,NULL),('TACT460218',1,324,0,0,NULL,NULL),('TAMJ711204',1,195,0,0,NULL,NULL),('TASA630119',1,497,0,0,NULL,NULL),('TAVL610516',1,265,0,0,NULL,NULL),('TEMA670502',1,278,0,0,NULL,NULL),('TEMG631204',1,168,0,0,NULL,NULL),('TOAF601224',1,82,0,0,NULL,NULL),('TOBE620920',1,92,0,0,NULL,NULL),('TOEL840404',1,216,0,0,NULL,NULL),('TOGA770224',1,66,0,0,NULL,NULL),('TOLV710602',1,157,0,0,NULL,NULL),('TOMJ650420',1,149,0,0,NULL,NULL),('TOMM430929',1,513,0,0,NULL,NULL),('TOOG450118',1,222,0,0,NULL,NULL),('TOPE551216',1,29,0,0,NULL,NULL),('TORG630413',1,90,0,0,NULL,NULL),('TORM471203',1,543,0,0,NULL,NULL),('TORR491029',1,450,0,0,NULL,NULL),('VAAL680202',1,386,0,0,NULL,NULL),('VABA721101',1,178,0,0,NULL,NULL),('VADF430822',1,535,0,0,NULL,NULL),('VARA570908',1,500,0,0,NULL,NULL),('VARB570219',1,272,0,0,NULL,NULL),('VARC580808',1,454,0,0,NULL,NULL),('VATH760227',1,209,0,0,NULL,NULL),('VEAE651027',1,469,0,0,NULL,NULL),('VECG481101',1,355,0,0,NULL,NULL),('VECK781228',1,106,0,0,NULL,NULL),('VEPS580519',1,331,0,0,NULL,NULL),('VESG530225',1,409,0,0,NULL,NULL),('VIAL571012',1,317,0,0,NULL,NULL),('VIHA670801',1,303,0,0,NULL,NULL),('VINA780922',1,51,0,0,NULL,NULL),('VIRC600318',1,251,0,0,NULL,NULL),('VIRE550813',1,439,0,0,NULL,NULL),('VISE630124',1,365,0,0,NULL,NULL),('VISH570106',1,293,0,0,NULL,NULL),('XACR421024',1,521,0,0,NULL,NULL),('XILS910302',1,170,0,0,NULL,NULL),('ZACM620126',1,426,0,0,NULL,NULL),('ZACR760228',1,59,0,0,NULL,NULL),('ZAMR680730',1,358,0,0,NULL,NULL),('ZASE420615',1,410,0,0,NULL,NULL),('ZEGV620728',1,300,0,0,NULL,NULL),('ZUCM690919',1,302,0,0,NULL,NULL);
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
INSERT INTO `guestprize` VALUES ('AAAC670607',1),('AAFD851118',1),('AAIA810312',1),('AALE860922',1),('AAMA580502',1),('AAMJ550319',1),('AARE791201',1),('AAZA700603',1),('AIGE760708',1),('AISL760127',1),('AULC650915',1),('AUTV660101',1),('BAAC641022',1),('BABE570407',1),('BAEE770115',1),('BAGA541105',1),('BAHH520810',1),('BAMV840328',1),('BEHM730706',1),('BEJA641207',1),('BEMG581122',1),('BOMJ600427',1),('BUAI920831',1),('CAAG560830',1),('CAAN800412',1),('CAAP690310',1),('CABI750704',1),('CABM811007',1),('CACJ620311',1),('CACN810816',1),('CAFJ811202',1),('CAJC500324',1),('CAJT580925',1),('CALA700920',1),('CANC800416',1),('CARA550419',1),('CARE870706',1),('CATJ800217',1),('CEBL641209',1),('CEGG770409',1),('CEPP650317',1),('CICM700907',1),('COGX700718',1),('COSL680114',1),('COVC500403',1),('CUDJ700330',1),('CUPS631212',1),('CUVA600612',1),('DEAV540628',1),('DUMJ520111',1),('EAGC770416',1),('EAMM710909',1),('EARG821010',1),('EIVI600524',1),('FAGJ781015',1),('FERA561101',1),('FOBF680603',1),('FOGR691218',1),('GACI590603',1),('GACI730704',1),('GACJ590822',1),('GACM710712',1),('GADF790414',1),('GAGE930619',1),('GAGL620822',1),('GAJJ611026',1),('GALL661221',1),('GARJ640319',1),('GARV801005',1),('GASA810421',1),('GAVT670924',1),('GAXG691204',1),('GOAM910530',1),('GODA750831',1),('GOEE930613',1),('GOFA671026',1),('GOPF630603',1),('GOPP651210',1),('GOVN621207',1),('GOZA600901',1),('GUAJ850112',1),('GUAV770529',1),('GUCY710615',1),('GUDE820907',1),('GUGM570426',1),('GUHE740114',1),('GUHL810712',1),('GULR860123',1),('GUPE640521',1),('GUPS640707',1),('GURJ720122',1),('GUSJ751114',1),('GUSV811105',1),('HEBP580102',1),('HEGU731014',1),('HEIM680226',1),('HELI891227',1),('HEMA760104',1),('HEMP610409',1),('HERA631206',1),('HESR530831',1),('HUAE800531',1),('IANE820517',1),('IAOV730304',1),('IAPE721117',1),('JEHJ620923',1),('JIMA610709',1),('JUBD720623',1),('JULF841004',1),('JULM671105',1),('LOAA770303',1),('LOFT610501',1),('LOGE810825',1),('LORC630708',1),('LORJ690319',1),('LOUS630530',1),('MABV750223',1),('MACM640411',1),('MAIU850513',1),('MALA861025',1),('MANK750818',1),('MAPD850325',1),('MAPG741025',1),('MARA810111',1),('MARR730921',1),('MASC731120',1),('MASO581005',1),('MATP810925',1),('MEBC660713',1),('MECV841214',1),('MEDC870705',1),('MERA550906',1),('MOAJ631206',1),('MOCE800511',1),('MOLP601009',1),('MOMA530924',1),('MORA621123',1),('MORA640123',1),('MORA740726',1),('NAMJ870131',1),('NARR700417',1),('NEEL730512',1),('NERM870525',1),('NOVJ720424',1),('OELE810505',1),('OIRA730527',1),('OORC880806',1),('OUFA850727',1),('PAGC570307',1),('PALG831114',1),('PAMI691010',1),('PEDH721121',1),('PEMN701116',1),('PESL790811',1),('PICA790917',1),('POMP800723',1),('PUMF820301',1),('QUDN750305',1),('QUHC650913',1),('RAAA740815',1),('RAAD681019',1),('RABC690320',1),('RALT520821',1),('RARC621127',1),('RASR710510',1),('RAVM650728',1),('REGM590502',1),('REHA740406',1),('REIH830819',1),('RERF841114',1),('RICF720523',1),('RIRL780924',1),('RISR610808',1),('ROAJ530902',1),('ROCC730916',1),('ROCL700110',1),('ROGA801023',1),('ROHI710319',1),('ROHL720825',1),('ROHP740712',1),('ROLP651211',1),('ROOD790509',1),('ROOR690527',1),('ROPA880429',1),('RORE650831',1),('RORR590111',1),('RUBM600910',1),('RUCR841028',1),('SACC820315',1),('SADV700522',1),('SAEB601008',1),('SAHF780227',1),('SALO680206',1),('SALV610526',1),('SAME770202',1),('SAMJ740319',1),('SAMJ870323',1),('SAML711230',1),('SARF761129',1),('SASF660302',1),('SIGG840712',1),('SILL681102',1),('SOMM790430',1),('SOOE761215',1),('SUCA511123',1),('TAMJ711204',1),('TEMG631204',1),('TOAF601224',1),('TOBE620920',1),('TOEL840404',1),('TOGA770224',1),('TOLV710602',1),('TOMJ650420',1),('TOPE551216',1),('TORG630413',1),('VABA721101',1),('VATH760227',1),('VECK781228',1),('VINA780922',1),('XILS910302',1),('ZACR760228',1),('TOOG450118',2),('BASR381220',3),('CADR791106',3),('GOHL460918',3),('JAVD540613',3),('PETS750209',4),('MEER810505',5),('RABP720605',5),('SISD970602',6),('AAER600805',7),('AAGG570404',7),('AAMJ470215',7),('AAOE530715',7),('AASA570727',7),('AASR630322',7),('AEMA610302',7),('AIVJ410529',7),('AOOE651222',7),('AORG480916',7),('AOTS630428',7),('AUAJ590101',7),('AUCJ600223',7),('AUFB570717',7),('AUMF640309',7),('BACM520429',7),('BAFM531103',7),('BAJO591030',7),('BALH681010',7),('BANL531018',7),('BEEJ580206',7),('BEFG410730',7),('BEHJ600304',7),('BELA640913',7),('BERJ620714',7),('BESH660721',7),('BIMR670106',7),('BUGT430510',7),('BUMM681026',7),('CAAA660515',7),('CAAE620708',7),('CAAH551119',7),('CACG660118',7),('CACJ361020',7),('CACJ600212',7),('CADB581204',7),('CAFA661128',7),('CAGD601102',7),('CAGE550405',7),('CAGG640505',7),('CAGL570825',7),('CAGN631226',7),('CAGX671023',7),('CAJC700425',7),('CAJG620516',7),('CAMA630623',7),('CANO650124',7),('CAOL521221',7),('CAOM641215',7),('CAOV650225',7),('CAPM560515',7),('CAQD650908',7),('CAVM560102',7),('CAVS680901',7),('CECD550401',7),('CEEV640206',7),('CEQI610121',7),('CIDP680624',7),('COAM650109',7),('COJD560226',7),('COMS580919',7),('COPJ590902',7),('CUAE610405',7),('CUBB650629',7),('CUPA641214',7),('CURE671008',7),('DOAS541112',7),('DUVM620927',7),('EEBA650625',7),('EEGG660911',7),('EEUS570818',7),('EIGL470116',7),('EUMA630826',7),('FAGA530612',7),('FARM481129',7),('FATE610606',7),('FETD600118',7),('FOLD600328',7),('FOMS580218',7),('GAAA630612',7),('GAAJ580420',7),('GAAN560517',7),('GAAP490622',7),('GAAS600109',7),('GABJ630131',7),('GACG621104',7),('GACH581217',7),('GACJ570530',7),('GAGA651215',7),('GAHE570925',7),('GAHF630822',7),('GAMC530827',7),('GAPC680404',7),('GAVS530520',7),('GIGJ590910',7),('GOCA520427',7),('GOCJ540509',7),('GOCL610302',7),('GOHG580525',7),('GOLU570429',7),('GOMJ590712',7),('GOML560209',7),('GOMV580325',7),('GORA611230',7),('GORJ580113',7),('GUCE590602',7),('GUGC640225',7),('GUIF610129',7),('GUMG560331',7),('GUTF561129',7),('HALM580923',7),('HEAJ480905',7),('HEGB680314',7),('HEGJ590310',7),('HEGL560415',7),('HEGP610330',7),('HEHS611127',7),('HEVO590818',7),('HUAF470205',7),('HUGF680607',7),('IACA610703',7),('IIAY431021',7),('JICJ500418',7),('JIMI631018',7),('JIPG660523',7),('JUMM651228',7),('JUSM570722',7),('KEML370228',7),('LIFM570506',7),('LOAP630409',7),('LOCS670617',7),('LOVS570524',7),('MAAC530822',7),('MAAO560123',7),('MACJ590327',7),('MAFE621217',7),('MAFV600123',7),('MAGG600807',7),('MAGJ460629',7),('MAGJ611102',7),('MAJV541230',7),('MALS631205',7),('MAMR670830',7),('MAMS570302',7),('MAOA620915',7),('MAPM660426',7),('MAPO581026',7),('MARL600702',7),('MAVH550316',7),('MEGC640919',7),('MEGS581117',7),('MITI600219',7),('MOAC651030',7),('MOAC701121',7),('MOAS610429',7),('MOCB620227',7),('MOGR571111',7),('MOHV680927',7),('MOIR590502',7),('MOMA540122',7),('MORC551103',7),('MORE680104',7),('MORJ410214',7),('MOSF661214',7),('MOVG601118',7),('NACF571118',7),('NAHG510514',7),('NURA470505',7),('OIRG550715',7),('OIVG660721',7),('OOLC571220',7),('OOSN660502',7),('OUGU580124',7),('PAGI560421',7),('PAOA571102',7),('PAYO680604',7),('PELC600109',7),('PELE580813',7),('PEME560514',7),('PEMI611213',7),('PEMV670606',7),('PEOE560828',7),('PEPJ550328',7),('PEPM451130',7),('PERJ440727',7),('PEVM561221',7),('PISJ580125',7),('POAE661230',7),('POPG570126',7),('PUEG530218',7),('PURP650517',7),('QUMR681113',7),('QUVH590512',7),('RACL670606',7),('RAGA691007',7),('RAPF560820',7),('RAPM631028',7),('RARE551026',7),('RASF610711',7),('REBS560910',7),('REGG611025',7),('REMH610209',7),('RERN651110',7),('RIFJ621206',7),('RIHF580501',7),('RIJR571220',7),('ROAB630611',7),('ROCG600508',7),('ROCR620603',7),('ROGA651102',7),('ROHL600403',7),('ROLA460505',7),('ROLL520413',7),('ROOL570306',7),('ROOP561012',7),('ROPA550531',7),('RORM630319',7),('RORO370912',7),('RORS491127',7),('ROSA580505',7),('ROSL540909',7),('RURA600723',7),('RUZJ530430',7),('SAAM630318',7),('SABM670425',7),('SABN621118',7),('SADC571215',7),('SAGG641221',7),('SALJ650711',7),('SALL490808',7),('SALU600601',7),('SAMG560528',7),('SAOA620508',7),('SAPL540211',7),('SAPM670320',7),('SARA500917',7),('SARE620826',7),('SARL560604',7),('SARM501017',7),('SARM610123',7),('SATR610723',7),('SEGB500831',7),('SEPS580912',7),('SERE560311',7),('SIBM600702',7),('SIGT601109',7),('SOAE590718',7),('SOCR591028',7),('SOGE490329',7),('SOGE650823',7),('SUAS530117',7),('TACT460218',7),('TASA630119',7),('TAVL610516',7),('TEMA670502',7),('TORR491029',7),('VAAL680202',7),('VARA570908',7),('VARB570219',7),('VARC580808',7),('VEAE651027',7),('VECG481101',7),('VEPS580519',7),('VESG530225',7),('VIAL571012',7),('VIHA670801',7),('VIRC600318',7),('VIRE550813',7),('VISE630124',7),('VISH570106',7),('ZACM620126',7),('ZAMR680730',7),('ZASE420615',7),('ZEGV620728',7),('ZUCM690919',7),('AAAJ410118',8),('AABS460521',8),('AAMS420723',8),('AERL450609',8),('AIRR361024',8),('AOAR441112',8),('AUBF470810',8),('BAVD370403',8),('BEMB431109',8),('CAGM440225',8),('CEMJ490521',8),('EILJ440328',8),('EIVA450412',8),('GABR450924',8),('GAHG471123',8),('GOVA480616',8),('GUTA410412',8),('HEGR450905',8),('HERF391001',8),('JIGF420129',8),('MADG430608',8),('MAFJ450121',8),('MARR450109',8),('MARS461224',8),('MECE501109',8),('MESL420327',8),('OUDJ370713',8),('PECA340531',8),('REGJ420909',8),('RISJ410709',8),('ROEO430714',8),('SACG371110',8),('SALM390114',8),('SALR400622',8),('SAZA451003',8),('TOMM430929',8),('TORM471203',8),('VADF430822',8),('XACR421024',8);
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
  PRIMARY KEY (`InstitutionID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution`
--

LOCK TABLES `institution` WRITE;
/*!40000 ALTER TABLE `institution` DISABLE KEYS */;
INSERT INTO `institution` VALUES (1,'INSTITUTO POLITÉCNICO NACIONAL'),(2,'UNIVERSIDAD AUTÓNOMA DE MÉXICO');
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
INSERT INTO `place` VALUES ('J00000','Dirección General','AREA',1),('J60000','Coordinación de Comunicación Social','AREA',1),('JA1000','Secretaría Particular de la Dirección General','AREA',1),('JD0000','Coordinación de Asesores','AREA',1),('JE0000','Defensoría de los Derechos Politécnicos','AREA',1),('K00000','Oficina del Abogado General','AREA',1),('K10000','Dirección de Asuntos Jurídicos','AREA',1),('K20000','Dirección de Normatividad, Consulta y Dictaminación ','AREA',1),('L00000','Coordinación General de Servicios Informáticos','AREA',1),('L10000','Dirección de Cómputo y Comunicaciones','ADMINISTRACIÓN',1),('N00000','Secretaría General','AREA',1),('O00000','Secretaría Académica','AREA',1),('O0A000','Coordinación General de Formación e Innovación Educativa','AREA',1),('O0C000','Unidad Politécnica para la Educación Virtual','AREA',1),('O10000','Dirección de Educación Media Superior','AREA',1),('O1A000','Centro de Estudios Científicos y Tecnológicos 1 \"Gonzálo Vázquez Vela\"','MEDIO SUPERIOR',1),('O1B000','Centro de Estudios Científicos y Tecnológicos 2 \"Miguel Bernard\"','MEDIO SUPERIOR',1),('O1C000','Centro de Estudios Científicos y Tecnológicos 3 \"Estanislao Ramírez Ruíz\"','MEDIO SUPERIOR',1),('O1D000','Centro de Estudios Científicos y Tecnológicos 4 \"Lázaro Cárdenas\"','MEDIO SUPERIOR',1),('O1E000','Centro de Estudios Científicos y Tecnológicos 7 \"Cuauhtémoc\"','MEDIO SUPERIOR',1),('O1F000','Centro de Estudios Científicos y Tecnológicos 8 \"Narciso Bassols\"','MEDIO SUPERIOR',1),('O1G000','Centro de Estudios Científicos y Tecnológicos 9 \"Juan de Dios Bátiz\"','MEDIO SUPERIOR',1),('O1H000','Centro de Estudios Científicos y Tecnológicos 10 \"Carlos Vallejo Márquez\"','MEDIO SUPERIOR',1),('O1I000','Centro de Estudios Científicos y Tecnológicos 11 \"Wilfrido Massieu\"','MEDIO SUPERIOR',1),('O1J000','Centro de Estudios Tecnológicos 1 \"Walter Cross Buchanan\"','MEDIO SUPERIOR',1),('O1K000','Centro de Estudios Científicos y Tecnológicos 6 \"Miguel Othón de Mendizabal\"','MEDIO SUPERIOR',1),('O1L000','Centro de Estudios Científicos y Tecnológicos 15 \"Diódoro Antúnez Echegaray\"','MEDIO SUPERIOR',1),('O1M000','Centro de Estudios Científicos y Tecnológicos 5 \"Benito Juárez\"','MEDIO SUPERIOR',1),('O1N000','Centro de Estudios Científicos y Tecnológicos 12 \"José María Morelos\"','MEDIO SUPERIOR',1),('O1O000','Centro de Estudios Científicos y Tecnológicos 13 \"Ricardo Flores Magón\"','MEDIO SUPERIOR',1),('O1P000','Centro de Estudios Científicos y Tecnológicos 14 \"Luis Enrique Erro\"','MEDIO SUPERIOR',1),('O1Q000','Centro de Estudios Científicos y Tecnológicos 16 \"Hidalgo\"','MEDIO SUPERIOR',1),('O1R000','Centro de Estudios Científicos y Tecnológicos 17 \"León, Guanajuato\"','MEDIO SUPERIOR',1),('O20000','Dirección de Educación Superior','AREA',1),('O2A000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Azcapotzalco','SUPERIOR',1),('O2B000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Culhuacán','SUPERIOR',1),('O2C000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Ticomán','SUPERIOR',1),('O2D000','Escuela Superior de Ingeniería Mecánica y Eléctrica Unidad Zacatenco','SUPERIOR',1),('O2E000','Escuela Superior de Ingeniería y Arquitectura Unidad Tecamachalco','SUPERIOR',1),('O2F000','Escuela Superior de Ingeniería y Arquitectura Unidad Ticomán','SUPERIOR',1),('O2G000','Escuela Superior de Ingeniería y Arquitectura Unidad Zacatenco','SUPERIOR',1),('O2H000','Escuela Superior de Ingeniería Textil','SUPERIOR',1),('O2I000','Escuela Superior de Ingeniería Química e Industrias Extractivas','SUPERIOR',1),('O2J000','Escuela Superior de Física y Matemáticas','SUPERIOR',1),('O2K000','Escuela Superior de Computación','SUPERIOR',1),('O2L000','Unidad Profesional Interdisciplinaria en Ingeniería y Tecnologías Avanzadas','SUPERIOR',1),('O2M000','Unidad Profesional Interdisciplinaria de Ingeniería y Ciencias Sociales y Administrativas','SUPERIOR',1),('O2N000','Unidad Profesional Interdisciplinaria de Biotecnología','SUPERIOR',1),('O2O000','Escuela Nacional de Medicina y Homeopatía','SUPERIOR',1),('O2P000','Escuela Nacional de Ciencias Biológicas','SUPERIOR',1),('O2Q000','Escuela Superior de Medicina','SUPERIOR',1),('O2R000','Escuela Superior de Enfermería y Obstetricia','SUPERIOR',1),('O2S000','Centro Interdisciplinario de Ciencias de la Salud Unidad Milpa Alta','SUPERIOR',1),('O2T000','Centro Interdisciplinario de Ciencias de la Salud Unidad Santo Tomás','SUPERIOR',1),('O2U000','Escuela Superior de Comercio y Administración Unidad Santo Tomás','SUPERIOR',1),('O2V000','Escuela Superior de Comercio y Administración Unidad Tepepan','SUPERIOR',1),('O2W000','Escuela Superior de Economía','SUPERIOR',1),('O2X000','Escuela Superior de Turismo','SUPERIOR',1),('O2Y000','Unidad Profesional Interdisciplinaria de Ingeniería Campus Guanajuato','SUPERIOR',1),('O2Z000','Unidad Profesional Interdisciplinaria de Ingeniería Campus Zacatecas','SUPERIOR',1),('P0A000','Centro Interdisciplinario de Ciencias Marinas','POSGRADO',1),('P0B000','Centro Interdisciplinario de Investigaciones y Estudios sobre Medio Ambiente y Desarrollo','CENTRO',1),('P0C000','Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional Unidad Durango','POSGRADO',1),('P0E000','Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional Unidad Michoacán','POSGRADO',1),('P0F000','Centro Interdisciplinario de Investigación para el Desarrollo Integral Regional Unidad Oaxaca','POSGRADO',1),('P0G000','Centro de Desarrollo de Productos Bióticos','CENTRO',1),('P0H000','Centro de Biotecnología Genómica','POSGRADO',1),('P0I000','Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada Unidad Legaria','POSGRADO',1),('P0J000','Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada Unidad Altamira','POSGRADO',1),('P0K000','Centro de Investigación en Ciencia Aplicada y Tecnología Avanzada Unidad Querétaro','POSGRADO',1),('P0L000','Centro de Investigación en Computación','POSGRADO',1),('P0M000','Centro de Investigación y Desarrollo de Tecnología Digital','POSGRADO',1),('P0N000','Centro de Investigaciones Económicas, Administrativas y Sociales','POSGRADO',1),('P0P000','Centro de Innovación y Desarrollo Tecnológico en Computo','POSGRADO',1),('P0Q000','Centro de Investigación e Innovación Tecnológica','POSGRADO',1),('P0T000','Centro de Nanociencias y Micro y Nanotecnologías','POSGRADO',1),('Q00000','Secretaría de Servicios Educativos','AREA',1),('Q10000','Dirección de Administración Escolar','AREA',1),('Q20000','Dirección de Servicios Estudiantiles','AREA',1),('Q30000','Dirección de Bibliotecas','AREA',1),('Q40000','Dirección de Difusión y Fomento a la Cultura','AREA',1),('Q50000','Dirección de Desarrollo y Fomento Deportivo','AREA',1),('R0F000','Unidad Politécnica para el Desarrollo y la Competitividad Empresarial','AREA',1),('R40000','Dirección de Publicaciones','AREA',1),('R5D000','Centro de Educación Contínua Unidad Culiacán','CENTRO',1),('R5E000','Centro de Educación Contínua Unidad Los Mochis','CENTRO',1),('R5K000','Centro de Educación Contínua Unidad Tijuana','CENTRO',1),('R5M000','Centro de Educación Contínua Unidad Durango','CENTRO',1),('S30000','Dirección de Evaluación','AREA',1),('S40000','Coordinación del Sistema Institucional de Información','AREA',1),('T40000','Dirección de Gestión del Capital Humano','AREA',1),('T50000','Dirección de Recursos Financieros','AREA',1),('T60000','Dirección de Recursos Materiales y Servicios','AREA',1),('T63000','Coordinación de Centros de Desarrollo Infantil','AREA',1),('T63010','Centro de Desarrollo Infantil \"Laura Pérez de Bátiz\"','CENTRO',1),('T63020','Centro de Desarrollo Infantil \"Amalia Solórzano de Cárdenas\"','CENTRO',1),('T63040','Centro de Desarrollo Infantil \"Clementina Batalla de Bassols\"','CENTRO',1),('T63050','Centro de Desarrollo Infantil \"Margarita Salazar de Erro\"','CENTRO',1),('XXXXXX','Coordinación Politécnica para la Sustentabilidad','AREA',1),('YYYYYY','Centro Educación Continua Ing. Eugenio Méndez Docurro','CENTRO',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prize`
--

LOCK TABLES `prize` WRITE;
/*!40000 ALTER TABLE `prize` DISABLE KEYS */;
INSERT INTO `prize` VALUES (1,'DIPLOMA A LA \"EFICIENCIA Y EFICACIA\"',1,'EL DIPLOMA A LA “EFICIENCIA Y EFICACIA” SE OTORGA AL PERSONAL DE APOYO Y ASISTENCIA A LA EDUCACIÓN QUE, POR RECONOCIDOS Y MERITORIOS SERVICIOS AL INSTITUTO, SE HA DISTINGUIDO EN EL DESEMPEÑO DE SUS LABORES.\n \nPARA NUESTRA COMUNIDAD ES DE GRAN SATISFACCIÓN RECONOCER PÚBLICAMENTE LA LABOR CONSTANTE Y CONSCIENTE QUE LOS COMPAÑEROS DESEMPEÑAN EN SU VIDA LABORAL.\n \nCON LA ANUENCIA DE NUESTRAS AUTORIDADES, EN ESTE MOMENTO DAREMOS INICIO A LA ENTREGA DE DICHOS DIPLOMAS, PARA LO CUAL INVITAMOS A NUESTRO PRESIDIUM A PONERSE DE PIE PARA PROCEDER A LA ENTREGA CORRESPONDIENTE.',221,1),(2,'DIPLOMA DE MAESTRO EMÉRITO',1,'Que se otorga a los profesores e investigadores que habiéndose retirado o jubilado, se hubieran distinguido por su relevante labor docente o de investigación en el Instituto y que hayan prestado sus servicios en éste cuando menos durante veinticinco años.\n\nCON LA ANUENCIA DE NUESTRAS AUTORIDADES EN ESTE MOMENTO RECIBE TAL DISTINCIÓN...\n',1,1),(3,'DIPLOMA DE MAESTRO DECANO',1,'Para elegir al candidato de esta distinción, se deberá considerar además de la antigüedad del maestro, su trayectoria y aportaciones realizadas al Instituto, se otorgará al profesor que haya sido electo decano por el Consejo Técnico Consultivo Escolar. Reciben esta distinción:',4,1),(4,'DIPLOMA A LA INVESTIGACIÓN',1,'Este diploma se otorga a aquellos profesores que se hayan destacado en el campo de la investigación científica y tecnológica, o bien por la realización de una obra científica que por su contenido haya obtenido arbitraje nacional o internacional.\nReciben esta distinción:',1,1),(5,'DIPLOMA A LA CULTURA',1,'El diploma a la cultura es para aquellos miembros de la comunidad politécnica, que hayan apoyado o destaquen en eventos culturales de relevancia nacional o internacional, recibe esta distinción:\nReciben esta distinción:',2,1),(6,'DIPLOMA AL DEPORTE',1,'Se otorga a aquellos integrantes de la comunidad politécnica que hayan sobresalido en eventos deportivos nacionales o internacionales auspiciados por el Instituto Politécnico Nacional, o en representación del mismo o del País, recibe este galardón:',1,1),(7,'PRESEA JUAN DE DIOS BÁTIZ',2,'JUAN DE DIOS BÁTIZ, DISTINGUIDO MEXICANO, NACIDO EN EL ESTADO DE SINALOA, DESARROLLÓ ACTIVIDADES DE CARÁCTER MILITAR, POLÍTICO Y EDUCATIVO, DENTRO DE LAS QUE SE DESTACA, LA DE HABER SIDO EL PRINCIPAL PROMOTOR Y UNO DE LOS FUNDADORES DEL INSTITUTO POLITÉCNICO NACIONAL.\n\nLA PRESEA “JUAN DE DIOS BÁTIZ” ES EL RECONOCIMIENTO QUE EL INSTITUTO POLITÉCNICO NACIONAL, OTORGA AL PERSONAL ACADÉMICO Y DE APOYO Y ASISTENCIA A LA EDUCACIÓN,  QUE HAYA CUMPLIDO TREINTA AÑOS DE SERVICIO EFECTIVOS EN EL PROPIO INSTITUTO.\nCON LA ANUENCIA DE NUESTRAS AUTORIDADES, PROCEDEREMOS A LA ENTREGA DE TAN DISTINGUIDO RECONOCIMIENTO, LA “PRESEA JUAN DE DIOS BÁTIZ”, QUE ESTE AÑO RECONOCE A:\n',275,1),(8,'PRESEA CARLOS VALLEJO MÁRQUEZ',3,'EL MOMENTO CUMBRE DE ESTA CEREMONIA HA LLEGADO, \n \nLA PRESEA “CARLOS VALLEJO MÁRQUEZ” ES EL RECONOCIMIENTO QUE EL INSTITUTO POLITÉCNICO NACIONAL, OTORGA AL PERSONAL DE APOYO Y ASISTENCIA A LA EDUCACIÓN QUE HAYA CUMPLIDO CINCUENTA AÑOS DE SERVICIO EFECTIVOS EN EL PROPIO INSTITUTO.\n \nESTE AÑO RECIBE ESTE GALARDON:',39,1);
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
  `Type` enum('Admin','Standard') NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1234567890,'$2y$10$qbkKR8HshR8sTTNgHJs60uIQnU8YUYxPLcZ2KVWsFLTSk2tiFkV8y','Standard'),(2014081268,'$2y$10$qbkKR8HshR8sTTNgHJs60uIQnU8YUYxPLcZ2KVWsFLTSk2tiFkV8y','Admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userevent`
--

DROP TABLE IF EXISTS `userevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userevent` (
  `Username` int(11) NOT NULL,
  `EventID` int(11) NOT NULL,
  PRIMARY KEY (`Username`,`EventID`),
  KEY `userevent_username_idx` (`Username`),
  KEY `userevent_eventid_idx` (`EventID`),
  CONSTRAINT `UserEventEventID` FOREIGN KEY (`EventID`) REFERENCES `event` (`EventID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `UserEventUser` FOREIGN KEY (`Username`) REFERENCES `user` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userevent`
--

LOCK TABLES `userevent` WRITE;
/*!40000 ALTER TABLE `userevent` DISABLE KEYS */;
INSERT INTO `userevent` VALUES (1234567890,1);
/*!40000 ALTER TABLE `userevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'OrganizeAnEvent'
--
/*!50003 DROP PROCEDURE IF EXISTS `AddComments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddComments`(IN ThisRFC VARCHAR(10), IN ThisEventID INT, IN NewComment VARCHAR(1000))
BEGIN
    INSERT INTO Comment (Text, RFC, EventID)
        VALUES 
            (NewComment, ThisRFC, EventID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddGuest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddGuest`(IN ThisRFC VARCHAR(10), IN ThisName VARCHAR(45), IN ThisFirsSurname VARCHAR(45),
IN ThisSecondSurname VARCHAR(45), IN ThisEmail VARCHAR(45), IN ThisPlaceID INT)
BEGIN
    INSERT INTO Guest VALUES (ThisRFC, ThisName, ThisFirsSurname, ThisSecondSurname, ThisEmail, ThisPlaceID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EditGuest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EditGuest`(IN ThisRFC VARCHAR(10), IN ThisName VARCHAR(45), IN ThisFirsSurname VARCHAR(45),
IN ThisSecondSurname VARCHAR(45), IN ThisEmail VARCHAR(45), IN ThisPlaceID INT)
BEGIN
    UPDATE Guest SET Name = (ThisName), FirstSurname = (ThisFirsSurname), SecondSurname = (ThisSecondSurname), 
    Email = (ThisEmail), PlaceID = (ThisPlaceID)
    WHERE RFC = (ThisRFC);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllEvents` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllEvents`()
BEGIN
    SELECT EventID, Name as Event FROM Event;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllInstitutions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllInstitutions`()
BEGIN
    SELECT InstitutionID, Name as Institution FROM Institution;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllPlaces` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllPlaces`()
BEGIN
    SELECT PlaceID, Name as Place FROM Place;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetGuestFullData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetGuestFullData`(IN ThisRFC VARCHAR(10), IN ThisInstitutionID INT, IN ThisEventID INT)
BEGIN
    SELECT g.RFC, g.Name, g.FirstSurname, g.SecondSurname, 
    g.email, p.Name AS Place FROM Guest g, Place p, Institution i, GuestEvent ge
        WHERE 
            ge.RFC = g.RFC AND
            g.PlaceID = p.PlaceID AND
            p.InstitutionID = i.InstitutionID AND
            (g.RFC = (ThisRFC) OR ThisRFC IS NULL) AND
            (i.InstitutionID = (ThisInstitutionID) OR ThisInstitutionID IS NULL) AND
            (ge.EventID = (ThisEventID) OR ThisEventID IS NULL);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetGuestFullName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetGuestFullName`(IN ThisRFC VARCHAR(10))
BEGIN
    SELECT CONCAT(Name, ' ', FirstSurname, ' ', SecondSurname) as FullName FROM Guest 
        WHERE 
            Guest.RFC = (ThisRFC);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetPrizeInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetPrizeInfo`(IN ThisRFC VARCHAR(10))
BEGIN
    SELECT p.Name AS Prize, p.Speech AS Description, e.Name AS Event, e.Localization, e.Latitude, 
    e.Longitude, e.Time FROM GuestPrize gp, Guest g, Event e 
        WHERE 
            gp.PrizeID = p.PrizeID    AND 
            p.EventID = e.EventID     AND
            gp.RFC = (ThisRFC);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetUserPassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetUserPassword`(IN ThisUsername INT)
BEGIN
    SELECT Password FROM User
        WHERE
            User.Username = ThisUsername;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetUserType` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetUserType`(IN ThisUsername INT)
BEGIN
    SELECT Type FROM User
        WHERE
            User.Username = ThisUsername;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RemoveGuest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RemoveGuest`(IN ThisRFC VARCHAR(10))
BEGIN
    DELETE FROM Guest WHERE RFC = (ThisRFC);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SetAssistance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SetAssistance`(IN ThisRFC VARCHAR(10), IN ThisEventID INT, IN NewSeat INT, IN AnotherGuy VARCHAR(100))
BEGIN
    UPDATE GuestEvent
        SET
            GuestEvent.Assistance = 1, GuestEvent.Seat = NewSeat, GuestEvent.Representative = (AnotherGuy)
        WHERE
            GuestEvent.RFC = (ThisRFC) AND GuestEvent.EventID = ThisEventID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-28  0:05:53
