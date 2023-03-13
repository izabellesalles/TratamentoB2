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
-- Table structure for table `resposta_avaliacao`
--

DROP TABLE IF EXISTS `resposta_avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resposta_avaliacao` (
  `id` smallint unsigned DEFAULT '0',
  `id_unidade` varchar(30) DEFAULT NULL,
  `unidade` varchar(30) DEFAULT NULL,
  `id_resposta_avaliacao` varchar(50) DEFAULT NULL,
  `resposta_avaliacao` varchar(50) DEFAULT NULL,
  `id_net_resposta_avaliacao` smallint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resposta_avaliacao`
--

LOCK TABLES `resposta_avaliacao` WRITE;
/*!40000 ALTER TABLE `resposta_avaliacao` DISABLE KEYS */;
INSERT INTO `resposta_avaliacao` VALUES (16,'8','TAGUATINGA','16','BOM',1),(17,'8','TAGUATINGA','17','OTIMO',0),(18,'8','TAGUATINGA','18','REGULAR',2),(19,'8','TAGUATINGA','19','RUIM',3),(20,'9','SOBRADINHO','20','BOM',1),(21,'9','SOBRADINHO','21','OTIMO',0),(22,'9','SOBRADINHO','22','REGULAR',2),(23,'9','SOBRADINHO','23','RUIM',3),(24,'10','CEILANDIA','24','BOM',1),(25,'10','CEILANDIA','25','OTIMO',0),(26,'10','CEILANDIA','26','REGULAR',2),(27,'10','CEILANDIA','27','RUIM',3),(28,'11','RODOVIARIA','28','BOM',2),(29,'11','RODOVIARIA','29','OTIMO',0),(30,'11','RODOVIARIA','30','REGULAR',3),(31,'11','RODOVIARIA','31','RUIM',1),(32,'12','GAMA','32','BOM',2),(33,'12','GAMA','33','OTIMO',0),(34,'12','GAMA','34','REGULAR',3),(35,'12','GAMA','35','RUIM',1),(36,'13','RiachoFundo','36','BOM',1),(37,'13','RiachoFundo','37','OTIMO',0),(38,'13','RiachoFundo','38','REGULAR',2),(39,'13','RiachoFundo','39','RUIM',3);
/*!40000 ALTER TABLE `resposta_avaliacao` ENABLE KEYS */;
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
