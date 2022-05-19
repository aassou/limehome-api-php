-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: limehome
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.20.04.3

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
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20220515185024','2022-05-15 20:50:39',34),('DoctrineMigrations\\Version20220515185214','2022-05-15 20:52:20',59);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `guest_number` int NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_published` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,'2022-05-16','2022-05-20',2,'abdelilah','aassou','Johann-Clanze-Str 32','Deustchland','48143','Munchen','aassou.abdelilah@gmail.com','017676339941','2022-05-16 14:33:23','admin','2022-05-16 14:33:23','admin',1),(3,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(4,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(5,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(6,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(7,'2022-05-16','2022-05-16',5,'Kamal','Marjane','string','string','string','string','string','string','2022-05-16 20:18:19','string','2022-05-16 20:18:19','string',1),(8,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(9,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(10,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(11,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(12,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(13,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(14,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(15,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(16,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(17,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(18,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(19,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(20,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(21,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(22,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(23,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(24,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(25,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(26,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(27,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(28,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(29,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(30,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(31,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(32,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(33,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(34,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(35,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(36,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(37,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(38,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(39,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(40,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(41,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(42,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(43,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(44,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(45,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(46,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1),(47,'2022-05-16','2022-05-16',1,'moaad','aassou','Berliner Platz 39','Deutschland','48143','Munster','tech2esto@gmail.com','017676885544','2022-05-16 14:32:56','admin','2022-05-16 14:32:56','admin',1);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-17  0:50:40
