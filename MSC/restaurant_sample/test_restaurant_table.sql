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
-- Table structure for table `restaurant_table`
--

DROP TABLE IF EXISTS `restaurant_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant_table` (
  `restaurant_id` varchar(10) NOT NULL,
  `restaurant_name` varchar(40) NOT NULL,
  `web_link` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `rating` varchar(10) NOT NULL,
  `location` varchar(100) NOT NULL,
  `gps_N` varchar(20) NOT NULL,
  `gps_E` varchar(20) NOT NULL,
  `image_src` varchar(100) NOT NULL,
  `main_menu` varchar(200) NOT NULL,
  `main_menu_price` varchar(400) NOT NULL,
  `review_count_number` varchar(20) NOT NULL,
  PRIMARY KEY (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_table`
--

LOCK TABLES `restaurant_table` WRITE;
/*!40000 ALTER TABLE `restaurant_table` DISABLE KEYS */;
INSERT INTO `restaurant_table` VALUES ('270611','인천집','https://www.siksinhot.com/P/270611','한국음식 > 한정식','032-764-6401','3.6','','37.475543','126.628808','https://img.siksinhot.com/place/1486436248737145.jpg?w=307&h=300&c=Y','삼치구이, 모듬구이, 제육볶음','삼치구이-- 7,000 원, 모듬구이-- 15,000 원, 제육볶음-- 8,000 원','15'),('271618','그랜드하얏트인천 레스토랑8','https://www.siksinhot.com/P/271618','세계음식 > 퓨전레스토랑','032-745-1234','4.0','인천광역시 중구 영종해안남로321번길 208  이스트타워 로비층','37.440528','126.457516','https://img.siksinhot.com/place/1458613851003720.jpg?w=307&h=300&c=Y','주말 디너 뷔페 - 성인, 주말 디너 뷔페 - 어린이 만 6-12세','주말 디너 뷔페 - 성인-- 93,000 원, 주말 디너 뷔페 - 어린이 만 6-12세-- 46,500 원','8'),('323993','미야비 쉐라톤그랜드인천호텔','https://www.siksinhot.com/P/323993','세계음식 > 일본음식/초밥','032-835-1714','3.4','인천광역시 연수구 컨벤시아대로 153 쉐라톤인천호텔  쉐라톤그랜드인천호텔','37.390225','126.645426','https://img.siksinhot.com/place/1471421735970326.jpg?w=307&h=300&c=Y','미야비 벤또, 디럭스 스시 모둠(15pcs)','미야비 벤또-- 29,000 원, 디럭스 스시 모둠(15pcs)-- 50,000 원','12'),('350270','인천당','https://www.siksinhot.com/P/350270','세계음식 > 베이커리/제과점','032-766-0287','3.8','인천광역시 중구 참외전로 28-50','37.474088','126.632221','https://img.siksinhot.com/story/1439331488382142.jpg?w=307&h=300&c=Y','생과자 1근','생과자 1근-- 5,000 원','5'),('363346','박가부대 인천모래내점','https://www.siksinhot.com/P/363346','한국음식 > 찌개/전골/국/탕','032-464-7773','4.8','인천 남동구 구월로 263','37.456039','126.719924','https://img.siksinhot.com/place/1479864149847125.jpg?w=307&h=300&c=Y','박가부대찌개, 수제햄부대찌개, 김치부대찌개, 철판닭갈비, 둥글납작만두','박가부대찌개-- 7,000 원, 수제햄부대찌개-- 8,500 원, 김치부대찌개-- 7,500 원, 철판닭갈비-- 9,000 원, 둥글납작만두-- 4,000 원','5'),('363984','동인천삼치','https://www.siksinhot.com/P/363984','한국음식 > 해물탕/해물요리/꽃게','032-765-4320','4.5','','37.476335','126.628738','https://img.siksinhot.com/place/1450334694801548.jpg?w=307&h=300&c=Y','삼치구이, 생선전, 낙지볶음','삼치구이-- 5,000 원, 생선전-- 8,000 원, 낙지볶음-- 10,000 원','6'),('366478','글로리아진스 인천국제공항탑승동A점','https://www.siksinhot.com/P/366478','세계음식 > 카페/커피숍','032-743-1736','4.4','인천광역시 중구 공항로 271 인천국제공항역 ','37.447653','126.452162','https://img.siksinhot.com/place/1455038962573091.jpg?w=307&h=300&c=Y','아이스 바닐라, 아메리카노, 카페모카','아이스 바닐라-- 5,600 원, 아메리카노-- 4,000 원, 카페모카-- 5,300 원','5'),('368048','베네 쉐라톤그랜드인천호텔','https://www.siksinhot.com/P/368048','세계음식 > 이태리레스토랑','032-835-1716','4.0','인천 연수구 컨벤시아대로 153','37.390194','126.645442','https://img.siksinhot.com/place/1553570948991004.png?w=307&h=300&c=Y','평일 점심 샐러드 바, 주말 브런치','평일 점심 샐러드 바-- 33,000 원, 주말 브런치-- 52,000 원','6'),('368049','커넥션 쉐라톤그랜드인천호텔','https://www.siksinhot.com/P/368049','세계음식 > 카페/커피숍','032-835-1712','4.6','인천광역시 연수구 컨벤시아대로 153 쉐라톤인천호텔 ','37.390225','126.645426','https://img.siksinhot.com/place/1458753179221935.jpg?w=307&h=300&c=Y','아메리카노, 라떼','아메리카노-- 12,000 원, 라떼-- 8,000 원','5'),('370311','홀리데이인인천송도호텔 터치스카이루프톱바 ','https://www.siksinhot.com/P/370311','나이트라이프 > 바','032-250-0440','4.8','인천 연수구 인천타워대로 251','37.392727','126.63243','https://img.siksinhot.com/place/1471180806288445.PNG?w=307&h=300&c=Y','Mojito','Mojito-- 15,000 원','5'),('480590','인천가든','https://www.siksinhot.com/P/480590','한국음식 > 해물탕/해물요리/꽃게','063-564-8643','4.3','전라북도 고창군 원평길 9 인천가든산장 ','35.462547','126.627716','https://img.siksinhot.com/place/1496288924905962.jpg?w=307&h=300&c=Y','메기탕(대), 송사리탕, 새우탕','메기탕(대)-- 30,000 원 ~ 40,000 원, 송사리탕-- 30,000 원 ~ 40,000 원, 새우탕-- 30,000 원 ~ 40,000 원','3'),('481351','인천콩나물국밥','https://www.siksinhot.com/P/481351','한국음식 > 해장국/국밥','010-5342-3865','4.2','인천 연수구 청량로113번길 12','37.417765','126.654313','https://img.siksinhot.com/place/1499559898768113.jpg?w=307&h=300&c=Y','콩나물국밥','콩나물국밥-- 7,000 원','5');
/*!40000 ALTER TABLE `restaurant_table` ENABLE KEYS */;
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
