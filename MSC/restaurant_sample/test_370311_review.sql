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
-- Table structure for table `370311_review`
--

DROP TABLE IF EXISTS `370311_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `370311_review` (
  `review_id` varchar(10) NOT NULL,
  `restaurant_id` varchar(100) NOT NULL,
  `writer_id` varchar(45) NOT NULL,
  `review_contents` varchar(10000) NOT NULL,
  `review_score` varchar(10) NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `370311_review`
--

LOCK TABLES `370311_review` WRITE;
/*!40000 ALTER TABLE `370311_review` DISABLE KEYS */;
INSERT INTO `370311_review` VALUES ('0','370311','한국인삼공사','송도의 스카이라인이 한눈에 보이는 ‘홀리데이 인 인천 송도’<터치스카이 루프탑 바>!! 인천 송도에 유일한 루프탑으로 송도의 야경과 서해안의 아름다운 전망을 모두 즐길 수 있는 곳이다. ‘터치스카이 루프탑 바’는 28종의 와인과 칵테일, 위스키 등 다양한 주류와 함께 스낵메뉴가 있다. 야외 테라스 지리가 인기가 많으며 특히 석양이 질때에는 그 경관이 멋지다. ','5.0'),('1','370311','HARIBO♡','송도는 정말 야경 하나는 최고!!  맛도 훌륭했던 편이에요','5.0'),('2','370311','복면알콜왕','ㅎㅎ 살랑살랑 바람도 불고 칵테일 한잔에 달달해지는 밤~','4.0'),('3','370311','띠드버거주세용','모히토는 맛이 괜찮았으나 피치크러쉬는 영..ㅋ','5.0'),('4','370311','XOXO',' 뷰가 무척 궁금했던 호텔의 루프탑바. 조금은 아담한 터치스카이. ','5.0');
/*!40000 ALTER TABLE `370311_review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-19 13:30:48
