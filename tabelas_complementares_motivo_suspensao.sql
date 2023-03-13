-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tabelas_complementares
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `motivo_suspensao`
--

DROP TABLE IF EXISTS `motivo_suspensao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `motivo_suspensao` (
  `id` smallint unsigned DEFAULT '0',
  `id_unidade` varchar(30) DEFAULT NULL,
  `unidade` varchar(30) DEFAULT NULL,
  `id_motivo_suspensao` varchar(50) DEFAULT NULL,
  `motivo_suspensao` varchar(50) DEFAULT NULL,
  `id_net_motivo_suspensao` smallint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motivo_suspensao`
--

LOCK TABLES `motivo_suspensao` WRITE;
/*!40000 ALTER TABLE `motivo_suspensao` DISABLE KEYS */;
INSERT INTO `motivo_suspensao` VALUES (4,'8','TAGUATINGA','5','Banheiro',1),(5,'8','TAGUATINGA','6','Lanche',0),(6,'8','TAGUATINGA','7','Serviços Internos',4),(7,'9','SOBRADINHO','8','Banheiro',1),(8,'9','SOBRADINHO','9','Lanche',0),(9,'9','SOBRADINHO','10','Serviços Internos',4),(10,'10','CEILANDIA','11','Almoço',5),(11,'10','CEILANDIA','12','Banheiro',1),(12,'10','CEILANDIA','13','IR A COPA',6),(13,'10','CEILANDIA','14','Lanche',0),(14,'10','CEILANDIA','15','Serviços Internos',4),(15,'9','SOBRADINHO','16','Vistar a BASE (SUP)',5),(16,'9','SOBRADINHO','17','REUNIÃO',6),(17,'11','RODOVIARIA','18','ALMOÇO',3),(18,'11','RODOVIARIA','19','BANHEIRO',1),(19,'11','RODOVIARIA','20','LANCHE',2),(20,'11','RODOVIARIA','21','SERVIÇOS INTERNOS',0),(21,'12','GAMA','22','ALMOÇO',3),(22,'12','GAMA','23','BANHEIRO',1),(23,'12','GAMA','24','LANCHE',2),(24,'12','GAMA','25','SERVIÇOS INTERNOS',0),(25,'13','RiachoFundo','26','Banheiro',1),(26,'13','RiachoFundo','27','Lanche',0),(27,'13','RiachoFundo','28','Serviços Internos',4);
/*!40000 ALTER TABLE `motivo_suspensao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-08 17:04:37
