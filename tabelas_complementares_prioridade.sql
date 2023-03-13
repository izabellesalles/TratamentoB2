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
-- Table structure for table `prioridade`
--

DROP TABLE IF EXISTS `prioridade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prioridade` (
  `id` smallint unsigned DEFAULT '0',
  `id_unidade` varchar(30) DEFAULT NULL,
  `unidade` varchar(30) DEFAULT NULL,
  `id_prioridade` varchar(50) DEFAULT NULL,
  `prioridade` varchar(50) DEFAULT NULL,
  `id_net_prioridade` smallint unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prioridade`
--

LOCK TABLES `prioridade` WRITE;
/*!40000 ALTER TABLE `prioridade` DISABLE KEYS */;
INSERT INTO `prioridade` VALUES (5,'8','TAGUATINGA','10','Agendado',0),(6,'8','TAGUATINGA','11','TempoEsperaVencido',256),(7,'8','TAGUATINGA','12','TempoFilaVencido',512),(8,'8','TAGUATINGA','13','Rechamada',768),(9,'8','TAGUATINGA','14','Normal',2304),(10,'9','SOBRADINHO','15','Agendado',0),(11,'9','SOBRADINHO','16','TempoEsperaVencido',256),(12,'9','SOBRADINHO','17','TempoFilaVencido',512),(13,'9','SOBRADINHO','18','Rechamada',768),(14,'9','SOBRADINHO','19','Normal',2304),(15,'8','TAGUATINGA','20','Retorno',1024),(16,'9','SOBRADINHO','21','Preferencial',1024),(17,'10','CEILANDIA','22','Agendado',0),(18,'10','CEILANDIA','23','TempoEsperaVencido',256),(19,'10','CEILANDIA','24','TempoFilaVencido',512),(20,'10','CEILANDIA','25','Rechamada',768),(21,'10','CEILANDIA','26','SIMPLES-Normal',1024),(22,'10','CEILANDIA','27','Preferencial',2304),(229,'10','CEILANDIA','234','REC-REV',1280),(230,'10','CEILANDIA','235','Resultado/CNIS-Normal',2048),(231,'10','CEILANDIA','236','SIMPLES-Preferencial',1536),(232,'11','RODOVIARIA','237','Agendado',0),(233,'11','RODOVIARIA','238','TempoEsperaVencido',256),(234,'11','RODOVIARIA','239','TempoFilaVencido',512),(235,'11','RODOVIARIA','240','Rechamada',768),(236,'11','RODOVIARIA','241','Preferencial',1024),(237,'11','RODOVIARIA','242','Normal',2048),(238,'10','CEILANDIA','243','Normal',2560),(239,'12','GAMA','244','Agendado',0),(240,'12','GAMA','245','TempoEsperaVencido',256),(241,'12','GAMA','246','TempoFilaVencido',512),(242,'12','GAMA','247','Rechamada',768),(243,'12','GAMA','248','Especial',1024),(244,'12','GAMA','249','Normal',2048),(245,'8','TAGUATINGA','250','Preferencial',2048),(246,'10','CEILANDIA','251','Resultado/CNIS-Preferencial',1792),(247,'8','TAGUATINGA','252','Rechamada-',3584),(248,'8','TAGUATINGA','253','Normal',1792),(249,'11','RODOVIARIA','254','Normal',1280),(250,'9','SOBRADINHO','255','Normal',1280),(251,'9','SOBRADINHO','256','.Rechamada.',2816),(252,'8','TAGUATINGA','257','Especial',1280),(253,'8','TAGUATINGA','258','RETORNO/PREFERENCIAL',2816),(254,'12','GAMA','259','Retorno',1280),(255,'13','RiachoFundo','260','Agendado',0),(256,'13','RiachoFundo','261','TempoEsperaVencido',256),(257,'13','RiachoFundo','262','TempoFilaVencido',512),(258,'13','RiachoFundo','263','Rechamada',768),(259,'13','RiachoFundo','264','RETORNO',1024),(260,'13','RiachoFundo','265','Normal',1792),(261,'13','RiachoFundo','266','Normal',2304),(262,'10','CEILANDIA','267','SIMPLES-Normal',3328),(263,'10','CEILANDIA','268','Especial',3072),(264,'10','CEILANDIA','269','Retorno',2816),(265,'10','CEILANDIA','270','SIMPLES-Normal',3584),(266,'11','RODOVIARIA','271','Retorno',1536),(267,'11','RODOVIARIA','272','Agendamento',1792),(268,'12','GAMA','273','Preferencial',1536),(269,'12','GAMA','274','Normal',1792),(270,'13','RiachoFundo','275','Especial',1280),(271,'13','RiachoFundo','276','Preferencial',1536),(272,'8','TAGUATINGA','277','Preferencial',1536);
/*!40000 ALTER TABLE `prioridade` ENABLE KEYS */;
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
