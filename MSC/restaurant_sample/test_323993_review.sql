-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `323993_review`
--

DROP TABLE IF EXISTS `323993_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `323993_review` (
  `review_id` varchar(10) NOT NULL,
  `restaurant_id` varchar(100) NOT NULL,
  `writer_id` varchar(45) NOT NULL,
  `review_contents` varchar(10000) NOT NULL,
  `review_score` varchar(10) NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `323993_review`
--

LOCK TABLES `323993_review` WRITE;
/*!40000 ALTER TABLE `323993_review` DISABLE KEYS */;
INSERT INTO `323993_review` VALUES ('0','323993','옴마야!','대략 몇달된거같은데 그때 들었던 생각은 가격대비 별로 한번으로 족하다라는 생각을 했었음\n솔직히 쉐라톤은 뷔페부터해서 이태리나 일식이나 가격대비 별로인듯 중식은 아직 안가봤음','2.0'),('1','323993','창사마olo','코스 음식사이에 텀이 너무 긴듯..\n흐름이 자주끊키네요..\n주말도 아니여서 만석도아니였는대..\n그래도 음식은 호텔수준급..^^','4.0'),('2','323993','요술봉뾰로롱','여기 데판야끼가가 수준급이상입니다. 하야트 아사카 정도 되요. 가격을 따진다면 가성비가 정말 괜찮았던 편이에요','5.0'),('3','323993','해바라기♥♥','호텔식인데 아주비싸지않고 갠춘해옴~','3.0'),('4','323993','해피곰탱2','정말 먹을만한 편이네요','');
/*!40000 ALTER TABLE `323993_review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-19 13:30:50
