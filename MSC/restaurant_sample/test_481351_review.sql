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
-- Table structure for table `481351_review`
--

DROP TABLE IF EXISTS `481351_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `481351_review` (
  `review_id` varchar(10) NOT NULL,
  `restaurant_id` varchar(100) NOT NULL,
  `writer_id` varchar(45) NOT NULL,
  `review_contents` varchar(10000) NOT NULL,
  `review_score` varchar(10) NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `481351_review`
--

LOCK TABLES `481351_review` WRITE;
/*!40000 ALTER TABLE `481351_review` DISABLE KEYS */;
INSERT INTO `481351_review` VALUES ('0','481351','*모래알은반짝*','인천콩나물국밥.. 10년이 넘은 오래된 송도 콩나물국밥 전문점 중 한 곳이지요.. 아침하기 싫어하는 마눌이랑 꼭두새벽 한 그릇 먹으려 찾았습니다.. ','4.0'),('1','481351','이엉돈PD','갑자기 시원한 콩나물 해장국이 생각이 나서 검색을 통해 찾아간 콩나물해장국집','4.0'),('2','481351','2차원개그','요즘엔 해장으로 맑은 국물을 찾게되요. 옛날엔 콩나물국밥은 쳐다도 안봤는데, 요즘엔 콩나물국밥이 떙기더라구요 이 부근에 콩나물국밥집 많은데,여기가 제일 시원하고 좋더라구요','4.0'),('3','481351','또먹자','가격 7,000원 해장으로 제대로인! 등산에 어울리는 콩나물국밥전문점~*','5.0'),('4','481351','촉촉한챕스틱','콩나물 국밥 말고 적절한 곳이 잘 없습니다. 개인적으로 콩나물국밥을 별로 즐기는 편이 아니라 자주 찾아가지는 않는데.. 대충 한달에 한번 정도는 그래도 가게 되는 듯..','4.0');
/*!40000 ALTER TABLE `481351_review` ENABLE KEYS */;
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
