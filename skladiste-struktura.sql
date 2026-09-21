CREATE DATABASE  IF NOT EXISTS `eprodavnica_skladiste` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `eprodavnica_skladiste`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: eprodavnica_skladiste
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
-- Table structure for table `artikal_dim`
--

DROP TABLE IF EXISTS `artikal_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artikal_dim` (
  `IdArt` int NOT NULL,
  `Naziv` varchar(45) NOT NULL,
  `Opis` varchar(45) NOT NULL,
  PRIMARY KEY (`IdArt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artikal_dim`
--

LOCK TABLES `artikal_dim` WRITE;
/*!40000 ALTER TABLE `artikal_dim` DISABLE KEYS */;
/*!40000 ALTER TABLE `artikal_dim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategorija_dim`
--

DROP TABLE IF EXISTS `kategorija_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategorija_dim` (
  `IdKat` int NOT NULL,
  `Naziv` varchar(45) NOT NULL,
  PRIMARY KEY (`IdKat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategorija_dim`
--

LOCK TABLES `kategorija_dim` WRITE;
/*!40000 ALTER TABLE `kategorija_dim` DISABLE KEYS */;
/*!40000 ALTER TABLE `kategorija_dim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kupac_dim`
--

DROP TABLE IF EXISTS `kupac_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kupac_dim` (
  `IdKupac` int NOT NULL,
  `Pol` varchar(45) NOT NULL,
  `Uzrast` int NOT NULL,
  PRIMARY KEY (`IdKupac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kupac_dim`
--

LOCK TABLES `kupac_dim` WRITE;
/*!40000 ALTER TABLE `kupac_dim` DISABLE KEYS */;
/*!40000 ALTER TABLE `kupac_dim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesto_dim`
--

DROP TABLE IF EXISTS `mesto_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mesto_dim` (
  `IdMes` int NOT NULL,
  `Mesto` varchar(45) NOT NULL,
  PRIMARY KEY (`IdMes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesto_dim`
--

LOCK TABLES `mesto_dim` WRITE;
/*!40000 ALTER TABLE `mesto_dim` DISABLE KEYS */;
/*!40000 ALTER TABLE `mesto_dim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poslednje_punjenje`
--

DROP TABLE IF EXISTS `poslednje_punjenje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poslednje_punjenje` (
  `IdPunj` int NOT NULL,
  `DatumVreme` datetime NOT NULL,
  PRIMARY KEY (`IdPunj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poslednje_punjenje`
--

LOCK TABLES `poslednje_punjenje` WRITE;
/*!40000 ALTER TABLE `poslednje_punjenje` DISABLE KEYS */;
INSERT INTO `poslednje_punjenje` VALUES (1,'1970-01-01 00:00:00');
/*!40000 ALTER TABLE `poslednje_punjenje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prodato_fakt`
--

DROP TABLE IF EXISTS `prodato_fakt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prodato_fakt` (
  `IdVre` int NOT NULL,
  `IdKat` int NOT NULL,
  `IdKupac` int NOT NULL,
  `IdProdavac` int NOT NULL,
  `IdMesKupac` int NOT NULL,
  `IdMesProdavac` int NOT NULL,
  `IdArt` int NOT NULL,
  `IznosProdatih` int NOT NULL,
  `UkupanBrojProdatih` int NOT NULL,
  PRIMARY KEY (`IdVre`,`IdKupac`,`IdProdavac`,`IdArt`),
  KEY `FK_artikal_skladiste_idx` (`IdArt`),
  KEY `FK_kategorija_skladiste_idx` (`IdKat`),
  KEY `FK_kupac_skladiste_idx` (`IdKupac`),
  KEY `FK_prodavac_skladiste_idx` (`IdProdavac`),
  KEY `FK_mestokupac_skladiste_idx` (`IdMesKupac`),
  KEY `FK_mestoprodavac_skladiste_idx` (`IdMesProdavac`),
  CONSTRAINT `FK_artikal_prodato` FOREIGN KEY (`IdArt`) REFERENCES `artikal_dim` (`IdArt`) ON UPDATE CASCADE,
  CONSTRAINT `FK_kategorija_prodato` FOREIGN KEY (`IdKat`) REFERENCES `kategorija_dim` (`IdKat`) ON UPDATE CASCADE,
  CONSTRAINT `FK_kupac_prodato` FOREIGN KEY (`IdKupac`) REFERENCES `kupac_dim` (`IdKupac`) ON UPDATE CASCADE,
  CONSTRAINT `FK_mestokupac_prodato` FOREIGN KEY (`IdMesKupac`) REFERENCES `mesto_dim` (`IdMes`) ON UPDATE CASCADE,
  CONSTRAINT `FK_mestoprodavac_prodato` FOREIGN KEY (`IdMesProdavac`) REFERENCES `mesto_dim` (`IdMes`) ON UPDATE CASCADE,
  CONSTRAINT `FK_prodavac_prodato` FOREIGN KEY (`IdProdavac`) REFERENCES `prodavac_dim` (`IdProdavac`) ON UPDATE CASCADE,
  CONSTRAINT `FK_vreme_prodato` FOREIGN KEY (`IdVre`) REFERENCES `vreme_dim` (`IdVre`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodato_fakt`
--

LOCK TABLES `prodato_fakt` WRITE;
/*!40000 ALTER TABLE `prodato_fakt` DISABLE KEYS */;
/*!40000 ALTER TABLE `prodato_fakt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prodavac_dim`
--

DROP TABLE IF EXISTS `prodavac_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prodavac_dim` (
  `IdProdavac` int NOT NULL,
  `Pol` varchar(45) NOT NULL,
  `Uzrast` int NOT NULL,
  PRIMARY KEY (`IdProdavac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodavac_dim`
--

LOCK TABLES `prodavac_dim` WRITE;
/*!40000 ALTER TABLE `prodavac_dim` DISABLE KEYS */;
/*!40000 ALTER TABLE `prodavac_dim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recenzije_fakt`
--

DROP TABLE IF EXISTS `recenzije_fakt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recenzije_fakt` (
  `IdVre` int NOT NULL,
  `IdArt` int NOT NULL,
  `IdKupac` int NOT NULL,
  `IdKat` int NOT NULL,
  `IdProdavac` int NOT NULL,
  `IdMesKupac` int NOT NULL,
  `IdMesProdavac` int NOT NULL,
  `UkupanBrojRecenzija` int NOT NULL,
  `ProsecnaOcena` decimal(4,2) NOT NULL,
  PRIMARY KEY (`IdVre`,`IdArt`,`IdKupac`,`IdProdavac`),
  KEY `FK_artikal_recenzije_idx` (`IdArt`),
  KEY `FK_kupac_recenzije_idx` (`IdKupac`),
  KEY `FK_prodavac_recenzije_idx` (`IdProdavac`),
  KEY `FK_mestokupac_recenzije_idx` (`IdMesKupac`),
  KEY `FK_mestoprodavac_recenzije_idx` (`IdMesProdavac`),
  KEY `FK_kat_recenzije_idx` (`IdKat`),
  CONSTRAINT `FK_artikal_recenzije` FOREIGN KEY (`IdArt`) REFERENCES `artikal_dim` (`IdArt`) ON UPDATE CASCADE,
  CONSTRAINT `FK_kat_recenzije` FOREIGN KEY (`IdKat`) REFERENCES `kategorija_dim` (`IdKat`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_kupac_recenzije` FOREIGN KEY (`IdKupac`) REFERENCES `kupac_dim` (`IdKupac`) ON UPDATE CASCADE,
  CONSTRAINT `FK_mestokupac_recenzije` FOREIGN KEY (`IdMesKupac`) REFERENCES `mesto_dim` (`IdMes`) ON UPDATE CASCADE,
  CONSTRAINT `FK_mestoprodavac_recenzije` FOREIGN KEY (`IdMesProdavac`) REFERENCES `mesto_dim` (`IdMes`) ON UPDATE CASCADE,
  CONSTRAINT `FK_prodavac_recenzije` FOREIGN KEY (`IdProdavac`) REFERENCES `prodavac_dim` (`IdProdavac`) ON UPDATE CASCADE,
  CONSTRAINT `FK_vreme_recenzije` FOREIGN KEY (`IdVre`) REFERENCES `vreme_dim` (`IdVre`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recenzije_fakt`
--

LOCK TABLES `recenzije_fakt` WRITE;
/*!40000 ALTER TABLE `recenzije_fakt` DISABLE KEYS */;
/*!40000 ALTER TABLE `recenzije_fakt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vreme_dim`
--

DROP TABLE IF EXISTS `vreme_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vreme_dim` (
  `IdVre` int NOT NULL AUTO_INCREMENT,
  `Datum` date NOT NULL,
  `Vreme` time NOT NULL,
  `Godina` int GENERATED ALWAYS AS (year(`Datum`)) STORED,
  `Mesec` int GENERATED ALWAYS AS (month(`Datum`)) STORED,
  `Dan` int GENERATED ALWAYS AS (dayofmonth(`Datum`)) STORED,
  PRIMARY KEY (`IdVre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vreme_dim`
--

LOCK TABLES `vreme_dim` WRITE;
/*!40000 ALTER TABLE `vreme_dim` DISABLE KEYS */;
/*!40000 ALTER TABLE `vreme_dim` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-25  2:08:16
