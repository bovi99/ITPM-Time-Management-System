-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: salro_university
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
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group` (
  `Group_id` int NOT NULL AUTO_INCREMENT,
  `Academic_year_Semester` varchar(45) DEFAULT NULL,
  `Student_ID` varchar(45) DEFAULT NULL,
  `Programme` varchar(45) DEFAULT NULL,
  `Group_Number` varchar(45) DEFAULT NULL,
  `Sub_Group_Number` varchar(45) DEFAULT NULL,
  `class_Group_id` varchar(45) DEFAULT NULL,
  `Sub_Group_ID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` VALUES (2,' 8','IT20187132','IT','32','2','WD.2',' WD2.2'),(4,'3','WD 2','IT','2','2.2','WD 2','WD 2.2'),(5,'3','WD IT 2020','IT','WD 2','WD 2.2','WD IT 2','WD IT 2.2'),(6,'3','123','it','2','3','WD 2','WD 3'),(7,'3','IT20196288','IT','2','3','WD IT 2','WD IT 3'),(8,'3','2020 IT','IT','2','3','WD IT 2','WD IT 3'),(9,'2','WE','T','DFGH','JHF','GJ','YU'),(10,'1','we','se','sdg','we','wd3','we3'),(11,'3','20200','IT','2','3','WD IT 2','WD IT 3'),(12,'3','2090','IT','2','3','WD 2','WD 3'),(13,'2','2000','IT','2','3','WE IT 2','WE IT 3'),(14,'3','200000','IT','2','3','WE IT 2','WE IT 3'),(15,'3','20196288','IT','2','3','WD IT 2','WD IT 3'),(16,'2','20196288','IT','3','2','WE IT 2','WE IT 3'),(17,'2','WE IT','IT','2','3','WE IT 2','WE IT 3'),(18,'3','12we','it','g2','d2','342s','s2'),(20,'3','12we','it','g2','d2','342s','s2'),(22,'q','q','d','45','fg','It','h'),(23,'q','q','d','45','fg','It','h'),(24,'w','e','g','we','f','h','d'),(25,'2','e','r','y','s','s','a'),(26,'2','e','r','y','s','s','a'),(28,'3','IT 2020','IT','IT WD','IT WD 2','IT WD 2020','IT WD 2 2020'),(31,'3','1','IT','2','3','IT 3','IT 2'),(32,'3','1','it','3','2','it 3','it 2'),(33,'3','4','2','3','3','2','3'),(34,'3','4','2','3','3','2','3');
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-15 21:01:37
