-- MySQL dump 10.13  Distrib 8.0.0-dmr, for Linux (x86_64)
--
-- Host: localhost    Database: ngo_portal
-- ------------------------------------------------------
-- Server version	8.0.0-dmr

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_0900_ai_ci DEFAULT 'Admin',
  `password_hash` varchar(255) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` (`id`, `username`, `password_hash`, `email`, `created_at`) VALUES (2,'admin','admin','admin@ngoconnectportal.com','2024-10-18 08:55:00'),(3,'shah','shah@2001','shah@2001','2024-10-18 08:55:00');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ngos`
--

DROP TABLE IF EXISTS `ngos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ngos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `work` text,
  `address` varchar(255) DEFAULT NULL,
  `charity_id` varchar(100) DEFAULT NULL,
  `pan_number` varchar(20) DEFAULT NULL,
  `upi_id` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ngos`
--

LOCK TABLES `ngos` WRITE;
/*!40000 ALTER TABLE `ngos` DISABLE KEYS */;
INSERT INTO `ngos` (`id`, `name`, `description`, `work`, `address`, `charity_id`, `pan_number`, `upi_id`, `created_at`) VALUES (14,'Tadoba-Andhari Tiger Reserve Conservation Foundation','Tadoba-Andhari Tiger Reserve (TATR) is one of India \'s oldest and most renowned national parks, situated in Maharashtra. Named after the Gond tribal legend Taru, who had a mythic encounter with a tiger, the park is a sanctuary for diverse wildlife, particularly Bengal tigers. It was declared a national park in 1955, and in 1993, Tadoba-Andhari became a Tiger Reserve. Today, it spans over 622.87 sq km, offering rich biodiversity with tropical dry deciduous forests, bamboo groves, grasslands, and numerous water bodies. The reserve is a prominent hub for tiger conservation, contributing to tiger gene pool recovery across central India. It is also home to an array of species, including leopards, wild dogs, crocodiles, deer, birds, and a variety of insect life. The reserve focuses on ecological conservation through initiatives like the relocation of villages, wildlife protection, and habitat restoration.','Tadoba-Andhari Tiger Reserve\'s primary work is the conservation and protection of tigers and other wildlife species in the region. It includes preserving the natural habitat, controlling human intervention, and ensuring ecological balance. The reserves management engages in activities like fire protection, monitoring wildlife populations, water conservation efforts, grassland development, and anti-poaching measures. The reserve also works on educating the public about wildlife conservation, conducting eco-tourism activities like safaris, and supporting the voluntary relocation of villages from the core area. Additionally, it supports reforestation efforts, prevention of illegal hunting, and habitat restoration to protect the reserve?s flora and fauna.','Tadoba-Andhari Tiger Reserve\nMaharashtra Forest Department\nGovernment of Maharashtra\nTadoba, Chandrapur District,\nMaharashtra, India',NULL,NULL,'tratrfoundation.62344909@hdfcbank','2024-10-21 12:24:35'),(16,'hitankshah','Supporting social causes',NULL,NULL,NULL,NULL,'hitankjain@oksbi','2024-10-21 12:24:35'),(18,'NGO Name','Description of the NGO','Work done by the NGO','Address of the NGO','Charity ID','PAN Number','UPI ID','2024-10-21 13:04:39'),(23,'Helping Hearts for the needy','Supporting underprivileged communities',NULL,NULL,NULL,NULL,'9849590233@hdfcbank','2024-10-21 13:04:39'),(27,'shikshafoundation','Education for underprivileged children',NULL,NULL,NULL,NULL,'shikshafoundation@icici','2024-10-21 13:04:39'),(32,'NGO Name','Description of the NGO','Work done by the NGO','Address of the NGO','Charity ID','PAN Number','UPI ID','2024-10-21 13:28:15'),(33,'Narayan Seva','Supporting community welfare',NULL,NULL,NULL,NULL,'narayanseva@sbi','2024-10-21 13:28:15'),(34,'battleforblindness','Supporting visually impaired individuals',NULL,NULL,NULL,NULL,'8383933493@okbizaxis','2024-10-21 13:28:15'),(35,'cankidsindia','Supporting children with cancer',NULL,NULL,NULL,NULL,'mswipe.cankides@kotak','2024-10-21 13:28:15'),(36,'humana-india','Humanitarian aid and development',NULL,NULL,NULL,NULL,'humabpeople@icici','2024-10-21 13:28:15'),(38,'indiagivesfoundation','Supporting various social causes',NULL,NULL,NULL,NULL,'QR918277529316-0322@unionbankofindia','2024-10-21 13:28:15'),(40,'sevalaya','Community service and education',NULL,NULL,NULL,NULL,'SEVALAYA.08@CMSIDFC','2024-10-21 13:28:15'),(43,'Vatsalya Societies','Child welfare and development',NULL,NULL,NULL,NULL,'VATSALYA1@icici','2024-10-21 13:28:15');
/*!40000 ALTER TABLE `ngos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_0900_ai_ci DEFAULT 'Guest',
  `email` varchar(255) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(255) COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `password_hash`, `created_at`, `username`) VALUES (1,'Hitank Shah','HITANKJAIN@GMAIL.COM','08955665499','$2b$10$gHhaBra4PFqclLaCR/yxpOwwb0iBNpnC37UwgIt76ihadxiOqfnc2','2024-10-14 14:26:32','hitankshah'),(3,'HITANK SHAH','HITANKJAIN89@GMAIL.COM','8955665499','$2b$10$Vw54UJIjuYuj4PpC6vLPGu4Z9WlMH/3W3Ine2q.lm0Dq4vNdw4Dbu','2024-10-14 17:33:04','hitankshah'),(4,'admin','admin@ngoconnectportal.com','8955665499','$2b$10$UGAcJSMhY34oUubXwyp/au.TmaSkR3/sL00jeA0Gix9bqaKW3lBa2','2024-10-14 17:33:35','admin'),(5,'Adminsjaj','Shah@gmail.com','8955665499','$2b$10$XrkmXqQZiVi8NxYT4kWk4O6zL5rsHmKcVtoXaNwXY4VTvZLUQkfaS','2024-10-15 08:43:15','Admin1'),(7,'shahaha','shaha@gmail.com','8003018613','$2b$10$lT4t9Ab3C8Z5Muw8hDNcTugchUAmX9uoAT6boie7HIr963VcWhOGG','2024-10-15 08:50:20','shahhitank'),(9,'vedant02','vedant02@gmail.com','vedant02','$2b$10$AzvXhgY2xiITnje6Ukron.sCYmVmqM.8tG9a4qw35CM0eEj/g.QIy','2024-10-18 08:49:16','vedant02');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-22  5:56:56
