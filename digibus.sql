-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: digibus
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `bus_pass`
--

DROP TABLE IF EXISTS `bus_pass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_pass` (
  `pass_number` int NOT NULL,
  `pass_name` varchar(255) NOT NULL,
  `pass_type` varchar(255) NOT NULL,
  `pass_dur` int NOT NULL,
  `passStart_date` varchar(255) NOT NULL,
  `Pass_amount` int NOT NULL,
  PRIMARY KEY (`pass_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_pass`
--

LOCK TABLES `bus_pass` WRITE;
/*!40000 ALTER TABLE `bus_pass` DISABLE KEYS */;
INSERT INTO `bus_pass` VALUES (1,'Regular','Weekly',7,'2023-03-21',500),(2,'Monthly','Monthly',30,'2023-03-24',500),(3,'Monthly','Student',30,'2023-03-23',500),(4,'Weekely','Regular',7,'2023-03-18',200),(5,'Monthly','Senior',30,'2023-03-25',300);
/*!40000 ALTER TABLE `bus_pass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `rating` varchar(50) DEFAULT NULL,
  `comments` text NOT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'THORAT PRAJYOT AJIT','prajyotthorat161@gmail.com','5','This is good website for report generation'),(2,'Chetan Sanjay Thorat','chetan@gmail.com','4','This is very useful system for pass generation ');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pass_application`
--

DROP TABLE IF EXISTS `pass_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pass_application` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `pass_type` varchar(50) NOT NULL,
  `pass_amount` int NOT NULL,
  `photo` blob NOT NULL,
  `id_proof` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pass_application`
--

LOCK TABLES `pass_application` WRITE;
/*!40000 ALTER TABLE `pass_application` DISABLE KEYS */;
/*!40000 ALTER TABLE `pass_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pass_info`
--

DROP TABLE IF EXISTS `pass_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pass_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `sdate` date DEFAULT NULL,
  `edate` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pass_info`
--

LOCK TABLES `pass_info` WRITE;
/*!40000 ALTER TABLE `pass_info` DISABLE KEYS */;
INSERT INTO `pass_info` VALUES (1,'Chetan Sanjay Thorat',22,'male','Sujay Pg, Akurdi, Pune','chetan@gmail.com','9420168168','quarterly',7,'2023-03-21','2023-03-28',200.00,'Approved'),(3,'Vishal Ashok Thorat',22,'male','Ravet, Pune','vishal@gmail.com','9022500078','half-yearly',1,'2023-03-22','2023-03-23',100.00,'Approved'),(4,'Ganesh Balasaheb Thorat',26,'male','Kothrud, Pune','ganesh@gmail.com','9420168168','monthly',30,'2023-03-23','2023-04-22',500.00,'Approved'),(5,'Omkar Pramod Parkale',21,'male','Akurdi, Pune','omkar@gmail.com','7820990354','Student',30,'2023-03-23','2023-04-23',500.00,'Approved'),(6,'Vishnukant Jadhav',21,'male','Akurdi, Pune','Vishnu@gmail.com','9890429323','Regular',30,'2023-03-23','2023-04-23',800.00,'Approved'),(7,'Vijay Patil',22,'male','Nigadi, Pune','vijay@gmail.com','9284023102','Regular',7,'2023-03-23','2023-03-30',200.00,'Approved'),(8,'Abhishek Patl',22,'male','Ravet, Pune','abhi@gmail.cpm','9284023102','Student',30,'2023-03-23','2023-04-23',500.00,'Approved'),(9,'Anup Parekar',22,'male','Vakad, Pune','Anup@gmail.com','7058460430','Regular',7,'2023-03-23','2023-03-30',200.00,'Approved'),(10,'Swapnil Patil',25,'male','Chinchwad, Pune','swapnil@gmail.com','9890429323','Student',30,'2023-03-23','2023-04-23',500.00,'Rejected'),(11,'Nikhil Bhagawan Thorat',27,'male','Swarget, Pune','nikhi@gmail.com','9307904803','Regular',30,'2023-03-26','2023-04-25',1000.00,'pending'),(12,'Tanmay Sachin More',19,'male','Sinhgad, Pune','tanmay@gmail.com','7834903456','Student',30,'2023-03-26','2023-04-26',500.00,'Approved');
/*!40000 ALTER TABLE `pass_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `pid` int NOT NULL,
  `card_number` varchar(20) NOT NULL,
  `expiration_date` varchar(10) NOT NULL,
  `security_code` varchar(3) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (3,'3243561267','10/26','255','Success');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `routes` (
  `route_name` varchar(50) NOT NULL,
  `origin` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `km` int NOT NULL,
  PRIMARY KEY (`route_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` VALUES ('AkurdiLocal','Akurdi','Pimpri',2),('Kothrud','Pimpri','Kothrud',17),('NigadiRegular','Akurdi','Nigadi',3),('Pune-Chinchwad','Pune','Chinchwad',30),('PuneRegular','Akurdi','Pune',28),('RavetDaily','Akurdi','Ravet',2),('ShiwajiNagarDemo','Akurdi','ShiwajiNagar',6);
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `bus_number` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `departure_time` varchar(255) NOT NULL,
  `arrival_time` varchar(255) NOT NULL,
  PRIMARY KEY (`bus_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES ('1001','AkurdiLocal','01:45','04:48'),('1002','ShiwajiNagarDemo','04:48','05:53'),('1003','Swarget-Karjat','06:33','08:35');
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'prajyotthorat161@gmail.com','Prajyot111','admin'),(2,'abc@gmail.com','pass','Passenger'),(3,'vishal@gmail.com','Vishal111','passenger'),(4,'ganesh@gmail.com','Ganesh111','conductor'),(5,'omkar@gmail.com','Omkar111','passenger');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-16 18:59:30
