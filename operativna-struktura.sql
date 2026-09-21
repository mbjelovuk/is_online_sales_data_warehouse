CREATE DATABASE  IF NOT EXISTS `eprodavnica_operativna` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `eprodavnica_operativna`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: eprodavnica_operativna
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `artikal`
--

DROP TABLE IF EXISTS `artikal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artikal` (
  `IdArt` int NOT NULL AUTO_INCREMENT,
  `Naziv` varchar(45) NOT NULL,
  `Opis` varchar(45) NOT NULL,
  `Cena` int NOT NULL,
  `Popust` int NOT NULL,
  `Kolicina` int NOT NULL,
  `IdKor` int NOT NULL,
  `IdKat` int NOT NULL,
  PRIMARY KEY (`IdArt`),
  KEY `FK_IdKor_artikal_idx` (`IdKor`),
  KEY `FK_IdKat_artikal_idx` (`IdKat`),
  CONSTRAINT `FK_IdKat_artikal` FOREIGN KEY (`IdKat`) REFERENCES `kategorija` (`IdKat`) ON UPDATE CASCADE,
  CONSTRAINT `FK_IdKor_artikal` FOREIGN KEY (`IdKor`) REFERENCES `korisnik` (`IdKor`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artikal`
--

LOCK TABLES `artikal` WRITE;
/*!40000 ALTER TABLE `artikal` DISABLE KEYS */;
/*!40000 ALTER TABLE `artikal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategorija`
--

DROP TABLE IF EXISTS `kategorija`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategorija` (
  `IdKat` int NOT NULL AUTO_INCREMENT,
  `Naziv` varchar(45) NOT NULL,
  PRIMARY KEY (`IdKat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategorija`
--

LOCK TABLES `kategorija` WRITE;
/*!40000 ALTER TABLE `kategorija` DISABLE KEYS */;
/*!40000 ALTER TABLE `kategorija` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `korisnik`
--

DROP TABLE IF EXISTS `korisnik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `korisnik` (
  `IdKor` int NOT NULL AUTO_INCREMENT,
  `Ime` varchar(45) NOT NULL,
  `Prezime` varchar(45) NOT NULL,
  `Mobilni` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Godiste` int NOT NULL,
  `Pol` varchar(45) NOT NULL,
  `IdMes` int NOT NULL,
  PRIMARY KEY (`IdKor`),
  KEY `IdMes_idx` (`IdMes`),
  CONSTRAINT `FK_IdMes_korisnik` FOREIGN KEY (`IdMes`) REFERENCES `mesto` (`IdMes`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `korisnik`
--

LOCK TABLES `korisnik` WRITE;
/*!40000 ALTER TABLE `korisnik` DISABLE KEYS */;
/*!40000 ALTER TABLE `korisnik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `korpa`
--

DROP TABLE IF EXISTS `korpa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `korpa` (
  `IdKorpa` int NOT NULL AUTO_INCREMENT,
  `IdKor` int NOT NULL,
  `IdArt` int NOT NULL,
  `Kolicina` int NOT NULL,
  PRIMARY KEY (`IdKorpa`),
  KEY `FK_IdKor_korpa_idx` (`IdKor`),
  KEY `FK_IdArt_korpa_idx` (`IdArt`),
  CONSTRAINT `FK_IdArt_korpa` FOREIGN KEY (`IdArt`) REFERENCES `artikal` (`IdArt`) ON UPDATE CASCADE,
  CONSTRAINT `FK_IdKor_korpa` FOREIGN KEY (`IdKor`) REFERENCES `korisnik` (`IdKor`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `korpa`
--

LOCK TABLES `korpa` WRITE;
/*!40000 ALTER TABLE `korpa` DISABLE KEYS */;
/*!40000 ALTER TABLE `korpa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesto`
--

DROP TABLE IF EXISTS `mesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mesto` (
  `IdMes` int NOT NULL AUTO_INCREMENT,
  `Mesto` varchar(45) NOT NULL,
  PRIMARY KEY (`IdMes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesto`
--

LOCK TABLES `mesto` WRITE;
/*!40000 ALTER TABLE `mesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `mesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `narudzbina`
--

DROP TABLE IF EXISTS `narudzbina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `narudzbina` (
  `IdNar` int NOT NULL AUTO_INCREMENT,
  `IdKor` int NOT NULL,
  `Datum` date NOT NULL,
  `Vreme` time NOT NULL,
  `Iznos` int NOT NULL,
  PRIMARY KEY (`IdNar`),
  KEY `FK_IdKor_narudzbina_idx` (`IdKor`),
  CONSTRAINT `FK_IdKor_narudzbina` FOREIGN KEY (`IdKor`) REFERENCES `korisnik` (`IdKor`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `narudzbina`
--

LOCK TABLES `narudzbina` WRITE;
/*!40000 ALTER TABLE `narudzbina` DISABLE KEYS */;
/*!40000 ALTER TABLE `narudzbina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recenzija`
--

DROP TABLE IF EXISTS `recenzija`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recenzija` (
  `IdRec` int NOT NULL AUTO_INCREMENT,
  `IdKor` int NOT NULL,
  `IdArt` int NOT NULL,
  `Ocena` varchar(45) NOT NULL,
  `Opis` varchar(45) NOT NULL,
  `Datum` date NOT NULL,
  `Vreme` time NOT NULL,
  PRIMARY KEY (`IdRec`),
  KEY `FK_IdKor_recenzija_idx` (`IdKor`),
  KEY `FK_IdArt_recenzija_idx` (`IdArt`),
  CONSTRAINT `FK_IdArt_recenzija` FOREIGN KEY (`IdArt`) REFERENCES `artikal` (`IdArt`) ON UPDATE CASCADE,
  CONSTRAINT `FK_IdKor_recenzija` FOREIGN KEY (`IdKor`) REFERENCES `korisnik` (`IdKor`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recenzija`
--

LOCK TABLES `recenzija` WRITE;
/*!40000 ALTER TABLE `recenzija` DISABLE KEYS */;
/*!40000 ALTER TABLE `recenzija` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stavka`
--

DROP TABLE IF EXISTS `stavka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stavka` (
  `IdSta` int NOT NULL AUTO_INCREMENT,
  `IdNar` int NOT NULL,
  `IdArt` int NOT NULL,
  `Iznos` int NOT NULL,
  `Kolicina` int NOT NULL,
  PRIMARY KEY (`IdSta`),
  KEY `FK_IdNar_stavka_idx` (`IdNar`),
  KEY `FK_IdArt_stavka_idx` (`IdArt`),
  CONSTRAINT `FK_IdArt_stavka` FOREIGN KEY (`IdArt`) REFERENCES `artikal` (`IdArt`) ON UPDATE CASCADE,
  CONSTRAINT `FK_IdNar_stavka` FOREIGN KEY (`IdNar`) REFERENCES `narudzbina` (`IdNar`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stavka`
--

LOCK TABLES `stavka` WRITE;
/*!40000 ALTER TABLE `stavka` DISABLE KEYS */;
/*!40000 ALTER TABLE `stavka` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-04  1:40:22
