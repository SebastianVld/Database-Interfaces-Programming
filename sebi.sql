CREATE DATABASE  IF NOT EXISTS `sebi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sebi`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: sebi
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `asociere`
--

DROP TABLE IF EXISTS `asociere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asociere` (
  `id_asociere` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_melodie` bigint unsigned DEFAULT NULL,
  `id_muzician` bigint unsigned DEFAULT NULL,
  `an_asociere` int DEFAULT NULL,
  `compozitor` varchar(45) DEFAULT NULL,
  `producator` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_asociere`),
  KEY `fk_asociere_1_idx` (`id_melodie`),
  KEY `fk_asociere_2_idx` (`id_muzician`),
  CONSTRAINT `fk_asociere_1` FOREIGN KEY (`id_melodie`) REFERENCES `melodie` (`id_melodie`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_asociere_2` FOREIGN KEY (`id_muzician`) REFERENCES `muzician` (`id_muzician`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asociere`
--

LOCK TABLES `asociere` WRITE;
/*!40000 ALTER TABLE `asociere` DISABLE KEYS */;
INSERT INTO `asociere` VALUES (31,16,32,2017,'Luis Fonsi, Daddy Yankee','Mauricio Rengifo'),(32,15,31,2016,'Ed Sheeran','Ed Sheeran'),(33,15,31,2017,'Luis Fonsi, Daddy Yankee','Mauricio Rengifo');
/*!40000 ALTER TABLE `asociere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `melodie`
--

DROP TABLE IF EXISTS `melodie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `melodie` (
  `id_melodie` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nume_melodie` varchar(45) DEFAULT NULL,
  `durata` float DEFAULT NULL,
  `an_aparitie` int DEFAULT NULL,
  PRIMARY KEY (`id_melodie`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `melodie`
--

LOCK TABLES `melodie` WRITE;
/*!40000 ALTER TABLE `melodie` DISABLE KEYS */;
INSERT INTO `melodie` VALUES (15,'Shape of You',263,2017),(16,'Despacito',281,2017);
/*!40000 ALTER TABLE `melodie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muzician`
--

DROP TABLE IF EXISTS `muzician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `muzician` (
  `id_muzician` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nume` varchar(45) DEFAULT NULL,
  `prenume` varchar(45) DEFAULT NULL,
  `data_nasterii` date DEFAULT NULL,
  `nr_melodii` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id_muzician`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muzician`
--

LOCK TABLES `muzician` WRITE;
/*!40000 ALTER TABLE `muzician` DISABLE KEYS */;
INSERT INTO `muzician` VALUES (31,'Ed','Sheeran','1991-02-17',45),(32,'Luis','Fonsi','1978-04-15',38),(33,'Daddy','Yankee','1977-02-03',96);
/*!40000 ALTER TABLE `muzician` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-05  8:55:13
