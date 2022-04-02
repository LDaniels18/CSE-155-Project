-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: blindcurrency
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `currencylist`
--

DROP TABLE IF EXISTS `currencylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencylist` (
  `Currency_id` int NOT NULL,
  `Currency_Type` varchar(100) DEFAULT NULL,
  `USD_Rate` double(12,6) DEFAULT NULL,
  PRIMARY KEY (`Currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencylist`
--

LOCK TABLES `currencylist` WRITE;
/*!40000 ALTER TABLE `currencylist` DISABLE KEYS */;
INSERT INTO `currencylist` VALUES (1,'United States Dollar',1.000000),(2,'European Euro',0.917154),(3,'Pound Sterling',0.763315),(4,'Kuwaiti Dinar',0.303962),(5,'Bahraini Dinar',0.376000),(6,'Omani Rial',0.384500),(7,'Swiss Franc',0.935397),(8,'Canadian Dollar',1.259187),(9,'Australian Dollar',1.354458),(10,'Bruneian Dollar',1.359386),(11,'Singapore Dollar',1.359386),(12,'New Zealand Dollar',1.455411),(13,'Bulgarian Lev',1.779090),(14,'Israeli Shekel',3.219965),(15,'Qatari Riyal',3.640000),(16,'Emirati Dirham',3.672500),(17,'Saudi Arabian Riyal',3.750000),(18,'Malaysian Ringgit',4.211514),(19,'Polish Zloty',4.274446),(20,'Romanian New Leu',4.498443),(21,'Libyan Dinar',4.649137),(22,'Brazilian Real',4.936961),(23,'Chinese Yuan Renminbi',6.362167),(24,'Danish Krone',6.768181),(25,'Trinidad and Tobago Dollar',6.775685),(26,'Croatian Kuna',6.888236),(27,'Hong Kong Dollar',7.828419),(28,'Norwegian Krone',8.768239),(29,'Swedish Krona',9.512904),(30,'Botswana Pula',11.563436),(31,'Turkish Lira',14.828912),(32,'South African Rand',14.974215),(33,'Mexican Peso',20.406608),(34,'Czech Koruna',22.478909),(35,'Taiwan New Dollar',28.584660),(36,'Thai Baht',33.680035),(37,'Mauritian Rupee',44.310352),(38,'Philippine Peso',52.397863),(39,'Indian Rupee',76.375997),(40,'Russian Ruble',107.166125),(41,'Argentine Peso',109.972457),(42,'Japanese Yen',119.888248),(43,'Nepalese Rupee',122.258878),(44,'Icelandic Krona',129.795695),(45,'Pakistani Rupee',181.529943),(46,'Sri Lankan Rupee',278.807031),(47,'Hungarian Forint',339.695916),(48,'Kazakhstani Tenge',508.731151),(49,'Chilean Peso',793.773854),(50,'South Korean Won',1221.692873),(51,'Colombian Peso',3816.370602),(52,'Indonesian Rupiah',14345.031201),(53,'Iranian Rial',42334.796578),(54,'Venezuelan Bolivar',430302.868303),(55,'Afghan Afghani',88.346033),(56,'Albanian Leke',111.688700),(57,'Algerian Dinar',142.703170),(58,'Angolan Kwanza',455.453840),(59,'East Caribbean Dollar',2.701527),(60,'Armenian Dram',487.466120),(61,'Aruban Florin',1.790000),(62,'Saint Helena Pound',0.761248),(63,'Azerbaijan Manat',1.698978),(64,'Bahamian Dollar',1.000000),(65,'Bangladeshi Taka',85.971246),(66,'Barbadian Dollar',2.000000),(67,'Belarusian Ruble',3.270528),(68,'Belize Dollar',2.011201),(69,'West African CFA Franc',594.982980),(70,'Bermudian Dollar',1.000000),(71,'Bhutanese Ngultrum',76.246106),(72,'Bolivian Boliviano',6.859937),(73,'Bosnia and Herzegovina Convertible Mark',1.774038),(74,'Burundi Franc',2049.393000),(75,'Cabo Verdean Escudo',0.010003),(76,'Cambodian Riel',4029.041600),(77,'Central African CFA Franc',594.685500),(78,'Cayman Islands Dollar',0.820010),(79,'Comorian Franc',446.014120),(80,'Congolese Franc',2011.252900),(81,'Costa Rican Colon',644.331000),(82,'Cuban Peso',24.152322),(83,'Netherlands Antillean Guilder',1.789901),(84,'Djiboutian Franc',177.797440),(85,'Dominican Peso',54.870132),(86,'Egyptian Pound',18.541842),(87,'Eritrean Nakfa',15.000000),(88,'Swazi Lilangeni',14.815319),(89,'Ethiopian Birr',51.000566),(90,'Falkland Islands Pound',0.753348),(91,'Faroese Krona',6.749215),(92,'Fijian Dollar',2.092878),(93,'CFP Franc',108.256630),(94,'Gambian Dalasi',53.416465),(95,'Georgian Lari',3.224795),(96,'Ghanaian Cedi',7.484806),(97,'Gibraltar Pound',0.753322),(98,'Guatemalan Quetzal',7.684478),(99,'Guernsey Pound',0.753322),(100,'Guinean Franc',8931.575900),(101,'Guyanese Dollar',208.484900),(102,'Haitian Gourde',104.780570),(103,'Honduran Lempira',24.469830),(104,'Special Drawing Right',0.724295),(105,'Iraqi Dinar',1458.523800),(106,'Manx Pound',0.753207),(107,'Jamaican Dollar',152.414740),(108,'Jersey Pound',0.753207),(109,'Jordanian Dinar',0.709000),(110,'Kenyan Shilling',114.544280),(111,'Kyrgyzstani Som',99.876554),(112,'Lao Kip',11454.082000),(113,'Lebanese Pound',1507.500000),(114,'Lesotho Loti',14.811443),(115,'Liberian Dollar',153.374430),(116,'Macanese Pataca',8.062377),(117,'Malagasy Ariary',4019.666800),(118,'Malawian Kwacha',816.796650),(119,'Maldivian Rufiyaa',15.410683),(120,'Mauritanian Ouguiya',36.425483),(121,'Moldovan Leu',18.371674),(122,'Mongolian Tugrik',2929.526800),(123,'Moroccan Dirham',9.715001),(124,'Mozambican Metical',63.823356),(125,'Myanmar Kyat',1775.434800),(126,'Namibian Dollar',14.810165),(127,'Nicaraguan cordoba',35.736951),(128,'Nigerian Naira',415.397920),(129,'North Korean Won',899.974860),(130,'Macedonian Denar',55.881130),(131,'Papua New Guinean Kina',3.519957),(132,'Paraguayan Guarani',6956.826400),(133,'Peruvian Sol',3.777534),(134,'Rwandan Franc',1018.166300),(135,'Samoan Tala',2.570921),(136,'Sao Tome and Principe Dobra',22.325520),(137,'Serbian Dinar',106.747580),(138,'Seychellois Rupee',14.447096),(139,'Sierra Leonean Leone',11674.295000),(140,'Solomon Islands Dollar',8.078469),(141,'Somali Shilling',584.342690),(142,'South Sudanese Pound',130.260000),(143,'Sudanese Pound',447.462030),(144,'Surinamese Dollar',20.668703),(145,'Syrian Pound',2512.530000),(146,'Tajikistani Somoni',12.981073),(147,'Tanzanian Shilling',2319.505900),(148,'Tongan Paanga',2.248829),(149,'Tunisian Dinar',2.931697),(150,'Turkmen Manat',3.493617),(151,'Ugandan Shilling',3587.885200),(152,'Ukrainian Hryvnia',29.401986),(153,'United Arab Emirates Dirham',3.672500),(154,'Uruguayan Peso',42.530006),(155,'Uzbekistani Som',11578.625000),(156,'Vanuatu Vatu',112.248210),(157,'Vietnamese Dong',22750.324000),(158,'CFP Franc',108.207530),(159,'Yemeni Rial',250.266160),(160,'Zambian Kwacha',17.633328);
/*!40000 ALTER TABLE `currencylist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-22 20:27:26
