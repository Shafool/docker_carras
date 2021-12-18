-- MySQL dump 10.19  Distrib 10.3.31-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db_mype
-- ------------------------------------------------------
-- Server version	10.3.31-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Personal`
--

DROP TABLE IF EXISTS `Personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Personal` (
  `id` int(4) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `unidad` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personal`
--

LOCK TABLES `Personal` WRITE;
/*!40000 ALTER TABLE `Personal` DISABLE KEYS */;
INSERT INTO `Personal` VALUES (1,'Gte. Julian Carrasco Gonzales','rrhh'),(2,'Supervisor. Alessandro Albarracin Cuadros','rrhh'),(3,'Trabajador Vladimir Putin Pacuri','rrhh'),(4,'Supervisora Dagina Miranda Bolanios','finanzas'),(5,'Trabajador Edwin Banda Ardiles','finanzas'),(6,'Trabajadora Velia Molero Rivas','finanzas'),(7,'Supervisor Ramiro Acurio Mora','logistica'),(8,'Trabajador Gian Orcotoma Mormontoy','logistica'),(9,'Trabajador Christian Cuba del Campo','logistica');
/*!40000 ALTER TABLE `Personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpersonal`
--

DROP TABLE IF EXISTS `tpersonal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tpersonal` (
  `idTrabajador` int(4) DEFAULT NULL,
  `apPaterno` varchar(200) DEFAULT NULL,
  `Nombre` varchar(200) DEFAULT NULL,
  `Unidad` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpersonal`
--

LOCK TABLES `tpersonal` WRITE;
/*!40000 ALTER TABLE `tpersonal` DISABLE KEYS */;
INSERT INTO `tpersonal` VALUES (1,'Carrasco','Juian','rrhh'),(2,'Albarracin','William','rrhh'),(3,'Putin','Vladimir','rrhh'),(4,'Miranda','Dagina','finanzas'),(5,'Ardiles','Edwin','finanzas'),(6,'Rivas','Max','finanzas'),(7,'Mora','Ramiro','logistica'),(8,'Zuckerberg','Bill','logistica'),(9,'Gates','Steve','logistica');
/*!40000 ALTER TABLE `tpersonal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-17 19:47:06
