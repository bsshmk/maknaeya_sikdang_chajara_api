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
-- Table structure for table `363984_review`
--

DROP TABLE IF EXISTS `363984_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `363984_review` (
  `review_id` varchar(10) NOT NULL,
  `restaurant_id` varchar(100) NOT NULL,
  `writer_id` varchar(45) NOT NULL,
  `review_contents` varchar(10000) NOT NULL,
  `review_score` varchar(10) NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `363984_review`
--

LOCK TABLES `363984_review` WRITE;
/*!40000 ALTER TABLE `363984_review` DISABLE KEYS */;
INSERT INTO `363984_review` VALUES ('0','363984','류아','여기남자사장님안바뀌셨나요?동삼 음식은 진짜 최고였는데..ㅎㅎ 여긴 고추장돼지고기찌개랑 닭도리탕이 최고랍니다.진짜 근처 삼치집에서 제일맛있는곳','5.0'),('1','363984','XOXO','인천삼치골목 중에서 여기가 가장 맛난거 같아요','4.0'),('2','363984','로또오빠','삼치가 오동통해서 정말 맛있어요. 타지않으면서 속살 부드럽게 겉은 바삭하게~ 정말 맛나요 ㅎ','4.0'),('3','363984','초밥왕','동인천삼치거리에서가장오래영업하는집 가게는작지만오랜경험으로노하우가많아맛있단소리많이듣는집 ','4.0'),('4','363984','꼬마벌레','여기 이모님요리 진짜맛있는거같아요 ㅠㅠ\n','5.0');
/*!40000 ALTER TABLE `363984_review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-19 13:30:49
