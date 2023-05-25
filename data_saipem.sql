CREATE DATABASE  IF NOT EXISTS `test_company_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `test_company_db`;
-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: localhost    Database: test_company_db
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `company_1`
--

DROP TABLE IF EXISTS `company_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_1` (
  `company_code_1` varchar(2) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`company_code_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_1`
--

LOCK TABLES `company_1` WRITE;
/*!40000 ALTER TABLE `company_1` DISABLE KEYS */;
INSERT INTO `company_1` VALUES ('JV','CCS JV'),('SP','SAIPEM');
/*!40000 ALTER TABLE `company_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_2`
--

DROP TABLE IF EXISTS `company_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_2` (
  `company_code_2` varchar(5) NOT NULL,
  `company_code_1` varchar(2) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`company_code_2`),
  KEY `company_code_1` (`company_code_1`),
  CONSTRAINT `company_2_ibfk_1` FOREIGN KEY (`company_code_1`) REFERENCES `company_1` (`company_code_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_2`
--

LOCK TABLES `company_2` WRITE;
/*!40000 ALTER TABLE `company_2` DISABLE KEYS */;
INSERT INTO `company_2` VALUES ('JVA','JV','CCS JV ASIA'),('JVM','JV','CCS JV MILAN'),('PTSI','SP','SAIPEM INDONESIA'),('SPA','SP','SAIPEM MILAN');
/*!40000 ALTER TABLE `company_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_company_1`
--

DROP TABLE IF EXISTS `v_company_1`;
/*!50001 DROP VIEW IF EXISTS `v_company_1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_company_1` AS SELECT 
 1 AS `company_code_1`,
 1 AS `company_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_company_2`
--

DROP TABLE IF EXISTS `v_company_2`;
/*!50001 DROP VIEW IF EXISTS `v_company_2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_company_2` AS SELECT 
 1 AS `company_code_2`,
 1 AS `company_code_1`,
 1 AS `company_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_joincompany`
--

DROP TABLE IF EXISTS `v_joincompany`;
/*!50001 DROP VIEW IF EXISTS `v_joincompany`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_joincompany` AS SELECT 
 1 AS `company_code_1`,
 1 AS `company1_name`,
 1 AS `company_code_2`,
 1 AS `company2_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_company_1`
--

/*!50001 DROP VIEW IF EXISTS `v_company_1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_company_1` AS select `company_1`.`company_code_1` AS `company_code_1`,`company_1`.`company_name` AS `company_name` from `company_1` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_company_2`
--

/*!50001 DROP VIEW IF EXISTS `v_company_2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_company_2` AS select `co_2`.`company_code_2` AS `company_code_2`,`co_1`.`company_code_1` AS `company_code_1`,`co_2`.`company_name` AS `company_name` from (`company_2` `co_2` join `company_1` `co_1` on((`co_2`.`company_code_1` = `co_1`.`company_code_1`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_joincompany`
--

/*!50001 DROP VIEW IF EXISTS `v_joincompany`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_joincompany` AS select `co1`.`company_code_1` AS `company_code_1`,`co1`.`company_name` AS `company1_name`,`co2`.`company_code_2` AS `company_code_2`,`co2`.`company_name` AS `company2_name` from (`v_company_1` `co1` join `v_company_2` `co2` on((`co1`.`company_code_1` = `co2`.`company_code_1`))) where (`co1`.`company_code_1` = 'SP') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-25 16:33:13
