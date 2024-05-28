-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(40) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(34) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'hi','codegenes@gmail.com','890'),(2,'mullai','mulai@gmail.com','321'),(3,'Sriganth','srivkp89@gmail.com','12345'),(4,'Sriganth','srivkp04@gmail.com','123456'),(5,'kalai','kalai@gmail.com','123'),(6,'abishek','abishek@gmail.com','12345'),(7,'Abinash','unakuveravellaiya17@gmail.com','1237890'),(8,'mullaivendhan','mullaivendhan@gmail.com','0987'),(9,'m.dinesh','dinesh9123@gmail.com','9123578068'),(10,'m.dinesh','dinesh9123@gmail.com','9123578068'),(11,'calwin donald  rafter','calwindonaldrafter@gmail.com','calwindonald232002'),(12,'jk','jk@yahoo.com','1234'),(13,'naveen','hariprasathdir11@gmail.com','12345'),(14,'vimal','vimal@gmail.com','12345'),(15,'Derisha mahil','derishamahil@gmail.com','derisha123'),(16,'Sriganth G','srivkp03@gmail.com','sri'),(17,'mullaivendhan','mventhan782@gmail.com','1234'),(18,'joel dhaya','nndd4450@gmail.com','12345678'),(19,'joel dhaya','nndd4450@gmail.com','23232323'),(20,'dheena k','dheenak0621@gmail.com','12345'),(21,'sowmiya','sowmis323@gmail.com','moni1234'),(22,'sowmiya','sowmis323@gmail.com','moni1234'),(23,'sowmiya','sowmis323@gmail.com','moni1234'),(24,'sowmiya','sowmis323@gmail.com','moni1234'),(25,'sowmiya','sowmis323@gmail.com','moni1234'),(26,'sowmiya','sowmis323@gmail.com','moni1234'),(27,'dinesh M','dinesh@gmail.com','12345'),(28,'sarathkumar','rsarathkumar@gmail.com','340988'),(29,'dinesh M','dinesh@gmail.com','12345');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-23 20:05:22
