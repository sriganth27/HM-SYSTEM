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
-- Table structure for table `appoinment`
--

DROP TABLE IF EXISTS `appoinment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appoinment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `appoint_date` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phno` varchar(45) NOT NULL,
  `diseases` varchar(45) NOT NULL,
  `doctor_id` int NOT NULL,
  `address` varchar(4500) NOT NULL,
  `status` varchar(4500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_idx` (`user_id`),
  KEY `did_idx` (`doctor_id`),
  CONSTRAINT `did` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `uid` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appoinment`
--

LOCK TABLES `appoinment` WRITE;
/*!40000 ALTER TABLE `appoinment` DISABLE KEYS */;
INSERT INTO `appoinment` VALUES (2,6,'abisek','male','20','2022-10-13','abishek@gmail.com','6787890987','headache',6,'india','ok'),(4,10,'m.dinesh','male','19','2023-02-08','dinesh9123@gmail.com','9123578068','fever',2,'chennai','come on monday'),(5,5,'kalai','male','20','2022-08-08','kalai@gmail.com','908765432`','skin problem',5,'chennai','ok completed'),(6,11,'Calwin','male','20','2022-11-04','calwindonaldrafter@gmail.com','9361996067','fever',7,' pattavarthi','will meet tommorow'),(9,5,'mullaivendhan','male','19','2022-11-16','kalai@gmail.com','987654321`','tooth pain',7,'chennai','ok done'),(11,16,'Sriganth G','male','20','2023-01-19','srivkp03@gmail.com','9787178433','tooth pain',7,'chennai','pending'),(12,17,'mullaivendhan','male','20','2023-01-26','mventhan782@gmail.com','9629616407','tooth pain',7,'chennai','pending'),(13,5,'kalai','male','19','2023-01-29','kalaiskvendhan1113@gmail.com','6369271469','fever',7,'manalmedu','pending'),(14,19,'dhayanithi','male','18','2023-01-24','nndd4450@gmail.com','6385754222','skin problem',2,'dhayanithi dmi collegeof engineering','pending'),(15,20,'dheena k','male','20','2023-01-27','dheenak0621@gmail.com','8939400621','covid',2,'vk puram','pending'),(16,16,'MARY DIANA','male','38','1985-10-13','diamarydiana@gmail.com','9894931404','headache',9,'chennai','pending'),(17,26,'sowmiya','female','20','2023-02-06','sowmis323@gmail.com','1521757151','headache',5,'ghjxsk kdlwm','pending'),(18,28,'sarathkumar','male','21','2023-04-02','rrsarathkumar3@gmail.com','6379623917','covid 19',6,'123/4 north st, mayilathudurai 609001','pending'),(19,5,'dinesh M','male','20','2023-07-08','dinesh@gmail.com','6379623917','covid 19',9,'ok','pending');
/*!40000 ALTER TABLE `appoinment` ENABLE KEYS */;
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
