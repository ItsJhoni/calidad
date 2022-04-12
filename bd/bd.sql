-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_concesionaria
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `idCategoria` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'sedam',NULL),(2,'suv',NULL),(3,'camioneta',NULL),(4,'moto',NULL);
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculo`
--

DROP TABLE IF EXISTS `vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculo` (
  `idvehiculo` int NOT NULL AUTO_INCREMENT,
  `marca` varchar(45) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `detalle` text,
  `foto` varchar(100) DEFAULT NULL,
  `categoria` int NOT NULL,
  PRIMARY KEY (`idvehiculo`),
  KEY `fk_categoria_idx` (`categoria`) /*!80000 INVISIBLE */,
  CONSTRAINT `fk_vehiculo_categoria` FOREIGN KEY (`categoria`) REFERENCES `categoria` (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo`
--

LOCK TABLES `vehiculo` WRITE;
/*!40000 ALTER TABLE `vehiculo` DISABLE KEYS */;
INSERT INTO `vehiculo` VALUES (1,'Subaru','Impreza',50000,'Sistema de tracción integral Symmetrical AWD estándar + hasta 36 MPG**\nEl vehículo que más perdura de su clase\nMotor de inyección directa SUBARU BOXER® de 152 hp','sedan_subaru_impreza_2021.jpg',1),(2,'Audi','A3',60000,'De momento, el Audi A3 Sedán 2021 debutará con tres configuraciones. \nEl A3 35 TFSI, es impulsado por un motor 1.5 Turbo de 150 Hp y 250 Nm de torque, el cual lógicamente cuenta con homologación Euro 6 y funciones Start /Stop. \nEste motor se asocia a las ruedas delanteras vía una caja automática S-Tronic de 7 velocidades y doble embrague o a una caja manual de seis velocidades, \nuna opción que nos sorprende bastante, considerando como esta transmisión deja de ser la preferida en muchos mercados. La tercera opción es un A3 35 TDi S-Tronic, \ncon un motor turbodiésel de dos litros, 150 Hp y 360 Nm de par, asociado exclusivamente a la caja S-tronic de 7 cambios y doble embrague. p','sedan_audi_a3_2021.jpg',1),(3,'Mercedes','Clase A',90000,'El Mercedes-Benz Clase A es un automóvil de lujo del segmento C (en anteriores generaciones fue un monovolumen del segmento B) producido por el fabricante alemán Mercedes-Benz desde el año 1997. \nEs el primer modelo de la marca con tracción delantera, y todos sus motores son de cuatro cilindros en línea. \nEl Clase A tiene su motor en posición delantera transversal, algo también inusual en los modelos de Mercedes-Benz. El Clase A es el modelo de entrada a la marca.','sedan_mercedes_clasea_2021.jpg',1),(4,'Toyota','Corolla',50000,'POR PRIMERA VEZ, EL COROLLA LLEGA EN SU VERSIÓN HÍBRIDA. SU SISTEMA HYBRID SYNERGY DRIVE INCORPORA UN MOTOR ELÉCTRICO Y UNO DE COMBUSTIÓN INTERNA A GASOLINA, QUE TE GARANTIZAN UNA EXPERIENCIA DE CONDUCCIÓN DINÁMICA, EFICIENTE, POTENTE Y CON MENOS GASES CONTAMINANTES.','sedan_toyota_corolla_2021.jpg',1),(5,'Kia','Cerato',50000,NULL,'sedan_kia_cerato_2021.jpg',1),(6,'Hyundai','Elantra',50000,NULL,'sedan_hyundai_elantra_2021.jpg',1),(7,'Honda','Civic',60000,'null','sedan_honda_civic_2021.jpg',1);
/*!40000 ALTER TABLE `vehiculo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 19:29:20
