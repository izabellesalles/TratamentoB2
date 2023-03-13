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
-- Table structure for table `pausa_atendimento`
--

DROP TABLE IF EXISTS `pausa_atendimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pausa_atendimento` (
  `id` smallint unsigned DEFAULT '0',
  `id_unidade` varchar(30) DEFAULT NULL,
  `unidade` varchar(30) DEFAULT NULL,
  `id_pausa_atendimento` varchar(50) DEFAULT NULL,
  `pausa_atendimento` varchar(50) DEFAULT NULL,
  `id_net_pausa_atendimento` smallint unsigned
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pausa_atendimento`
--

LOCK TABLES `pausa_atendimento` WRITE;
/*!40000 ALTER TABLE `pausa_atendimento` DISABLE KEYS */;
INSERT INTO `pausa_atendimento` VALUES (1,'8','TAGUATINGA','1','Buscar Documento',0),(2,'8','TAGUATINGA','2','Pegar Assinatura',1),(3,'9','SOBRADINHO','3','Buscar Documento',0),(4,'9','SOBRADINHO','4','Pegar Assinatura',1),(5,'10','CEILANDIA','5','Buscar Documento',0),(6,'10','CEILANDIA','6','Pegar Assinatura',1),(7,'13','RiachoFundo','7','Buscar Documento',0),(8,'13','RiachoFundo','8','Pegar Assinatura',1);
/*!40000 ALTER TABLE `pausa_atendimento` ENABLE KEYS */;
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
