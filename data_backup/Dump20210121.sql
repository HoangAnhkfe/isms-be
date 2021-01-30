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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Nguyen Hoang Anh','anhnh@gmail.com','pbkdf2:sha256:150000$ZUHdRCNf$f84d00bb7f916c89914f622194339fd930b96972ec748d41759bc1b6ec14d75b','admin',1,'2021-01-18 00:00:00','2021-01-21 09:43:02',NULL),(2,'Nguyen Hoang Anh','anhnh@hybrid-technologies.vn',NULL,'admin',1,'2021-01-20 00:00:00','2021-01-20 16:11:13',NULL),(3,'Nguyen Hoang Anh','anhnh1@gmail.com',NULL,'user',4,'2021-01-20 00:00:00','2021-01-21 13:22:31',NULL),(4,'Nguyen Hoang Anh','hoanganhkfe99@gmail.com',NULL,'user',5,'2021-01-20 00:00:00','2021-01-20 17:12:39',NULL),(5,'Nguyen Hoang Anh','thaont@gmail.com',NULL,'user',3,'2021-01-21 00:00:00','2021-01-21 13:24:59',NULL),(6,'Nguyen Hoang Anh','trangntt@gmail.com',NULL,'user',4,'2021-01-21 00:00:00','2021-01-21 13:20:53',NULL),(7,'Nguyen Thi Thao','thaont1@gmail.com',NULL,'user',3,'2021-01-21 00:00:00','2021-01-21 13:25:18',NULL),(8,'Bui Duc Duy','duy@gmail.com',NULL,'user',10,'2021-01-21 00:00:00','2021-01-21 13:38:11',NULL),(9,'Bui Duc Duy','anhnh10@gmail.com',NULL,'user',3,'2021-01-21 00:00:00','2021-01-21 13:58:52',NULL),(10,'Bui Duc Duy','thaont12@gmail.com',NULL,'user',3,'2021-01-21 00:00:00','2021-01-21 14:09:36',NULL),(11,'Pham Thi Thu Nhi','nhiptt@hybrid-technologies.vn',NULL,'user',4,'2021-01-21 00:00:00','2021-01-21 14:33:03',NULL),(12,'Nguyen Van Thanh','thanhnv@hybrid-technologies.vn',NULL,'user',6,'2021-01-21 00:00:00','2021-01-21 14:34:20',NULL),(13,'Pham Nhan  Hoan','hoanpn@hybrid-technologies.vn',NULL,'user',8,'2021-01-21 00:00:00','2021-01-21 14:38:48',NULL);
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
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT (curdate()),
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_flag` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_user_detail` (`user_id`,`detail_id`),
  KEY `fk_UserDetail_Detail` (`detail_id`),
  CONSTRAINT `fk_UserDetail_Detail` FOREIGN KEY (`detail_id`) REFERENCES `detail` (`id`),
  CONSTRAINT `fk_UserDetail_User` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdetail`
--

LOCK TABLES `userdetail` WRITE;
/*!40000 ALTER TABLE `userdetail` DISABLE KEYS */;
INSERT INTO `userdetail` VALUES (22,5,5,'2021-01-21 09:58:31','2021-01-21 10:54:49','2021-01-21 00:00:00','2021-01-21 10:54:48',NULL),(23,6,5,'2021-01-21 13:20:54','2021-01-21 13:21:19','2021-01-21 00:00:00','2021-01-21 13:21:18',NULL),(24,3,5,'2021-01-21 13:22:32','2021-01-21 13:23:06','2021-01-21 00:00:00','2021-01-21 13:23:06',NULL),(25,7,5,'2021-01-21 13:25:19','2021-01-21 13:32:05','2021-01-21 00:00:00','2021-01-21 13:32:05',NULL),(26,8,5,'2021-01-21 13:38:11','2021-01-21 13:58:09','2021-01-21 00:00:00','2021-01-21 13:58:09',NULL),(27,9,5,'2021-01-21 13:58:52',NULL,'2021-01-21 00:00:00','2021-01-21 13:58:52',NULL),(28,10,5,'2021-01-21 14:09:37',NULL,'2021-01-21 00:00:00','2021-01-21 14:09:36',NULL),(29,11,5,'2021-01-21 14:33:04','2021-01-21 14:33:33','2021-01-21 00:00:00','2021-01-21 14:33:32',NULL),(30,12,5,'2021-01-21 14:34:21','2021-01-21 14:37:46','2021-01-21 00:00:00','2021-01-21 14:37:46',NULL),(31,13,5,'2021-01-21 14:38:49','2021-01-21 14:40:39','2021-01-21 00:00:00','2021-01-21 14:40:38',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userquestion`
--

LOCK TABLES `userquestion` WRITE;
/*!40000 ALTER TABLE `userquestion` DISABLE KEYS */;
INSERT INTO `userquestion` VALUES (129,22,3,11,_binary '\0','2021-01-21 00:00:00','2021-01-21 10:29:22',NULL),(130,22,1,67,_binary '\0','2021-01-21 00:00:00','2021-01-21 10:29:31',NULL),(131,22,19,61,_binary '\0','2021-01-21 00:00:00','2021-01-21 10:29:32',NULL),(132,22,13,40,_binary '\0','2021-01-21 00:00:00','2021-01-21 10:29:33',NULL),(133,22,4,13,_binary '','2021-01-21 00:00:00','2021-01-21 10:29:35',NULL),(134,22,9,27,_binary '\0','2021-01-21 00:00:00','2021-01-21 10:29:36',NULL),(135,22,8,24,_binary '','2021-01-21 00:00:00','2021-01-21 10:29:40',NULL),(136,22,10,30,_binary '\0','2021-01-21 00:00:00','2021-01-21 10:29:39',NULL),(137,22,15,54,_binary '\0','2021-01-21 00:00:00','2021-01-21 10:29:42',NULL),(138,22,5,16,_binary '\0','2021-01-21 00:00:00','2021-01-21 10:29:43',NULL),(139,22,7,22,_binary '\0','2021-01-21 00:00:00','2021-01-21 10:29:45',NULL),(140,22,11,34,_binary '','2021-01-21 00:00:00','2021-01-21 10:29:46',NULL),(141,22,14,43,_binary '\0','2021-01-21 00:00:00','2021-01-21 10:29:48',NULL),(142,22,20,69,_binary '\0','2021-01-21 00:00:00','2021-01-21 10:29:49',NULL),(143,22,12,37,_binary '','2021-01-21 00:00:00','2021-01-21 10:29:50',NULL),(144,23,19,62,_binary '','2021-01-21 00:00:00','2021-01-21 13:20:59',NULL),(145,23,1,65,_binary '','2021-01-21 00:00:00','2021-01-21 13:20:56',NULL),(146,23,2,7,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:20:57',NULL),(147,23,9,26,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:21:06',NULL),(148,23,20,69,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:21:14',NULL),(149,23,8,25,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:21:05',NULL),(150,23,13,39,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:21:11',NULL),(151,23,6,18,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:21:02',NULL),(152,23,15,54,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:21:13',NULL),(153,23,12,38,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:21:10',NULL),(154,23,5,15,_binary '','2021-01-21 00:00:00','2021-01-21 13:21:00',NULL),(155,23,7,22,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:21:04',NULL),(156,23,14,43,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:21:12',NULL),(157,23,4,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:20:54',NULL),(158,23,10,32,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:21:08',NULL),(159,24,2,7,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:22:36',NULL),(160,24,3,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:22:32',NULL),(161,24,1,66,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:22:35',NULL),(162,24,11,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:22:32',NULL),(163,24,6,19,_binary '','2021-01-21 00:00:00','2021-01-21 13:22:41',NULL),(164,24,10,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:22:32',NULL),(165,24,20,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:22:32',NULL),(166,24,9,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:22:32',NULL),(167,24,7,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:22:32',NULL),(168,24,4,13,_binary '','2021-01-21 00:00:00','2021-01-21 13:22:38',NULL),(169,24,8,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:22:32',NULL),(170,24,5,17,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:22:39',NULL),(171,24,12,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:22:32',NULL),(172,24,13,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:22:32',NULL),(173,24,14,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:22:32',NULL),(174,25,2,7,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:25:23',NULL),(175,25,3,11,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:25:25',NULL),(176,25,1,66,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:25:22',NULL),(177,25,14,44,_binary '','2021-01-21 00:00:00','2021-01-21 13:25:39',NULL),(178,25,15,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:25:18',NULL),(179,25,7,22,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:25:29',NULL),(180,25,10,30,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:25:33',NULL),(181,25,20,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:25:18',NULL),(182,25,8,25,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:25:30',NULL),(183,25,11,33,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:25:35',NULL),(184,25,9,28,_binary '','2021-01-21 00:00:00','2021-01-21 13:25:31',NULL),(185,25,5,17,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:25:26',NULL),(186,25,12,38,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:25:37',NULL),(187,25,6,20,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:25:28',NULL),(188,25,13,40,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:25:37',NULL),(189,26,1,65,_binary '','2021-01-21 00:00:00','2021-01-21 13:38:13',NULL),(190,26,2,8,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:38:16',NULL),(191,26,19,60,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:38:15',NULL),(192,26,9,27,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:38:27',NULL),(193,26,5,16,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:38:23',NULL),(194,26,15,54,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:38:35',NULL),(195,26,10,29,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:38:28',NULL),(196,26,4,14,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:38:22',NULL),(197,26,7,23,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:38:25',NULL),(198,26,8,25,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:38:26',NULL),(199,26,12,38,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:38:31',NULL),(200,26,14,44,_binary '','2021-01-21 00:00:00','2021-01-21 13:38:34',NULL),(201,26,20,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:38:11',NULL),(202,26,11,33,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:38:30',NULL),(203,26,13,41,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:38:33',NULL),(204,27,19,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:58:52',NULL),(205,27,3,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:58:52',NULL),(206,27,1,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:58:52',NULL),(207,27,14,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:58:52',NULL),(208,27,12,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:58:52',NULL),(209,27,10,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:58:52',NULL),(210,27,15,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:58:52',NULL),(211,27,5,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:58:52',NULL),(212,27,11,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:58:52',NULL),(213,27,8,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:58:52',NULL),(214,27,4,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:58:52',NULL),(215,27,9,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:58:52',NULL),(216,27,13,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:58:52',NULL),(217,27,6,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:58:52',NULL),(218,27,20,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 13:58:52',NULL),(219,28,19,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:10:36',NULL),(220,28,2,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:10:36',NULL),(221,28,1,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:10:36',NULL),(222,28,13,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:10:36',NULL),(223,28,9,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:10:36',NULL),(224,28,10,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:10:36',NULL),(225,28,14,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:10:36',NULL),(226,28,11,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:10:36',NULL),(227,28,7,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:10:36',NULL),(228,28,15,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:10:36',NULL),(229,28,8,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:10:36',NULL),(230,28,4,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:10:36',NULL),(231,28,6,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:10:36',NULL),(232,28,5,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:10:36',NULL),(233,28,12,NULL,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:10:36',NULL),(234,29,2,5,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:33:08',NULL),(235,29,3,11,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:33:10',NULL),(236,29,1,65,_binary '','2021-01-21 00:00:00','2021-01-21 14:33:06',NULL),(237,29,15,54,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:33:28',NULL),(238,29,14,43,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:33:27',NULL),(239,29,10,30,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:33:21',NULL),(240,29,20,68,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:33:30',NULL),(241,29,8,25,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:33:17',NULL),(242,29,5,16,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:33:13',NULL),(243,29,12,38,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:33:23',NULL),(244,29,7,23,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:33:16',NULL),(245,29,13,39,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:33:25',NULL),(246,29,11,34,_binary '','2021-01-21 00:00:00','2021-01-21 14:33:22',NULL),(247,29,9,27,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:33:19',NULL),(248,29,6,20,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:33:15',NULL),(249,30,2,6,_binary '','2021-01-21 00:00:00','2021-01-21 14:34:27',NULL),(250,30,3,12,_binary '','2021-01-21 00:00:00','2021-01-21 14:34:31',NULL),(251,30,19,63,_binary '\0','2021-01-21 00:00:00','2021-01-21 14:35:46',NULL),(252,30,13,42,_binary '','2021-01-21 00:00:00','2021-01-21 14:37:22',NULL),(253,30,8,24,_binary '','2021-01-21 00:00:00','2021-01-21 14:36:27',NULL),(254,30,15,55,_binary '','2021-01-21 00:00:00','2021-01-21 14:37:27',NULL),(255,30,4,13,_binary '','2021-01-21 00:00:00','2021-01-21 14:36:03',NULL),(256,30,12,37,_binary '','2021-01-21 00:00:00','2021-01-21 14:37:13',NULL),(257,30,6,19,_binary '','2021-01-21 00:00:00','2021-01-21 14:36:34',NULL),(258,30,10,31,_binary '','2021-01-21 00:00:00','2021-01-21 14:36:49',NULL),(259,30,9,28,_binary '','2021-01-21 00:00:00','2021-01-21 14:36:43',NULL),(260,30,5,15,_binary '','2021-01-21 00:00:00','2021-01-21 14:35:23',NULL),(261,30,7,21,_binary '','2021-01-21 00:00:00','2021-01-21 14:36:18',NULL),(262,30,20,70,_binary '','2021-01-21 00:00:00','2021-01-21 14:37:32',NULL),(263,30,11,34,_binary '','2021-01-21 00:00:00','2021-01-21 14:37:05',NULL),(264,31,19,62,_binary '','2021-01-21 00:00:00','2021-01-21 14:39:32',NULL),(265,31,1,65,_binary '','2021-01-21 00:00:00','2021-01-21 14:40:37',NULL),(266,31,3,12,_binary '','2021-01-21 00:00:00','2021-01-21 14:39:25',NULL),(267,31,14,44,_binary '','2021-01-21 00:00:00','2021-01-21 14:40:17',NULL),(268,31,15,55,_binary '','2021-01-21 00:00:00','2021-01-21 14:40:22',NULL),(269,31,12,37,_binary '','2021-01-21 00:00:00','2021-01-21 14:40:05',NULL),(270,31,10,31,_binary '','2021-01-21 00:00:00','2021-01-21 14:39:58',NULL),(271,31,9,28,_binary '','2021-01-21 00:00:00','2021-01-21 14:39:54',NULL),(272,31,11,34,_binary '','2021-01-21 00:00:00','2021-01-21 14:40:00',NULL),(273,31,6,19,_binary '','2021-01-21 00:00:00','2021-01-21 14:39:40',NULL),(274,31,20,70,_binary '','2021-01-21 00:00:00','2021-01-21 14:40:25',NULL),(275,31,8,24,_binary '','2021-01-21 00:00:00','2021-01-21 14:39:49',NULL),(276,31,13,42,_binary '','2021-01-21 00:00:00','2021-01-21 14:40:11',NULL),(277,31,5,15,_binary '','2021-01-21 00:00:00','2021-01-21 14:39:37',NULL),(278,31,4,13,_binary '','2021-01-21 00:00:00','2021-01-21 14:39:35',NULL);
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

-- Dump completed on 2021-01-21 17:15:30
