-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: ismssystem
-- ------------------------------------------------------
-- Server version	8.0.21

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail`
--

LOCK TABLES `detail` WRITE;
/*!40000 ALTER TABLE `detail` DISABLE KEYS */;
INSERT INTO `detail` VALUES (5,'Chào mừng các Hybriders đến với Khóa đào tạo định kỳ về Chất lượng và An ninh thông tin.\r\nAnh/Chị vui lòng sắp xếp thời gian để hoàn thành bài kiểm tra nhằm nâng cao tinh thần tuân thủ quy định \r\nAn ninh thông tin và Quản lý chất lượng tại Công ty.\r\n….','2021-01-21 00:00:00','2021-02-27 00:00:00',15,'https://gate.hybrid-technologies.co.jp/main',3,12,3,12,'2021-01-21 00:00:00','2021-01-21 09:55:39',NULL);
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
  `deleted_flag` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `fk_Email_Detail` (`detail_id`),
  CONSTRAINT `fk_Email_Detail` FOREIGN KEY (`detail_id`) REFERENCES `detail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
INSERT INTO `email` VALUES (34,'nhiptt@hybrid-technologies.vn',5,'2021-01-21 00:00:00','2021-01-21 09:55:39',NULL),(35,'thanhnv@hybrid-technologies.vn',5,'2021-01-21 00:00:00','2021-01-21 09:55:39',NULL),(36,'hoanpn@hybrid-technologies.vn',5,'2021-01-21 00:00:00','2021-01-21 09:55:39',NULL),(37,'dangnh@hybrid-technologies.vn',5,'2021-01-21 00:00:00','2021-01-21 09:55:39',NULL),(38,'nhintl@hybrid-technologies.vn',5,'2021-01-21 00:00:00','2021-01-21 09:55:39',NULL),(39,'diempth@evolableasia.vn',5,'2021-01-21 00:00:00','2021-01-21 09:55:39',NULL),(40,'khanhnq@hybrid-technologies.vn',5,'2021-01-21 00:00:00','2021-01-21 09:55:39',NULL),(41,'ngannt@hybrid-technologies.vn',5,'2021-01-21 00:00:00','2021-01-21 09:55:39',NULL),(42,'hungdt@hybrid-technologies.vn',5,'2021-01-21 00:00:00','2021-01-21 09:55:39',NULL),(43,'trangntt@hybrid-technologies.co.jp',5,'2021-01-21 00:00:00','2021-01-21 09:55:39',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab`
--

LOCK TABLES `lab` WRITE;
/*!40000 ALTER TABLE `lab` DISABLE KEYS */;
INSERT INTO `lab` VALUES (1,'WakuWaku','2021-01-14 00:00:00','2021-01-20 08:32:10',NULL),(2,'Fresher','2021-01-20 00:00:00','2021-01-20 08:32:10',NULL),(3,' Ewel','2021-01-20 00:00:00','2021-01-20 08:32:10',NULL),(4,'Buy Sell','2021-01-20 00:00:00','2021-01-20 08:32:10',NULL),(5,'Nextbeat','2021-01-20 00:00:00','2021-01-20 08:32:10',NULL),(6,'Premium','2021-01-20 00:00:00','2021-01-20 08:32:10',NULL),(7,' Kyash','2021-01-20 00:00:00','2021-01-20 08:32:10',NULL),(8,'Tag Automation','2021-01-20 00:00:00','2021-01-20 08:32:10',NULL),(9,'Data Chemistry','2021-01-20 00:00:00','2021-01-20 08:32:10',NULL),(10,'Miidas','2021-01-20 00:00:00','2021-01-20 08:32:10',NULL),(11,'Elife','2021-01-20 00:00:00','2021-01-20 08:32:10',NULL);
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
  `full_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(256) DEFAULT NULL,
  `hash_pwd` char(100) DEFAULT NULL,
  `type` enum('admin','user') NOT NULL,
  `lab_id` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT (curdate()),
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_flag` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_User_Lab` (`lab_id`),
  CONSTRAINT `fk_User_Lab` FOREIGN KEY (`lab_id`) REFERENCES `lab` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Nguyen Hoang Anh','anhnh@gmail.com','pbkdf2:sha256:150000$ZUHdRCNf$f84d00bb7f916c89914f622194339fd930b96972ec748d41759bc1b6ec14d75b','admin',1,'2021-01-18 00:00:00','2021-01-21 09:43:02',NULL),(2,'Nguyen Hoang Anh','anhnh@hybrid-technologies.vn',NULL,'admin',1,'2021-01-20 00:00:00','2021-01-20 16:11:13',NULL),(3,'Nguyen Hoang Anh','anhnh1@gmail.com',NULL,'user',4,'2021-01-20 00:00:00','2021-01-21 13:22:31',NULL),(4,'Nguyen Hoang Anh','hoanganhkfe99@gmail.com',NULL,'user',5,'2021-01-20 00:00:00','2021-01-20 17:12:39',NULL),(5,'Nguyen Hoang Anh','thaont@gmail.com',NULL,'user',3,'2021-01-21 00:00:00','2021-01-21 13:24:59',NULL),(6,'Nguyen Hoang Anh','trangntt@gmail.com',NULL,'user',4,'2021-01-21 00:00:00','2021-01-21 13:20:53',NULL),(7,'Nguyen Thi Thao','thaont1@gmail.com',NULL,'user',3,'2021-01-21 00:00:00','2021-01-21 13:25:18',NULL),(8,'Bui Duc Duy','duy@gmail.com',NULL,'user',10,'2021-01-21 00:00:00','2021-01-21 13:38:11',NULL),(9,'Bui Duc Duy','anhnh10@gmail.com',NULL,'user',3,'2021-01-21 00:00:00','2021-01-21 13:58:52',NULL),(10,'Bui Duc Duy','thaont12@gmail.com',NULL,'user',3,'2021-01-21 00:00:00','2021-01-21 14:09:36',NULL),(11,'Pham Thi Thu Nhi','nhiptt@hybrid-technologies.vn',NULL,'user',4,'2021-01-21 00:00:00','2021-01-21 14:33:03',NULL),(12,'Nguyen Van Thanh','thanhnv@hybrid-technologies.vn',NULL,'user',6,'2021-01-21 00:00:00','2021-01-21 14:34:20',NULL),(13,'Pham Nhan  Hoan','hoanpn@hybrid-technologies.vn',NULL,'user',8,'2021-01-21 00:00:00','2021-01-21 14:38:48',NULL),(14,'Tran Dang Hung','hungdt@hybrid-technologies.vn',NULL,'user',3,'2021-01-22 00:00:00','2021-01-23 19:03:00',NULL),(15,'Nguyen Hoang Anh','hongdp@gmail.com',NULL,'user',10,'2021-01-23 00:00:00','2021-01-23 22:23:39',NULL),(16,'Nguyen Thu Trang','trangntt@hybrid-technologies.co.jp',NULL,'user',11,'2021-01-24 00:00:00','2021-01-24 14:14:27',NULL);
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_user_detail` (`user_id`,`detail_id`),
  KEY `fk_UserDetail_Detail` (`detail_id`) /*!80000 INVISIBLE */,
  KEY `fk_UserDetail_MaExampleStatus` (`status_id`),
  CONSTRAINT `fk_UserDetail_Detail` FOREIGN KEY (`detail_id`) REFERENCES `detail` (`id`),
  CONSTRAINT `fk_UserDetail_MaExampleStatus` FOREIGN KEY (`status_id`) REFERENCES `maexamplestatus` (`id`),
  CONSTRAINT `fk_UserDetail_User` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdetail`
--

LOCK TABLES `userdetail` WRITE;
/*!40000 ALTER TABLE `userdetail` DISABLE KEYS */;
INSERT INTO `userdetail` VALUES (32,14,5,3,'2021-01-22 15:38:26','2021-01-22 15:49:59','2021-01-22 00:00:00','2021-01-22 15:49:59',NULL),(33,15,5,2,'2021-01-23 22:23:40','2021-01-23 22:23:40','2021-01-23 00:00:00','2021-01-24 11:20:48',NULL),(34,16,5,3,'2021-01-24 14:14:28','2021-01-24 14:14:52','2021-01-24 00:00:00','2021-01-24 14:14:52',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=324 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userquestion`
--

LOCK TABLES `userquestion` WRITE;
/*!40000 ALTER TABLE `userquestion` DISABLE KEYS */;
INSERT INTO `userquestion` VALUES (279,32,3,12,_binary '','2021-01-22 00:00:00','2021-01-22 15:47:25',NULL),(280,32,19,61,_binary '\0','2021-01-22 00:00:00','2021-01-22 15:47:26',NULL),(281,32,2,6,_binary '','2021-01-22 00:00:00','2021-01-22 15:47:27',NULL),(282,32,7,22,_binary '\0','2021-01-22 00:00:00','2021-01-22 15:47:29',NULL),(283,32,9,27,_binary '\0','2021-01-22 00:00:00','2021-01-22 15:47:30',NULL),(284,32,13,39,_binary '\0','2021-01-22 00:00:00','2021-01-22 15:47:31',NULL),(285,32,5,16,_binary '\0','2021-01-22 00:00:00','2021-01-22 15:47:32',NULL),(286,32,4,14,_binary '\0','2021-01-22 00:00:00','2021-01-22 15:47:34',NULL),(287,32,12,38,_binary '\0','2021-01-22 00:00:00','2021-01-22 15:47:35',NULL),(288,32,20,70,_binary '','2021-01-22 00:00:00','2021-01-22 15:47:42',NULL),(289,32,11,33,_binary '\0','2021-01-22 00:00:00','2021-01-22 15:47:43',NULL),(290,32,15,54,_binary '\0','2021-01-22 00:00:00','2021-01-22 15:47:44',NULL),(291,32,6,19,_binary '','2021-01-22 00:00:00','2021-01-22 15:47:46',NULL),(292,32,8,25,_binary '\0','2021-01-22 00:00:00','2021-01-22 15:47:48',NULL),(293,32,10,30,_binary '\0','2021-01-22 00:00:00','2021-01-22 15:47:49',NULL),(294,33,19,NULL,_binary '\0','2021-01-23 00:00:00','2021-01-23 22:23:40',NULL),(295,33,1,NULL,_binary '\0','2021-01-23 00:00:00','2021-01-23 22:23:40',NULL),(296,33,2,NULL,_binary '\0','2021-01-23 00:00:00','2021-01-23 22:23:40',NULL),(297,33,9,NULL,_binary '\0','2021-01-23 00:00:00','2021-01-23 22:23:40',NULL),(298,33,11,NULL,_binary '\0','2021-01-23 00:00:00','2021-01-23 22:23:40',NULL),(299,33,13,NULL,_binary '\0','2021-01-23 00:00:00','2021-01-23 22:23:40',NULL),(300,33,8,NULL,_binary '\0','2021-01-23 00:00:00','2021-01-23 22:23:40',NULL),(301,33,20,NULL,_binary '\0','2021-01-23 00:00:00','2021-01-23 22:23:40',NULL),(302,33,4,NULL,_binary '\0','2021-01-23 00:00:00','2021-01-23 22:23:40',NULL),(303,33,15,NULL,_binary '\0','2021-01-23 00:00:00','2021-01-23 22:23:40',NULL),(304,33,12,NULL,_binary '\0','2021-01-23 00:00:00','2021-01-23 22:23:40',NULL),(305,33,6,NULL,_binary '\0','2021-01-23 00:00:00','2021-01-23 22:23:40',NULL),(306,33,14,NULL,_binary '\0','2021-01-23 00:00:00','2021-01-23 22:23:40',NULL),(307,33,10,NULL,_binary '\0','2021-01-23 00:00:00','2021-01-23 22:23:40',NULL),(308,33,7,NULL,_binary '\0','2021-01-23 00:00:00','2021-01-23 22:23:40',NULL),(309,34,3,11,_binary '\0','2021-01-24 00:00:00','2021-01-24 14:14:32',NULL),(310,34,2,5,_binary '\0','2021-01-24 00:00:00','2021-01-24 14:14:30',NULL),(311,34,1,67,_binary '\0','2021-01-24 00:00:00','2021-01-24 14:14:30',NULL),(312,34,15,54,_binary '\0','2021-01-24 00:00:00','2021-01-24 14:14:48',NULL),(313,34,5,17,_binary '\0','2021-01-24 00:00:00','2021-01-24 14:14:34',NULL),(314,34,14,43,_binary '\0','2021-01-24 00:00:00','2021-01-24 14:14:46',NULL),(315,34,8,24,_binary '','2021-01-24 00:00:00','2021-01-24 14:14:39',NULL),(316,34,13,42,_binary '','2021-01-24 00:00:00','2021-01-24 14:14:45',NULL),(317,34,4,14,_binary '\0','2021-01-24 00:00:00','2021-01-24 14:14:33',NULL),(318,34,7,22,_binary '\0','2021-01-24 00:00:00','2021-01-24 14:14:37',NULL),(319,34,10,32,_binary '\0','2021-01-24 00:00:00','2021-01-24 14:14:41',NULL),(320,34,6,18,_binary '\0','2021-01-24 00:00:00','2021-01-24 14:14:35',NULL),(321,34,9,28,_binary '','2021-01-24 00:00:00','2021-01-24 14:14:40',NULL),(322,34,11,36,_binary '\0','2021-01-24 00:00:00','2021-01-24 14:14:43',NULL),(323,34,12,37,_binary '','2021-01-24 00:00:00','2021-01-24 14:14:44',NULL);
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

-- Dump completed on 2021-01-24 23:11:02
