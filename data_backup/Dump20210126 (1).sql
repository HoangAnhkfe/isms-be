-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: ismssystem
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `is_correct` bit(1) NOT NULL,
  `question_id` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT (curdate()),
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_flag` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Answer_Question` (`question_id`),
  CONSTRAINT `fk_Answer_Question` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES (5,'2005 (ISO 9001:2005)',_binary '\0',2,'2021-01-18 00:00:00','2021-01-18 08:11:03',NULL),(6,'2015 (ISO 9001:2015)',_binary '',2,'2021-01-18 00:00:00','2021-01-18 08:11:04',NULL),(7,'2008 (ISO 9001:2008)',_binary '\0',2,'2021-01-18 00:00:00','2021-01-18 08:11:04',NULL),(8,'2018 (ISO 9001:2018)',_binary '\0',2,'2021-01-18 00:00:00','2021-01-18 08:11:04',NULL),(9,'Thiết lập kế hoạch, mục tiêu',_binary '\0',3,'2021-01-18 00:00:00','2021-01-18 08:13:00',NULL),(10,'Thực hiện các hạng mục đã hoạch định',_binary '\0',3,'2021-01-18 00:00:00','2021-01-18 08:13:00',NULL),(11,'Đưa ra các giải pháp để cải tiến',_binary '\0',3,'2021-01-18 00:00:00','2021-01-18 08:13:01',NULL),(12,'Giám sát, kiểm tra và đo lường kết quả',_binary '',3,'2021-01-18 00:00:00','2021-01-18 08:13:01',NULL),(13,'Báo phòng IT xử lý kết nối VPN và báo quản lý để nắm tình hình',_binary '',4,'2021-01-18 00:00:00','2021-01-18 08:14:19',NULL),(14,'Bạn tải về máy tính cá nhân để xử lý task của khách hàng trước, sau đó báo lại phòng IT xử lý VPN',_binary '\0',4,'2021-01-18 00:00:00','2021-01-18 08:14:19',NULL),(15,'Không được phép',_binary '',5,'2021-01-18 00:00:00','2021-01-18 08:15:24',NULL),(16,'Không liên quan vì chỉ làm việc cá nhân',_binary '\0',5,'2021-01-18 00:00:00','2021-01-18 08:15:24',NULL),(17,'Được phép dùng vì là phục vụ công việc',_binary '\0',5,'2021-01-18 00:00:00','2021-01-18 08:15:24',NULL),(18,'Giữ lại để tái sử dụng nếu chỉ mới in 1 mặt, hoặc bảo vệ môi trường bằng cách dùng để lót ly uống nước trên bàn làm việc',_binary '\0',6,'2021-01-18 00:00:00','2021-01-18 08:16:44',NULL),(19,'Sử dụng máy hủy giấy để hủy các tài liệu mật này theo đúng quy địng công ty',_binary '',6,'2021-01-18 00:00:00','2021-01-18 08:16:45',NULL),(20,'Xé bằng tay và vứt vào sọt rác để tiết kiệm thời gian, vì đã xé nhỏ nên người khác sẽ không đọc được thông tin gì',_binary '\0',6,'2021-01-18 00:00:00','2021-01-18 08:16:45',NULL),(21,'Lưu tài liệu trên file server hoặc hệ thống lưu trữ nội bộ của công ty nhằm tránh rò rỉ dữ liệu hoặc bất kì ai trong dự án cũng có thể truy xuất để sử dụng khi cần',_binary '',7,'2021-01-18 00:00:00','2021-01-18 08:18:06',NULL),(22,'Tải tài liệu về để trên Desktop máy tính để dùng cho nhanh, tiết kiệm thời gian truy xuất',_binary '\0',7,'2021-01-18 00:00:00','2021-01-18 08:18:07',NULL),(23,'Dùng tài khoản cá nhân (@gmail.com) tải tài liệu lên hệ thống Google Drive để có thể xem và nghiên cứu thêm ở nhà, tiết kiệm thời gian làm việc trên công ty',_binary '\0',7,'2021-01-18 00:00:00','2021-01-18 08:18:07',NULL),(24,'hông được phép vì vi phạm quy định sử dụng các thiết bị ghi hình ghi âm trong khu vực cấm',_binary '',8,'2021-01-18 00:00:00','2021-01-18 08:19:33',NULL),(25,'Được phép vì chỉ chụp ảnh bữa tiệc, không chụp ảnh gì quan trọng cả',_binary '\0',8,'2021-01-18 00:00:00','2021-01-18 08:19:34',NULL),(26,'Tuân thủ quy định & hướng dẫn quản lý tài sản của khách hàng khi được cung cấp hoặc sử dụng, nếu không có thì tuân thủ theo quy định & hướng dãn của công ty',_binary '\0',9,'2021-01-18 00:00:00','2021-01-18 08:21:09',NULL),(27,'Bàn giao lại cho người có trách nhiệm khi bạn thay đổi vị trí công việc',_binary '\0',9,'2021-01-18 00:00:00','2021-01-18 08:21:09',NULL),(28,'Tất cả các đáp án trên đều đúng',_binary '',9,'2021-01-18 00:00:00','2021-01-18 08:21:09',NULL),(29,'Máy tính cá nhân',_binary '\0',10,'2021-01-18 00:00:00','2021-01-18 08:22:44',NULL),(30,'Máy tính công ty',_binary '\0',10,'2021-01-18 00:00:00','2021-01-18 08:22:45',NULL),(31,'Không được phép lưu bất cứ thông tin nào khi chưa được phép',_binary '',10,'2021-01-18 00:00:00','2021-01-18 08:22:45',NULL),(32,'Google Drive cá nhân',_binary '\0',10,'2021-01-18 00:00:00','2021-01-18 08:23:47',NULL),(33,'Không, đội dự án chỉ cần sử dụng thôi',_binary '\0',11,'2021-01-18 00:00:00','2021-01-18 08:25:15',NULL),(34,'Có, đội dự án có trách nhiệm bảo mật server đó',_binary '',11,'2021-01-18 00:00:00','2021-01-18 08:25:15',NULL),(35,'Cả A và B đều đúng',_binary '\0',11,'2021-01-18 00:00:00','2021-01-18 08:25:15',NULL),(36,'Cả A và B đều sai',_binary '\0',11,'2021-01-18 00:00:00','2021-01-18 08:25:15',NULL),(37,'Đúng',_binary '',12,'2021-01-18 00:00:00','2021-01-18 08:26:43',NULL),(38,'Sai',_binary '\0',12,'2021-01-18 00:00:00','2021-01-18 08:26:43',NULL),(39,'Bảo quản tài liệu mật trong tủ có khóa, không để tại nơi công cộng: máy in, máy photo, …',_binary '\0',13,'2021-01-18 00:00:00','2021-01-18 08:28:25',NULL),(40,'Không mang thông tin, tài sản ra khỏi khu vực làm việc khi chưa có phê duyệt của người có thẩm quyền',_binary '\0',13,'2021-01-18 00:00:00','2021-01-18 08:28:25',NULL),(41,'Khi mang thông tin, tài sản ra ngoài phải có biện pháp bảo mật phù hợp',_binary '\0',13,'2021-01-18 00:00:00','2021-01-18 08:28:26',NULL),(42,'Tất cả các đáp án trên đều đúng',_binary '',13,'2021-01-18 00:00:00','2021-01-18 08:28:26',NULL),(43,'Được phép, vì đó là tự do cá nhân',_binary '\0',14,'2021-01-18 00:00:00','2021-01-18 08:29:18',NULL),(44,'Không được phép, vì vi phạm tính bảo mật khi tiết lộ thông tin khách hàng, dự án',_binary '',14,'2021-01-18 00:00:00','2021-01-18 08:29:18',NULL),(54,'Đáng được tuyên dương và khen thưởng',_binary '\0',15,'2021-01-19 00:00:00','2021-01-19 09:46:59',NULL),(55,'KVi phạm quy định An ninh thông tin vì gây rủi ro lây nhiễm virus vào mạng công ty',_binary '',15,'2021-01-19 00:00:00','2021-01-19 09:46:59',NULL),(60,'Đáp ứng yêu cầu kỹ thuật',_binary '\0',19,'2021-01-19 00:00:00','2021-01-19 09:49:44',NULL),(61,' Không có lỗi',_binary '\0',19,'2021-01-19 00:00:00','2021-01-19 09:49:44',NULL),(62,' Thỏa mãn văn hóa công ty',_binary '',19,'2021-01-19 00:00:00','2021-01-19 09:49:44',NULL),(63,'Cam kết trong hợp đồng với khách hàng',_binary '\0',19,'2021-01-19 00:00:00','2021-01-19 09:49:44',NULL),(64,'2018',_binary '\0',1,'2021-01-19 00:00:00','2021-01-19 09:50:26',NULL),(65,'2019',_binary '',1,'2021-01-19 00:00:00','2021-01-19 09:50:26',NULL),(66,'2020',_binary '\0',1,'2021-01-19 00:00:00','2021-01-19 09:50:26',NULL),(67,'2021',_binary '\0',1,'2021-01-19 00:00:00','2021-01-19 09:50:26',NULL),(68,'Đáp ứng yêu cầu kỹ thuật',_binary '\0',20,'2021-01-19 00:00:00','2021-01-19 09:55:21',NULL),(69,' Không có lỗi',_binary '\0',20,'2021-01-19 00:00:00','2021-01-19 09:55:21',NULL),(70,'2019',_binary '',20,'2021-01-19 00:00:00','2021-01-19 09:55:21',NULL);
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail`
--

DROP TABLE IF EXISTS `detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `greeting` text NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `exam_time` int NOT NULL,
  `file` char(250) NOT NULL,
  `qms_total` int NOT NULL,
  `isms_total` int NOT NULL,
  `qms_pass` int NOT NULL,
  `isms_pass` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT (curdate()),
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_flag` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail`
--

LOCK TABLES `detail` WRITE;
/*!40000 ALTER TABLE `detail` DISABLE KEYS */;
INSERT INTO `detail` VALUES (10,'Chào mừng các Hybriders đến với Khóa đào tạo định kỳ về Chất lượng và An ninh thông tin.\r\nAnh/Chị vui lòng sắp xếp thời gian để hoàn thành bài kiểm tra nhằm nâng cao tinh thần tuân thủ quy định \r\nAn ninh thông tin và Quản lý chất lượng tại Công ty.\r\n….\r\n                ','2021-01-21 00:00:00','2021-02-27 00:00:00',15,'https://gate.hybrid-technologies.co.jp/main',3,12,3,12,'2021-01-26 00:00:00','2021-01-26 10:52:01',NULL),(11,'Chào mừng các Hybriders đến với Khóa đào tạo định kỳ về Chất lượng và An ninh thông tin.\r\nAnh/Chị vui lòng sắp xếp thời gian để hoàn thành bài kiểm tra nhằm nâng cao tinh thần tuân thủ quy định \r\nAn ninh thông tin và Quản lý chất lượng tại Công ty.\r\n….\r\n                ','2021-01-21 00:00:00','2021-02-27 00:00:00',15,'https://gate.hybrid-technologies.co.jp/main',3,12,3,12,'2021-01-26 00:00:00','2021-01-26 10:54:08',NULL),(12,'Chào mừng các Hybriders đến với Khóa đào tạo định kỳ về Chất lượng và An ninh thông tin.\r\nAnh/Chị vui lòng sắp xếp thời gian để hoàn thành bài kiểm tra nhằm nâng cao tinh thần tuân thủ quy định \r\nAn ninh thông tin và Quản lý chất lượng tại Công ty.\r\n….\r\n                ','2021-01-21 00:00:00','2021-02-27 00:00:00',15,'https://gate.hybrid-technologies.co.jp/main',3,12,3,12,'2021-01-26 00:00:00','2021-01-26 10:54:58',NULL),(13,'Chào mừng các Hybriders đến với Khóa đào tạo định kỳ về Chất lượng và An ninh thông tin.\r\nAnh/Chị vui lòng sắp xếp thời gian để hoàn thành bài kiểm tra nhằm nâng cao tinh thần tuân thủ quy định \r\nAn ninh thông tin và Quản lý chất lượng tại Công ty.\r\n….\r\n                ','2021-01-21 00:00:00','2021-02-27 00:00:00',15,'https://gate.hybrid-technologies.co.jp/main',3,12,3,12,'2021-01-26 00:00:00','2021-01-26 10:57:57',NULL),(14,'Chào mừng các Hybriders đến với Khóa đào tạo định kỳ về Chất lượng và An ninh thông tin.\r\nAnh/Chị vui lòng sắp xếp thời gian để hoàn thành bài kiểm tra nhằm nâng cao tinh thần tuân thủ quy định \r\nAn ninh thông tin và Quản lý chất lượng tại Công ty.\r\n….\r\n                ','2021-01-21 00:00:00','2021-02-27 00:00:00',15,'https://gate.hybrid-technologies.co.jp/main',3,12,3,12,'2021-01-26 00:00:00','2021-01-26 10:58:56',NULL),(15,'Chào mừng các Hybriders đến với Khóa đào tạo định kỳ về Chất lượng và An ninh thông tin.\r\nAnh/Chị vui lòng sắp xếp thời gian để hoàn thành bài kiểm tra nhằm nâng cao tinh thần tuân thủ quy định \r\nAn ninh thông tin và Quản lý chất lượng tại Công ty.\r\n….\r\n                \r\n                ','2021-01-21 00:00:00','2021-02-27 00:00:00',15,'https://gate.hybrid-technologies.co.jp/main',3,12,3,12,'2021-01-26 00:00:00','2021-01-26 15:44:25',NULL);
/*!40000 ALTER TABLE `detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail_id` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT (curdate()),
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_flag` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `fk_Email_Detail` (`detail_id`),
  CONSTRAINT `fk_Email_Detail` FOREIGN KEY (`detail_id`) REFERENCES `detail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
INSERT INTO `email` VALUES (144,'nhiptt@hybrid-technologies.vn',15,'2021-01-26 00:00:00','2021-01-26 17:25:18',_binary '\0'),(145,'thanhnv@hybrid-technologies.vn',15,'2021-01-26 00:00:00','2021-01-26 17:25:18',_binary '\0'),(146,'hoanpn@hybrid-technologies.vn',15,'2021-01-26 00:00:00','2021-01-26 17:25:18',_binary '\0'),(147,'dangnh@hybrid-technologies.vn',15,'2021-01-26 00:00:00','2021-01-26 17:25:18',_binary '\0'),(148,'nhintl@hybrid-technologies.vn',15,'2021-01-26 00:00:00','2021-01-26 17:25:18',_binary '\0'),(149,'diempth@evolableasia.vn',15,'2021-01-26 00:00:00','2021-01-26 17:25:18',_binary '\0'),(150,'khanhnq@hybrid-technologies.vn',15,'2021-01-26 00:00:00','2021-01-26 17:25:18',_binary '\0'),(151,'ngannt@hybrid-technologies.vn',15,'2021-01-26 00:00:00','2021-01-26 17:25:18',_binary '\0'),(152,'hungdt@hybrid-technologies.vn',15,'2021-01-26 00:00:00','2021-01-26 17:25:18',_binary '\0'),(153,'trangntt@hybrid-technologies.co.jp',15,'2021-01-26 00:00:00','2021-01-26 17:25:18',_binary '\0'),(154,'hongdp@gmail.com',15,'2021-01-26 00:00:00','2021-01-26 16:50:30',_binary ''),(155,'anhnh@hybrid-technologies.vn',15,'2021-01-26 00:00:00','2021-01-26 17:25:18',_binary '\0'),(180,'thuynv@hybrid-technologies.vn',15,'2021-01-26 00:00:00','2021-01-26 17:29:35',_binary '\0'),(181,'tuanbv@hybrid-technologies.vn',15,'2021-01-26 00:00:00','2021-01-26 17:39:48',_binary '\0'),(183,'phucnv@hybrid-technologies.vn',15,'2021-01-26 00:00:00','2021-01-26 17:40:39',_binary '\0'),(184,'ahihi@hybrid-technologies.vn',15,'2021-01-26 00:00:00','2021-01-26 17:43:56',_binary ''),(185,'ahihik@hybrid-technologies.vn',15,'2021-01-26 00:00:00','2021-01-26 17:44:36',_binary ''),(186,'ahihikl@hybrid-technologies.vn',15,'2021-01-26 00:00:00','2021-01-26 17:46:48',_binary ''),(187,'ahihikl123@hybrid-technologies.vn',15,'2021-01-26 00:00:00','2021-01-26 17:46:53',_binary '\0');
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lab`
--

DROP TABLE IF EXISTS `lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lab` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT (curdate()),
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_flag` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab`
--

LOCK TABLES `lab` WRITE;
/*!40000 ALTER TABLE `lab` DISABLE KEYS */;
INSERT INTO `lab` VALUES (1,'WakuWaku','2021-01-14 00:00:00','2021-01-20 08:32:10',NULL),(2,'Fresher','2021-01-20 00:00:00','2021-01-20 08:32:10',NULL),(3,' Ewel','2021-01-20 00:00:00','2021-01-20 08:32:10',NULL),(4,'Buy Sell','2021-01-20 00:00:00','2021-01-20 08:32:10',NULL),(5,'Nextbeat','2021-01-20 00:00:00','2021-01-20 08:32:10',NULL),(6,'Premium','2021-01-20 00:00:00','2021-01-20 08:32:10',NULL),(7,' Kyash','2021-01-20 00:00:00','2021-01-20 08:32:10',NULL),(8,'Tag Automation','2021-01-20 00:00:00','2021-01-20 08:32:10',NULL),(9,'Data Chemistry','2021-01-20 00:00:00','2021-01-20 08:32:10',NULL),(10,'Miidas','2021-01-20 00:00:00','2021-01-20 08:32:10',NULL),(11,'Elife','2021-01-20 00:00:00','2021-01-20 08:32:10',NULL),(12,'Default','2021-01-26 00:00:00','2021-01-26 10:32:22',NULL);
/*!40000 ALTER TABLE `lab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maexamplestatus`
--

DROP TABLE IF EXISTS `maexamplestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maexamplestatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` bit(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT (curdate()),
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_flag` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maexamplestatus`
--

LOCK TABLES `maexamplestatus` WRITE;
/*!40000 ALTER TABLE `maexamplestatus` DISABLE KEYS */;
INSERT INTO `maexamplestatus` VALUES (2,'init_exam',_binary '\0','2021-01-22 00:00:00','2021-01-22 14:27:39',NULL),(3,'fail',_binary '\0','2021-01-22 00:00:00','2021-01-22 14:28:03',NULL),(4,'force_fail',_binary '\0','2021-01-22 00:00:00','2021-01-22 14:28:21',NULL),(5,'pass',_binary '','2021-01-22 00:00:00','2021-01-22 14:28:31',NULL),(6,'force_pass',_binary '','2021-01-22 00:00:00','2021-01-22 14:28:44',NULL);
/*!40000 ALTER TABLE `maexamplestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `category` enum('QMS','ISMS') NOT NULL,
  `created_at` datetime NOT NULL DEFAULT (curdate()),
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_flag` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'Công ty đạt chứng chỉ ISO 9001:2015 về Hệ thống quản lý chất lượng vào năm nào?','QMS','2021-01-18 00:00:00','2021-01-18 08:02:20',NULL),(2,'Công ty đạt chứng chỉ và đang áp dụng Hệ thống quản lý chất lượng theo tiêu chuẩn ISO 9001 phiên bản năm nào?','QMS','2021-01-18 00:00:00','2021-01-18 08:10:59',NULL),(3,'Hoạt động nào diễn ra trong quá trình Check của mô hình PDCA?','QMS','2021-01-18 00:00:00','2021-01-18 08:11:57',NULL),(4,'Vì tình hình dịch bệnh, bạn được công ty cho phép làm việc từ xa. Khách hàng giao task gấp cho bạn nhưng bạn lại không kết nối vào VPN được, bạn sẽ làm gì?','ISMS','2021-01-18 00:00:00','2021-01-18 08:14:18',NULL),(5,'Trong khu vực Lab, có được mang laptop cá nhân vào sử dụng không?','ISMS','2021-01-18 00:00:00','2021-01-18 08:15:24',NULL),(6,'Tài liệu mật của dự án (do dự án in ra bản cứng) khi không còn nhu cầu sử dụng bạn sẽ làm gì?','ISMS','2021-01-18 00:00:00','2021-01-18 08:16:44',NULL),(7,'Tài liệu khách hàng gửi để tham khảo cho dự án (soft copy), bạn lưu trữ tại đâu?','ISMS','2021-01-18 00:00:00','2021-01-18 08:18:06',NULL),(8,'Trước cửa ra/vào của phòng làm việc có dán biển: \"Khu vực hạn chế - Không sự dụng máy ảnh\". Trưa hôm đó, một nhân viên trong phòng có tổ chức tiệc ngọt chúc mừng sinh nhật, mọi người vui vẻ chụp ảnh trong bữa tiệc. Theo bạn, hành động này là?','ISMS','2021-01-18 00:00:00','2021-01-18 08:19:33',NULL),(9,' Tài sản của khách hàng giao để phục vụ dự án cần được quản lý bằng cách? ','ISMS','2021-01-18 00:00:00','2021-01-18 08:21:09',NULL),(10,'Nơi nào bạn lưu trữ thông tin liên quan đến dự án sau khi kết thúc dự án?','ISMS','2021-01-18 00:00:00','2021-01-18 08:22:44',NULL),(11,'Khi khách hàng giao một server cho dự án của bạn toàn quyền sử dụng, dự án có cần bảo mật server đó hay không? ','ISMS','2021-01-18 00:00:00','2021-01-18 08:25:15',NULL),(12,' Nhận định này có đúng không: \"Không sử dụng bất kỳ thông tin bảo mật nào của công ty cho mục đích cá nhân (cho đơn xin việc hoặc để chia sẻ với bạn bè hoặc người thân)','ISMS','2021-01-18 00:00:00','2021-01-18 08:26:43',NULL),(13,'Đáp án nào thuộc về các quy định của công ty về An ninh thông tin đối với việc sử dụng thông tin mật?','ISMS','2021-01-18 00:00:00','2021-01-18 08:28:25',NULL),(14,'Chia sẻ với bạn bè về “chiến tích” làm với khách hàng nào, dự án gì, ngôn ngữ nào là hành động?','ISMS','2021-01-18 00:00:00','2021-01-18 08:29:18',NULL),(15,'Dự án của bạn đang gấp rút và bạn cần một phần mềm để tự động hóa, nâng cao năng suất một phần công việc lặp đi lặp lại của dự án. Bạn lên mạng tìm được 1 phần mềm để sử dụng khiến quản lý ngỡ ngàng về khối lượng công việc bạn đạt được trong tuần vừa qua. Hành động của bạn trên được đánh giá như thế nào?','ISMS','2021-01-18 00:00:00','2021-01-18 08:30:08',NULL),(16,'Chất lượng của sản phẩm và dịch vụ cung cấp cho khách hàng không bao gồm tiêu chí nào sau đây?','QMS','2021-01-19 00:00:00','2021-01-19 08:33:30',_binary ''),(17,'Chất lượng của sản phẩm và dịch vụ cung cấp cho khách hàng không bao gồm tiêu chí nào sau đây?','QMS','2021-01-19 00:00:00','2021-01-19 08:33:31',_binary ''),(18,'Chất lượng của sản phẩm và dịch vụ cung cấp cho khách hàng không bao gồm tiêu chí nào sau đây?','QMS','2021-01-19 00:00:00','2021-01-19 08:33:35',_binary ''),(19,'Chất lượng của sản phẩm và dịch vụ cung cấp cho khách hàng không bao gồm tiêu chí nào sau đây?','QMS','2021-01-19 00:00:00','2021-01-19 09:34:54',NULL),(20,'test','ISMS','2021-01-19 00:00:00','2021-01-19 09:53:27',NULL);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `hash_pwd` char(100) DEFAULT NULL,
  `type` enum('admin','user') NOT NULL,
  `lab_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT (curdate()),
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_flag` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_User_Lab` (`lab_id`),
  CONSTRAINT `fk_User_Lab` FOREIGN KEY (`lab_id`) REFERENCES `lab` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Nguyen Hoang Anh','anhnh@gmail.com','pbkdf2:sha256:150000$ZUHdRCNf$f84d00bb7f916c89914f622194339fd930b96972ec748d41759bc1b6ec14d75b','admin',1,'2021-01-18 00:00:00','2021-01-21 09:43:02',NULL),(28,NULL,'nhiptt@hybrid-technologies.vn',NULL,'user',NULL,'2021-01-26 00:00:00','2021-01-26 10:52:01',NULL),(29,NULL,'thanhnv@hybrid-technologies.vn',NULL,'user',NULL,'2021-01-26 00:00:00','2021-01-26 10:52:01',NULL),(30,NULL,'hoanpn@hybrid-technologies.vn',NULL,'user',NULL,'2021-01-26 00:00:00','2021-01-26 10:52:01',NULL),(31,NULL,'dangnh@hybrid-technologies.vn',NULL,'user',NULL,'2021-01-26 00:00:00','2021-01-26 10:52:01',NULL),(32,NULL,'nhintl@hybrid-technologies.vn',NULL,'user',NULL,'2021-01-26 00:00:00','2021-01-26 10:52:01',NULL),(33,NULL,'diempth@evolableasia.vn',NULL,'user',NULL,'2021-01-26 00:00:00','2021-01-26 10:52:01',NULL),(34,NULL,'khanhnq@hybrid-technologies.vn',NULL,'user',NULL,'2021-01-26 00:00:00','2021-01-26 10:52:02',NULL),(35,NULL,'ngannt@hybrid-technologies.vn',NULL,'user',NULL,'2021-01-26 00:00:00','2021-01-26 10:52:02',NULL),(36,'Dang The Hung','hungdt@hybrid-technologies.vn',NULL,'user',1,'2021-01-26 00:00:00','2021-01-26 11:10:25',NULL),(37,NULL,'trangntt@hybrid-technologies.co.jp',NULL,'user',NULL,'2021-01-26 00:00:00','2021-01-26 10:52:02',NULL),(38,NULL,'hongdp@gmail.com',NULL,'user',NULL,'2021-01-26 00:00:00','2021-01-26 10:52:02',NULL),(39,'Nguyen Hoang Anh','anhnh@hybrid-technologies.vn',NULL,'user',2,'2021-01-26 00:00:00','2021-01-26 11:23:57',NULL),(40,NULL,'thuynv@hybrid-technologies.vn',NULL,'user',NULL,'2021-01-26 00:00:00','2021-01-26 17:25:18',NULL),(41,NULL,'tuanbv@hybrid-technologies.vn',NULL,'user',NULL,'2021-01-26 00:00:00','2021-01-26 17:37:55',NULL),(42,NULL,'phucnv@hybrid-technologies.vn',NULL,'user',NULL,'2021-01-26 00:00:00','2021-01-26 17:40:39',NULL),(43,NULL,'ahihi@hybrid-technologies.vn',NULL,'user',NULL,'2021-01-26 00:00:00','2021-01-26 17:42:48',NULL),(44,NULL,'ahihik@hybrid-technologies.vn',NULL,'user',NULL,'2021-01-26 00:00:00','2021-01-26 17:43:58',NULL),(45,NULL,'ahihikl@hybrid-technologies.vn',NULL,'user',NULL,'2021-01-26 00:00:00','2021-01-26 17:44:47',NULL),(46,NULL,'ahihikl123@hybrid-technologies.vn',NULL,'user',NULL,'2021-01-26 00:00:00','2021-01-26 17:46:55',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdetail`
--

DROP TABLE IF EXISTS `userdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userdetail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `detail_id` int NOT NULL,
  `status_id` int NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT (curdate()),
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_flag` bit(1) DEFAULT NULL,
  `updated_acc` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_user_detail` (`user_id`,`detail_id`),
  KEY `fk_UserDetail_Detail` (`detail_id`) /*!80000 INVISIBLE */,
  KEY `fk_UserDetail_MaExampleStatus` (`status_id`),
  CONSTRAINT `fk_UserDetail_Detail` FOREIGN KEY (`detail_id`) REFERENCES `detail` (`id`),
  CONSTRAINT `fk_UserDetail_MaExampleStatus` FOREIGN KEY (`status_id`) REFERENCES `maexamplestatus` (`id`),
  CONSTRAINT `fk_UserDetail_User` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdetail`
--

LOCK TABLES `userdetail` WRITE;
/*!40000 ALTER TABLE `userdetail` DISABLE KEYS */;
INSERT INTO `userdetail` VALUES (35,28,10,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:52:02',NULL,NULL),(36,29,10,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:52:02',NULL,NULL),(37,30,10,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:52:02',NULL,NULL),(38,31,10,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:52:02',NULL,NULL),(39,32,10,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:52:02',NULL,NULL),(40,33,10,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:52:02',NULL,NULL),(41,34,10,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:52:02',NULL,NULL),(42,35,10,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:52:02',NULL,NULL),(43,36,10,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:52:02',NULL,NULL),(44,37,10,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:52:02',NULL,NULL),(45,38,10,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:52:02',NULL,NULL),(46,28,12,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:54:59',NULL,NULL),(47,29,12,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:54:59',NULL,NULL),(48,30,12,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:54:59',NULL,NULL),(49,31,12,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:54:59',NULL,NULL),(50,32,12,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:54:59',NULL,NULL),(51,33,12,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:54:59',NULL,NULL),(52,34,12,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:54:59',NULL,NULL),(53,35,12,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:54:59',NULL,NULL),(54,36,12,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:54:59',NULL,NULL),(55,37,12,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:54:59',NULL,NULL),(56,38,12,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:54:59',NULL,NULL),(57,28,13,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:57:57',NULL,NULL),(58,29,13,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:57:57',NULL,NULL),(59,30,13,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:57:57',NULL,NULL),(60,31,13,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:57:57',NULL,NULL),(61,32,13,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:57:57',NULL,NULL),(62,33,13,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:57:57',NULL,NULL),(63,34,13,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:57:57',NULL,NULL),(64,35,13,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:57:57',NULL,NULL),(65,36,13,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:57:57',NULL,NULL),(66,37,13,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:57:57',NULL,NULL),(67,38,13,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:57:57',NULL,NULL),(68,28,14,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:58:57',NULL,NULL),(69,29,14,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:58:57',NULL,NULL),(70,30,14,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:58:57',NULL,NULL),(71,31,14,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:58:57',NULL,NULL),(72,32,14,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:58:57',NULL,NULL),(73,33,14,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:58:57',NULL,NULL),(74,34,14,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:58:57',NULL,NULL),(75,35,14,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:58:57',NULL,NULL),(76,36,14,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:58:57',NULL,NULL),(77,37,14,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:58:57',NULL,NULL),(78,38,14,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:58:57',NULL,NULL),(79,28,15,6,'2021-01-26 14:06:25','2021-01-26 14:06:25','2021-01-26 00:00:00','2021-01-26 14:06:51',NULL,NULL),(80,29,15,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:59:20',NULL,NULL),(81,30,15,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:59:20',NULL,NULL),(82,31,15,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:59:20',NULL,NULL),(83,32,15,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:59:20',NULL,NULL),(84,33,15,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:59:20',NULL,NULL),(85,34,15,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:59:20',NULL,NULL),(86,35,15,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:59:20',NULL,NULL),(87,36,15,3,'2021-01-26 11:16:54','2021-01-26 11:17:21','2021-01-26 00:00:00','2021-01-26 11:17:21',NULL,NULL),(88,37,15,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:59:20',NULL,NULL),(89,38,15,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 10:59:20',NULL,NULL),(90,39,15,4,'2021-01-26 11:23:58','2021-01-26 11:24:30','2021-01-26 00:00:00','2021-01-26 13:34:07',NULL,NULL),(91,40,15,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 17:25:18',NULL,NULL),(92,41,15,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 17:37:55',NULL,NULL),(93,42,15,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 17:40:39',NULL,NULL),(94,43,15,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 17:43:00',NULL,NULL),(95,44,15,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 17:43:58',NULL,NULL),(96,45,15,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 17:45:06',NULL,NULL),(97,46,15,2,NULL,NULL,'2021-01-26 00:00:00','2021-01-26 17:47:05',NULL,NULL);
/*!40000 ALTER TABLE `userdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userquestion`
--

DROP TABLE IF EXISTS `userquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userquestion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_detail_id` int NOT NULL,
  `question_id` int NOT NULL,
  `answer_id` int DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT (0),
  `created_at` datetime NOT NULL DEFAULT (curdate()),
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_flag` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_user_detail_question` (`user_detail_id`,`question_id`),
  KEY `fk_UserQuestion_Question` (`question_id`),
  KEY `fk_UserQuestion_Answer` (`answer_id`),
  CONSTRAINT `fk_UserQuestion_Answer` FOREIGN KEY (`answer_id`) REFERENCES `answer` (`id`),
  CONSTRAINT `fk_UserQuestion_Question` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`),
  CONSTRAINT `fk_UserQuestion_UserDetail` FOREIGN KEY (`user_detail_id`) REFERENCES `userdetail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userquestion`
--

LOCK TABLES `userquestion` WRITE;
/*!40000 ALTER TABLE `userquestion` DISABLE KEYS */;
INSERT INTO `userquestion` VALUES (324,79,2,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(325,79,3,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(326,79,19,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(327,79,13,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(328,79,10,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(329,79,8,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(330,79,5,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(331,79,7,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(332,79,4,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(333,79,9,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(334,79,11,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(335,79,6,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(336,79,15,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(337,79,14,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(338,79,12,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(339,80,3,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(340,80,1,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(341,80,19,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(342,80,7,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(343,80,6,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(344,80,5,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(345,80,8,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(346,80,13,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(347,80,14,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(348,80,9,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(349,80,20,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(350,80,15,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(351,80,11,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(352,80,4,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(353,80,12,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(354,81,2,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(355,81,19,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(356,81,1,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(357,81,5,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(358,81,9,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(359,81,7,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(360,81,11,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(361,81,12,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(362,81,6,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(363,81,13,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(364,81,15,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(365,81,8,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(366,81,20,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(367,81,4,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(368,81,10,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(369,82,1,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(370,82,3,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(371,82,2,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(372,82,5,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(373,82,4,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(374,82,15,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(375,82,7,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(376,82,9,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(377,82,13,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(378,82,11,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(379,82,12,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(380,82,8,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(381,82,10,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(382,82,20,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(383,82,14,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(384,83,3,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(385,83,19,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(386,83,2,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(387,83,15,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(388,83,14,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(389,83,20,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(390,83,9,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(391,83,8,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(392,83,6,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(393,83,7,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(394,83,10,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(395,83,4,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(396,83,11,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(397,83,13,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(398,83,12,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(399,84,19,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(400,84,3,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(401,84,2,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(402,84,10,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(403,84,20,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(404,84,9,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(405,84,12,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(406,84,6,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(407,84,14,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(408,84,4,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(409,84,8,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(410,84,5,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(411,84,13,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(412,84,11,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(413,84,7,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(414,85,2,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(415,85,3,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(416,85,19,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(417,85,7,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(418,85,6,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(419,85,10,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(420,85,13,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(421,85,4,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(422,85,12,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(423,85,14,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(424,85,9,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(425,85,5,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(426,85,11,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(427,85,20,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(428,85,8,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(429,86,19,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(430,86,2,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(431,86,1,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(432,86,13,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(433,86,9,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(434,86,10,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(435,86,6,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(436,86,4,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(437,86,11,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(438,86,7,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(439,86,14,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(440,86,8,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(441,86,5,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(442,86,15,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(443,86,20,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(444,87,3,10,_binary '\0','2021-01-26 00:00:00','2021-01-26 11:16:57',NULL),(445,87,1,66,_binary '\0','2021-01-26 00:00:00','2021-01-26 11:16:56',NULL),(446,87,19,60,_binary '\0','2021-01-26 00:00:00','2021-01-26 11:16:59',NULL),(447,87,20,68,_binary '\0','2021-01-26 00:00:00','2021-01-26 11:17:16',NULL),(448,87,9,27,_binary '\0','2021-01-26 00:00:00','2021-01-26 11:17:07',NULL),(449,87,11,34,_binary '','2021-01-26 00:00:00','2021-01-26 11:17:10',NULL),(450,87,13,39,_binary '\0','2021-01-26 00:00:00','2021-01-26 11:17:13',NULL),(451,87,4,13,_binary '','2021-01-26 00:00:00','2021-01-26 11:17:00',NULL),(452,87,7,21,_binary '','2021-01-26 00:00:00','2021-01-26 11:17:05',NULL),(453,87,5,16,_binary '\0','2021-01-26 00:00:00','2021-01-26 11:17:01',NULL),(454,87,8,25,_binary '\0','2021-01-26 00:00:00','2021-01-26 11:17:06',NULL),(455,87,10,29,_binary '\0','2021-01-26 00:00:00','2021-01-26 11:17:08',NULL),(456,87,15,55,_binary '','2021-01-26 00:00:00','2021-01-26 11:17:15',NULL),(457,87,12,38,_binary '\0','2021-01-26 00:00:00','2021-01-26 11:17:11',NULL),(458,87,6,18,_binary '\0','2021-01-26 00:00:00','2021-01-26 11:17:03',NULL),(459,88,3,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(460,88,1,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(461,88,19,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(462,88,20,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(463,88,5,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(464,88,7,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(465,88,12,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(466,88,14,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(467,88,11,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(468,88,15,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(469,88,8,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(470,88,6,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(471,88,9,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(472,88,4,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(473,88,10,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(474,89,1,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(475,89,3,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(476,89,2,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(477,89,10,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(478,89,8,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(479,89,7,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(480,89,11,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(481,89,14,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(482,89,6,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(483,89,12,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(484,89,13,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(485,89,9,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(486,89,5,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(487,89,20,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(488,89,4,NULL,_binary '\0','2021-01-26 00:00:00','2021-01-26 10:59:21',NULL),(489,90,3,9,_binary '\0','2021-01-26 00:00:00','2021-01-26 11:24:01',NULL),(490,90,19,60,_binary '\0','2021-01-26 00:00:00','2021-01-26 11:24:02',NULL),(491,90,1,64,_binary '\0','2021-01-26 00:00:00','2021-01-26 11:24:00',NULL),(492,90,6,18,_binary '\0','2021-01-26 00:00:00','2021-01-26 11:24:07',NULL),(493,90,7,21,_binary '','2021-01-26 00:00:00','2021-01-26 11:24:08',NULL),(494,90,14,43,_binary '\0','2021-01-26 00:00:00','2021-01-26 11:24:19',NULL),(495,90,20,68,_binary '\0','2021-01-26 00:00:00','2021-01-26 11:24:22',NULL),(496,90,4,13,_binary '','2021-01-26 00:00:00','2021-01-26 11:24:04',NULL),(497,90,5,15,_binary '','2021-01-26 00:00:00','2021-01-26 11:24:06',NULL),(498,90,15,54,_binary '\0','2021-01-26 00:00:00','2021-01-26 11:24:20',NULL),(499,90,11,33,_binary '\0','2021-01-26 00:00:00','2021-01-26 11:24:13',NULL),(500,90,9,26,_binary '\0','2021-01-26 00:00:00','2021-01-26 11:24:11',NULL),(501,90,12,37,_binary '','2021-01-26 00:00:00','2021-01-26 11:24:15',NULL),(502,90,13,39,_binary '\0','2021-01-26 00:00:00','2021-01-26 11:24:17',NULL),(503,90,8,24,_binary '','2021-01-26 00:00:00','2021-01-26 11:24:10',NULL);
/*!40000 ALTER TABLE `userquestion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-26 17:49:27
