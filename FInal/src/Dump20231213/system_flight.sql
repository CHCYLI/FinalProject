-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: system
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight` (
  `airline_company_id` int NOT NULL,
  `flight_number` varchar(20) NOT NULL,
  `departure_airport` varchar(30) DEFAULT NULL,
  `destination_airport` varchar(30) DEFAULT NULL,
  `departure_time` varchar(20) DEFAULT NULL,
  `arrival_time` varchar(20) DEFAULT NULL,
  `days` varchar(20) DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  PRIMARY KEY (`airline_company_id`,`flight_number`),
  CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`airline_company_id`) REFERENCES `airline_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight`
--

LOCK TABLES `flight` WRITE;
/*!40000 ALTER TABLE `flight` DISABLE KEYS */;
INSERT INTO `flight` VALUES (1,'AA101','EWR','LAX','2023-12-15 08:00:00','2023-12-15 11:00:00','Mon,Wed,Fri','D'),(1,'AA234','JFK','LAX','2023-12-20 09:00:00','2023-12-20 12:00:00','Mon,Wed,Fri','D'),(1,'AA567','EWR','SFO','2023-12-21 13:00:00','2023-12-21 16:00:00','Tue,Thu,Sat','D'),(2,'UA123','LAX','ORD','2023-12-22 14:00:00','2023-12-22 17:00:00','Mon,Wed,Fri','D'),(2,'UA202','JFK','SFO','2023-12-16 09:00:00','2023-12-16 12:00:00','Tue,Thu,Sat','I'),(2,'UA890','SFO','MIA','2023-12-23 07:00:00','2023-12-23 14:00:00','Tue,Thu,Sat','D'),(3,'DL303','LGA','MIA','2023-12-17 07:00:00','2023-12-17 10:00:00','Mon,Wed,Fri','D'),(3,'DL456','ORD','JFK','2023-12-24 15:00:00','2023-12-24 18:00:00','Mon,Wed,Fri','D'),(3,'DL789','MIA','LAX','2023-12-25 19:00:00','2023-12-25 22:00:00','Tue,Thu,Sat','D');
/*!40000 ALTER TABLE `flight` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-12  1:56:08
