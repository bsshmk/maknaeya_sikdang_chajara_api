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
-- Table structure for table `350270_review`
--

DROP TABLE IF EXISTS `350270_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `350270_review` (
  `review_id` varchar(10) NOT NULL,
  `restaurant_id` varchar(100) NOT NULL,
  `writer_id` varchar(45) NOT NULL,
  `review_contents` varchar(10000) NOT NULL,
  `review_score` varchar(10) NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `350270_review`
--

LOCK TABLES `350270_review` WRITE;
/*!40000 ALTER TABLE `350270_review` DISABLE KEYS */;
INSERT INTO `350270_review` VALUES ('0','350270','채서상큼','동인천역 바로 맞은편에 있어서 찾기가 굉장히 쉬워요ㅎㅎvj특공대에도 나온 맛집이라는데 굉장히 크기가 작습니당!가게를 둘러보시면 옛날과자,옛날 사탕 등을 팔고있어서 어린시절 부모님께서 사다주신 과자,사탕이 먹고싶으신 분들이 좋아하실거같아여!하지만 옛날 과자를 좋아하시지않는 분들은 비추합니다:)한근에 5000원으로 가격도 착해요!하지만 위생이 그닥 좋아보이진않았습니다:(이 부분을 신경써주시면 좋을거같아요!','3.0'),('1','350270','채서시큼','유명한 것에 비해 가게가 작아서 정말 놀랐던...작은 가게에서 부부가 운영하고있었습니다. 작은 만쥬와 다른 과자를 한근 샀는데 5000원 이었습니다. 집에와서 가족들하고 먹어보니 엄마와 아빠가 예전에 어렸을때 먹던 맛이라며 맛있게 드셨습니다! 가게는 많이 허름하지만 그 자리에서 세월을 이겨내며 지켜온 맛을 느낄 수 있었습니다.','3.0'),('2','350270','uiopjkl85','인기 진짜 많더라구요 줄서서 사왔어요~ 한근에 5000원정도이구 3개천원인 밤빵이 인기가 좋더라구요!!! 옛날입맛이라 이런 센베과자 좋아하는데 여기서 직접만드시는지 빠삭빠삭하고 맛있어서 앞으로도 자주 사먹을예정입니다~','5.0'),('3','350270','이쁨꽃','진짜 가볼만합니다.',''),('4','350270','쥬니어네이버','잊혀지지 않는 맛집이에요','5.0');
/*!40000 ALTER TABLE `350270_review` ENABLE KEYS */;
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
