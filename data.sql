-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: servidor_grifo
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int DEFAULT NULL,
  `descripcion` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` int NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9087FEF9DB38439E` (`usuario_id`),
  CONSTRAINT `FK_9087FEF9DB38439E` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` VALUES (1,1,'Creo g89 con precio  S/. 11 ',1,'2021-03-12 18:57:02'),(2,1,'Se actualizo G84 con precio  S/. 12.7 a S/. 12.7 ',1,'2021-03-12 19:04:53'),(3,1,'Elimino  el combustible g89',1,'2021-03-12 19:07:10'),(4,1,'Se actualizo G90 con precio  S/. 13 a S/. 13 ',1,'2021-03-12 19:17:39'),(5,1,'Creo g89 con precio  S/. 15 ',1,'2021-03-12 19:18:03'),(6,1,'Elimino  el combustible g89',1,'2021-03-12 19:18:09'),(7,1,'Se actualizo Diesel con precio  S/. 11.7 a S/. 11.7 ',1,'2021-03-15 12:56:06'),(8,1,'Creo VALE DE CONTROL con Idenficador VC Serie  00 Numero 000001',5,'2021-03-15 13:48:14'),(9,1,'Cambio los datos de FACTURA con Identificador VC Serie  00 Numero 000001Por FACTURA con Identificador VC Serie  00 Numero 000001',5,'2021-03-15 13:54:55'),(10,1,'Cambio los datos de FACTURA con Identificador VC Serie  00 Numero 000001Por FACTURA con Identificador VC Serie  00 Numero 000001',5,'2021-03-15 13:55:21'),(11,1,'Creo BOLETA DE VENTA con Identificador BA Serie  00 Numero 000001',5,'2021-03-15 13:56:17'),(12,1,'Creo g89 con precio  S/. 12.9 ',1,'2021-03-15 14:58:11'),(13,1,'Creo g891 con precio  S/. 12.5 ',1,'2021-03-15 14:58:38'),(14,1,'Elimino  el combustible g89',1,'2021-03-15 15:01:40'),(15,1,'Elimino  el combustible g891',1,'2021-03-15 15:01:43'),(16,1,'Se modifico los datos: \n Documento: 20100190797 Razón social : LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A. \n Direccion: AV. REPUBLICA DE PANAMA NRO. 2461 URB.  SANTA CATALINA  (ENTRE VIA EXPRESA Y REPUBLICA DE PANAMA) LIMA-LIMA-LA VICTORIA \n Crédito NO \nPOR  Documento: 20100190797  Razón Social: LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A. \n Dirección: AV. REPUBLICA DE PANAMA NRO. 2461 URB.  SANTA CATALINA  (ENTRE VIA EXPRESA Y REPUBLICA DE PANAMA) LIMA-LIMA-LA VICTORIA  \n Crédito: NO ',6,'2021-03-22 13:26:26'),(17,1,'Se modifico los datos: \n Documento: 29643751 Cliente : FRANCISCO VISA JARITA  \n Crédito SI \nPOR  Documento: 29643751 Cliente : FRANCISCO VISA JARITA  \n Crédito SI \n',7,'2021-03-22 13:27:14'),(18,1,'Le quito  el crédito al cliente  LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A. ',6,'2021-03-22 14:38:36'),(19,1,'Le aperturo  el crédito al cliente  LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A. ',6,'2021-03-22 14:38:45'),(20,1,'Le quito  el crédito al cliente  FRANCISCO VISA JARITA ',7,'2021-03-22 15:36:23'),(21,1,'Le aperturo  el crédito al cliente  FRANCISCO VISA JARITA ',7,'2021-03-22 15:36:31'),(22,1,'Le quito  el crédito al cliente  FRANCISCO VISA JARITA ',7,'2021-03-22 15:36:34'),(23,1,'Le aperturo  el crédito al cliente  FRANCISCO VISA JARITA ',7,'2021-03-22 15:57:17'),(24,1,'Le quito  el crédito al cliente  FRANCISCO VISA JARITA ',7,'2021-03-22 15:57:20'),(25,1,'Se actualizo Diesel con precio  S/. 11.7 a S/. 11.7 ',1,'2021-03-24 11:36:09'),(26,1,'Elimino el descuento de G84 a 12.6 al cliente LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A.',6,'2021-03-24 12:14:47'),(27,1,'Agrego el descuento de G84 a 11 al cliente LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A.',6,'2021-03-24 12:14:55'),(28,1,'Creo FACTURA DE CREDITO con Identificador FC Serie  00 Numero 000001',5,'2021-03-29 10:54:49'),(29,1,'Cambio los datos de FACTURA con Identificador FA Serie  00 Numero 000001 Por FACTURA con Identificador FA Serie  00 Numero 000001',5,'2021-03-29 10:55:05'),(30,1,'Creo BOLETA DE VENTA CREDITO con Identificador BC Serie  00 Numero 000001',5,'2021-03-29 10:55:21'),(31,1,'Creo VALE DE CONTROL con Identificador VP Serie  00 Numero 000001',5,'2021-03-29 10:55:46'),(32,1,'Creo VALE DE CREDITO con Identificador VC Serie  00 Numero 000001',5,'2021-03-29 10:55:57'),(33,1,'Le aperturo  el crédito al cliente  ESCOMAPE EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA ',6,'2021-04-05 16:48:44'),(34,1,'Le quito  el crédito al cliente  ESCOMAPE EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA ',6,'2021-04-05 16:48:48'),(35,1,'Agrego el descuento de G84 a 10 al cliente ESCOMAPE EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA',6,'2021-04-05 16:53:20'),(36,1,'Creo la isla A',10,'2021-04-12 11:32:03'),(37,1,'Creo la isla ISLA 2',10,'2021-04-12 11:32:16'),(38,1,'Creo la isla ISLA A',10,'2021-04-12 11:44:49'),(39,1,'Creo la isla ISLA B',10,'2021-04-12 11:44:55'),(40,1,'Elimino  la Isla A',10,'2021-04-12 11:50:59'),(41,1,'Elimino  la Isla ISLA 2',10,'2021-04-12 11:51:06'),(42,1,'Se actualizo isla ISLA A-1 a  ISLA A-1 ',10,'2021-04-12 11:53:05'),(43,1,'Se actualizo isla ISLA A a  ISLA A ',10,'2021-04-12 11:53:20'),(44,1,'Se Agrego un surtidor de Gasohol 90 a la isla ISLA A lectura lado A: 11855.93 lectura lado B 11660.5',10,'2021-04-12 13:51:32'),(45,1,'Se Agrego un surtidor de Gasohol 84 a la isla ISLA A lectura lado A: 1205.57 lectura lado B 1164.9',10,'2021-04-12 13:59:36'),(46,1,'Se Agrego un surtidor de Gasohol 90 a la isla ISLA A lectura lado A: 11855.93 lectura lado B 11660.5',10,'2021-04-12 13:59:55'),(47,1,'Se Agrego un surtidor de Gasohol 90 a la isla ISLA B lectura lado A: 17426.25 lectura lado B 17431.55',10,'2021-04-12 14:12:54'),(48,1,'Se Agrego un surtidor de Petroleo a la isla ISLA A lectura lado A: 28003.86 lectura lado B 29344.43',10,'2021-04-12 14:13:12'),(49,1,'Se Agrego un surtidor de Petroleo a la isla ISLA B lectura lado A: 34392.5 lectura lado B 33230.16',10,'2021-04-12 14:14:16'),(50,1,'Se módifico un surtidor de Petroleo a la isla ISLA A lectura lado A: 28003.86 lectura lado B 29344.44 a lectura lado A 28003.86 lectura lado  B 29344.44',10,'2021-04-12 15:27:50'),(51,1,'Se elimino un surtidor de Gasohol 84 a la isla ISLA A lectura lado A: 1205.57 lectura lado B 1164.9',10,'2021-04-12 15:47:39'),(52,1,'Se actualizo isla ISLA 1 a  ISLA 1 ',10,'2021-04-18 00:08:36'),(53,1,'Se actualizo isla ISLA 2 a  ISLA 2 ',10,'2021-04-18 00:08:43'),(54,1,'Se módifico un surtidor de Gasohol 90 a la isla ISLA 1 lectura lado A: 11972.83 lectura lado B 11778.62 a lectura lado A 11972.83 lectura lado  B 11778.62',10,'2021-04-18 00:09:02'),(55,1,'Se módifico un surtidor de Petroleo a la isla ISLA 1 lectura lado A: 28420.56 lectura lado B 29697.69 a lectura lado A 28420.56 lectura lado  B 29697.69',10,'2021-04-18 00:09:14'),(56,1,'Se módifico un surtidor de Gasohol 90 a la isla ISLA 2 lectura lado A: 17616.82 lectura lado B 17541.89 a lectura lado A 17616.82 lectura lado  B 17541.89',10,'2021-04-18 00:09:27'),(57,1,'Se módifico un surtidor de Petroleo a la isla ISLA 2 lectura lado A: 34678.84 lectura lado B 33478.31 a lectura lado A 34678.84 lectura lado  B 33478.31',10,'2021-04-18 00:09:41'),(58,1,'Elimino el descuento de G84 a S/. 11 al cliente LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A.',6,'2021-04-18 01:10:00'),(59,1,'Elimino el descuento de Diesel a S/. 11.5 al cliente LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A.',6,'2021-04-18 01:10:01'),(60,1,'Elimino el descuento de G90 a S/. 12.9 al cliente LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A.',6,'2021-04-18 01:10:03'),(61,1,'Agrego el descuento de G90 a 12.2 al cliente LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A.',6,'2021-04-18 01:10:30'),(62,1,'Elimino el descuento de G90 a S/. 12.2 al cliente LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A.',6,'2021-04-18 01:10:35'),(63,1,'Agrego el descuento de G90 a 12.9 al cliente LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A.',6,'2021-04-18 01:10:47'),(64,1,'Creo CODIGO NO IDENTIFICADO con Identificador RE Serie  01 Numero 000001',5,'2021-04-29 02:29:08'),(65,1,'Se actualizo G84 con precio  S/. 15 a S/. 15 ',1,'2021-04-29 04:47:14'),(66,1,'Se actualizo G90 con precio  S/. 16 a S/. 16 ',1,'2021-04-29 04:47:18'),(67,1,'Se actualizo Diesel con precio  S/. 17 a S/. 17 ',1,'2021-04-29 04:47:25'),(68,1,'Se actualizo G90 con precio  S/. 18 a S/. 18 ',1,'2021-04-29 04:49:25'),(69,1,'Se modifico los datos: \n Documento: 20100190797 Razón social : LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A. \n Direccion: AV. REPUBLICA DE PANAMA NRO. 2461 URB.  SANTA CATALINA  (ENTRE VIA EXPRESA Y REPUBLICA DE PANAMA) LIMA-LIMA-LA VICTORIA \n Crédito NO \nPOR  Documento: 20100190797  Razón Social: LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A. \n Dirección: AV. REPUBLICA DE PANAMA NRO. 2461 URB.  SANTA CATALINA  (ENTRE VIA EXPRESA Y REPUBLICA DE PANAMA) LIMA-LIMA-LA VICTORIA  \n Crédito: NO ',6,'2021-05-27 04:13:42'),(70,1,'Se actualizo G90 con precio  S/. 17 a S/. 17 ',1,'2021-05-27 04:14:53'),(71,1,'Le aperturo  el crédito al cliente  LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A. ',6,'2021-05-27 04:18:33'),(72,1,'Le quito  el crédito al cliente  LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A. ',6,'2021-05-27 04:21:34'),(73,1,'Le aperturo  el crédito al cliente  LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A. ',6,'2021-05-27 04:21:36'),(74,1,'Le quito  el crédito al cliente  LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A. ',6,'2021-05-27 04:23:58'),(75,1,'Le aperturo  el crédito al cliente  LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A. ',6,'2021-05-27 04:23:59'),(76,1,'Le quito  el crédito al cliente  LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A. ',6,'2021-05-27 04:24:36'),(77,1,'Le aperturo  el crédito al cliente  LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A. ',6,'2021-05-27 04:24:37'),(78,1,'Le quito  el crédito al cliente  LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A. ',6,'2021-05-27 04:44:34'),(79,1,'Le aperturo  el crédito al cliente  LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A. ',6,'2021-05-27 04:44:49'),(80,1,'Le quito  el crédito al cliente  LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A. ',6,'2021-05-27 04:44:52'),(81,1,'Agrego el descuento de G90 a 12 al cliente LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A.',6,'2021-05-27 04:45:01'),(82,1,'Agrego el descuento de G84 a 12 al cliente LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A.',6,'2021-05-27 04:52:58'),(83,1,'Se actualizo G90 con precio  S/. 13.5 a S/. 13.5 ',1,'2021-05-27 05:26:53'),(84,1,'Se actualizo Diesel con precio  S/. 12.8 a S/. 12.8 ',1,'2021-05-27 05:28:25'),(85,1,'Le aperturo  el crédito al cliente  LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A. ',6,'2021-05-27 05:29:29'),(86,1,'Elimino el descuento de G84 a S/. 12 al cliente LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A.',6,'2021-05-27 05:30:11'),(87,1,'Agrego el descuento de Diesel a 12.9 al cliente LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A.',6,'2021-05-27 05:30:39'),(88,1,'Se modifico los datos: \n Documento: 20100190797 Razón social : LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A. \n Direccion: AV. REPUBLICA DE PANAMA NRO. 2461 URB.  SANTA CATALINA  (ENTRE VIA EXPRESA Y REPUBLICA DE PANAMA) LIMA-LIMA-LA VICTORIA \n Crédito SI \nPOR  Documento: 20100190797  Razón Social: LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A. \n Dirección: AV. REPUBLICA DE PANAMA NRO. 2461 URB.  SANTA CATALINA  (ENTRE VIA EXPRESA Y REPUBLICA DE PANAMA) LIMA-LIMA-LA VICTORIA  \n Crédito: SI ',6,'2021-05-27 05:31:58');
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caja`
--

DROP TABLE IF EXISTS `caja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caja` (
  `id` int NOT NULL AUTO_INCREMENT,
  `grifero_id` int DEFAULT NULL,
  `supervisor_id` int DEFAULT NULL,
  `fecha_apertura` datetime NOT NULL,
  `fecha_clausura` datetime DEFAULT NULL,
  `total_egresos` decimal(10,4) NOT NULL,
  `total_ingresos` decimal(10,4) NOT NULL,
  `total_creditos` decimal(10,4) NOT NULL,
  `total_descuentos` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `total_pagos_adelantados` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `total_reintegro_serafinado` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `monto_total` decimal(10,4) NOT NULL,
  `estado` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sincronizado` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDX_E465F4058488852` (`grifero_id`),
  KEY `IDX_E465F40519E9AC5F` (`supervisor_id`),
  CONSTRAINT `FK_E465F40519E9AC5F` FOREIGN KEY (`supervisor_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_E465F4058488852` FOREIGN KEY (`grifero_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caja`
--

LOCK TABLES `caja` WRITE;
/*!40000 ALTER TABLE `caja` DISABLE KEYS */;
INSERT INTO `caja` VALUES (4,1,NULL,'2021-04-22 00:10:14','2021-04-22 00:23:43',0.0000,1026.5000,150.0000,1.0000,0.0000,0.0000,1026.5000,'cerrado',NULL,0),(5,1,NULL,'2021-04-22 00:23:54','2021-04-29 02:38:07',145.0000,655.1500,429.0000,2.0000,200.0000,0.0000,510.1500,'abierto',NULL,0);
/*!40000 ALTER TABLE `caja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caja_lectura`
--

DROP TABLE IF EXISTS `caja_lectura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caja_lectura` (
  `id` int NOT NULL AUTO_INCREMENT,
  `combustible_id` int NOT NULL,
  `turno_id` int NOT NULL,
  `isla_id` int NOT NULL,
  `lectura_a` double NOT NULL,
  `lectura_b` double NOT NULL,
  `lectura_a_fin` double DEFAULT NULL,
  `lectura_b_fin` double DEFAULT NULL,
  `galones_a` decimal(10,2) DEFAULT NULL,
  `total_a` decimal(10,2) DEFAULT NULL,
  `galones_b` decimal(10,2) DEFAULT NULL,
  `total_b` decimal(10,2) DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_EFFEB374D5BD96DF` (`combustible_id`),
  KEY `IDX_EFFEB37469C5211E` (`turno_id`),
  KEY `IDX_EFFEB37448ACBF2F` (`isla_id`),
  CONSTRAINT `FK_EFFEB37448ACBF2F` FOREIGN KEY (`isla_id`) REFERENCES `isla` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_EFFEB37469C5211E` FOREIGN KEY (`turno_id`) REFERENCES `caja` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_EFFEB374D5BD96DF` FOREIGN KEY (`combustible_id`) REFERENCES `combustible` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caja_lectura`
--

LOCK TABLES `caja_lectura` WRITE;
/*!40000 ALTER TABLE `caja_lectura` DISABLE KEYS */;
INSERT INTO `caja_lectura` VALUES (13,5,4,3,11972.83,11778.62,11980.83,11800.62,8.00,104.00,22.00,286.00,13.00),(14,6,4,3,28420.56,29697.69,28430.56,29700.69,10.00,117.00,3.00,35.10,11.70),(15,5,4,4,17616.82,17541.89,17620.82,17548.89,4.00,52.00,7.00,91.00,13.00),(16,6,4,4,34678.84,33478.31,34698.84,33500.31,20.00,234.00,22.00,257.40,11.70),(17,5,5,3,11980.83,11800.62,11999,11821,18.17,236.21,20.38,264.94,13.00),(18,6,5,3,28430.56,29700.69,28450.56,29720.69,20.00,234.00,20.00,234.00,11.70),(19,5,5,4,17620.82,17548.89,17620.82,17558.89,0.00,0.00,10.00,130.00,13.00),(20,6,5,4,34698.84,33500.31,34698.84,33510.31,0.00,0.00,10.00,117.00,11.70);
/*!40000 ALTER TABLE `caja_lectura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `apellido_paterno` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_materno` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombres` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `razon_social` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `direccion` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tipo_documento` int NOT NULL,
  `documento` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saldo_contable` decimal(10,2) NOT NULL,
  `celular` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credito` tinyint(1) DEFAULT '0',
  `sincronizado` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F41C9B2554DF9189B6B12EC7` (`tipo_documento`,`documento`),
  KEY `IDX_F41C9B256E84461B688DBB15C939DA67` (`apellido_paterno`,`apellido_materno`,`nombres`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (16,'EMPRESA','EMPRESA','EMPRESA','LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A.','AV. REPUBLICA DE PANAMA NRO. 2461 URB.  SANTA CATALINA  (ENTRE VIA EXPRESA Y REPUBLICA DE PANAMA) LIMA-LIMA-LA VICTORIA',6,'20100190797',600.00,NULL,1,1),(17,'EMPRESA','EMPRESA','EMPRESA','ESCOMAPE EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA','AV. INDEPENDENCIA NRO. 901 URB.  MUNICIPAL AREQUIPA-AREQUIPA-AREQUIPA',6,'20539606183',0.00,NULL,0,1),(18,'EMPRESA','EMPRESA','EMPRESA','SERVICENTRO Y MULTISERVICIOS GRIFO ZAMACOLA SOC. COM. DE RESP. LIMITADA - GRIFO ZAMACOLA S.R.L.','AV. IDELFONSO LOPEZ MZA. B1 LOTE. 11 P.T. ZAMACOLA  (ESQUINA AV. IDELFONSO CON CALLE AMAZONAS) AREQUIPA-AREQUIPA-CERRO COLORADO',6,'20600682688',0.00,NULL,0,1),(19,'VISA','JARITA','FRANCISCO',NULL,NULL,1,'29643751',0.00,NULL,0,1),(20,'VISA','FLORES','ALBERTO',NULL,NULL,1,'76696881',0.00,NULL,0,1),(21,'EMPRESA','EMPRESA','EMPRESA','VISA FLORES ALBERTO','- --',6,'10766968819',0.00,NULL,0,1),(22,'EMPRESA','EMPRESA','EMPRESA','EMPRESA DE TRANSPORTE TURNEE S.R.L.','AV. SIGLO XX LA GRAN VIA OFICINA 322 NRO. 120 AREQUIPA-AREQUIPA-AREQUIPA',6,'20455935173',0.00,NULL,0,1),(24,'EMPRESA','EMPRESA','EMPRESA','UNIVERSIDAD TECNOLOGICA DEL PERU S.A.C. O UTP S.A.C.','CAL.NATALIO SANCHEZ NRO. 125 URB.  SANTA BEATRIZ LIMA-LIMA-LIMA',6,'20462509236',0.00,NULL,0,1),(26,'EMPRESA','EMPRESA','EMPRESA','UNIVERSIDAD CESAR VALLEJO S.A.C.','AV. LARCO NRO. 1770 URB.  SAN ANDRES 5TA ETAPA LA LIBERTAD-TRUJILLO-VICTOR LARCO HERRERA',6,'20164113532',0.00,NULL,0,1),(27,'EMPRESA','EMPRESA','EMPRESA','OR MAQUINARIAS S.A.C.','AV. ASTURIAS NRO. 315 URB.  MAYORAZGO LIMA-LIMA-ATE',6,'20521937531',0.00,NULL,0,1);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_combustible`
--

DROP TABLE IF EXISTS `cliente_combustible`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_combustible` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int NOT NULL,
  `combustible_id` int NOT NULL,
  `precio` decimal(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A97794BCDE734E51` (`cliente_id`),
  KEY `IDX_A97794BCD5BD96DF` (`combustible_id`),
  CONSTRAINT `FK_A97794BCD5BD96DF` FOREIGN KEY (`combustible_id`) REFERENCES `combustible` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A97794BCDE734E51` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_combustible`
--

LOCK TABLES `cliente_combustible` WRITE;
/*!40000 ALTER TABLE `cliente_combustible` DISABLE KEYS */;
INSERT INTO `cliente_combustible` VALUES (10,16,6,12.9000);
/*!40000 ALTER TABLE `cliente_combustible` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combustible`
--

DROP TABLE IF EXISTS `combustible`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `combustible` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` decimal(10,4) NOT NULL,
  `link` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codigo_producto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sincronizado` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combustible`
--

LOCK TABLES `combustible` WRITE;
/*!40000 ALTER TABLE `combustible` DISABLE KEYS */;
INSERT INTO `combustible` VALUES (4,'Gasohol 84','G84',15.0000,'84-604bd521bac59.png','1111',1),(5,'Gasohol 90','G90',13.5000,'90-604bd685cfc42.png','2222',1),(6,'Petroleo','Diesel',12.8000,'DIESEL-605b5c690e257.png','3333',1);
/*!40000 ALTER TABLE `combustible` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprobante_electronico`
--

DROP TABLE IF EXISTS `comprobante_electronico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comprobante_electronico` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numero_comprobante` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persona` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `observacion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `documento_identidad` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_documento` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monto_gravado` decimal(10,2) NOT NULL,
  `igv` decimal(10,2) NOT NULL,
  `monto_total` decimal(10,2) NOT NULL,
  `total_descuentos` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `fecha_emision` date NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `emisor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo_local` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` int NOT NULL,
  `codigo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `respuesta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `turno_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5DDDF0641A61E14D702D1D47D805D9E5` (`numero_comprobante`,`tipo`,`codigo_local`),
  KEY `IDX_5DDDF06469C5211E` (`turno_id`),
  CONSTRAINT `FK_5DDDF06469C5211E` FOREIGN KEY (`turno_id`) REFERENCES `caja` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprobante_electronico`
--

LOCK TABLES `comprobante_electronico` WRITE;
/*!40000 ALTER TABLE `comprobante_electronico` DISABLE KEYS */;
INSERT INTO `comprobante_electronico` VALUES (103,'FA00-000020','LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A.','','20100190797','6','AV. REPUBLICA DE PANAMA NRO. 2461 URB.  SANTA CATALINA  (ENTRE VIA EXPRESA Y REPUBLICA DE PANAMA) LIMA-LIMA-LA VICTORIA',109.32,19.68,129.00,1.0000,'2021-04-22','2021-04-22 00:12:53','ALBERTO VISA FLORES','1',1,NULL,NULL,NULL,NULL,NULL,4),(104,'BA00-000038','VARIOS VARIOS VARIOS','','0','0','',342.37,61.63,404.00,0.0000,'2021-04-22','2021-04-22 00:18:38','ALBERTO VISA FLORES','1',3,NULL,NULL,NULL,NULL,NULL,4),(105,'BA00-000039','VARIOS VARIOS VARIOS','','0','0','',254.24,45.76,300.00,0.0000,'2021-04-22','2021-04-22 00:19:06','ALBERTO VISA FLORES','1',3,NULL,NULL,NULL,NULL,NULL,4),(106,'FC00-000019','LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A.','','20100190797','6','AV. REPUBLICA DE PANAMA NRO. 2461 URB.  SANTA CATALINA  (ENTRE VIA EXPRESA Y REPUBLICA DE PANAMA) LIMA-LIMA-LA VICTORIA',127.12,22.88,150.00,0.0000,'2021-04-22','2021-04-22 00:19:27','ALBERTO VISA FLORES','1',2,NULL,NULL,NULL,NULL,NULL,4),(107,'BA00-000040','VARIOS VARIOS VARIOS','','0','0','',163.98,29.52,193.50,0.0000,'2021-04-22','2021-04-22 00:20:20','ALBERTO VISA FLORES','1',3,NULL,NULL,NULL,NULL,NULL,4),(108,'FA00-000021','LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A.','','20100190797','6','AV. REPUBLICA DE PANAMA NRO. 2461 URB.  SANTA CATALINA  (ENTRE VIA EXPRESA Y REPUBLICA DE PANAMA) LIMA-LIMA-LA VICTORIA',109.32,19.68,129.00,1.0000,'2021-04-22','2021-04-22 00:25:24','ALBERTO VISA FLORES','1',1,NULL,NULL,NULL,NULL,NULL,5),(109,'VC00-000005','LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A.','','20100190797','6','AV. REPUBLICA DE PANAMA NRO. 2461 URB.  SANTA CATALINA  (ENTRE VIA EXPRESA Y REPUBLICA DE PANAMA) LIMA-LIMA-LA VICTORIA',254.24,45.76,300.00,0.0000,'2021-04-22','2021-04-22 00:25:39','ALBERTO VISA FLORES','1',5,NULL,NULL,NULL,NULL,NULL,5),(110,'BA00-000041','VARIOS VARIOS VARIOS','','0','0','',303.52,54.63,358.15,0.0000,'2021-04-22','2021-04-22 00:29:15','ALBERTO VISA FLORES','1',3,NULL,NULL,NULL,NULL,NULL,5),(111,'BA00-000042','VARIOS VARIOS VARIOS','','0','0','',142.37,25.63,168.00,0.0000,'2021-04-22','2021-04-22 00:29:57','ALBERTO VISA FLORES','1',3,NULL,NULL,NULL,NULL,NULL,5),(112,'VP00-000009','LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A.','','20100190797','6','AV. REPUBLICA DE PANAMA NRO. 2461 URB.  SANTA CATALINA  (ENTRE VIA EXPRESA Y REPUBLICA DE PANAMA) LIMA-LIMA-LA VICTORIA',99.15,17.85,117.00,0.0000,'2021-04-22','2021-04-22 00:55:31','ALBERTO VISA FLORES','1',6,NULL,NULL,NULL,NULL,NULL,5),(113,'VC00-000006','LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A.','AXB-50','20100190797','6','AV. REPUBLICA DE PANAMA NRO. 2461 URB.  SANTA CATALINA  (ENTRE VIA EXPRESA Y REPUBLICA DE PANAMA) LIMA-LIMA-LA VICTORIA',109.32,19.68,129.00,1.0000,'2021-04-22','2021-04-22 00:58:58','ALBERTO VISA FLORES','1',5,NULL,NULL,NULL,NULL,NULL,5),(114,'VP00-000010','LECHE GLORIA SOCIEDAD ANONIMA - GLORIA S.A.','','20100190797','6','AV. REPUBLICA DE PANAMA NRO. 2461 URB.  SANTA CATALINA  (ENTRE VIA EXPRESA Y REPUBLICA DE PANAMA) LIMA-LIMA-LA VICTORIA',70.34,12.66,83.00,0.0000,'2021-05-27','2021-05-27 04:29:48','ALBERTO VISA FLORES','1',6,NULL,NULL,NULL,NULL,NULL,5);
/*!40000 ALTER TABLE `comprobante_electronico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `correlativo_interno`
--

DROP TABLE IF EXISTS `correlativo_interno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `correlativo_interno` (
  `id` int NOT NULL AUTO_INCREMENT,
  `serie` int NOT NULL,
  `numero` int NOT NULL,
  `tipo` int NOT NULL,
  `identificador` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identificador_local` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4AFE7FB1702D1D47` (`tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correlativo_interno`
--

LOCK TABLES `correlativo_interno` WRITE;
/*!40000 ALTER TABLE `correlativo_interno` DISABLE KEYS */;
INSERT INTO `correlativo_interno` VALUES (1,0,22,1,'F','A'),(2,0,43,3,'B','A'),(3,0,20,2,'F','C'),(4,0,1,4,'B','C'),(5,0,11,6,'V','P'),(6,0,7,5,'V','C'),(7,1,2,8,'R','E');
/*!40000 ALTER TABLE `correlativo_interno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `isla`
--

DROP TABLE IF EXISTS `isla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `isla` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `isla`
--

LOCK TABLES `isla` WRITE;
/*!40000 ALTER TABLE `isla` DISABLE KEYS */;
INSERT INTO `isla` VALUES (3,'ISLA 1'),(4,'ISLA 2');
/*!40000 ALTER TABLE `isla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_ingreso_electronico`
--

DROP TABLE IF EXISTS `item_ingreso_electronico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_ingreso_electronico` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comprobante_id` int DEFAULT NULL,
  `familia` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '781022',
  `unidad` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'NIU',
  `descripcion` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` double NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `monto_gravado` decimal(10,2) NOT NULL,
  `igv` decimal(10,2) NOT NULL,
  `precio_total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6DE5882125662B3A` (`comprobante_id`),
  CONSTRAINT `FK_6DE5882125662B3A` FOREIGN KEY (`comprobante_id`) REFERENCES `comprobante_electronico` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_ingreso_electronico`
--

LOCK TABLES `item_ingreso_electronico` WRITE;
/*!40000 ALTER TABLE `item_ingreso_electronico` DISABLE KEYS */;
INSERT INTO `item_ingreso_electronico` VALUES (84,103,'2222','GLL','Gasohol 90',10,12.90,10.93,1.97,129.00),(85,104,'2222','GLL','Gasohol 90',31.0769,13.00,11.02,1.98,404.00),(86,105,'3333','GLL','Petroleo',25.641,11.70,9.92,1.78,300.00),(87,106,'3333','GLL','Petroleo',12.8205,11.70,9.92,1.78,150.00),(88,107,'3333','GLL','Petroleo',16.5385,11.70,9.92,1.78,193.50),(89,108,'2222','GLL','Gasohol 90',10,12.90,10.93,1.97,129.00),(90,109,'3333','GLL','Petroleo',25.641,11.70,9.92,1.78,300.00),(91,110,'2222','GLL','Gasohol 90',27.55,13.00,11.02,1.98,358.15),(92,111,'3333','GLL','Petroleo',14.359,11.70,9.92,1.78,168.00),(93,112,'3333','GLL','Petroleo',10,11.70,9.92,1.78,117.00),(94,113,'2222','GLL','Gasohol 90',10,12.90,10.93,1.97,129.00),(95,114,'2222','GLL','Gasohol 90',4.8824,17.00,14.41,2.59,83.00);
/*!40000 ALTER TABLE `item_ingreso_electronico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recibo_egreso`
--

DROP TABLE IF EXISTS `recibo_egreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recibo_egreso` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo_egreso_id` int DEFAULT NULL,
  `caja_id` int DEFAULT NULL,
  `numero_comprobante` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `documento_referencia` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo_documento_referencia` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persona` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `concepto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `documento_identidad` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_documento` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `monto_total` decimal(10,2) NOT NULL,
  `fecha_emision` date NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `emisor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_egreso` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_A34CB29AF44F82A` (`tipo_egreso_id`),
  KEY `IDX_A34CB292D82B651` (`caja_id`),
  KEY `IDX_A34CB291A61E14D` (`numero_comprobante`),
  CONSTRAINT `FK_8D842C622D82B651` FOREIGN KEY (`caja_id`) REFERENCES `caja` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_8D842C62AF44F82A` FOREIGN KEY (`tipo_egreso_id`) REFERENCES `tipo_egreso` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recibo_egreso`
--

LOCK TABLES `recibo_egreso` WRITE;
/*!40000 ALTER TABLE `recibo_egreso` DISABLE KEYS */;
INSERT INTO `recibo_egreso` VALUES (1,1,5,'1',NULL,NULL,'VARIOS VARIOS VARIOS','ADELANTO DE SUELDO MARCIAL','0','3',50.00,'2021-04-29','2021-04-29 00:59:38','VISA FLORES, ALBERTO','INTERNO','0'),(2,3,5,'2',NULL,NULL,'VARIOS VARIOS VARIOS','PAGO DE AGUA MES AGOSTO','76696881','3',30.00,'2021-04-29','2021-04-29 01:00:06','VISA FLORES, ALBERTO','INTERNO','0'),(3,8,5,'3',NULL,NULL,'VARIOS VARIOS VARIOS','TRASPORTE','20455935173','1',10.00,'2021-04-29','2021-04-29 01:04:37','VISA FLORES, ALBERTO','INTERNO','0'),(4,1,5,'4',NULL,NULL,'VARIOS VARIOS VARIOS','111','76696881','3',1.00,'2021-04-29','2021-04-29 01:17:21','VISA FLORES, ALBERTO','INTERNO','0'),(5,NULL,5,'5',NULL,NULL,'VARIOS VARIOS VARIOS','11','76696881','3',1.00,'2021-04-29','2021-04-29 01:24:54','VISA FLORES, ALBERTO','INTERNO','0'),(6,1,5,'6',NULL,NULL,'VARIOS VARIOS VARIOS','12131','29643751','3',12.00,'2021-04-29','2021-04-29 01:29:03','VISA FLORES, ALBERTO','INTERNO','0'),(7,2,5,'7',NULL,NULL,'EMPRESA DE TRANSPORTE TURNEE S.R.L.','TRASPORTES','20455935173','1',11.00,'2021-04-29','2021-04-29 01:36:03','VISA FLORES, ALBERTO','INTERNO','0'),(8,3,5,'RE01-000001',NULL,NULL,'VARIOS VARIOS VARIOS','pago de luz','0','3',30.00,'2021-04-29','2021-04-29 02:30:16','VISA FLORES, ALBERTO','INTERNO','0');
/*!40000 ALTER TABLE `recibo_egreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reset_password_request`
--

DROP TABLE IF EXISTS `reset_password_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reset_password_request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `selector` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_7CE748AA76ED395` (`user_id`),
  CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reset_password_request`
--

LOCK TABLES `reset_password_request` WRITE;
/*!40000 ALTER TABLE `reset_password_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `reset_password_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serafinado`
--

DROP TABLE IF EXISTS `serafinado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serafinado` (
  `id` int NOT NULL AUTO_INCREMENT,
  `emisor_id` int DEFAULT NULL,
  `caja_id` int DEFAULT NULL,
  `numero_comprobante` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_emision` date NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `estado` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monto_reintegrado` decimal(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2F4B498C6BDF87DF` (`emisor_id`),
  KEY `IDX_2F4B498C2D82B651` (`caja_id`),
  CONSTRAINT `FK_2F4B498C2D82B651` FOREIGN KEY (`caja_id`) REFERENCES `caja` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_2F4B498C6BDF87DF` FOREIGN KEY (`emisor_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serafinado`
--

LOCK TABLES `serafinado` WRITE;
/*!40000 ALTER TABLE `serafinado` DISABLE KEYS */;
/*!40000 ALTER TABLE `serafinado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serafinado_combustible`
--

DROP TABLE IF EXISTS `serafinado_combustible`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serafinado_combustible` (
  `id` int NOT NULL AUTO_INCREMENT,
  `serafinado_id` int DEFAULT NULL,
  `combustible_id` int NOT NULL,
  `medida` int NOT NULL,
  `identificador` int NOT NULL,
  `galones` decimal(10,2) NOT NULL,
  `diferencia` decimal(10,2) NOT NULL,
  `precio_combustible` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D681099A4EDB4BAF` (`serafinado_id`),
  KEY `IDX_D681099AD5BD96DF` (`combustible_id`),
  CONSTRAINT `FK_D681099A4EDB4BAF` FOREIGN KEY (`serafinado_id`) REFERENCES `serafinado` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_D681099AD5BD96DF` FOREIGN KEY (`combustible_id`) REFERENCES `combustible` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serafinado_combustible`
--

LOCK TABLES `serafinado_combustible` WRITE;
/*!40000 ALTER TABLE `serafinado_combustible` DISABLE KEYS */;
/*!40000 ALTER TABLE `serafinado_combustible` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuenta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario_sol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clave_sol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `igv` double NOT NULL,
  `ruc` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_api` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_reniec` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `servidor` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `local_principal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conexion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `departamento` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'SERVICENTRO Y MULTISERVICIOS LA CENTRAL S.A.C.','0000','FACTUSIS','OMG3nmhh9559%',0.18,'20603013418','http://190.117.160.137:8000/','192.168.1.146','1234',NULL,'1','1','LA CENTRAL S/N','AREQUIPA-CASTILLA-APLAO','1');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surtidor`
--

DROP TABLE IF EXISTS `surtidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surtidor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `combustible_id` int NOT NULL,
  `isla_id` int NOT NULL,
  `lectura_a` double NOT NULL,
  `lectura_b` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E68BE05ED5BD96DF` (`combustible_id`),
  KEY `IDX_E68BE05E48ACBF2F` (`isla_id`),
  CONSTRAINT `FK_E68BE05E48ACBF2F` FOREIGN KEY (`isla_id`) REFERENCES `isla` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_E68BE05ED5BD96DF` FOREIGN KEY (`combustible_id`) REFERENCES `combustible` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surtidor`
--

LOCK TABLES `surtidor` WRITE;
/*!40000 ALTER TABLE `surtidor` DISABLE KEYS */;
INSERT INTO `surtidor` VALUES (2,5,3,11999,11820),(3,5,4,17620.82,17558.89),(4,6,3,28450.56,29720.69),(5,6,4,34698.84,33510.31);
/*!40000 ALTER TABLE `surtidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_egreso`
--

DROP TABLE IF EXISTS `tipo_egreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_egreso` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_egreso`
--

LOCK TABLES `tipo_egreso` WRITE;
/*!40000 ALTER TABLE `tipo_egreso` DISABLE KEYS */;
INSERT INTO `tipo_egreso` VALUES (1,'PAGO PERSONAL'),(2,'COMBUSTIBLE GRUPO ELECTROGENO'),(3,'PAGO RECIBO AGUA O LUZ'),(4,'COLABORACION'),(5,'REPUESTOS ELECTRONICOS'),(6,'TRANSPORTE ADMINISTRACIÓN'),(7,'PRODUCTOS DE LIMPIEZA'),(8,'TELECOMUNICACIONES'),(9,'ALIMENTACIÓN PERSONAL'),(10,'TRANSPORTE DE COMBUSTIBLE');
/*!40000 ALTER TABLE `tipo_egreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_paterno` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_materno` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombres` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_documento` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `documento` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `sexo` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` json NOT NULL,
  `rol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2265B05DF85E0677` (`username`),
  UNIQUE KEY `UNIQ_2265B05DE7927C74` (`email`),
  UNIQUE KEY `UNIQ_2265B05D54DF9189B6B12EC7F85E0677` (`tipo_documento`,`documento`,`username`),
  KEY `IDX_2265B05DE553F376E84461B688DBB15C939DA67` (`rol`,`apellido_paterno`,`apellido_materno`,`nombres`),
  KEY `IDX_2265B05D6E84461B688DBB15C939DA67` (`apellido_paterno`,`apellido_materno`,`nombres`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'AVISAF','$argon2id$v=19$m=65536,t=4,p=1$avhvcslig3ba/5VbHrB/Hw$J+68q3HKOZQGbFZG/VkHoIApgDARI3PNTbA63RLui2M','VISA','FLORES','ALBERTO','DNI','76696881','1995-08-01','2021-05-27 04:04:23','m',NULL,'[\"ROLE_USER\", \"ROLE_SUPER_ADMIN\"]','admin','AVISAF@proyecto.com',1,0),(2,'ASILVAA','$argon2id$v=19$m=65536,t=4,p=1$MOkjpwG3L0XU2y8sF7ZQRw$wgyTzNgbmCcYAHQfheECnMYciGofub5Wump9zJbEEBg','ADMINISTRADOR','GENERAL','LA CENTRAL','DNI','70259553','2021-03-22',NULL,'m',NULL,'[\"ROLE_USER\", \"ROLE_SUPER_ADMIN\"]','admin','ASILVAA@proyecto.com',1,0);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-29  3:06:02
