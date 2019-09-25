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
-- Table structure for table `363346_review`
--

DROP TABLE IF EXISTS `363346_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `363346_review` (
  `review_id` varchar(10) NOT NULL,
  `restaurant_id` varchar(100) NOT NULL,
  `writer_id` varchar(45) NOT NULL,
  `review_contents` varchar(10000) NOT NULL,
  `review_score` varchar(10) NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `363346_review`
--

LOCK TABLES `363346_review` WRITE;
/*!40000 ALTER TABLE `363346_review` DISABLE KEYS */;
INSERT INTO `363346_review` VALUES ('0','363346','꽃유리','자주 배달시켜 먹는데\n사장님 너무 친절해요.\n또한 만수주공 7,8단지라 가깝지않은 거림임에도\n총알배달에 혀를 내두릅니다.\n친절과 정직이 몸에 밴듯한 가게 같아요.\n진심 친절가게로 강추합니다 ㅎㅎ\n','5.0'),('1','363346','쿵떡♥찰떡','여기 맛있고 주인장 엄청 친절하고 대박나세요 시각차이겠지만 난 여기 맘에들어요\n','5.0'),('2','363346','초코파이ㅋ','자주 수제햄 1인분 포장해서 집에서 먹는데요. 홀에서 먹을때랑 포장해갈때랑 똑같이 친절하시고 좋아요! 육수 맛도 깊고 수제햄 상태도 좋구요. 다만 어떨때는 라면사리 할인해주실때도 있고 안해주실때도 있더라구요~ 단골이라 얼굴도 기억해주시고~ 이근방 음식집중에 제일 맘에 들어요!\n','5.0'),('3','363346','빨간하이힐','구월동 부대찌개 박가부대 지난번 가족끼리 토욜날 청년부미사 갔다가 집 근처에 있는 박가부대에 다녀왔어요부대찌개는 놀부부대찌개가 최고라고 생각했는데여길 다녀온 후 부대찌개는 박가부대가 짱..... ㅎㅎㅎ 구월동 맛집으로 추천해줘도 될만큼 정말 맛있게 먹었어요','5.0'),('4','363346','살빼면꽃미남','구월동 박가부대에서 수제햄부대찌개 먹고 왔어요 ♪ 어제는 아들이 갑자기 부대찌개가 먹고 싶다고 하더라구요. 그래서 집근처에 있는 박가부대로 고고씽!!~ 집에서 걸어서 10분정도의 거리에 있구요.. 구월동 올림픽기념관 사거리쪽 도로변에 있어서 찾기도 쉽답니다','4.0');
/*!40000 ALTER TABLE `363346_review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-19 13:30:51
