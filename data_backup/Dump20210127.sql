-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: database
-- Generation Time: Jan 27, 2021 at 06:23 AM
-- Server version: 8.0.16
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `isms`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `is_correct` bit(1) NOT NULL,
  `question_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT (curdate()),
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_flag` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `content`, `is_correct`, `question_id`, `deleted_flag`) VALUES
(5, '2005 (ISO 9001:2005)', b'0', 2, NULL),
(6, '2015 (ISO 9001:2015)', b'1', 2, NULL),
(7, '2008 (ISO 9001:2008)', b'0', 2, NULL),
(8, '2018 (ISO 9001:2018)', b'0', 2, NULL),
(9, 'Thiết lập kế hoạch, mục tiêu', b'0', 3, NULL),
(10, 'Thực hiện các hạng mục đã hoạch định', b'0', 3, NULL),
(11, 'Đưa ra các giải pháp để cải tiến', b'0', 3, NULL),
(12, 'Giám sát, kiểm tra và đo lường kết quả', b'1', 3, NULL),
(13, 'Báo phòng IT xử lý kết nối VPN và báo quản lý để nắm tình hình', b'1', 4, NULL),
(14, 'Bạn tải về máy tính cá nhân để xử lý task của khách hàng trước, sau đó báo lại phòng IT xử lý VPN', b'0', 4, NULL),
(15, 'Không được phép', b'1', 5, NULL),
(16, 'Không liên quan vì chỉ làm việc cá nhân', b'0', 5, NULL),
(17, 'Được phép dùng vì là phục vụ công việc', b'0', 5, NULL),
(18, 'Giữ lại để tái sử dụng nếu chỉ mới in 1 mặt, hoặc bảo vệ môi trường bằng cách dùng để lót ly uống nước trên bàn làm việc', b'0', 6, NULL),
(19, 'Sử dụng máy hủy giấy để hủy các tài liệu mật này theo đúng quy địng công ty', b'1', 6, NULL),
(20, 'Xé bằng tay và vứt vào sọt rác để tiết kiệm thời gian, vì đã xé nhỏ nên người khác sẽ không đọc được thông tin gì', b'0', 6, NULL),
(21, 'Lưu tài liệu trên file server hoặc hệ thống lưu trữ nội bộ của công ty nhằm tránh rò rỉ dữ liệu hoặc bất kì ai trong dự án cũng có thể truy xuất để sử dụng khi cần', b'1', 7, NULL),
(22, 'Tải tài liệu về để trên Desktop máy tính để dùng cho nhanh, tiết kiệm thời gian truy xuất', b'0', 7, NULL),
(23, 'Dùng tài khoản cá nhân (@gmail.com) tải tài liệu lên hệ thống Google Drive để có thể xem và nghiên cứu thêm ở nhà, tiết kiệm thời gian làm việc trên công ty', b'0', 7, NULL),
(24, 'hông được phép vì vi phạm quy định sử dụng các thiết bị ghi hình ghi âm trong khu vực cấm', b'1', 8, NULL),
(25, 'Được phép vì chỉ chụp ảnh bữa tiệc, không chụp ảnh gì quan trọng cả', b'0', 8, NULL),
(26, 'Tuân thủ quy định & hướng dẫn quản lý tài sản của khách hàng khi được cung cấp hoặc sử dụng, nếu không có thì tuân thủ theo quy định & hướng dãn của công ty', b'0', 9, NULL),
(27, 'Bàn giao lại cho người có trách nhiệm khi bạn thay đổi vị trí công việc', b'0', 9, NULL),
(28, 'Tất cả các đáp án trên đều đúng', b'1', 9, NULL),
(29, 'Máy tính cá nhân', b'0', 10, NULL),
(30, 'Máy tính công ty', b'0', 10, NULL),
(31, 'Không được phép lưu bất cứ thông tin nào khi chưa được phép', b'1', 10, NULL),
(32, 'Google Drive cá nhân', b'0', 10, NULL),
(33, 'Không, đội dự án chỉ cần sử dụng thôi', b'0', 11, NULL),
(34, 'Có, đội dự án có trách nhiệm bảo mật server đó', b'1', 11, NULL),
(35, 'Cả A và B đều đúng', b'0', 11, NULL),
(36, 'Cả A và B đều sai', b'0', 11, NULL),
(37, 'Đúng', b'1', 12, NULL),
(38, 'Sai', b'0', 12, NULL),
(39, 'Bảo quản tài liệu mật trong tủ có khóa, không để tại nơi công cộng: máy in, máy photo, …', b'0', 13, NULL),
(40, 'Không mang thông tin, tài sản ra khỏi khu vực làm việc khi chưa có phê duyệt của người có thẩm quyền', b'0', 13, NULL),
(41, 'Khi mang thông tin, tài sản ra ngoài phải có biện pháp bảo mật phù hợp', b'0', 13, NULL),
(42, 'Tất cả các đáp án trên đều đúng', b'1', 13, NULL),
(43, 'Được phép, vì đó là tự do cá nhân', b'0', 14, NULL),
(44, 'Không được phép, vì vi phạm tính bảo mật khi tiết lộ thông tin khách hàng, dự án', b'1', 14, NULL),
(54, 'Đáng được tuyên dương và khen thưởng', b'0', 15, NULL),
(55, 'KVi phạm quy định An ninh thông tin vì gây rủi ro lây nhiễm virus vào mạng công ty', b'1', 15, NULL),
(60, 'Đáp ứng yêu cầu kỹ thuật', b'0', 19, NULL),
(61, ' Không có lỗi', b'0', 19, NULL),
(62, ' Thỏa mãn văn hóa công ty', b'1', 19, NULL),
(63, 'Cam kết trong hợp đồng với khách hàng', b'0', 19, NULL),
(64, '2018', b'0', 1, NULL),
(65, '2019', b'1', 1, NULL),
(66, '2020', b'0', 1, NULL),
(67, '2021', b'0', 1, NULL),
(68, 'Đáp ứng yêu cầu kỹ thuật', b'0', 20, NULL),
(69, ' Không có lỗi', b'0', 20, NULL),
(70, '2019', b'1', 20, NULL),
(71, 'Nắm được quy định về nhiệm vụ và trách nhiệm của mình', b'1', 21, NULL),
(72, 'Thực thi, tuân thủ các quy định nêu trên', b'0', 21, NULL),
(73, 'Cả A và B đều đúng', b'0', 21, NULL),
(74, 'Cả A và B đều sai', b'0', 21, NULL),
(75, 'Phổ biến các quy định về quản lý chất lượng của sản phẩm, dịch vụ', b'1', 22, NULL),
(76, 'Kiểm soát nhân viên trong việc tuân thủ các quy định nêu trên', b'0', 22, NULL),
(77, 'Cả A và B đều sai', b'0', 22, NULL),
(78, 'Cả A và B đều đúng', b'0', 22, NULL),
(79, '1, 2, 3 đúng', b'1', 23, NULL),
(80, '1, 2, 4 đúng', b'0', 23, NULL),
(81, '1, 2, 3, 4 đúng', b'0', 23, NULL),
(82, 'Thiết lập kế hoạch, mục tiêu', b'1', 24, NULL),
(83, 'Thực hiện các hạng mục đã hoạch định', b'0', 24, NULL),
(84, 'Đưa ra các giải pháp để cải tiến', b'0', 24, NULL),
(85, 'Giám sát, kiểm tra và đo lường kết quả', b'0', 24, NULL),
(86, 'Thiết lập kế hoạch, mục tiêu', b'1', 25, NULL),
(87, 'Thực hiện các hạng mục đã hoạch định', b'0', 25, NULL),
(88, 'Đưa ra các giải pháp để cải tiến', b'0', 25, NULL),
(89, 'Giám sát, kiểm tra và đo lường kết quả', b'0', 25, NULL),
(90, 'Plan - Do', b'1', 26, NULL),
(91, 'Plan - Do - Check', b'0', 26, NULL),
(92, 'Plan - Check - Do - Act', b'0', 26, NULL),
(93, 'Plan - Do - Check - Act', b'0', 26, NULL),
(94, 'Sản phẩm và dịch vụ không đạt yêu cầu chất lượng', b'1', 27, NULL),
(95, 'Công ty tốn thời gian khắc phục lỗi, giảm sút hình ảnh và uy tín', b'0', 27, NULL),
(96, 'Nhân viên không chủ động trong công việc', b'0', 27, NULL),
(97, 'Tất cả các đáp án trên đều đúng', b'0', 27, NULL),
(98, 'Không có lỗi', b'1', 28, NULL),
(99, 'Đáp ứng yêu cầu kỹ thuật', b'0', 28, NULL),
(100, 'Đáp ứng yêu cầu khách hàng', b'0', 28, NULL),
(101, 'Tất cả các đáp án trên đều đúng', b'0', 28, NULL),
(102, 'ISO 9001:2015', b'1', 29, NULL),
(103, 'ISO/IEC 27001:2013', b'0', 29, NULL),
(104, 'Cả A và B đều đúng', b'0', 29, NULL),
(105, 'Cả A và B đều sai', b'0', 29, NULL),
(106, 'Cơ cấu tổ chức, Quy trình thực hiện, Tài liệu chính sách, Nguồn lực thực hiện', b'1', 30, NULL),
(107, 'Cơ cấu tổ chức, Quy trình thực hiện, Nguồn lực thực hiện', b'0', 30, NULL),
(108, 'Quy trình thực hiện, Tài liệu chính sách, Nguồn lực thực hiện', b'0', 30, NULL),
(109, 'Cơ cấu tổ chức, Nguồn lực thực hiện', b'0', 30, NULL),
(110, 'Nhân viên hiểu rõ trách nhiệm và quyền hạn của mình nên chủ động thực hiện công việc', b'1', 31, NULL),
(111, 'Hạn chế tối thiểu các sai sót và nâng cao chất lượng sản phẩm, dịch vụ', b'0', 31, NULL),
(112, 'Tất cả các đáp án trên đều đúng', b'0', 31, NULL),
(113, 'Thiết lập kế hoạch, mục tiêu', b'1', 32, NULL),
(114, 'Thực hiện các hạng mục đã hoạch định', b'0', 32, NULL),
(115, 'Đưa ra các giải pháp để cải tiến', b'0', 32, NULL),
(116, 'Giám sát, kiểm tra và đo lường kết quả', b'0', 32, NULL),
(117, 'Tiêu chuẩn hệ thống quản lý chất lượng', b'1', 33, NULL),
(118, 'Tiêu chuẩn hệ thống đo lường chất lượng', b'0', 33, NULL),
(119, 'Tiêu chuẩn hệ thống kiểm soát chất lượng', b'0', 33, NULL),
(120, 'Tiêu chuẩn hệ thống kế hoạch chất lượng', b'0', 33, NULL),
(121, 'Check - Plan - Do - Act', b'1', 34, NULL),
(122, 'Plan - Do - Check - Act', b'0', 34, NULL),
(123, 'Act - Plan - Do - Check', b'0', 34, NULL),
(124, 'Do - Check - Plan - Act', b'0', 34, NULL),
(125, 'Nâng cao chất lượng sản phẩm và dịch vụ', b'1', 35, NULL),
(126, 'Nâng cao hình ảnh và uy tín của công ty', b'0', 35, NULL),
(127, 'Giúp cho nhân viên chủ động hơn trong công việc', b'0', 35, NULL),
(128, 'Tất cả các đáp án trên đều đúng', b'0', 35, NULL),
(129, '1, 2, 3, 4 đúng', b'1', 36, NULL),
(130, '2, 3, 4 đúng', b'0', 36, NULL),
(131, 'Được phép', b'1', 37, NULL),
(132, 'Nghiêm cấm', b'0', 37, NULL),
(133, 'Phòng IT', b'1', 38, NULL),
(134, 'Ban Chất lượng & An ninh thông tin', b'0', 38, NULL),
(135, 'Quản lý dự án', b'0', 38, NULL),
(136, 'Tất cả nhân viên đều có trách nhiệm', b'0', 38, NULL),
(137, 'Sử dụng tính năng \"nhớ mật khẩu\"', b'1', 39, NULL),
(138, 'Sử dụng chung một mật khẩu cho tất cả các công cụ sử dụng tại công ty', b'0', 39, NULL),
(139, 'Đổi mật khẩu ít nhất 90 ngày một lần', b'0', 39, NULL),
(140, 'Tất cả các đáp án trên đều sai', b'0', 39, NULL),
(141, 'Bạn tự ý mang máy tính cá nhân về nhà để hoàn thành', b'1', 40, NULL),
(142, 'Bạn gửi qua email cá nhân để về nhà tải và hoàn thành tiếp', b'0', 40, NULL),
(143, 'Cả A và B đều đúng', b'0', 40, NULL),
(144, 'Cả A và B đều sai', b'0', 40, NULL),
(145, 'Có', b'1', 41, NULL),
(146, 'Không', b'0', 41, NULL),
(147, 'Đúng', b'1', 42, NULL),
(148, 'Sai', b'0', 42, NULL),
(149, 'Có', b'1', 43, NULL),
(150, 'Không', b'0', 43, NULL),
(151, 'Có', b'1', 44, NULL),
(152, 'Không', b'0', 44, NULL),
(153, 'Có', b'1', 45, NULL),
(154, 'Không', b'0', 45, NULL),
(155, 'Tuyệt đối không được phép', b'1', 46, NULL),
(156, 'Bạn được phép mà không cần xin phép ai', b'0', 46, NULL),
(157, 'Bạn chỉ được phép khi được sự cho phép của người có thẩm quyền', b'0', 46, NULL),
(158, 'Được', b'1', 47, NULL),
(159, 'Không được', b'0', 47, NULL),
(160, 'Có', b'1', 48, NULL),
(161, 'Không', b'0', 48, NULL),
(162, 'Có', b'1', 49, NULL),
(163, 'Không', b'0', 49, NULL),
(164, 'Có', b'1', 50, NULL),
(165, 'Không', b'0', 50, NULL),
(166, 'Có', b'1', 51, NULL),
(167, 'Không', b'0', 51, NULL),
(168, 'Có', b'1', 52, NULL),
(169, 'Không', b'0', 52, NULL),
(170, 'Danh sách phần mềm được phép sử dụng tại công ty', b'1', 53, NULL),
(171, 'Nhóm phần mềm freeware/shareware', b'0', 53, NULL),
(172, 'Nhóm phần mềm không có licence', b'0', 53, NULL),
(173, 'Ngắt kết nối máy tính của bạn khỏi mạng cục bộ', b'1', 54, NULL),
(174, 'Yêu cầu một trong những đồng nghiệp của bạn gửi email, hoặc gọi điện thoại thông báo cho phòng IT', b'0', 54, NULL),
(175, 'Cả A và B đều đúng', b'0', 54, NULL),
(176, 'Cả A và B đều sai', b'0', 54, NULL),
(177, 'Đăng ký với phòng IT trước khi sử dụng bất kỳ thiết bị di động nào để truy cập hệ thống email của công ty và làm theo hướng dẫn của phòng IT về cách tạo mật khẩu và mã hóa dữ liệu', b'1', 55, NULL),
(178, 'Có sự chấp thuận từ người có thẩm quyền', b'0', 55, NULL),
(179, 'Cả A và B đều đúng', b'0', 55, NULL),
(180, 'Cả A và B đều sai', b'0', 55, NULL),
(181, 'Phần mềm đã được cài đặt và cập nhật phiên bản mới nhất. Trường hợp có lỗi liên hệ phòng IT để được hướng dẫn', b'1', 56, NULL),
(182, 'Không được phép tắt phần mềm này hoặc gỡ bỏ nó', b'0', 56, NULL),
(183, 'Cả A và B đều đúng', b'0', 56, NULL),
(184, 'Cả A và B đều sai', b'0', 56, NULL),
(185, 'Giữ thiết bị bên mình hoặc khóa thiết bị một cách an toàn trước khi rời khỏi hoặc khi bạn không sử dụng thiết bị', b'1', 57, NULL),
(186, 'Cẩn thận hơn ở những nơi công cộng như ga xe lửa, sân bay, khách sạn hoặc nhà hàng', b'0', 57, NULL),
(187, 'Mang và cất thiết bị trong túi, cặp có đệm để giảm nguy cơ thiệt hại hoặc mất mát do tai nạn', b'0', 57, NULL),
(188, 'Tất cả các đáp án trên đều đúng', b'0', 57, NULL),
(189, 'Mã hóa thông tin bảo mật', b'1', 58, NULL),
(190, 'Đặt mật khẩu phức tạp và đảm bảo thiết bị của bạn yêu cầu nhập mật khẩu để khởi động hoặc tiếp tục hoạt động', b'0', 58, NULL),
(191, 'Bảo vệ thiết bị của bạn bằng phần mềm chống virus và cài đặt tự động cập nhật ở tần suất cao nhất', b'0', 58, NULL),
(192, 'Tất cả các đáp án trên đều đúng', b'0', 58, NULL),
(193, 'Nhận được sự chấp thuận từ Ban Chất lượng & An ninh thông tin và sau đó đăng ký với Admin và phòng IT', b'1', 59, NULL),
(194, 'Nhận được sự chấp thuận từ người quản lý, ban lãnh đạo và sau đó đăng ký với Ban Chất lượng & An ninh thông tin và phòng IT', b'0', 59, NULL),
(195, 'Nhận được sự chấp thuận từ phòng IT và sau đó đăng ký với Admin', b'0', 59, NULL),
(196, 'Tất cả các đáp án trên đều đúng', b'0', 59, NULL),
(197, 'Phải được đồng ý và phê duyệt từ cấp trên và ban lãnh đạo', b'1', 60, NULL),
(198, 'Chịu trách nhiệm về an toàn và An ninh thông tin', b'0', 60, NULL),
(199, 'Cả A và B đều đúng', b'0', 60, NULL),
(200, 'Cả A và B đều sai', b'0', 60, NULL),
(201, 'Làm theo hướng dẫn để nhận thưởng và chia sẻ với bạn bè', b'1', 61, NULL),
(202, 'Forward email cho các bạn trong team để cùng tham gia nhận thưởng', b'0', 61, NULL),
(203, 'Kiểm tra kĩ người gửi và nội dung mail thấy không có vấn đề gì nên làm theo hướng dẫn', b'0', 61, NULL),
(204, 'Không click/mở xem email/không làm theo hướng dẫn trong email và báo ngay cho quản lý/Ban Chất lượng & An ninh thông tin do đây là email công ty, không phải email cá nhân để nhận thưởng, và thư được gởi đến lại nằm trong Spam nên nhiều khả năng là email độc hại', b'0', 61, NULL),
(205, 'Xin phê duyệt của người có thẩm quyền', b'1', 62, NULL),
(206, 'Tài liệu thông tin được mã hóa (đối với bản mềm), cất giữ trong bìa hồ sơ/cặp khi mang ra ngoài (đối với bản cứng)', b'0', 62, NULL),
(207, 'Cả A và B đều đúng', b'0', 62, NULL),
(208, 'Cả A và B đều sai', b'0', 62, NULL),
(209, 'Nhờ IT mã hóa toàn bộ hoặc mã hóa thông tin bảo mật', b'1', 63, NULL),
(210, 'Nhờ IT cài đặt tự động khóa thiết bị sau một thời gian ngắn không hoạt động', b'0', 63, NULL),
(211, 'Nhờ IT bật tính năng xóa dữ liệu từ xa (remote wipe) đối với smartphone', b'0', 63, NULL),
(212, 'Tất cả các phương án trên', b'0', 63, NULL),
(213, 'Yêu cầu IT giúp đỡ', b'1', 64, NULL),
(214, 'Kiểm tra phần mềm cần dùng đó có nằm trong danh sách cho phép của công ty không?', b'0', 64, NULL),
(215, 'Tìm kiếm phiên bản dùng thử từ internet', b'0', 64, NULL),
(216, 'Cả A và B đều đúng', b'0', 64, NULL),
(217, 'Không mở hoặc nhấp vào bất kỳ liên kết/tập tin nào được đính kèm', b'1', 65, NULL),
(218, 'Thông báo cho Ban Chất lượng & An ninh thông tin và phòng IT để xử lý', b'0', 65, NULL),
(219, 'Cả A và B đều đúng', b'0', 65, NULL),
(220, 'Cả A và B đều sai', b'0', 65, NULL),
(221, 'Có', b'1', 66, NULL),
(222, 'Không', b'0', 66, NULL),
(223, 'Máy tính và các thiết bị IT khi sử dụng trong mạng công ty không được cài đặt và cập nhật phần mềm phòng chống virus phiên bản mới nhất và không quét virus định kỳ theo hướng dẫn của phòng IT hoặc nhân viên tắt hay xoá phần mềm này', b'1', 67, NULL),
(224, 'Máy tính và các thiết bị IT khi sử dụng trong mạng công ty không được cập nhật các bản vá lỗi hệ điều hành và phần mềm một cách tự động', b'0', 67, NULL),
(225, 'Tất cả các đáp án trên đều đúng', b'0', 67, NULL),
(226, 'Viết vào giấy Notes và dán lên vị trí dễ nhìn, để trong ví', b'1', 68, NULL),
(227, 'Sử dụng mật khẩu mặc định công ty cấp', b'0', 68, NULL),
(228, 'Cả A và B đều đúng', b'0', 68, NULL),
(229, 'Cả A và B đều sai', b'0', 68, NULL),
(230, 'Ban Chất lượng & An ninh thông tin', b'1', 69, NULL),
(231, 'Phòng HR', b'0', 69, NULL),
(232, 'Phòng IT', b'0', 69, NULL),
(233, 'Phòng IT và Ban Chất lượng & An ninh thông tin', b'0', 69, NULL),
(234, 'Khi nào cũng được', b'1', 70, NULL),
(235, 'Khi có yêu cầu của khách hàng', b'0', 70, NULL),
(236, 'Khi ký Hợp đồng lao động', b'0', 70, NULL),
(237, 'Click vào đường link và tải về cài đặt', b'1', 71, NULL),
(238, 'Bỏ qua thông báo đó', b'0', 71, NULL),
(239, 'Thông báo với phòng IT', b'0', 71, NULL),
(240, 'Hình như thông tin lương của mọi người trong công ty bị tiết lộ ra ngoài', b'1', 72, NULL),
(241, 'Ảnh hưởng tới hệ thống nội bộ và thông tin có thể bị tiết lộ ra ngoài', b'0', 72, NULL),
(242, 'Không ảnh hưởng gì', b'0', 72, NULL),
(243, 'Tìm cách crack phần mềm', b'1', 73, NULL),
(244, 'Đề xuất cấp trên/ban lãnh đạo xin mua bản quyền phần mềm phục vụ công việc', b'0', 73, NULL),
(245, 'Tạo ticket xin mua bản quyền phần mềm phục vụ mục đích ngoài công việc', b'0', 73, NULL),
(246, 'Tất cả các đáp án trên đều sai', b'0', 73, NULL),
(247, 'Hệ thống free email như Gmail, Yahoo, Hotmail, ...', b'1', 74, NULL),
(248, 'Các phần mềm peer to peer', b'0', 74, NULL),
(249, 'Tất cả các đáp án trên đều đúng', b'0', 74, NULL),
(250, 'Để nguyên trên bàn làm việc vì để trong công ty sẽ không bị thất lạc', b'1', 75, NULL),
(251, 'Do tủ của bạn không có khóa nên bạn đem ra về', b'0', 75, NULL),
(252, 'Cất vào tủ cá nhân và khóa lại', b'0', 75, NULL),
(253, 'Hàng tháng', b'1', 76, NULL),
(254, '4 lần/năm', b'0', 76, NULL),
(255, '2 lần/năm', b'0', 76, NULL),
(256, '1 lần/năm', b'0', 76, NULL),
(257, 'Không đăng tải, chia sẻ, tiết lộ thông tin hoặc hình ảnh cần bảo mật của công ty, khách hàng trên các phương tiện truyền thông xã hội', b'1', 77, NULL),
(258, 'Không đăng tải, chia sẻ, tiết lộ thông tin về lịch trình làm việc, địa điểm làm việc, công việc của cá nhân hoặc cán bộ quản lý trên các phương tiện truyền thông xã hội', b'0', 77, NULL),
(259, 'Cả A và B đều đúng', b'0', 77, NULL),
(260, 'Cả A và B đều sai', b'0', 77, NULL),
(261, 'Mọi nhân viên có trách nhiệm thông báo khi phát hiện có hiện tượng hoặc sự cố về An ninh thông tin để tìm phương hướng giải quyết', b'1', 78, NULL),
(262, 'Tuân thủ yêu cầu của khách hàng về báo cáo xử lý sự cố An ninh thông tin nếu đã thống nhất phương thức xử lý với khách hàng trước đó', b'0', 78, NULL),
(263, 'Nhân viên có trách nhiệm hợp tác xử lý sự cố về An ninh thông tin khi được công ty hoặc khách hàng yêu cầu', b'0', 78, NULL),
(264, 'Tất cả các đáp án trên đều đúng', b'0', 78, NULL),
(265, 'Đăng kí sử dụng các thiết bị di động kết nối với hệ thống mạng hoặc các dịch vụ IT của công ty', b'1', 79, NULL),
(266, 'Khi muốn sử dụng các thiết bị mạng phải đăng ký và được cấu hình và quản lý bởi phòng IT', b'0', 79, NULL),
(267, 'Tất cả các đáp án trên đều sai', b'0', 79, NULL),
(268, 'Không đặt và sử dụng mật khẩu quá đơn giản, dễ suy đoán (như nickname, ngày sinh nhật, ...)', b'1', 80, NULL),
(269, 'Mật khẩu tối thiểu 6 ký tự, bao gồm 1 chữ hoa, 1 ký tự đặc biệt, 1 số) và định kỳ 3 tháng đổi mật khẩu 1 lần', b'0', 80, NULL),
(270, 'Mật khẩu tối thiểu 8 ký tự, bao gồm 1 chữ hoa, 1 ký tự đặc biệt, 1 số, ... định kì 3 tháng thay đổi mật khẩu 1 lần, không đặt và sử dụng mật khẩu quá đơn giản, dễ suy đoán', b'0', 80, NULL),
(271, 'Tất cả các đáp án trên đều đúng', b'0', 80, NULL),
(272, 'Chỉ dùng phần mềm trong danh mục phần mềm được phép sử dụng của công ty', b'1', 81, NULL),
(273, 'Nghiêm cấm sử dụng phần mềm peer-to-peer', b'0', 81, NULL),
(274, 'Nghiêm cấm sử dụng phần mềm và trang web vượt proxy/firewall công ty hoặc phần mềm có tính năng tương tự', b'0', 81, NULL),
(275, 'Tất cả các đáp án trên đều đúng', b'0', 81, NULL),
(276, 'Chỉ sử dụng thiết bị di động cá nhân cho công việc khi có phê duyệt của người có thẩm quyền', b'1', 82, NULL),
(277, 'Có trách nhiệm bảo mật và bảo vệ thiết bị di động như đối với các tài sản của công ty', b'0', 82, NULL),
(278, 'Thiết lập mật khẩu phức tạp và cài đặt chương trình phòng chống vi rút', b'0', 82, NULL),
(279, 'Tất cả các đáp án trên đều đúng', b'0', 82, NULL),
(280, 'Không click vào các link quảng cáo, link lạ không liên quan đến công việc', b'1', 83, NULL),
(281, 'Không sử dụng các thiết bị nhớ ngoài cá nhân (USB, điện thoại, ổ cứng, …)', b'0', 83, NULL),
(282, 'Tất cả các đáp án trên đều đúng', b'0', 83, NULL),
(283, 'Sai', b'1', 84, NULL),
(284, 'Đúng', b'0', 84, NULL),
(285, 'Được phép, vì đó là tự do cá nhân', b'1', 85, NULL),
(286, 'Không được phép, vì vi phạm tính bảo mật', b'0', 85, NULL),
(287, 'Sử dụng tài khoản và mật khẩu của người khác', b'1', 86, NULL),
(288, 'Chia sẻ cho người khác sử dụng tài khoản và mật khẩu của mình', b'0', 86, NULL),
(289, 'Tất cả các đáp án trên đều đúng', b'0', 86, NULL),
(290, 'Hệ thống an ninh thông tin', b'1', 87, NULL),
(291, 'Hệ thống quản lý rủi ro', b'0', 87, NULL),
(292, 'Hệ thống quản lý chất lượng dịch vụ trong CNTT', b'0', 87, NULL),
(293, 'Hệ thống quản lý năng lượng', b'0', 87, NULL),
(294, 'Đúng', b'1', 88, NULL),
(295, 'Sai', b'0', 88, NULL),
(296, 'Đúng', b'1', 89, NULL),
(297, 'Sai', b'0', 89, NULL),
(298, 'Đúng', b'1', 90, NULL),
(299, 'Sai', b'0', 90, NULL),
(300, 'Đúng', b'1', 91, NULL),
(301, 'Sai', b'0', 91, NULL),
(302, 'Thông báo phòng IT khóa thẻ bị mất', b'1', 92, NULL),
(303, 'Thông báo cho quản lý trực tiếp của mình', b'0', 92, NULL),
(304, 'Thông báo cho phòng HR', b'0', 92, NULL),
(305, 'Tất cả các đáp án trên đều đúng', b'0', 92, NULL),
(306, 'Sử dụng bản crack', b'1', 93, NULL),
(307, 'Thông báo cho quản lý trực tiếp về việc này', b'0', 93, NULL),
(308, 'Có', b'1', 94, NULL),
(309, 'Không', b'0', 94, NULL),
(310, 'Hỗ trợ đồng nghiệp tìm mọi biện pháp để khắc phục sự cố trước, nếu không được thì mới cần thông báo cho cấp trên', b'1', 95, NULL),
(311, 'Im lặng, không cần làm gì cả vì đó là vấn đề và trách nhiệm của đồng nghiệp', b'0', 95, NULL),
(312, 'Hướng dẫn đồng nghiệp không tự ý khắc phục và thông báo cho quản lý/bộ phận An ninh thông tin trong vòng 2 tiếng', b'0', 95, NULL),
(313, 'Có', b'1', 96, NULL),
(314, 'Không', b'0', 96, NULL),
(315, 'Đặt mật khẩu cho file đính kèm và gửi kèm theo mail', b'1', 97, NULL),
(316, 'Đặt mật khẩu cho file đính kèm và gửi kèm qua một mail khác', b'0', 97, NULL),
(317, 'Tất cả các đáp án trên đều đúng', b'0', 97, NULL),
(318, 'Có', b'1', 98, NULL),
(319, 'Không', b'0', 98, NULL),
(320, 'Đăng ký với phòng IT', b'1', 99, NULL),
(321, 'Đăng ký với Ban Chất lượng & An ninh thông tin', b'0', 99, NULL),
(322, 'Đăng ký với phòng IT và Ban Chất lượng & An ninh thông tin', b'0', 99, NULL),
(323, 'Đăng ký với phòng Admin và xin phép phòng ban chức năng liên quan', b'0', 99, NULL),
(324, 'Quản lý trực tiếp', b'1', 100, NULL),
(325, 'Ban Chất lượng & An ninh thông tin', b'0', 100, NULL),
(326, 'Cả A và B đều đúng', b'0', 100, NULL),
(327, 'Cả A và B đều sai', b'0', 100, NULL),
(328, 'Tắt máy tính trước khi ra về', b'1', 101, NULL),
(329, 'Không cắm các thiết bị nhớ ngoài vào máy tính', b'0', 101, NULL),
(330, 'Tất cả các đáp án trên đều đúng', b'0', 101, NULL),
(331, 'Báo tình trạng với Quản lý trực tiếp', b'1', 102, NULL),
(332, 'Báo phòng IT để thực hiện phối hợp thực hiện', b'0', 102, NULL),
(333, 'Ngắt kết nối mạng và thông báo cho phòng IT để phối hợp thực hiện', b'0', 102, NULL),
(334, 'Có', b'1', 103, NULL),
(335, 'Không', b'0', 103, NULL),
(336, 'Quản lý trực tiếp', b'1', 104, NULL),
(337, 'Phòng IT', b'0', 104, NULL),
(338, 'Quản lý trực tiếp, trưởng Ban Chất lượng & An ninh thông tin', b'0', 104, NULL),
(339, 'Quản lý trực tiếp, trưởng Ban Chất lượng & An ninh thông tin, phòng IT', b'0', 104, NULL),
(340, '1 tiếng', b'1', 105, NULL),
(341, '2 tiếng', b'0', 105, NULL),
(342, '3 tiếng', b'0', 105, NULL),
(343, '4 tiếng', b'0', 105, NULL),
(344, 'Đóng gói kỹ, sử dụng dịch vụ vận chuyển có uy tín và có đảm bảo nhằm hạn chế tối đa rủi ro thất thoát dữ liệu và xác nhận với người nhận về nội dung và thời gian nhận tài liệu.', b'1', 106, NULL),
(345, 'Sử dụng dịch vụ vận chuyển có uy tín và có đảm bảo, không cần xác nhận với người nhận về nội dung và thời gian nhận tài liệu vì đã có bên dịch vụ đã đảm bảo tối đa về các rủi ro thất thoát dữ liệu', b'0', 106, NULL),
(346, 'Đóng gói kĩ vào các bìa hồ sơ hoặc dán giấy và băng dính che kín thiết bị để không ai phát hiện, sau đó sử dụng các dịch vụ vận chuyển như Grab, ... để giao tài liệu, thiết bị cho nhanh, tiết kiệm thời gian', b'0', 106, NULL),
(347, 'Abcde123', b'1', 107, NULL),
(348, 'abcd123@', b'0', 107, NULL),
(349, 'Zb123589&', b'0', 107, NULL),
(350, 'LaT3r', b'0', 107, NULL),
(351, 'Nhiệt tình mở cửa cho người khách hàng đó', b'1', 108, NULL),
(352, 'Hỏi tên sau đó bảo họ chờ và báo với bộ phận lễ tân', b'0', 108, NULL),
(353, 'Đuổi họ đi vì sợ mất an toàn thông tin', b'0', 108, NULL),
(354, 'Cho họ mượn thẻ từ để đi lại cho dễ', b'0', 108, NULL),
(355, 'Đúng', b'1', 109, NULL),
(356, 'Sai', b'0', 109, NULL),
(357, 'Đúng', b'1', 110, NULL),
(358, 'Sai', b'0', 110, NULL),
(359, 'Đúng', b'1', 111, NULL),
(360, 'Sai', b'0', 111, NULL),
(361, 'Đúng', b'1', 112, NULL),
(362, 'Sai', b'0', 112, NULL),
(363, 'Có', b'1', 113, NULL),
(364, 'Không', b'0', 113, NULL),
(365, 'Đúng', b'1', 114, NULL),
(366, 'Sai', b'0', 114, NULL),
(367, 'Công ty tốn thời gian, công sức, tiền bạc, ... để xử lý sự cố, cá nhân vi phạm có thể bị sa thải', b'1', 115, NULL),
(368, 'Công ty mất lòng tin với khách hàng có thể dẫn đến mất hợp đồng', b'0', 115, NULL),
(369, 'Ảnh hưởng đến uy tín, hình ảnh của công ty và mối quan hệ với khách hàng', b'0', 115, NULL),
(370, 'Tất cả các đáp án trên đều đúng', b'0', 115, NULL),
(371, 'Không được sao chép, phân tán và sử dụng phần mềm không có bản quyền', b'1', 116, NULL),
(372, 'Cài đặt và sử dụng các phần mềm có trong danh sách phần mềm cho phép (white-list) của công ty', b'0', 116, NULL),
(373, 'Tất cả các đáp án trên đều đúng', b'0', 116, NULL),
(374, 'Không cho người khác mượn tài khoản công ty để truy cập hệ thống thông tin bảo mật hoặc tiết lộ mật khẩu cá nhân', b'1', 117, NULL),
(375, 'Không sử dụng hoặc truy cập các hệ thống thông tin của công ty bằng các tài khoản của người khác', b'0', 117, NULL),
(376, 'Không tìm kiếm mật khẩu người khác', b'0', 117, NULL),
(377, 'Tất cả các đáp án trên đều đúng', b'0', 117, NULL),
(378, 'Đối tượng áp dụng là nhân viên của công ty đối tác', b'1', 118, NULL),
(379, 'Đối tượng áp dụng là người lao động ký Hợp đồng lao động xác định thời hạn từ 12 tháng đến 36 tháng, Hợp đồng lao động không xác định thời hạn với công ty', b'0', 118, NULL),
(380, 'Đối tượng áp dụng là nhân viên của công ty, là người lao động ký Hợp đồng thử việc, Hợp đồng đào tạo, Hợp đồng đào tạo thực nghiệm, Hợp đồng lao động theo mùa vụ hoặc theo công việc nhất định có thời gian dưới 12 tháng, Hợp đồng lao động xác định thời hạn từ 12 tháng đến 36 tháng, Hợp đồng lao động không xác định thời hạn với công ty', b'0', 118, NULL),
(381, 'Tất cả các đáp án trên đều đúng', b'0', 118, NULL),
(382, 'Lây nhiễm virus/worm/spyware/adware', b'1', 119, NULL),
(383, 'Rò rỉ thông tin mật, thông tin của dự án, công ty và tạo cơ hội cho tin tặc tấn công hệ thống mạng của công ty', b'0', 119, NULL),
(384, 'Tất cả các đáp án trên đều đúng', b'0', 119, NULL),
(385, 'Đúng', b'1', 120, NULL),
(386, 'Sai', b'0', 120, NULL),
(387, 'Các lỗi xảy ra trong quá trình thao tác gây ảnh hưởng tới việc thông tin của công ty/dự án bị tiết lộ', b'1', 121, NULL),
(388, 'Tiết lộ thông tin nhạy cảm hoặc thông tin bảo mật cho người không có thẩm quyền khi không được phép', b'0', 121, NULL),
(389, 'Gửi nhầm thông tin nhạy cảm hoặc thông tin bảo mật cho người không liên quan', b'0', 121, NULL),
(390, 'Tất cả các đáp án trên đều đúng', b'0', 121, NULL),
(391, 'Đúng', b'1', 122, NULL),
(392, 'Sai', b'0', 122, NULL),
(393, 'Trên bàn làm việc của mình', b'1', 123, NULL),
(394, 'Để nhờ tủ khóa của của đồng nghiệp ngồi bên cạnh', b'0', 123, NULL),
(395, 'Để trong tủ có khóa và đảm bảo người khác không thể tiếp cận được', b'0', 123, NULL),
(396, '3 tháng', b'1', 124, NULL),
(397, '6 tháng', b'0', 124, NULL),
(398, 'Không cần thiết phải thay đổi định kỳ, chỉ thay đổi mật khẩu tài khoản khi nào có yêu cầu từ công ty', b'0', 124, NULL),
(399, 'Không cần nếu chỉ rời khỏi chỗ làm việc vài phút, chỉ nhấn nút tắt màn hình máy tính là được', b'1', 125, NULL),
(400, 'Có, cần phải lock màn hình máy ngay khi rời khỏi chỗ làm việc của mình', b'0', 125, NULL),
(401, 'Không cần làm gì cả vì đang ngồi cùng team trong dự án', b'0', 125, NULL),
(402, '6 ký tự', b'1', 126, NULL),
(403, '7 ký tự', b'0', 126, NULL),
(404, '8 ký tự', b'0', 126, NULL),
(405, '9 ký tự', b'0', 126, NULL),
(406, 'Nhân viên không phải ký và tuân thủ cam kết An ninh thông tin khi ký Hợp đồng lao động với công ty', b'1', 127, NULL),
(407, 'Nhân viên có thể phải ký và tuân thủ cam kết An ninh thông tin với khách hàng như là yêu cầu An ninh thông tin của khách hàng', b'0', 127, NULL),
(408, 'Cán bộ quản lý đơn vị, khi thuê nhân lực từ bên ngoài, không có trách nhiệm ký cam kết An ninh thông tin và đào tạo An ninh thông tin cho nhân lực được thuê', b'0', 127, NULL),
(409, 'Tài liệu mật/Confidential', b'1', 128, NULL),
(410, 'Lưu hành nội bộ/Internal use', b'0', 128, NULL),
(411, 'Tất cả các đáp án trên đều đúng', b'0', 128, NULL),
(412, 'Thông báo ngay cho cán bộ quản lý cấp trên và trưởng phòng An ninh thông tin trong vòng 2 giờ để tìm phương hướng giải quyết', b'1', 129, NULL),
(413, 'Cố gắng tự xử lý sự cố rồi mới báo cho cán bộ quản lý cấp trên nếu không xử lý được', b'0', 129, NULL),
(414, 'Thông báo ngay cho cán bộ quản lý cấp trên và để quản lý chịu trách nhiệm xử lý 1 mình', b'0', 129, NULL),
(415, 'Báo cáo ngay cho khách hàng để hỏi về phương án xử lý sự cố', b'0', 129, NULL),
(416, 'Trong trường hợp có nhu cầu làm việc từ xa, làm việc ở nhà, thì phải xin phép và được sự phê duyệt từ cấp trên và ban lãnh đạo. Khi làm việc từ xa, làm việc ở nhà, nhân viên phải chịu trách nhiệm trong việc bảo mật, bảo vệ thông tin như khi làm việc tại công ty', b'1', 130, NULL),
(417, 'Phải tuân thủ các yêu cầu về cài đặt, sử dụng đối với các kết nối từ xa tới hệ thống thông tin của công ty theo hướng dẫn của phòng IT. Nghiêm cấm việc thiết lập kết nối từ xa, từ nhà vào máy tính tại công ty nếu chưa được sự kiểm soát từ phòng IT', b'0', 130, NULL),
(418, 'Tất cả các đáp án trên đều đúng', b'0', 130, NULL),
(419, 'Thông báo với cán bộ quản lý thẻ trong vòng 02 giờ để xử lý và làm thủ tục mượn thẻ tạm tại phòng Admin', b'1', 131, NULL),
(420, 'Không cần thông báo vội vì bạn có thể mượn của người khác, khi nào cần thiết thì thông báo lại sau', b'0', 131, NULL),
(421, 'Thông báo với cán bộ quản lý thẻ trong vòng 08 giờ để xử lý và làm thủ tục mượn thẻ tạm tại phòng Admin', b'0', 131, NULL),
(422, 'Nhờ người ngồi cạnh cùng chuyển máy tính và tự cài đặt các thiết bị', b'1', 132, NULL),
(423, 'Tự chuyển máy tính và cài đặt các thiết bị', b'0', 132, NULL),
(424, 'Báo quản lý trực tiếp để quản lý vận chuyển máy tính và cài đặt thiết bị giúp', b'0', 132, NULL),
(425, 'Liên hệ phòng IT để vận chuyển máy và cài đặt thiết bị, không tự thực hiện chuyển/cài đặt máy', b'0', 132, NULL),
(426, 'Attachment: nhằm kiểm tra xem có mở được hay không hoặc có nhầm lẫn file đính kèm không', b'1', 133, NULL),
(427, 'Địa chỉ nhận email (TO/CC/BCC) để tránh gửi nhầm cho người khác', b'0', 133, NULL),
(428, 'Tất cả các đáp án trên đều đúng', b'0', 133, NULL),
(429, 'Thoát (logout) trên các trình duyệt/ứng dụng công việc đang làm và nhấn nút tắt màn hình máy tính rồi ra về', b'1', 134, NULL),
(430, 'Không cần thoát (logout) trên trình duyệt/ứng dụng đang làm, chỉ cần khóa màn hình (lockscreen) và nhấn nút tắt màn hình máy tính rồi ra về, sáng hôm sau đi làm mở màn hình làm cho nhanh, tiết kiệm thời gian mở máy và đăng nhập lại', b'0', 134, NULL),
(431, 'Tắt máy tính (shut down) và các thiết bị điện tử khác (nếu có) trước khi ra về. Nếu cần bật máy qua đêm vì lý do công việc thì đăng ký và có sự phê duyệt của công ty', b'0', 134, NULL),
(432, 'Cho cô ấy ngồi cạnh xem bạn làm việc', b'1', 135, NULL),
(433, 'Để cô ấy ngồi đợi ở sảnh', b'0', 135, NULL),
(434, 'Dắt cô ấy đi tham quan và giới thiệu các dự án', b'0', 135, NULL),
(435, 'Khoe với cô ấy các tài liệu dự án mà bạn làm rất thành công', b'0', 135, NULL),
(436, 'Đúng', b'1', 136, NULL),
(437, 'Sai', b'0', 136, NULL),
(438, 'Đúng', b'1', 137, NULL),
(439, 'Sai', b'0', 137, NULL),
(440, 'Tất cả các DEV', b'1', 138, NULL),
(441, 'BrSE', b'0', 138, NULL),
(442, 'Người được khách hàng chỉ định', b'0', 138, NULL),
(443, 'Leader/Quản lý', b'0', 138, NULL),
(444, 'Tự khắc phục', b'1', 139, NULL),
(445, 'Nhờ người khác giúp đỡ', b'0', 139, NULL),
(446, 'Báo cho quản lý cấp trên và Ban Chất lượng & An ninh thông tin, phòng IT để được hỗ trợ', b'0', 139, NULL),
(447, 'Tất cả các đáp án trên đều đúng', b'0', 139, NULL),
(448, 'Cần được sự cho phép của người có thẩm quyền', b'1', 140, NULL),
(449, 'Quản lý cẩn thận, sử dụng xong phải hủy hay trả lại', b'0', 140, NULL),
(450, 'Tất cả các đáp án trên đều đúng', b'0', 140, NULL),
(451, 'Đúng', b'1', 141, NULL),
(452, 'Sai', b'0', 141, NULL),
(453, 'Có', b'1', 142, NULL),
(454, 'Không', b'0', 142, NULL),
(455, 'Có, nếu được người có thẩm quyền cho phép và tuần thủ các quy định cài đặt, bảo quản', b'0', 142, NULL),
(456, '1, 2, 4 đúng', b'1', 143, NULL),
(457, '2, 3 đúng', b'0', 143, NULL),
(458, '2, 3 sai', b'0', 143, NULL),
(459, '1, 2, 3, 4 đều đúng', b'0', 143, NULL),
(460, 'Có thể cho thông tin tài khoản công ty nếu đồng nghiệp đó cùng dự án với bạn', b'1', 144, NULL),
(461, 'Cùng là đồng nghiệp trong công ty nên bạn có thể cho thông tin tài khoản được', b'0', 144, NULL),
(462, 'Tuyệt đối không được cho người khác sử dụng tài khoản công ty', b'0', 144, NULL),
(463, 'Lưu thông tin dự án trên file server và vẫn lưu trên máy tính để sử dụng lúc cần', b'1', 145, NULL),
(464, 'Không cần lưu thông tin dự án trên fileserver và xóa thông tin dự án trên máy tính', b'0', 145, NULL),
(465, 'Lưu thông tin dự án trên file server đồng thời xóa thông tin dự án trên máy tính', b'0', 145, NULL),
(466, 'Được phép, vì là đó là chia sẻ kinh nghiệm trong cùng công ty', b'1', 146, NULL),
(467, 'Được phép nếu như bạn đang giữ vai trò là quản lý', b'0', 146, NULL),
(468, 'Không được phép, vì đó là vi phạm nguyên tắc bảo mật với khách hàng và công ty', b'0', 146, NULL),
(469, 'Sắp xếp gọn gàng, ngay ngắn trên bàn làm việc của mình', b'1', 147, NULL),
(470, 'Không cần sắp xếp gọn gàng vì đã có anh/chị lao công dọn dẹp cuối này, để nguyên trên bàn làm việc, sáng hôm sau đi làm sớm để sử dụng tiếp', b'0', 147, NULL),
(471, 'Xếp gọn gàng và cất vào tủ có khóa', b'0', 147, NULL),
(472, 'Đọc kỹ và tuân thủ hướng dẫn quản lý/sử dụng tài sản của khách hàng hoặc công ty trước khi dùng', b'1', 148, NULL),
(473, 'Sử dụng và bảo quản thiết bị, tài khoản/mật khẩu, email, quyền truy cập, ... được phân quyền sử dụng trên nguyên tắc “đủ để làm việc”', b'0', 148, NULL),
(474, 'Tất cả các đáp án trên đều đúng', b'0', 148, NULL),
(475, 'Sai', b'1', 149, NULL),
(476, 'Đúng', b'0', 149, NULL),
(477, 'Đúng', b'1', 150, NULL),
(478, 'Sai', b'0', 150, NULL),
(479, 'Bạn chỉ cho thông tin của khách hàng', b'1', 151, NULL),
(480, 'Bạn cho những thông tin bạn biết về khách hàng và dự án', b'0', 151, NULL),
(481, 'Cả A và B đều đúng', b'0', 151, NULL),
(482, 'Cả A và B đều sai', b'0', 151, NULL),
(483, 'Giúp bạn truy cập hệ thống khách hàng để lấy thông tin và yêu cầu bạn thân tuyệt đối không nói với người thứ 3 biết', b'1', 152, NULL),
(484, 'Bạn cung cấp tài khoản và mật khẩu để bạn thân tự truy cập, như vậy nếu bị phát hiện cũng không ảnh hưởng gì tới bạn', b'0', 152, NULL),
(485, 'Không đồng ý, bạn giải thích rằng làm như vậy sẽ ảnh hưởng tới thông tin mật của khách hàng và vi phạm quy định An ninh thông tin của công ty', b'0', 152, NULL),
(486, 'Đồng ý chia sẻ và nghĩ rằng sau đó sẽ yêu cầu phòng IT reset lại password', b'1', 153, NULL),
(487, 'Đồng ý chia sẻ ngay mà không cần suy nghĩ gì vì bạn ấy đang cần gấp vì mục đích công việc', b'0', 153, NULL),
(488, 'Không đồng ý và hướng dẫn đồng nghiệp nhờ sự trợ giúp từ quản lý cấp trên hoặc phòng IT', b'0', 153, NULL),
(489, 'Lấy điện thoại ra chụp khoảnh khắc mọi người cùng ăn bánh kem để đăng lên Facebook', b'1', 154, NULL),
(490, 'Lấy điện thoại ra chụp làm kỉ niệm, chỉ chia sẻ cho đồng nghiệp chứ bạn không đăng lên Facebook', b'0', 154, NULL),
(491, 'Từ chối không chụp ảnh vì khu vực dự án đang làm việc là khu vực bảo mật đã có dấu hiệu cấm chụp ảnh, quay phim, ghi âm; màn hình máy tính hoặc thông tin dự án có thể rò rỉ ra bên ngoài nếu lỡ đăng tải hình ảnh lên mạng', b'0', 154, NULL),
(492, 'Dùng thẻ từ của mình (hoặc dùng vân tay của mình) để quẹt và mở cửa cho đồng nghiệp vào', b'1', 155, NULL),
(493, 'Nhờ một bạn khác trong dự án của mình dùng thẻ từ của người đó (hoặc vân tay của người đó) để quẹt và mở cửa cho đồng nghiệp vào', b'0', 155, NULL),
(494, 'Từ chối không cho đồng nghiệp vào do dự án của bạn nằm trong khu vực bảo mật và đã có biển cấm/chỉ dẫn rõ chỉ có người của dự án được phép ra vào', b'0', 155, NULL),
(495, 'Dự án đã tự ý sử dụng tài sản khách hàng sai mục đích phục vụ cho dự án của khách hàng', b'1', 156, NULL),
(496, 'Bạn đã tự ý mang tài sản cura khách hàng ra khỏi khu vực làm việc mà chưa được sự đồng ý của người có thẩm quyền', b'0', 156, NULL),
(497, 'Tất cả các đáp án trên đều đúng', b'0', 156, NULL),
(498, 'Cất tài liệu vào hộc và khóa tủ khi ra về', b'1', 157, NULL),
(499, 'Huỷ tài liệu bằng máy huỷ giấy khi không sử dụng tài liệu nữa', b'0', 157, NULL),
(500, 'Khi không sử dụng nữa thì giữ lại để làm giấy nháp để bảo vệ môi trường', b'0', 157, NULL),
(501, 'Các thông tin liên quan đến dự án phải được lưu trên file server của dự án, không được lưu các thông tin này tại máy tính', b'1', 158, NULL),
(502, 'Thông tin liên quan đến dự án có thể phải xóa bỏ khỏi máy tính, email và các nơi lưu trữ khác theo yêu cầu của người có thẩm quyền của dự án hoặc công ty', b'0', 158, NULL),
(503, 'Tất cả các đáp án trên đều đúng', b'0', 158, NULL),
(504, 'Nhận việc và trực tiếp thao tác trên các môi trường của dự án', b'1', 159, NULL),
(505, 'Ký cam kết An ninh thông tin và được đào tạo An ninh thông tin trước khi trực tiếp thực hiện công việc được giao', b'0', 159, NULL),
(506, 'Không, đội dự án chỉ cần sử dụng thôi', b'1', 160, NULL),
(507, 'Có, đội dự án có trách nhiệm bảo mật server đó', b'0', 160, NULL),
(508, 'Cả A và B đều đúng', b'0', 160, NULL),
(509, 'Cả A và B đều sai', b'0', 160, NULL),
(510, 'Đúng', b'1', 161, NULL),
(511, 'Sai, đối với tài liệu mật cần cất vào tủ có khóa khi không có nhu cầu sử dụng', b'0', 161, NULL),
(512, 'Đúng', b'1', 162, NULL),
(513, 'Sai', b'0', 162, NULL),
(514, 'Có, nó giúp nhân viên làm việc dễ dàng hơn', b'1', 163, NULL),
(515, 'Không được phép, hãy xóa ngay những thông tin này nếu máy tính của bạn lưu trữ nó', b'0', 163, NULL),
(516, 'Chỉ dùng đúng url của khách hàng gửi cho.', b'1', 164, NULL),
(517, 'Phải đăng ký bằng account email của cá nhân của công ty, không được dùng GitHub repository cá nhân.', b'0', 164, NULL),
(518, 'Cẩn thận khi commit code, xem chắc chắn đó có đúng là Github của khách hàng hay không.', b'0', 164, NULL),
(519, 'Lập danh sách các từ khóa quan trọng để dự án kiểm tra GitHub xem có dữ liệu nào bị up lên không. Khi kết thúc dự án thì chuyển việc theo dõi cho Ban quản lý Chất lượng và An ninh thông tin.', b'0', 164, NULL),
(520, 'Tất cả các đáp án trên đều đúng', b'0', 164, NULL),
(521, 'Đúng', b'1', 165, NULL),
(522, 'Sai', b'0', 165, NULL),
(523, 'Đúng', b'1', 166, NULL),
(524, 'Sai', b'0', 166, NULL),
(525, 'Đúng', b'1', 167, NULL),
(526, 'Sai', b'0', 167, NULL),
(527, 'Thông tin khách hàng cung cấp', b'1', 168, NULL),
(528, 'Mã nguồn (Source code)', b'0', 168, NULL),
(529, 'Hợp đồng', b'0', 168, NULL),
(530, 'Tất cả các đáp án trên đều đúng', b'0', 168, NULL),
(531, 'Tuân thủ quy định & hướng dẫn quản lý tài sản của khách hàng khi được cung cấp hoặc sử dụng, nếu không có thì tuân thủ theo quy định & hướng dãn của công ty', b'1', 169, NULL),
(532, 'Bàn giao lại cho người có trách nhiệm khi bạn thay đổi vị trí công việc', b'0', 169, NULL),
(533, 'Tất cả các đáp án trên đều đúng', b'0', 169, NULL),
(534, 'Có', b'1', 170, NULL),
(535, 'Không', b'0', 170, NULL),
(536, 'Có', b'1', 171, NULL),
(537, 'Không', b'0', 171, NULL),
(538, 'Phải xin phép và được sự phê duyệt của người có thẩm quyền và chỉ mang ra các tài sản, thông tin cần thiết đã được phê duyệt, khi cần thiết phải mang tài sản, thông tin của công ty hoặc khách hàng ra ngoài', b'1', 172, NULL),
(539, 'Khi mang mang tài sản, thông tin của khách hàng hoặc công ty ra ngoài phải áp dụng các biện pháp an toàn và bảo mật phù hợp', b'0', 172, NULL),
(540, 'Tất cả các đáp án trên đều đúng', b'0', 172, NULL),
(541, 'Tải ngay bản cài đặt về máy để cài và sử dụng nhằm tiết kiệm thời gian công việc, ghi điểm với sếp và không cần thông báo cho ai', b'1', 173, NULL),
(542, 'Chia sẻ thông tin với các thành viên của dự án và cùng nhau tải về sử dụng để mọi người cùng tiết kiệm thời gian, tăng năng suất', b'0', 173, NULL),
(543, 'Thông báo/đề xuất phần mềm đó với quản lý để xem xét sử dụng trong dự án nhằm đảm bảo phần mềm đó an toàn và được phép cài đặt', b'0', 173, NULL),
(544, 'Làm biên bản bàn giao/xác nhận với khách hàng về số tài sản trên và báo cho quản lý hoặc người chịu trách nhiệm quản lý tài sản của dự án tại VN về thông tin các tài sản khách hàng cung cấp', b'1', 174, NULL),
(545, 'Tuân thủ chính sách hoặc hướng dẫn quản lý tài sản của khách hàng khi được cung cấp hoặc sử dụng', b'0', 174, NULL),
(546, 'Tất cả các đáp án trên đều đúng', b'0', 174, NULL),
(547, 'Source code của khách hàng được member upload lên Github dưới dạng Private', b'1', 175, NULL),
(548, 'Máy tính của member được cài đặt phần mềm Winrar', b'0', 175, NULL),
(549, 'Member sử dụng email dạng abc@gmail.vn để request truy cập Drvie của khách hàng', b'0', 175, NULL),
(550, 'Tất cả các đáp án trên đều đúng', b'0', 175, NULL),
(551, 'Báo phòng IT xử lý kết nối VPN và báo quản lý để nắm tình hình', b'1', 176, NULL),
(552, 'Bạn tải về máy tính cá nhân để xử lý task của khách hàng trước, sau đó báo lại phòng IT xử lý VPN', b'0', 176, NULL),
(553, 'Đúng', b'1', 177, NULL),
(554, 'Sai', b'0', 177, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE `detail` (
  `id` int(11) NOT NULL,
  `greeting` text NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `exam_time` int(11) NOT NULL,
  `file` char(250) NOT NULL,
  `qms_total` int(11) NOT NULL,
  `isms_total` int(11) NOT NULL,
  `qms_pass` int(11) NOT NULL,
  `isms_pass` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT (curdate()),
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_flag` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`id`, `greeting`, `start_time`, `end_time`, `exam_time`, `file`, `qms_total`, `isms_total`, `qms_pass`, `isms_pass`, `deleted_flag`) VALUES
(16, 'Chào mừng các Hybriders đến với Khóa đào tạo định kỳ về Chất lượng và An ninh thông tin.\r\nAnh/Chị vui lòng sắp xếp thời gian để hoàn thành bài kiểm tra nhằm nâng cao tinh thần tuân thủ quy định \r\nAn ninh thông tin và Quản lý chất lượng tại Công ty.\r\n….\r\n                \r\n                ', '2021-02-07 00:00:00', '2021-02-09 00:00:00', 15, 'https://drive.google.com/file/d/1m4uoEVCsi6YnK9bHvhUDKxdY4UKqWkNr/view?usp=sharing', 3, 12, 2, 11, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT (curdate()),
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_flag` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `name`, `detail_id`, `deleted_flag`) VALUES
(208, 'nhiptt@hybrid-technologies.vn', 16, NULL),
(209, 'thanhnv@hybrid-technologies.vn', 16, b'1'),
(210, 'hoanpn@hybrid-technologies.vn', 16, NULL),
(211, 'dangnh@hybrid-technologies.vn', 16, NULL),
(212, 'nhintl@hybrid-technologies.vn', 16, NULL),
(213, 'diempth@evolableasia.vn', 16, NULL),
(214, 'khanhnq@hybrid-technologies.vn', 16, NULL),
(215, 'ngannt@hybrid-technologies.vn', 16, NULL),
(216, 'hungdt@hybrid-technologies.vn', 16, NULL),
(217, 'trangntt@hybrid-technologies.co.jp', 16, NULL),
(218, 'hoangnq@hybrid-technologies.co.jp', 16, NULL),
(219, 'thaonpp@hybrid-technologies.co.jp', 16, NULL),
(220, 'anhntl@hybrid-technologies.vn', 16, NULL),
(221, 'duytn@hybrid-technologies.co.jp', 16, NULL),
(222, 'thaitv@hybrid-technologies.vn', 16, NULL),
(223, 'nganh@hybrid-technologies.vn', 16, NULL),
(224, 'tulh@hybrid-technologies.vn', 16, NULL),
(225, 'namtx@hybrid-technologies.vn', 16, b'1'),
(226, 'manhpt@hybrid-technologies.co.jp', 16, b'1'),
(227, 'minhntn@hybrid-technologies.vn', 16, NULL),
(375, 'anhnh@hybrid-technologies.vn', 16, NULL),
(376, 'tuanbv@hybrid-technologies.vn', 16, NULL),
(377, 'tienht@hybrid-technologies.vn', 16, NULL),
(378, 'thuynv@hybrid-technologies.vn', 16, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `id` int(11) NOT NULL,
  `name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT (curdate()),
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_flag` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`id`, `name`, `deleted_flag`) VALUES
(1, 'WakuWaku', NULL),
(2, 'Fresher', NULL),
(3, ' Ewel', NULL),
(4, 'Buy Sell', NULL),
(5, 'Nextbeat', NULL),
(6, 'Premium', NULL),
(7, ' Kyash', NULL),
(8, 'Tag Automation', NULL),
(9, 'Data Chemistry', NULL),
(10, 'Miidas', NULL),
(11, 'Elife', NULL),
(12, 'Default', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `maexamplestatus`
--

CREATE TABLE `maexamplestatus` (
  `id` int(11) NOT NULL,
  `name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` bit(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT (curdate()),
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_flag` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `maexamplestatus`
--

INSERT INTO `maexamplestatus` (`id`, `name`, `status`, `deleted_flag`) VALUES
(2, 'init_exam', b'0', NULL),
(3, 'fail', b'0', NULL),
(4, 'force_fail', b'0', NULL),
(5, 'pass', b'1', NULL),
(6, 'force_pass', b'1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `content_plain` text,
  `category` enum('QMS','ISMS') NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_flag` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `content`, `content_plain`, `category`, `deleted_flag`) VALUES
(1, 'Công ty đạt chứng chỉ ISO 9001:2015 về Hệ thống quản lý chất lượng vào năm nào?', 'Cong ty dat chung chi ISO 9001:2015 ve He thong quan ly chat luong vao nam nao?', 'QMS', NULL),
(2, 'Công ty đạt chứng chỉ và đang áp dụng Hệ thống quản lý chất lượng theo tiêu chuẩn ISO 9001 phiên bản năm nào?', 'Cong ty dat chung chi va dang ap dung He thong quan ly chat luong theo tieu chuan ISO 9001 phien ban nam nao?', 'QMS', NULL),
(3, 'Hoạt động nào diễn ra trong quá trình Check của mô hình PDCA?', 'Hoat dong nao dien ra trong qua trinh Check cua mo hinh PDCA?', 'QMS', NULL),
(4, 'Vì tình hình dịch bệnh, bạn được công ty cho phép làm việc từ xa. Khách hàng giao task gấp cho bạn nhưng bạn lại không kết nối vào VPN được, bạn sẽ làm gì?', 'Vi tinh hinh dich benh, ban duoc cong ty cho phep lam viec tu xa. Khach hang giao task gap cho ban nhung ban lai khong ket noi vao VPN duoc, ban se lam gi?', 'ISMS', NULL),
(5, 'Trong khu vực Lab, có được mang laptop cá nhân vào sử dụng không?', 'Trong khu vuc Lab, co duoc mang laptop ca nhan vao su dung khong?', 'ISMS', NULL),
(6, 'Tài liệu mật của dự án (do dự án in ra bản cứng) khi không còn nhu cầu sử dụng bạn sẽ làm gì?', 'Tai lieu mat cua du an (do du an in ra ban cung) khi khong con nhu cau su dung ban se lam gi?', 'ISMS', NULL),
(7, 'Tài liệu khách hàng gửi để tham khảo cho dự án (soft copy), bạn lưu trữ tại đâu?', 'Tai lieu khach hang gui de tham khao cho du an (soft copy), ban luu tru tai dau?', 'ISMS', NULL),
(8, 'Trước cửa ra/vào của phòng làm việc có dán biển: \"Khu vực hạn chế - Không sự dụng máy ảnh\". Trưa hôm đó, một nhân viên trong phòng có tổ chức tiệc ngọt chúc mừng sinh nhật, mọi người vui vẻ chụp ảnh trong bữa tiệc. Theo bạn, hành động này là?', 'Truoc cua ra/vao cua phong lam viec co dan bien: \"Khu vuc han che - Khong su dung may anh\". Trua hom do, mot nhan vien trong phong co to chuc tiec ngot chuc mung sinh nhat, moi nguoi vui ve chup anh trong bua tiec. Theo ban, hanh dong nay la?', 'ISMS', NULL),
(9, ' Tài sản của khách hàng giao để phục vụ dự án cần được quản lý bằng cách? ', ' Tai san cua khach hang giao de phuc vu du an can duoc quan ly bang cach? ', 'ISMS', NULL),
(10, 'Nơi nào bạn lưu trữ thông tin liên quan đến dự án sau khi kết thúc dự án?', 'Noi nao ban luu tru thong tin lien quan den du an sau khi ket thuc du an?', 'ISMS', NULL),
(11, 'Khi khách hàng giao một server cho dự án của bạn toàn quyền sử dụng, dự án có cần bảo mật server đó hay không? ', 'Khi khach hang giao mot server cho du an cua ban toan quyen su dung, du an co can bao mat server do hay khong? ', 'ISMS', NULL),
(12, ' Nhận định này có đúng không: \"Không sử dụng bất kỳ thông tin bảo mật nào của công ty cho mục đích cá nhân (cho đơn xin việc hoặc để chia sẻ với bạn bè hoặc người thân)', ' Nhan dinh nay co dung khong: \"Khong su dung bat ky thong tin bao mat nao cua cong ty cho muc dich ca nhan (cho don xin viec hoac de chia se voi ban be hoac nguoi than)', 'ISMS', NULL),
(13, 'Đáp án nào thuộc về các quy định của công ty về An ninh thông tin đối với việc sử dụng thông tin mật?', 'Dap an nao thuoc ve cac quy dinh cua cong ty ve An ninh thong tin doi voi viec su dung thong tin mat?', 'ISMS', NULL),
(14, 'Chia sẻ với bạn bè về “chiến tích” làm với khách hàng nào, dự án gì, ngôn ngữ nào là hành động?', 'Chia se voi ban be ve \"chien tich\" lam voi khach hang nao, du an gi, ngon ngu nao la hanh dong?', 'ISMS', NULL),
(15, 'Dự án của bạn đang gấp rút và bạn cần một phần mềm để tự động hóa, nâng cao năng suất một phần công việc lặp đi lặp lại của dự án. Bạn lên mạng tìm được 1 phần mềm để sử dụng khiến quản lý ngỡ ngàng về khối lượng công việc bạn đạt được trong tuần vừa qua. Hành động của bạn trên được đánh giá như thế nào?', 'Du an cua ban dang gap rut va ban can mot phan mem de tu dong hoa, nang cao nang suat mot phan cong viec lap di lap lai cua du an. Ban len mang tim duoc 1 phan mem de su dung khien quan ly ngo ngang ve khoi luong cong viec ban dat duoc trong tuan vua qua. Hanh dong cua ban tren duoc danh gia nhu the nao?', 'ISMS', NULL),
(16, 'Chất lượng của sản phẩm và dịch vụ cung cấp cho khách hàng không bao gồm tiêu chí nào sau đây?', 'Chat luong cua san pham va dich vu cung cap cho khach hang khong bao gom tieu chi nao sau day?', 'QMS', b'1'),
(17, 'Chất lượng của sản phẩm và dịch vụ cung cấp cho khách hàng không bao gồm tiêu chí nào sau đây?', 'Chat luong cua san pham va dich vu cung cap cho khach hang khong bao gom tieu chi nao sau day?', 'QMS', b'1'),
(18, 'Chất lượng của sản phẩm và dịch vụ cung cấp cho khách hàng không bao gồm tiêu chí nào sau đây?', 'Chat luong cua san pham va dich vu cung cap cho khach hang khong bao gom tieu chi nao sau day?', 'QMS', b'1'),
(19, 'Chất lượng của sản phẩm và dịch vụ cung cấp cho khách hàng không bao gồm tiêu chí nào sau đây?', 'Chat luong cua san pham va dich vu cung cap cho khach hang khong bao gom tieu chi nao sau day?', 'QMS', NULL),
(20, 'test', 'test', 'ISMS', NULL),
(21, 'Theo bạn, để đạt mục tiêu chất lượng trách nhiệm của nhân viên là gì?', 'Theo ban, de dat muc tieu chat luong trach nhiem cua nhan vien la gi?', 'ISMS', NULL),
(22, 'Theo bạn, để đạt mục tiêu chất lượng trách nhiệm của cấp quản lý là gì?', 'Theo ban, de dat muc tieu chat luong trach nhiem cua cap quan ly la gi?', 'ISMS', NULL),
(23, 'Theo bạn các yếu tố quản lý chất lượng là gì?\n1. Cơ cấu tổ chức\n2. Quy trình thực hiện\n3. Tài liệu chính sách\n4. Nguồn lực thực hiện', 'Theo ban cac yeu to quan ly chat luong la gi?\n1. Co cau to chuc\n2. Quy trinh thuc hien\n3. Tai lieu chinh sach\n4. Nguon luc thuc hien', 'ISMS', NULL),
(24, 'Hoạt động nào diễn ra trong quá trình Plan của mô hình PDCA?', 'Hoat dong nao dien ra trong qua trinh Plan cua mo hinh PDCA?', 'ISMS', NULL),
(25, 'Hoạt động nào diễn ra trong quá trình Do của mô hình PDCA?', 'Hoat dong nao dien ra trong qua trinh Do cua mo hinh PDCA?', 'ISMS', NULL),
(26, 'Nhằm đảm bảo chất lượng cho sản phẩm và dịch vụ, các hoạt động của dự án cần áp dụng mô hình nào?', 'Nham dam bao chat luong cho san pham va dich vu, cac hoat dong cua du an can ap dung mo hinh nao?', 'ISMS', NULL),
(27, 'Các rủi ro có thể gặp phải nếu không áp dụng Hệ thống quản lý chất lượng theo tiêu chuẩn ISO 9001:2015 là gì?', 'Cac rui ro co the gap phai neu khong ap dung He thong quan ly chat luong theo tieu chuan ISO 9001:2015 la gi?', 'ISMS', NULL),
(28, 'Chất lượng gồm những tiêu chí nào?', 'Chat luong gom nhung tieu chi nao?', 'ISMS', NULL),
(29, 'Công ty áp dụng Hệ thống quản lý chất lượng theo tiêu chuẩn nào?', 'Cong ty ap dung He thong quan ly chat luong theo tieu chuan nao?', 'ISMS', NULL),
(30, 'Đáp án nào đúng về các yếu tố quản lý chất lượng?', 'Dap an nao dung ve cac yeu to quan ly chat luong?', 'ISMS', NULL),
(31, 'Điều nào sau đây mô tả rõ ràng nhất về lợi ích của ISO 9001?', 'Dieu nao sau day mo ta ro rang nhat ve loi ich cua ISO 9001?', 'ISMS', NULL),
(32, 'Hoạt động nào diễn ra trong quá trình Act của mô hình PDCA?', 'Hoat dong nao dien ra trong qua trinh Act cua mo hinh PDCA?', 'ISMS', NULL),
(33, 'ISO 9001:2015 là tiêu chuẩn gì?', 'ISO 9001:2015 la tieu chuan gi?', 'ISMS', NULL),
(34, 'Mô hình của quản lý chất lượng theo ISO 9001 đang áp dụng tại công ty là gì?', 'Mo hinh cua quan ly chat luong theo ISO 9001 dang ap dung tai cong ty la gi?', 'ISMS', NULL),
(35, 'Mục đích áp dụng Hệ thống quản lý chất lượng theo tiêu chuẩn ISO 9001:2015 của công ty là gì?', 'Muc dich ap dung He thong quan ly chat luong theo tieu chuan ISO 9001:2015 cua cong ty la gi?', 'ISMS', NULL),
(36, 'Theo bạn các mục tiêu chất lượng cần đáp ứng những yêu cầu nào sau đây?\n1. Yêu cầu về pháp luật \n2. Yêu cầu về kỹ thuật\n3. Không có lỗi\n4. Yêu cầu của khách hàng', 'Theo ban cac muc tieu chat luong can dap ung nhung yeu cau nao sau day?\n1. Yeu cau ve phap luat \n2. Yeu cau ve ky thuat\n3. Khong co loi\n4. Yeu cau cua khach hang', 'ISMS', NULL),
(37, '***** sử dụng công cụ để vượt qua Proxy hoặc Firewall (ví dụ: Free Gate, Ultrasurf, ...) của công ty dưới mọi hình thức, kể cả để phục vụ mục đích công việc. Bạn lựa chọn phương án nào để điền vào phần dấu (*****)?', '***** su dung cong cu de vuot qua Proxy hoac Firewall (vi du: Free Gate, Ultrasurf, ...) cua cong ty duoi moi hinh thuc, ke ca de phuc vu muc dich cong viec. Ban lua chon phuong an nao de dien vao phan dau (*****)?', 'ISMS', NULL),
(38, 'Ai là người có trách nhiệm đảm bảo An ninh thông tin?', 'Ai la nguoi co trach nhiem dam bao An ninh thong tin?', 'ISMS', NULL),
(39, 'Bạn cần thực hiện điều nào sau đây để quản lý mật khẩu tốt?', 'Ban can thuc hien dieu nao sau day de quan ly mat khau tot?', 'ISMS', NULL),
(40, 'Bạn chưa hoàn thành xong công việc ở công ty và ngày mai bạn có việc bận nên bạn làm việc ở nhà, bạn sẽ?', 'Ban chua hoan thanh xong cong viec o cong ty va ngay mai ban co viec ban nen ban lam viec o nha, ban se?', 'ISMS', NULL),
(41, 'Bạn có cần quẹt thẻ nhân viên/vân tay mỗi khi ra vào nơi làm việc hay không?', 'Ban co can quet the nhan vien/van tay moi khi ra vao noi lam viec hay khong?', 'ISMS', NULL),
(42, 'Bạn có để tài liệu in của bạn trên máy in ở nơi công cộng là đúng hay sai?', 'Ban co de tai lieu in cua ban tren may in o noi cong cong la dung hay sai?', 'ISMS', NULL),
(43, 'Bạn có được chụp ảnh, ghi âm hoặc quay phim, ... tại khu vực làm việc bảo mật hay không?', 'Ban co duoc chup anh, ghi am hoac quay phim, ... tai khu vuc lam viec bao mat hay khong?', 'ISMS', NULL),
(44, 'Bạn có được phép cài Chrome Remote Desktop vào máy tính của công ty hay không?', 'Ban co duoc phep cai Chrome Remote Desktop vao may tinh cua cong ty hay khong?', 'ISMS', NULL),
(45, 'Bạn có được sử dụng các phần mềm ngoài danh sách phần mềm được công ty cho phép hay không?', 'Ban co duoc su dung cac phan mem ngoai danh sach phan mem duoc cong ty cho phep hay khong?', 'ISMS', NULL),
(46, 'Bạn có được sử dụng các thiết bị ghi hình, ghi âm (bao gồm nhưng không giới hạn: máy ảnh, máy quay phim, máy ghi âm, điện thoại hay thiết bị cầm tay có chức năng chụp ảnh, quay phim hoặc các loại máy và thiết bị khác có tính năng hoặc chức năng tương tự) tại khu vực có dấu hiệu cấm chụp ảnh, quay phim, ghi âm như các khu vực bảo mật?', 'Ban co duoc su dung cac thiet bi ghi hinh, ghi am (bao gom nhung khong gioi han: may anh, may quay phim, may ghi am, dien thoai hay thiet bi cam tay co chuc nang chup anh, quay phim hoac cac loai may va thiet bi khac co tinh nang hoac chuc nang tuong tu) tai khu vuc co dau hieu cam chup anh, quay phim, ghi am nhu cac khu vuc bao mat?', 'ISMS', NULL),
(47, 'Bạn có được sử dụng email công ty để đăng ký bất kỳ diễn đàn hoặc trang mạng xã hội nào hay không?', 'Ban co duoc su dung email cong ty de dang ky bat ky dien dan hoac trang mang xa hoi nao hay khong?', 'QMS', NULL),
(48, 'Bạn có được tự ý sử dụng tài sản sở hữu cá nhân (thiết bị di động, máy tính và thiết bị mạng) cho mục đích công việc khi chưa được cấp có thẩm quyền cho phép không?', 'Ban co duoc tu y su dung tai san so huu ca nhan (thiet bi di dong, may tinh va thiet bi mang) cho muc dich cong viec khi chua duoc cap co tham quyen cho phep khong?', 'QMS', NULL),
(49, 'Bạn có được tự ý xóa tài khoản local admin trên máy tính của mình không?', 'Ban co duoc tu y xoa tai khoan local admin tren may tinh cua minh khong?', 'ISMS', NULL),
(50, 'Bạn có phải ký cam kết bảo mật (NDA) khi bạn ký hợp đồng lao động với công ty hay không?', 'Ban co phai ky cam ket bao mat (NDA) khi ban ky hop dong lao dong voi cong ty hay khong?', 'ISMS', NULL),
(51, 'Bạn có thể sử dụng 1 phần mềm hoặc công cụ để vượt qua proxy của công ty không?', 'Ban co the su dung 1 phan mem hoac cong cu de vuot qua proxy cua cong ty khong?', 'ISMS', NULL),
(52, 'Bạn có tự ý cài đặt add-in/add-on/extension/plug-in mà không biết nó có an toàn hay không?', 'Ban co tu y cai dat add-in/add-on/extension/plug-in ma khong biet no co an toan hay khong?', 'ISMS', NULL),
(53, 'Bạn được phép cài đặt phần mềm trong danh sách nào?', 'Ban duoc phep cai dat phan mem trong danh sach nao?', 'ISMS', NULL),
(54, 'Bạn làm gì khi phần mềm độc hại được phát hiện trên máy tính của bạn bị nhiễm virus?', 'Ban lam gi khi phan mem doc hai duoc phat hien tren may tinh cua ban bi nhiem virus?', 'ISMS', NULL),
(55, 'Bạn làm gì khi sử dụng bất kỳ thiết bị di động nào để truy cập hệ thống email của công ty?', 'Ban lam gi khi su dung bat ky thiet bi di dong nao de truy cap he thong email cua cong ty?', 'ISMS', NULL),
(56, 'Bạn làm gì với phần mềm antivirus trong máy tính?', 'Ban lam gi voi phan mem antivirus trong may tinh?', 'ISMS', NULL),
(57, 'Bạn nên làm gì để bảo vệ các thiết bị được công ty cấp khi được phép mang ra ngoài (máy tính xách tay, điện thoại thông minh)?', 'Ban nen lam gi de bao ve cac thiet bi duoc cong ty cap khi duoc phep mang ra ngoai (may tinh xach tay, dien thoai thong minh)?', 'ISMS', NULL),
(58, 'Bạn nên làm gì để bảo vệ thông tin bảo mật lưu trữ trong thiết bị di động được cấp bởi công ty (máy tính xách tay, điện thoại thông minh)?', 'Ban nen lam gi de bao ve thong tin bao mat luu tru trong thiet bi di dong duoc cap boi cong ty (may tinh xach tay, dien thoai thong minh)?', 'ISMS', NULL),
(59, 'Bạn nên làm gì nếu bạn muốn mang máy tính xách tay thuộc sở hữu cá nhân của mình đến công ty để làm việc?', 'Ban nen lam gi neu ban muon mang may tinh xach tay thuoc so huu ca nhan cua minh den cong ty de lam viec?', 'ISMS', NULL),
(60, 'Bạn nên làm gì nếu muốn làm việc tại nhà?', 'Ban nen lam gi neu muon lam viec tai nha?', 'ISMS', NULL),
(61, 'Bạn nhận được một email gửi đến thư mục Spam trong email của công ty với nội dung bạn được trúng thưởng, bạn sẽ làm gì?', 'Ban nhan duoc mot email gui den thu muc Spam trong email cua cong ty voi noi dung ban duoc trung thuong, ban se lam gi?', 'ISMS', NULL),
(62, 'Bạn phải làm gì khi cần mang tài sản hoặc thông tin cần bảo mật ra ngoài nơi làm việc?', 'Ban phai lam gi khi can mang tai san hoac thong tin can bao mat ra ngoai noi lam viec?', 'ISMS', NULL),
(63, 'Bạn quản lý thiết bị di động được cấp bởi công ty (laptop, smartphone) như thế nào?', 'Ban quan ly thiet bi di dong duoc cap boi cong ty (laptop, smartphone) nhu the nao?', 'ISMS', NULL),
(64, 'Bạn sẽ làm gì nếu bạn muốn sử dụng phần mềm không có sẵn trong PC của bạn?', 'Ban se lam gi neu ban muon su dung phan mem khong co san trong PC cua ban?', 'ISMS', NULL),
(65, 'Bạn sẽ làm gì nếu bạn nhận được một email mà người gửi muốn bạn nhấp vào một URL (liên kết) hoặc mở tệp đính kèm dẫn đến một cuộc khảo sát kèm theo phần quà hấp dẫn?', 'Ban se lam gi neu ban nhan duoc mot email ma nguoi gui muon ban nhap vao mot URL (lien ket) hoac mo tep dinh kem dan den mot cuoc khao sat kem theo phan qua hap dan?', 'ISMS', NULL),
(66, 'Bằng cách không chính thức, nhân viên có được tiết lộ thông tin bảo mật cho bên thứ ba không?', 'Bang cach khong chinh thuc, nhan vien co duoc tiet lo thong tin bao mat cho ben thu ba khong?', 'ISMS', NULL),
(67, 'Các nguồn lây nhiễm virus có thể là gì?', 'Cac nguon lay nhiem virus co the la gi?', 'ISMS', NULL),
(68, 'Cách nào sau đây để nhớ mật khẩu dễ dàng?', 'Cach nao sau day de nho mat khau de dang?', 'ISMS', NULL),
(69, 'Nhân viên muốn sử dụng thiết bị thông tin di động để truy cập hệ thống email của công ty thì phải đăng ký với phòng ban nào?', 'Nhan vien muon su dung thiet bi thong tin di dong de truy cap he thong email cua cong ty thi phai dang ky voi phong ban nao?', 'ISMS', NULL),
(70, 'Nhân viên phải ký cam kết An ninh thông tin với công ty khi nào?', 'Nhan vien phai ky cam ket An ninh thong tin voi cong ty khi nao?', 'ISMS', NULL),
(71, 'Có một email gửi đến với nội dung: “Tài khoản của bạn đã bị nhiễm virus và yêu cầu bạn tải phần mềm diệt virus về máy” bạn sẽ?', 'Co mot email gui den voi noi dung: \"Tai khoan cua ban da bi nhiem virus va yeu cau ban tai phan mem diet virus ve may\" ban se?', 'ISMS', NULL),
(72, 'Có một nhân viên mới vào công ty làm cùng team với bạn. Qua nhiểu nguồn bạn biết được nhân viên mới này có khả năng nhận được mức lương cao hơn mình. Bạn rất muốn biết mức lương của nhân viên đó nên dùng 1 phần mềm dò mật khẩu để truy cập e-mail của nhân viên mới đó. Theo bạn, hành vi này có ảnh hưởng gì?', 'Co mot nhan vien moi vao cong ty lam cung team voi ban. Qua nhieu nguon ban biet duoc nhan vien moi nay co kha nang nhan duoc muc luong cao hon minh. Ban rat muon biet muc luong cua nhan vien do nen dung 1 phan mem do mat khau de truy cap e-mail cua nhan vien moi do. Theo ban, hanh vi nay co anh huong gi?', 'ISMS', NULL),
(73, 'Công ty đang sử dụng Adobe Reader bản miễn phí, bạn muốn sử dụng thêm tình năng có tính phí của phần mềm này. Bạn cần làm gì?', 'Cong ty dang su dung Adobe Reader ban mien phi, ban muon su dung them tinh nang co tinh phi cua phan mem nay. Ban can lam gi?', 'ISMS', NULL),
(74, 'Công ty nghiêm cấm sử dụng loại phần mềm và email nào tại công ty?', 'Cong ty nghiem cam su dung loai phan mem va email nao tai cong ty?', 'ISMS', NULL),
(75, 'Cuối ngày làm việc các hồ sơ/tài liệu bản cứng chứa thông tin mật sẽ được bạn xử lý như thế nào?', 'Cuoi ngay lam viec cac ho so/tai lieu ban cung chua thong tin mat se duoc ban xu ly nhu the nao?', 'ISMS', NULL),
(76, 'Đào tạo Chất lượng và An ninh thông tin định kỳ cho nhân viên tại công ty được tổ chức định kỳ bao lâu một lần?', 'Dao tao Chat luong va An ninh thong tin dinh ky cho nhan vien tai cong ty duoc to chuc dinh ky bao lau mot lan?', 'ISMS', NULL),
(77, 'Đáp án nào đúng về quy định sử dụng các phương tiện truyền thông xã hội?', 'Dap an nao dung ve quy dinh su dung cac phuong tien truyen thong xa hoi?', 'QMS', NULL),
(78, 'Đáp án nào đúng về quy định xử lý sự cố An ninh thông tin?', 'Dap an nao dung ve quy dinh xu ly su co An ninh thong tin?', 'QMS', NULL),
(79, 'Đáp án nào không đúng về quy định sử dụng các thiết bị di động, thiết bị mạng và ngoại vi?', 'Dap an nao khong dung ve quy dinh su dung cac thiet bi di dong, thiet bi mang va ngoai vi?', 'ISMS', NULL),
(80, 'Đáp án nào là đúng về quy định của công ty trong việc quản lý tài khoản và mật khẩu?', 'Dap an nao la dung ve quy dinh cua cong ty trong viec quan ly tai khoan va mat khau?', 'ISMS', NULL),
(81, 'Đáp án nào thuộc về các quy định của công ty về An ninh thông tin đối với việc sử dụng phần mềm?', 'Dap an nao thuoc ve cac quy dinh cua cong ty ve An ninh thong tin doi voi viec su dung phan mem?', 'ISMS', NULL),
(82, 'Đáp án nào thuộc về các quy định của công ty về An ninh thông tin đối với việc sử dụng thiết bị di động?', 'Dap an nao thuoc ve cac quy dinh cua cong ty ve An ninh thong tin doi voi viec su dung thiet bi di dong?', 'ISMS', NULL),
(83, 'Điều gì sau đây cần tuân thủ nhằm giảm thiểu rủi ro liên quan đến việc lây nhiễm virus?', 'Dieu gi sau day can tuan thu nham giam thieu rui ro lien quan den viec lay nhiem virus?', 'ISMS', NULL),
(84, 'Định nghĩa sau là đúng hay sai: \"Thông tin bảo mật” là tất cả các thông tin, dữ liệu, tin tức, sự kiện, sự việc, ý tưởng, phán đoán, tri thức về tài sản không được công khai, hoặc bất kỳ thông tin nào dưới mọi hình thức mang bản chất tương tự, có liên quan đến hoạt động sản xuất kinh doanh của công ty; hoặc của khách hàng/đối tác được trao đổi trong quá trình giao dịch kinh doanh với công ty', 'Dinh nghia sau la dung hay sai: \"Thong tin bao mat\" la tat ca cac thong tin, du lieu, tin tuc, su kien, su viec, y tuong, phan doan, tri thuc ve tai san khong duoc cong khai, hoac bat ky thong tin nao duoi moi hinh thuc mang ban chat tuong tu, co lien quan den hoat dong san xuat kinh doanh cua cong ty; hoac cua khach hang/doi tac duoc trao doi trong qua trinh giao dich kinh doanh voi cong ty', 'ISMS', NULL),
(85, 'Forward email liên quan đến công việc và thông tin trong công ty cho bạn bè bên ngoài là?', 'Forward email lien quan den cong viec va thong tin trong cong ty cho ban be ben ngoai la?', 'ISMS', NULL),
(86, 'Hành vi nào là vi phạm quy định An ninh thông tin?', 'Hanh vi nao la vi pham quy dinh An ninh thong tin?', 'ISMS', NULL),
(87, 'ISO/IEC 27001:2013 là tiêu chuẩn về?', 'ISO/IEC 27001:2013 la tieu chuan ve?', 'ISMS', NULL),
(88, 'Khẳng định sau là đúng hay sai: \"Không sử dụng internet của Công ty hoặc khách hàng cho các mục đích ngoài công việc\"?', 'Khang dinh sau la dung hay sai: \"Khong su dung internet cua Cong ty hoac khach hang cho cac muc dich ngoai cong viec\"?', 'ISMS', NULL),
(89, 'Khẳng định sau là đúng hay sai: \"Nghiêm cấm sử dụng các thiết bị có chức năng kết nối mạng hoặc tạo, chia sẻ WiFi với các thiết bị khác để truy cập mạng công ty hay internet\"?', 'Khang dinh sau la dung hay sai: \"Nghiem cam su dung cac thiet bi co chuc nang ket noi mang hoac tao, chia se WiFi voi cac thiet bi khac de truy cap mang cong ty hay internet\"?', 'ISMS', NULL),
(90, 'Khẳng định sau là đúng hay sai: \"Trách nhiệm của nhân viên là hiểu các yêu cầu An ninh thông tin được quy định trong: Quy định An ninh thông tin, Tài liệu đào tạo An ninh thông tin, Chính sách An ninh thông tin\"?', 'Khang dinh sau la dung hay sai: \"Trach nhiem cua nhan vien la hieu cac yeu cau An ninh thong tin duoc quy dinh trong: Quy dinh An ninh thong tin, Tai lieu dao tao An ninh thong tin, Chinh sach An ninh thong tin\"?', 'ISMS', NULL),
(91, 'Khẳng định sau là đúng hay sai: \"Việc sử dụng các dịch vụ điện toán đám mây cho mục đích công việc của công ty phải được IT chấp thuận\"?', 'Khang dinh sau la dung hay sai: \"Viec su dung cac dich vu dien toan dam may cho muc dich cong viec cua cong ty phai duoc IT chap thuan\"?', 'ISMS', NULL),
(92, 'Khi bạn bị mất thẻ nhân viên thì bạn cần làm gì?', 'Khi ban bi mat the nhan vien thi ban can lam gi?', 'ISMS', NULL),
(93, 'Khi bản quyền của phần mềm đã hết hạn thì bạn nên làm gì?', 'Khi ban quyen cua phan mem da het han thi ban nen lam gi?', 'ISMS', NULL),
(94, 'Khi bạn sử dụng laptop cá nhân ở nhà (laptop này đã đăng ký sử dụng ở công ty) thì bạn có được phép cài đặt các phần mềm bị hạn chế như: Torrent, Hotspot Shield, Teamviewer, ... hay không?', 'Khi ban su dung laptop ca nhan o nha (laptop nay da dang ky su dung o cong ty) thi ban co duoc phep cai dat cac phan mem bi han che nhu: Torrent, Hotspot Shield, Teamviewer, ... hay khong?', 'ISMS', NULL),
(95, 'Khi biết đồng nghiệp là người trực tiếp gây ra nguy cơ rò rỉ thông tin, hành động nào của bạn sau đây là đúng?', 'Khi biet dong nghiep la nguoi truc tiep gay ra nguy co ro ri thong tin, hanh dong nao cua ban sau day la dung?', 'ISMS', NULL),
(96, 'Khi cài đặt phần mềm, bạn có nên cài thêm freeware đi kèm hay không?', 'Khi cai dat phan mem, ban co nen cai them freeware di kem hay khong?', 'ISMS', NULL),
(97, 'Khi cần gửi thông tin bảo mật qua mail, bạn cần thực hiện biện pháp nào sau đây?', 'Khi can gui thong tin bao mat qua mail, ban can thuc hien bien phap nao sau day?', 'ISMS', NULL),
(98, 'Khi chưa được cấp trên có thẩm quyền yêu cầu, bạn có được phép cho người khác mượn tài khoản công ty của bạn để truy cập hệ thống thông tin bảo mật hoặc tiết lộ mật khẩu cá nhân không?', 'Khi chua duoc cap tren co tham quyen yeu cau, ban co duoc phep cho nguoi khac muon tai khoan cong ty cua ban de truy cap he thong thong tin bao mat hoac tiet lo mat khau ca nhan khong?', 'ISMS', NULL),
(99, 'Khi có nhu cầu bật máy qua đêm để xử lý công việc, bạn phải đăng ký với bộ phận nào?', 'Khi co nhu cau bat may qua dem de xu ly cong viec, ban phai dang ky voi bo phan nao?', 'ISMS', NULL),
(100, 'Khi có sự cố An ninh thông tin xảy ra, bạn phải báo cáo cho ai?', 'Khi co su co An ninh thong tin xay ra, ban phai bao cao cho ai?', 'ISMS', NULL),
(101, 'Khi dùng máy tính do công ty cấp, bạn cần phải thực hiện những điều gì để đảm bảo An ninh thông tin?', 'Khi dung may tinh do cong ty cap, ban can phai thuc hien nhung dieu gi de dam bao An ninh thong tin?', 'ISMS', NULL),
(102, 'Khi nghi ngờ máy tính bị nhiễm virus thì bạn phải làm gì tiếp theo?', 'Khi nghi ngo may tinh bi nhiem virus thi ban phai lam gi tiep theo?', 'ISMS', NULL),
(103, 'Khi nhân viên chấm dứt hợp đồng lao động với công ty, các tài khoản có liên quan có bị xóa hay không?', 'Khi nhan vien cham dut hop dong lao dong voi cong ty, cac tai khoan co lien quan co bi xoa hay khong?', 'ISMS', NULL),
(104, 'Khi phát hiện có hiện tượng hoặc sự cố về An ninh thông tin, nhân viên có trách nhiệm thông báo ngay cho?', 'Khi phat hien co hien tuong hoac su co ve An ninh thong tin, nhan vien co trach nhiem thong bao ngay cho?', 'ISMS', NULL),
(105, 'Khi phát hiện có hiện tượng hoặc sự cố về An ninh thông tin, bạn có trách nhiệm thông báo ngay lập tức cho cán bộ quản lý cấp trên trong vòng bao lâu để tìm phương hướng giải quyết?', 'Khi phat hien co hien tuong hoac su co ve An ninh thong tin, ban co trach nhiem thong bao ngay lap tuc cho can bo quan ly cap tren trong vong bao lau de tim phuong huong giai quyet?', 'ISMS', NULL),
(106, 'Khi trong dự án bạn cần gửi tài liệu, thiết bị có chứa thông tin mật, bạn phải làm gì?', 'Khi trong du an ban can gui tai lieu, thiet bi co chua thong tin mat, ban phai lam gi?', 'ISMS', NULL),
(107, 'Mật khẩu nào sau đây là đúng với nguyên tắc của bảo mật?', 'Mat khau nao sau day la dung voi nguyen tac cua bao mat?', 'QMS', NULL),
(108, 'Một người nói rằng mình là khách hàng muốn vào tham quan công ty và nhờ bạn mở cửa, thì bạn sẽ làm gì? ', 'Mot nguoi noi rang minh la khach hang muon vao tham quan cong ty va nho ban mo cua, thi ban se lam gi? ', 'QMS', NULL),
(109, 'Nhận định đúng hay sai: \"Không tiết lộ thông tin cá nhân của nhân viên cho bên ngoài hoặc cho những người không liên quan đến công việc mà không có sự cho phép của người có thẩm quyền của công ty\"?', 'Nhan dinh dung hay sai: \"Khong tiet lo thong tin ca nhan cua nhan vien cho ben ngoai hoac cho nhung nguoi khong lien quan den cong viec ma khong co su cho phep cua nguoi co tham quyen cua cong ty\"?', 'ISMS', NULL),
(110, 'Nhận định này có đúng không: \"Không sử dụng bất kỳ thông tin bảo mật nào của công ty cho mục đích cá nhân (cho đơn xin việc hoặc để chia sẻ với bạn bè hoặc người thân)\"', 'Nhan dinh nay co dung khong: \"Khong su dung bat ky thong tin bao mat nao cua cong ty cho muc dich ca nhan (cho don xin viec hoac de chia se voi ban be hoac nguoi than)\"', 'ISMS', NULL),
(111, 'Nhận định sau đây đúng hay sai \"Không cho người khác sử dụng tài khoản công ty truy cập vào hệ thống thông tin của công ty và không được tiết lộ bất kỳ mật khẩu cá nhân nào\"?', 'Nhan dinh sau day dung hay sai \"Khong cho nguoi khac su dung tai khoan cong ty truy cap vao he thong thong tin cua cong ty va khong duoc tiet lo bat ky mat khau ca nhan nao\"?', 'ISMS', NULL),
(112, 'Nhận định sau là đúng hay sai: \"Không chia sẻ wifi từ máy tính/laptop làm việc\"?', 'Nhan dinh sau la dung hay sai: \"Khong chia se wifi tu may tinh/laptop lam viec\"?', 'ISMS', NULL),
(113, 'Nhân viên có được phép dẫn người thân (vợ/chồng/con) vào khu vực làm việc của công ty hay không?', 'Nhan vien co duoc phep dan nguoi than (vo/chong/con) vao khu vuc lam viec cua cong ty hay khong?', 'ISMS', NULL),
(114, 'Nhiệm vụ của cán bộ quản lý ở mỗi cấp đơn vị có nhiệm vụ phối hợp với bộ phận An ninh thông tin xử lý sự cố (nếu có) là đúng hay sai?', 'Nhiem vu cua can bo quan ly o moi cap don vi co nhiem vu phoi hop voi bo phan An ninh thong tin xu ly su co (neu co) la dung hay sai?', 'ISMS', NULL),
(115, 'Những hậu quả do sự cố An ninh thông tin gây ra có thể là gì?', 'Nhung hau qua do su co An ninh thong tin gay ra co the la gi?', 'ISMS', NULL),
(116, 'Những quy định cần tuân thủ về bản quyền là gì?', 'Nhung quy dinh can tuan thu ve ban quyen la gi?', 'ISMS', NULL),
(117, 'Phát biểu nào sau đây là đúng?', 'Phat bieu nao sau day la dung?', 'ISMS', NULL),
(118, 'Quy định An ninh thông tin của công ty được áp dụng cho các đối tượng nào?', 'Quy dinh An ninh thong tin cua cong ty duoc ap dung cho cac doi tuong nao?', 'ISMS', NULL),
(119, 'Sẽ có những nguy cơ nào khi sử dụng công cụ để vượt qua Proxy hoặc Firewall (freegate, ultra-surf, …)?', 'Se co nhung nguy co nao khi su dung cong cu de vuot qua Proxy hoac Firewall (freegate, ultra-surf, ...)?', 'ISMS', NULL),
(120, 'Slogan của công ty trong chính sách Chất Lượng & An ninh thông tin là \"Secure Information - Secure Growth (An Toàn Thông Tin - An Tâm phát triển)\" đúng hay sai?', 'Slogan cua cong ty trong chinh sach Chat Luong & An ninh thong tin la \"Secure Information - Secure Growth (An Toan Thong Tin - An Tam phat trien)\" dung hay sai?', 'ISMS', NULL),
(121, 'Sự cố An ninh thông tin là gì?', 'Su co An ninh thong tin la gi?', 'ISMS', NULL),
(122, 'Sử dụng phần mềm miễn phí không vi phạm bản quyền và không gây ra bất kỳ rủi ro bảo mật nào. Điều này đúng hay sai?', 'Su dung phan mem mien phi khong vi pham ban quyen va khong gay ra bat ky rui ro bao mat nao. Dieu nay dung hay sai?', 'ISMS', NULL),
(123, 'Tài liệu, hồ sơ bản cứng cần bảo mật, bạn phải để ở?', 'Tai lieu, ho so ban cung can bao mat, ban phai de o?', 'ISMS', NULL),
(124, 'Theo bạn, định kỳ bao lâu cần thay đổi mật khẩu của tài khoản?', 'Theo ban, dinh ky bao lau can thay doi mat khau cua tai khoan?', 'ISMS', NULL),
(125, 'Theo quy định, có cần thiết lock màn hình máy tính (lockscreen) trước khi rời khỏi chỗ làm việc hay không?', 'Theo quy dinh, co can thiet lock man hinh may tinh (lockscreen) truoc khi roi khoi cho lam viec hay khong?', 'ISMS', NULL),
(126, 'Theo quy định, độ dài tối thiểu của mật khẩu tài khoản là bao nhiêu ký tự?', 'Theo quy dinh, do dai toi thieu cua mat khau tai khoan la bao nhieu ky tu?', 'ISMS', NULL),
(127, 'Thông tin nào sau đây là đúng về việc ký và tuân thủ cam kết An ninh thông tin?', 'Thong tin nao sau day la dung ve viec ky va tuan thu cam ket An ninh thong tin?', 'ISMS', NULL),
(128, 'Thông tin, dữ liệu bằng văn bản, giấy tờ hoặc văn bản điện tử, được đánh dấu nào sau đây cần được bảo mật và không tiết lộ ra bên ngoài công ty?', 'Thong tin, du lieu bang van ban, giay to hoac van ban dien tu, duoc danh dau nao sau day can duoc bao mat va khong tiet lo ra ben ngoai cong ty?', 'ISMS', NULL),
(129, 'Trên đường đi công tác, chẳng may bạn bị trộm mất laptop làm việc. Việc đầu tiên bạn cần làm khi xảy ra sự cố An ninh thông tin là gì?', 'Tren duong di cong tac, chang may ban bi trom mat laptop lam viec. Viec dau tien ban can lam khi xay ra su co An ninh thong tin la gi?', 'ISMS', NULL),
(130, 'Trong đợt dịch Covid-19 xảy ra, nhiều nhân viên có nhu cầu làm việc từ xa, tại nhà. Khi đó cần thực hiện các yêu cầu nào sau đây?', 'Trong dot dich Covid-19 xay ra, nhieu nhan vien co nhu cau lam viec tu xa, tai nha. Khi do can thuc hien cac yeu cau nao sau day?', 'ISMS', NULL),
(131, 'Trong khi đi ra ngoài ăn trưa với đồng nghiệp bạn vô tình làm mất thẻ từ ra vào văn phòng, bạn sẽ?', 'Trong khi di ra ngoai an trua voi dong nghiep ban vo tinh lam mat the tu ra vao van phong, ban se?', 'ISMS', NULL),
(132, 'Trong quá trình làm việc, bạn cần thay đổi chỗ ngồi làm việc thì bạn cần làm gì?', 'Trong qua trinh lam viec, ban can thay doi cho ngoi lam viec thi ban can lam gi?', 'ISMS', NULL),
(133, 'Trước khi gửi mail, những thông tin nào nhất thiết phải kiểm tra lại để đảm bảo an toàn bảo mật?', 'Truoc khi gui mail, nhung thong tin nao nhat thiet phai kiem tra lai de dam bao an toan bao mat?', 'ISMS', NULL),
(134, 'Trước khi ra về, bạn cần làm gì với máy tính?', 'Truoc khi ra ve, ban can lam gi voi may tinh?', 'ISMS', NULL),
(135, 'Vợ bạn là nhân viên một công ty khác, hôm nay cô ấy về sớm muốn lên công ty xem bạn làm việc và đợi về cùng, bạn sẽ?', 'Vo ban la nhan vien mot cong ty khac, hom nay co ay ve som muon len cong ty xem ban lam viec va doi ve cung, ban se?', 'ISMS', NULL),
(136, '\"Không đăng, tải, chia sẻ hoặc tiết lộ bất kỳ hình ảnh nào về thông tin cá nhân của khách hàng hoặc của công ty tại các khu vực bị hạn chế, khu vực có biển báo No Camera lên mạng xã hội\". Nhận định này là đúng hay sai?', '\"Khong dang, tai, chia se hoac tiet lo bat ky hinh anh nao ve thong tin ca nhan cua khach hang hoac cua cong ty tai cac khu vuc bi han che, khu vuc co bien bao No Camera len mang xa hoi\". Nhan dinh nay la dung hay sai?', 'ISMS', NULL),
(137, '\"Không đăng, tải, chia sẻ hoặc tiết lộ thông tin hoặc hình ảnh bảo mật của công ty hoặc khách hàng khi tham gia các các hoạt động blog, mạng xã hội.\" Hành động này là đúng hay sai?', '\"Khong dang, tai, chia se hoac tiet lo thong tin hoac hinh anh bao mat cua cong ty hoac khach hang khi tham gia cac cac hoat dong blog, mang xa hoi.\" Hanh dong nay la dung hay sai?', 'QMS', NULL),
(138, 'Ai được phép thao tác trên môi trường Production của khách hàng?', 'Ai duoc phep thao tac tren moi truong Production cua khach hang?', 'QMS', NULL),
(139, 'Bạn cần làm gì nếu tài sản của khách hàng bị hỏng hoặc sử dụng sai mục đích?', 'Ban can lam gi neu tai san cua khach hang bi hong hoac su dung sai muc dich?', 'ISMS', NULL),
(140, 'Bạn cần làm gì với các thông tin/dữ liệu của dự án khi cần mang ra ngoài?', 'Ban can lam gi voi cac thong tin/du lieu cua du an khi can mang ra ngoai?', 'ISMS', NULL),
(141, 'Bạn cần nghiên cứu tài liệu dự án của khách hàng cung cấp nên đã sử dụng USB để mang tài liệu về nhà?', 'Ban can nghien cuu tai lieu du an cua khach hang cung cap nen da su dung USB de mang tai lieu ve nha?', 'ISMS', NULL),
(142, 'Bạn có được phép mang tài sản của khách hàng hoặc công ty ra khỏi khu vực làm việc không?', 'Ban co duoc phep mang tai san cua khach hang hoac cong ty ra khoi khu vuc lam viec khong?', 'ISMS', NULL),
(143, 'Bạn có thể chia sẻ thông tin credit card (thông tin dùng để test) mà khách hàng cung cấp thông qua?\n1. Git cá nhân của khách hàng\n2. Gitlab công ty\n3. Mail công ty\n4. Gmail cá nhân', 'Ban co the chia se thong tin credit card (thong tin dung de test) ma khach hang cung cap thong qua?\n1. Git ca nhan cua khach hang\n2. Gitlab cong ty\n3. Mail cong ty\n4. Gmail ca nhan', 'ISMS', NULL),
(144, 'Bạn đang có việc và xin sếp ra ngoài, trong lúc ra ngoài có task cần xử lý gấp của khách hàng, bạn có được cho tài khoản công ty và nhờ đồng nghiệp truy cập vào hệ thống xử lý giúp mình?', 'Ban dang co viec va xin sep ra ngoai, trong luc ra ngoai co task can xu ly gap cua khach hang, ban co duoc cho tai khoan cong ty va nho dong nghiep truy cap vao he thong xu ly giup minh?', 'ISMS', NULL),
(145, 'Bạn được chuyển sang thực hiện dự án mới và không thực hiên dự án cũ nữa, những thông tin của dự án cũ bạn nghĩ rằng có thể sử dụng cho dự án mới của công ty. Vì vậy, bạn sẽ làm gì?', 'Ban duoc chuyen sang thuc hien du an moi va khong thuc hien du an cu nua, nhung thong tin cua du an cu ban nghi rang co the su dung cho du an moi cua cong ty. Vi vay, ban se lam gi?', 'ISMS', NULL),
(146, 'Bạn gửi tài liệu của khách hàng cung cấp cho một đồng nghiệp không cùng dự án, nhưng cùng trong công ty là hành động như thế nào?', 'Ban gui tai lieu cua khach hang cung cap cho mot dong nghiep khong cung du an, nhung cung trong cong ty la hanh dong nhu the nao?', 'ISMS', NULL),
(147, 'Các giấy tờ, tài liệu của dự án (bản cứng), trước khi ra về bạn sẽ làm gì?', 'Cac giay to, tai lieu cua du an (ban cung), truoc khi ra ve ban se lam gi?', 'ISMS', NULL),
(148, 'Các lưu ý khi sử dụng tài sản khách hàng là gì?', 'Cac luu y khi su dung tai san khach hang la gi?', 'ISMS', NULL),
(149, 'Nhân viên chỉ phải tuân thủ nguyên tắc làm việc, nguyên tắc An ninh thông tin tại công ty; không phải tuân thủ nguyên tắc làm việc, nguyên tắc An ninh thông tin tại nơi làm việc của khách hàng. Nhận định trên là đúng hay sai?', 'Nhan vien chi phai tuan thu nguyen tac lam viec, nguyen tac An ninh thong tin tai cong ty; khong phai tuan thu nguyen tac lam viec, nguyen tac An ninh thong tin tai noi lam viec cua khach hang. Nhan dinh tren la dung hay sai?', 'ISMS', NULL),
(150, 'Chia sẻ hình chụp trong khu vực code, tài liệu thiết kế, … lên internet/mạng xã hội (Instagram, Facebook, ...) là đúng hay sai?', 'Chia se hinh chup trong khu vuc code, tai lieu thiet ke, ... len internet/mang xa hoi (Instagram, Facebook, ...) la dung hay sai?', 'ISMS', NULL),
(151, 'Có một người bạn của bạn cùng làm trong công ty IT, bạn của bạn có xin thông tin dự án mà bạn đang thực hiện tại công ty Hybrid Technologies, bạn sẽ làm gì?', 'Co mot nguoi ban cua ban cung lam trong cong ty IT, ban cua ban co xin thong tin du an ma ban dang thuc hien tai cong ty Hybrid Technologies, ban se lam gi?', 'ISMS', NULL),
(152, 'Có một người bạn thân của bạn muốn thi tuyển vào công ty A, trong khi đó công ty A là khách hàng lâu năm của dự án bạn đang thực hiện trực tiếp. Bạn thân bạn muốn truy cập vào hệ thống để tìm hiểu một số thông tin như Chế độ phúc lợi, lương thưởng và cấu trúc bí mật của công ty A. Bạn sẽ làm gì?', 'Co mot nguoi ban than cua ban muon thi tuyen vao cong ty A, trong khi do cong ty A la khach hang lau nam cua du an ban dang thuc hien truc tiep. Ban than ban muon truy cap vao he thong de tim hieu mot so thong tin nhu Che do phuc loi, luong thuong va cau truc bi mat cua cong ty A. Ban se lam gi?', 'ISMS', NULL),
(153, 'Do dịch bệnh nên bạn được cấp tài khoản truy cập để làm việc tại nhà. Một đồng nghiệp trong team gọi điện thoại và nhờ bạn chia sẻ account và password để bạn ấy cùng giải quyết công việc đang rất gấp vì khách hàng đang yêu cầu. Bạn sẽ làm gì?', 'Do dich benh nen ban duoc cap tai khoan truy cap de lam viec tai nha. Mot dong nghiep trong team goi dien thoai va nho ban chia se account va password de ban ay cung giai quyet cong viec dang rat gap vi khach hang dang yeu cau. Ban se lam gi?', 'ISMS', NULL),
(154, 'Dự án bạn đang làm nằm trong khu vực bảo mật (có dấu hiệu cấm chụp ảnh, quay phim, ghi âm), hôm thứ 6 có sinh nhật của bạn trong team, mọi người tổ chức ăn bánh kem và nhờ bạn chụp hình làm kỉ niệm, bạn sẽ làm gì? ', 'Du an ban dang lam nam trong khu vuc bao mat (co dau hieu cam chup anh, quay phim, ghi am), hom thu 6 co sinh nhat cua ban trong team, moi nguoi to chuc an banh kem va nho ban chup hinh lam ki niem, ban se lam gi? ', 'ISMS', NULL),
(155, 'Dự án bạn đang làm nằm trong khu vực bảo mật, có biển cấm/chỉ dẫn: chỉ có người của dự án được phép ra vào, giờ nghỉ trưa vài đồng nghiệp của dự án khác không nằm trong khu vực bảo mật này có ý định muốn vào tán gẫu, bạn sẽ làm gì?', 'Du an ban dang lam nam trong khu vuc bao mat, co bien cam/chi dan: chi co nguoi cua du an duoc phep ra vao, gio nghi trua vai dong nghiep cua du an khac khong nam trong khu vuc bao mat nay co y dinh muon vao tan gau, ban se lam gi?', 'ISMS', NULL),
(156, 'Dự án của bạn trước đây có giữ của khách hàng một số thiết bị điện thoại mẫu để test do khách hàng gửi. Kết thúc dự án mà khách hàng chưa xác nhận việc trả lại tài sản, lúc đó team tham gia 1 dự án của khách hàng khác và đang thiếu điện thoại để test, quản lý đã đưa các điện thoại này để bạn sử dụng/test trong dự án. Muốn hoành thành công việc vào cuối tuần nên bạn đã mang 1 chiếc điện thoại về nhà để làm. Theo bạn, trong trường hợp này đã có những vi phạm An ninh thông tin gì?', 'Du an cua ban truoc day co giu cua khach hang mot so thiet bi dien thoai mau de test do khach hang gui. Ket thuc du an ma khach hang chua xac nhan viec tra lai tai san, luc do team tham gia 1 du an cua khach hang khac va dang thieu dien thoai de test, quan ly da dua cac dien thoai nay de ban su dung/test trong du an. Muon hoanh thanh cong viec vao cuoi tuan nen ban da mang 1 chiec dien thoai ve nha de lam. Theo ban, trong truong hop nay da co nhung vi pham An ninh thong tin gi?', 'ISMS', NULL),
(157, 'Dự án của bạn, khách hàng cung cấp rất nhiều tài liệu, bạn cần in tài liệu ra để nghiên cứu, hành động nào có thể gây rủi ro về An ninh thông tin?', 'Du an cua ban, khach hang cung cap rat nhieu tai lieu, ban can in tai lieu ra de nghien cuu, hanh dong nao co the gay rui ro ve An ninh thong tin?', 'ISMS', NULL),
(158, 'Khi có thành viên ra khỏi dự án, hoặc dự án kết thúc, thông tin liên quan đến dự án sẽ được xử lý như thế nào?', 'Khi co thanh vien ra khoi du an, hoac du an ket thuc, thong tin lien quan den du an se duoc xu ly nhu the nao?', 'ISMS', NULL),
(159, 'Khi dự án của bạn thiếu người, cần thuê nhân lực từ bên ngoài. Khi nhận việc, người được thuê cần phải làm gì?', 'Khi du an cua ban thieu nguoi, can thue nhan luc tu ben ngoai. Khi nhan viec, nguoi duoc thue can phai lam gi?', 'ISMS', NULL),
(160, 'Khi khách hàng giao một server cho dự án của bạn toàn quyền sử dụng, dự án có cần bảo mật server đó hay không?', 'Khi khach hang giao mot server cho du an cua ban toan quyen su dung, du an co can bao mat server do hay khong?', 'ISMS', NULL),
(161, 'Khi làm việc trong khu vực Lab, các tài liệu mật để trên bàn không cần cất vào tủ có khóa khi ra ngoài vì không có người lạ mặt ra vào khu vực này, đúng hay sai?', 'Khi lam viec trong khu vuc Lab, cac tai lieu mat de tren ban khong can cat vao tu co khoa khi ra ngoai vi khong co nguoi la mat ra vao khu vuc nay, dung hay sai?', 'ISMS', NULL),
(162, 'Không được cung cấp thông tin cá nhân của khách hàng, đối tác ra bên ngoài công ty hoặc cho những người không liên quan đến công việc mà không được người có thẩm quyền của công ty phê duyệt là đúng hay sai?', 'Khong duoc cung cap thong tin ca nhan cua khach hang, doi tac ra ben ngoai cong ty hoac cho nhung nguoi khong lien quan den cong viec ma khong duoc nguoi co tham quyen cua cong ty phe duyet la dung hay sai?', 'ISMS', NULL),
(163, 'Máy tính của bạn có được phép lưu trữ thông tin bí mật của dự án trước đó không?', 'May tinh cua ban co duoc phep luu tru thong tin bi mat cua du an truoc do khong?', 'ISMS', NULL),
(164, 'Nếu dự án của bạn sử dụng Github theo yêu cầu của khách hàng, bạn nên làm gì?', 'Neu du an cua ban su dung Github theo yeu cau cua khach hang, ban nen lam gi?', 'QMS', NULL),
(165, 'Nhận định này có đúng không: \"Sử dụng email của công ty hoặc email do khách hàng cung cấp cho mục đích công việc, không sử dụng các hệ thống email khác tại văn phòng\"?', 'Nhan dinh nay co dung khong: \"Su dung email cua cong ty hoac email do khach hang cung cap cho muc dich cong viec, khong su dung cac he thong email khac tai van phong\"?', 'QMS', NULL),
(166, 'Nhận định này là đúng hay sai: \"Không tiết lộ thông tin của công ty hay dự án khi tham gia vào các hoạt động blog hoặc mạng xã hội\"?', 'Nhan dinh nay la dung hay sai: \"Khong tiet lo thong tin cua cong ty hay du an khi tham gia vao cac hoat dong blog hoac mang xa hoi\"?', 'ISMS', NULL),
(167, 'Nhân viên của công ty chụp ảnh trong phòng làm việc của khách hàng và chia sẻ nó trên facebook. Là đúng hay sai?', 'Nhan vien cua cong ty chup anh trong phong lam viec cua khach hang va chia se no tren facebook. La dung hay sai?', 'ISMS', NULL),
(168, 'Những loại thông tin nào sau đây được gọi là thông tin bảo mật?', 'Nhung loai thong tin nao sau day duoc goi la thong tin bao mat?', 'ISMS', NULL),
(169, 'Tài sản của khách hàng giao để phục vụ dự án cần được quản lý bằng cách?', 'Tai san cua khach hang giao de phuc vu du an can duoc quan ly bang cach?', 'ISMS', NULL),
(170, 'Trong 1 đợt khách hàng sang công tác có chụp ảnh kỉ niệm với dự án, bạn có được phép đăng tải hình ảnh lên Facebook không?', 'Trong 1 dot khach hang sang cong tac co chup anh ki niem voi du an, ban co duoc phep dang tai hinh anh len Facebook khong?', 'ISMS', NULL),
(171, 'Trong đợt dịch Covid-19 vừa qua, có 1 số nhân viên làm việc tại nhà, theo bạn nhân viên có được lưu trữ thông tin dự án tại máy tính cá nhân làm việc ở nhà không?', 'Trong dot dich Covid-19 vua qua, co 1 so nhan vien lam viec tai nha, theo ban nhan vien co duoc luu tru thong tin du an tai may tinh ca nhan lam viec o nha khong?', 'ISMS', NULL),
(172, 'Trong đợt dịch Covid-19 xảy ra, có 1 số nhân viên có nhu cầu mượn PC, Monitor... của công ty để đảm bảo trang thiết bị đủ điều kiện làm việc tại nhà. Khi mang tài sản, thông tin ra ngoài khu vực làm việc tại công ty cần thực hiện các hoạt động gì?', 'Trong dot dich Covid-19 xay ra, co 1 so nhan vien co nhu cau muon PC, Monitor... cua cong ty de dam bao trang thiet bi du dieu kien lam viec tai nha. Khi mang tai san, thong tin ra ngoai khu vuc lam viec tai cong ty can thuc hien cac hoat dong gi?', 'ISMS', NULL),
(173, 'Trong quá trình lướt các diễn đàn công nghệ, bạn thấy một phần mềm hỗ trợ giúp cho công việc dự án chạy nhanh hơn, tiết kiệm thời gian hơn, do đó bạn muốn cài đặt và sử dụng trong dự án mình, bạn sẽ làm gì?', 'Trong qua trinh luot cac dien dan cong nghe, ban thay mot phan mem ho tro giup cho cong viec du an chay nhanh hon, tiet kiem thoi gian hon, do do ban muon cai dat va su dung trong du an minh, ban se lam gi?', 'ISMS', NULL),
(174, 'Trong thời gian làm việc tại văn phòng khách hàng ở Nhật, bạn được về VN nghỉ phép 1 tuần. Khi về nước khách hàng giao cho bạn mang 8 thiết bị USB về để phục vụ cho dự án tại VN. Bạn cần làm thủ tục gì?', 'Trong thoi gian lam viec tai van phong khach hang o Nhat, ban duoc ve VN nghi phep 1 tuan. Khi ve nuoc khach hang giao cho ban mang 8 thiet bi USB ve de phuc vu cho du an tai VN. Ban can lam thu tuc gi?', 'ISMS', NULL),
(175, 'Trường hợp nào dưới đây được ghi nhận là sự cố an ninh thông tin của dự án', 'Truong hop nao duoi day duoc ghi nhan la su co an ninh thong tin cua du an', 'ISMS', NULL),
(176, 'Vì tình hình dịch bệnh, bạn được công ty cho phép làm việc từ xa. Khách hàng giao task gấp cho bạn nhưng bạn lại không kết nối vào VPN được, bạn sẽ:', 'Vi tinh hinh dich benh, ban duoc cong ty cho phep lam viec tu xa. Khach hang giao task gap cho ban nhung ban lai khong ket noi vao VPN duoc, ban se:', 'ISMS', NULL),
(177, 'Việc này là đúng hay sai: \"Tìm hiểu kỹ môi trường làm việc với khách hàng có phải là môi trường Cloud, AWS, Azure, Google cloud, ... hay không, liên hệ phòng IT và Ban Chất lượng & An ninh thông tin để được hướng dẫn thực hiện dự án an toàn\"', 'Viec nay la dung hay sai: \"Tim hieu ky moi truong lam viec voi khach hang co phai la moi truong Cloud, AWS, Azure, Google cloud, ... hay khong, lien he phong IT va Ban Chat luong & An ninh thong tin de duoc huong dan thuc hien du an an toan\"', 'ISMS', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `hash_pwd` char(100) DEFAULT NULL,
  `type` enum('admin','user') NOT NULL,
  `lab_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT (curdate()),
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_flag` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `full_name`, `email`, `hash_pwd`, `type`, `lab_id`, `deleted_flag`) VALUES
(1, 'Nguyen Hoang Anh', 'anhnh@gmail.com', 'pbkdf2:sha256:150000$ZUHdRCNf$f84d00bb7f916c89914f622194339fd930b96972ec748d41759bc1b6ec14d75b', 'admin', 1, NULL),
(67, NULL, 'nhiptt@hybrid-technologies.vn', NULL, 'user', NULL, NULL),
(68, NULL, 'thanhnv@hybrid-technologies.vn', NULL, 'user', NULL, NULL),
(69, NULL, 'hoanpn@hybrid-technologies.vn', NULL, 'user', NULL, NULL),
(70, NULL, 'dangnh@hybrid-technologies.vn', NULL, 'user', NULL, NULL),
(71, NULL, 'nhintl@hybrid-technologies.vn', NULL, 'user', NULL, NULL),
(72, NULL, 'diempth@evolableasia.vn', NULL, 'user', NULL, NULL),
(73, NULL, 'khanhnq@hybrid-technologies.vn', NULL, 'user', NULL, NULL),
(74, NULL, 'ngannt@hybrid-technologies.vn', NULL, 'user', NULL, NULL),
(75, NULL, 'hungdt@hybrid-technologies.vn', NULL, 'user', NULL, NULL),
(76, NULL, 'trangntt@hybrid-technologies.co.jp', NULL, 'user', NULL, NULL),
(77, NULL, 'hoangnq@hybrid-technologies.co.jp', NULL, 'user', NULL, NULL),
(78, NULL, 'thaonpp@hybrid-technologies.co.jp', NULL, 'user', NULL, NULL),
(79, NULL, 'anhntl@hybrid-technologies.vn', NULL, 'user', NULL, NULL),
(80, NULL, 'duytn@hybrid-technologies.co.jp', NULL, 'user', NULL, NULL),
(81, NULL, 'thaitv@hybrid-technologies.vn', NULL, 'user', NULL, NULL),
(82, NULL, 'nganh@hybrid-technologies.vn', NULL, 'user', NULL, NULL),
(83, NULL, 'tulh@hybrid-technologies.vn', NULL, 'user', NULL, NULL),
(84, NULL, 'namtx@hybrid-technologies.vn', NULL, 'user', NULL, NULL),
(85, NULL, 'manhpt@hybrid-technologies.co.jp', NULL, 'user', NULL, NULL),
(86, NULL, 'minhntn@hybrid-technologies.vn', NULL, 'user', NULL, NULL),
(87, NULL, 'anhnh@hybrid-technologies.vn', NULL, 'user', NULL, NULL),
(88, NULL, 'tuanbv@hybrid-technologies.vn', NULL, 'user', NULL, NULL),
(89, NULL, 'tienht@hybrid-technologies.vn', NULL, 'user', NULL, NULL),
(90, NULL, 'thuynv@hybrid-technologies.vn', NULL, 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userdetail`
--

CREATE TABLE `userdetail` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `detail_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT (curdate()),
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_flag` bit(1) DEFAULT NULL,
  `updated_acc` varchar(256) DEFAULT NULL
) ;

--
-- Dumping data for table `userdetail`
--

INSERT INTO `userdetail` (`id`, `user_id`, `detail_id`, `status_id`, `start_time`, `end_time`, `deleted_flag`, `updated_acc`) VALUES
(118, 67, 16, 2, NULL, NULL, NULL, NULL),
(119, 68, 16, 2, NULL, NULL, NULL, NULL),
(120, 69, 16, 2, NULL, NULL, NULL, NULL),
(121, 70, 16, 2, NULL, NULL, NULL, NULL),
(122, 71, 16, 2, NULL, NULL, NULL, NULL),
(123, 72, 16, 2, NULL, NULL, NULL, NULL),
(124, 73, 16, 2, NULL, NULL, NULL, NULL),
(125, 74, 16, 2, NULL, NULL, NULL, NULL),
(126, 75, 16, 2, NULL, NULL, NULL, NULL),
(127, 76, 16, 2, NULL, NULL, NULL, NULL),
(128, 77, 16, 2, NULL, NULL, NULL, NULL),
(129, 78, 16, 2, NULL, NULL, NULL, NULL),
(130, 79, 16, 2, NULL, NULL, NULL, NULL),
(131, 80, 16, 2, NULL, NULL, NULL, NULL),
(132, 81, 16, 2, NULL, NULL, NULL, NULL),
(133, 82, 16, 2, NULL, NULL, NULL, NULL),
(134, 83, 16, 2, NULL, NULL, NULL, NULL),
(135, 84, 16, 2, NULL, NULL, NULL, NULL),
(136, 85, 16, 2, NULL, NULL, NULL, NULL),
(137, 86, 16, 2, NULL, NULL, NULL, NULL),
(138, 87, 16, 2, NULL, NULL, NULL, NULL),
(139, 88, 16, 2, NULL, NULL, NULL, NULL),
(140, 89, 16, 2, NULL, NULL, NULL, NULL),
(141, 90, 16, 2, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userquestion`
--

CREATE TABLE `userquestion` (
  `id` int(11) NOT NULL,
  `user_detail_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT (0),
  `created_at` datetime NOT NULL DEFAULT (curdate()),
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_flag` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `userquestion`
--

INSERT INTO `userquestion` (`id`, `user_detail_id`, `question_id`, `answer_id`, `deleted_flag`) VALUES
(2184, 118, 2, NULL, NULL),
(2185, 118, 19, NULL, NULL),
(2186, 118, 3, NULL, NULL),
(2187, 118, 13, NULL, NULL),
(2188, 118, 15, NULL, NULL),
(2189, 118, 20, NULL, NULL),
(2190, 118, 12, NULL, NULL),
(2191, 118, 8, NULL, NULL),
(2192, 118, 10, NULL, NULL),
(2193, 118, 5, NULL, NULL),
(2194, 118, 4, NULL, NULL),
(2195, 118, 9, NULL, NULL),
(2196, 118, 11, NULL, NULL),
(2197, 118, 7, NULL, NULL),
(2198, 118, 6, NULL, NULL),
(2199, 119, 1, NULL, NULL),
(2200, 119, 2, NULL, NULL),
(2201, 119, 19, NULL, NULL),
(2202, 119, 12, NULL, NULL),
(2203, 119, 13, NULL, NULL),
(2204, 119, 8, NULL, NULL),
(2205, 119, 9, NULL, NULL),
(2206, 119, 15, NULL, NULL),
(2207, 119, 14, NULL, NULL),
(2208, 119, 6, NULL, NULL),
(2209, 119, 20, NULL, NULL),
(2210, 119, 4, NULL, NULL),
(2211, 119, 10, NULL, NULL),
(2212, 119, 11, NULL, NULL),
(2213, 119, 7, NULL, NULL),
(2214, 120, 2, NULL, NULL),
(2215, 120, 19, NULL, NULL),
(2216, 120, 3, NULL, NULL),
(2217, 120, 10, NULL, NULL),
(2218, 120, 20, NULL, NULL),
(2219, 120, 4, NULL, NULL),
(2220, 120, 8, NULL, NULL),
(2221, 120, 9, NULL, NULL),
(2222, 120, 15, NULL, NULL),
(2223, 120, 14, NULL, NULL),
(2224, 120, 7, NULL, NULL),
(2225, 120, 5, NULL, NULL),
(2226, 120, 11, NULL, NULL),
(2227, 120, 13, NULL, NULL),
(2228, 120, 12, NULL, NULL),
(2229, 121, 19, NULL, NULL),
(2230, 121, 3, NULL, NULL),
(2231, 121, 1, NULL, NULL),
(2232, 121, 8, NULL, NULL),
(2233, 121, 13, NULL, NULL),
(2234, 121, 14, NULL, NULL),
(2235, 121, 12, NULL, NULL),
(2236, 121, 6, NULL, NULL),
(2237, 121, 5, NULL, NULL),
(2238, 121, 9, NULL, NULL),
(2239, 121, 20, NULL, NULL),
(2240, 121, 10, NULL, NULL),
(2241, 121, 11, NULL, NULL),
(2242, 121, 15, NULL, NULL),
(2243, 121, 7, NULL, NULL),
(2244, 122, 1, NULL, NULL),
(2245, 122, 19, NULL, NULL),
(2246, 122, 2, NULL, NULL),
(2247, 122, 12, NULL, NULL),
(2248, 122, 20, NULL, NULL),
(2249, 122, 7, NULL, NULL),
(2250, 122, 15, NULL, NULL),
(2251, 122, 6, NULL, NULL),
(2252, 122, 8, NULL, NULL),
(2253, 122, 5, NULL, NULL),
(2254, 122, 11, NULL, NULL),
(2255, 122, 14, NULL, NULL),
(2256, 122, 9, NULL, NULL),
(2257, 122, 10, NULL, NULL),
(2258, 122, 13, NULL, NULL),
(2259, 123, 1, NULL, NULL),
(2260, 123, 2, NULL, NULL),
(2261, 123, 19, NULL, NULL),
(2262, 123, 4, NULL, NULL),
(2263, 123, 14, NULL, NULL),
(2264, 123, 13, NULL, NULL),
(2265, 123, 5, NULL, NULL),
(2266, 123, 7, NULL, NULL),
(2267, 123, 20, NULL, NULL),
(2268, 123, 10, NULL, NULL),
(2269, 123, 15, NULL, NULL),
(2270, 123, 6, NULL, NULL),
(2271, 123, 12, NULL, NULL),
(2272, 123, 9, NULL, NULL),
(2273, 123, 8, NULL, NULL),
(2274, 124, 3, NULL, NULL),
(2275, 124, 1, NULL, NULL),
(2276, 124, 19, NULL, NULL),
(2277, 124, 6, NULL, NULL),
(2278, 124, 15, NULL, NULL),
(2279, 124, 5, NULL, NULL),
(2280, 124, 4, NULL, NULL),
(2281, 124, 10, NULL, NULL),
(2282, 124, 9, NULL, NULL),
(2283, 124, 12, NULL, NULL),
(2284, 124, 11, NULL, NULL),
(2285, 124, 13, NULL, NULL),
(2286, 124, 8, NULL, NULL),
(2287, 124, 7, NULL, NULL),
(2288, 124, 14, NULL, NULL),
(2289, 125, 1, NULL, NULL),
(2290, 125, 2, NULL, NULL),
(2291, 125, 3, NULL, NULL),
(2292, 125, 4, NULL, NULL),
(2293, 125, 13, NULL, NULL),
(2294, 125, 8, NULL, NULL),
(2295, 125, 14, NULL, NULL),
(2296, 125, 10, NULL, NULL),
(2297, 125, 11, NULL, NULL),
(2298, 125, 9, NULL, NULL),
(2299, 125, 6, NULL, NULL),
(2300, 125, 7, NULL, NULL),
(2301, 125, 5, NULL, NULL),
(2302, 125, 12, NULL, NULL),
(2303, 125, 20, NULL, NULL),
(2304, 126, 1, NULL, NULL),
(2305, 126, 19, NULL, NULL),
(2306, 126, 3, NULL, NULL),
(2307, 126, 9, NULL, NULL),
(2308, 126, 15, NULL, NULL),
(2309, 126, 6, NULL, NULL),
(2310, 126, 8, NULL, NULL),
(2311, 126, 20, NULL, NULL),
(2312, 126, 10, NULL, NULL),
(2313, 126, 7, NULL, NULL),
(2314, 126, 5, NULL, NULL),
(2315, 126, 12, NULL, NULL),
(2316, 126, 14, NULL, NULL),
(2317, 126, 13, NULL, NULL),
(2318, 126, 11, NULL, NULL),
(2319, 127, 1, NULL, NULL),
(2320, 127, 19, NULL, NULL),
(2321, 127, 2, NULL, NULL),
(2322, 127, 7, NULL, NULL),
(2323, 127, 8, NULL, NULL),
(2324, 127, 12, NULL, NULL),
(2325, 127, 9, NULL, NULL),
(2326, 127, 4, NULL, NULL),
(2327, 127, 11, NULL, NULL),
(2328, 127, 15, NULL, NULL),
(2329, 127, 20, NULL, NULL),
(2330, 127, 6, NULL, NULL),
(2331, 127, 13, NULL, NULL),
(2332, 127, 14, NULL, NULL),
(2333, 127, 10, NULL, NULL),
(2334, 128, 19, NULL, NULL),
(2335, 128, 3, NULL, NULL),
(2336, 128, 2, NULL, NULL),
(2337, 128, 9, NULL, NULL),
(2338, 128, 6, NULL, NULL),
(2339, 128, 15, NULL, NULL),
(2340, 128, 10, NULL, NULL),
(2341, 128, 4, NULL, NULL),
(2342, 128, 11, NULL, NULL),
(2343, 128, 7, NULL, NULL),
(2344, 128, 13, NULL, NULL),
(2345, 128, 5, NULL, NULL),
(2346, 128, 8, NULL, NULL),
(2347, 128, 20, NULL, NULL),
(2348, 128, 14, NULL, NULL),
(2349, 129, 19, NULL, NULL),
(2350, 129, 2, NULL, NULL),
(2351, 129, 1, NULL, NULL),
(2352, 129, 9, NULL, NULL),
(2353, 129, 12, NULL, NULL),
(2354, 129, 13, NULL, NULL),
(2355, 129, 4, NULL, NULL),
(2356, 129, 8, NULL, NULL),
(2357, 129, 20, NULL, NULL),
(2358, 129, 14, NULL, NULL),
(2359, 129, 7, NULL, NULL),
(2360, 129, 6, NULL, NULL),
(2361, 129, 15, NULL, NULL),
(2362, 129, 10, NULL, NULL),
(2363, 129, 11, NULL, NULL),
(2364, 130, 1, NULL, NULL),
(2365, 130, 3, NULL, NULL),
(2366, 130, 2, NULL, NULL),
(2367, 130, 14, NULL, NULL),
(2368, 130, 15, NULL, NULL),
(2369, 130, 8, NULL, NULL),
(2370, 130, 13, NULL, NULL),
(2371, 130, 20, NULL, NULL),
(2372, 130, 7, NULL, NULL),
(2373, 130, 9, NULL, NULL),
(2374, 130, 5, NULL, NULL),
(2375, 130, 11, NULL, NULL),
(2376, 130, 12, NULL, NULL),
(2377, 130, 6, NULL, NULL),
(2378, 130, 4, NULL, NULL),
(2379, 131, 2, NULL, NULL),
(2380, 131, 1, NULL, NULL),
(2381, 131, 3, NULL, NULL),
(2382, 131, 6, NULL, NULL),
(2383, 131, 9, NULL, NULL),
(2384, 131, 14, NULL, NULL),
(2385, 131, 5, NULL, NULL),
(2386, 131, 12, NULL, NULL),
(2387, 131, 11, NULL, NULL),
(2388, 131, 13, NULL, NULL),
(2389, 131, 15, NULL, NULL),
(2390, 131, 10, NULL, NULL),
(2391, 131, 7, NULL, NULL),
(2392, 131, 20, NULL, NULL),
(2393, 131, 8, NULL, NULL),
(2394, 132, 3, NULL, NULL),
(2395, 132, 2, NULL, NULL),
(2396, 132, 1, NULL, NULL),
(2397, 132, 9, NULL, NULL),
(2398, 132, 20, NULL, NULL),
(2399, 132, 7, NULL, NULL),
(2400, 132, 12, NULL, NULL),
(2401, 132, 13, NULL, NULL),
(2402, 132, 15, NULL, NULL),
(2403, 132, 10, NULL, NULL),
(2404, 132, 14, NULL, NULL),
(2405, 132, 8, NULL, NULL),
(2406, 132, 6, NULL, NULL),
(2407, 132, 4, NULL, NULL),
(2408, 132, 5, NULL, NULL),
(2409, 133, 2, NULL, NULL),
(2410, 133, 3, NULL, NULL),
(2411, 133, 19, NULL, NULL),
(2412, 133, 11, NULL, NULL),
(2413, 133, 7, NULL, NULL),
(2414, 133, 15, NULL, NULL),
(2415, 133, 4, NULL, NULL),
(2416, 133, 12, NULL, NULL),
(2417, 133, 10, NULL, NULL),
(2418, 133, 9, NULL, NULL),
(2419, 133, 5, NULL, NULL),
(2420, 133, 20, NULL, NULL),
(2421, 133, 13, NULL, NULL),
(2422, 133, 6, NULL, NULL),
(2423, 133, 8, NULL, NULL),
(2424, 134, 1, NULL, NULL),
(2425, 134, 19, NULL, NULL),
(2426, 134, 3, NULL, NULL),
(2427, 134, 9, NULL, NULL),
(2428, 134, 13, NULL, NULL),
(2429, 134, 5, NULL, NULL),
(2430, 134, 7, NULL, NULL),
(2431, 134, 14, NULL, NULL),
(2432, 134, 4, NULL, NULL),
(2433, 134, 6, NULL, NULL),
(2434, 134, 15, NULL, NULL),
(2435, 134, 11, NULL, NULL),
(2436, 134, 20, NULL, NULL),
(2437, 134, 10, NULL, NULL),
(2438, 134, 8, NULL, NULL),
(2439, 135, 3, NULL, NULL),
(2440, 135, 1, NULL, NULL),
(2441, 135, 19, NULL, NULL),
(2442, 135, 8, NULL, NULL),
(2443, 135, 14, NULL, NULL),
(2444, 135, 5, NULL, NULL),
(2445, 135, 6, NULL, NULL),
(2446, 135, 12, NULL, NULL),
(2447, 135, 7, NULL, NULL),
(2448, 135, 10, NULL, NULL),
(2449, 135, 13, NULL, NULL),
(2450, 135, 11, NULL, NULL),
(2451, 135, 20, NULL, NULL),
(2452, 135, 4, NULL, NULL),
(2453, 135, 9, NULL, NULL),
(2454, 136, 19, NULL, NULL),
(2455, 136, 2, NULL, NULL),
(2456, 136, 1, NULL, NULL),
(2457, 136, 5, NULL, NULL),
(2458, 136, 14, NULL, NULL),
(2459, 136, 6, NULL, NULL),
(2460, 136, 4, NULL, NULL),
(2461, 136, 20, NULL, NULL),
(2462, 136, 9, NULL, NULL),
(2463, 136, 11, NULL, NULL),
(2464, 136, 13, NULL, NULL),
(2465, 136, 10, NULL, NULL),
(2466, 136, 8, NULL, NULL),
(2467, 136, 7, NULL, NULL),
(2468, 136, 15, NULL, NULL),
(2469, 137, 1, NULL, NULL),
(2470, 137, 3, NULL, NULL),
(2471, 137, 2, NULL, NULL),
(2472, 137, 11, NULL, NULL),
(2473, 137, 4, NULL, NULL),
(2474, 137, 12, NULL, NULL),
(2475, 137, 6, NULL, NULL),
(2476, 137, 15, NULL, NULL),
(2477, 137, 9, NULL, NULL),
(2478, 137, 13, NULL, NULL),
(2479, 137, 10, NULL, NULL),
(2480, 137, 7, NULL, NULL),
(2481, 137, 20, NULL, NULL),
(2482, 137, 14, NULL, NULL),
(2483, 137, 8, NULL, NULL),
(2799, 141, 19, NULL, NULL),
(2800, 141, 1, NULL, NULL),
(2801, 141, 2, NULL, NULL),
(2802, 141, 5, NULL, NULL),
(2803, 141, 15, NULL, NULL),
(2804, 141, 7, NULL, NULL),
(2805, 141, 4, NULL, NULL),
(2806, 141, 14, NULL, NULL),
(2807, 141, 20, NULL, NULL),
(2808, 141, 11, NULL, NULL),
(2809, 141, 10, NULL, NULL),
(2810, 141, 8, NULL, NULL),
(2811, 141, 6, NULL, NULL),
(2812, 141, 12, NULL, NULL),
(2813, 141, 13, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Answer_Question` (`question_id`);

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`),
  ADD KEY `fk_Email_Detail` (`detail_id`);

--
-- Indexes for table `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maexamplestatus`
--
ALTER TABLE `maexamplestatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `question` ADD FULLTEXT KEY `index_question` (`content_plain`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_User_Lab` (`lab_id`);

--
-- Indexes for table `userdetail`
--
ALTER TABLE `userdetail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_user_detail` (`user_id`,`detail_id`),
  ADD KEY `fk_UserDetail_Detail` (`detail_id`);

--
-- Indexes for table `userquestion`
--
ALTER TABLE `userquestion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_detail_question` (`user_detail_id`,`question_id`),
  ADD KEY `fk_UserQuestion_Question` (`question_id`),
  ADD KEY `fk_UserQuestion_Answer` (`answer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=555;

--
-- AUTO_INCREMENT for table `detail`
--
ALTER TABLE `detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT for table `lab`
--
ALTER TABLE `lab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `maexamplestatus`
--
ALTER TABLE `maexamplestatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `userdetail`
--
ALTER TABLE `userdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userquestion`
--
ALTER TABLE `userquestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2814;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `fk_Answer_Question` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`);

--
-- Constraints for table `email`
--
ALTER TABLE `email`
  ADD CONSTRAINT `fk_Email_Detail` FOREIGN KEY (`detail_id`) REFERENCES `detail` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_User_Lab` FOREIGN KEY (`lab_id`) REFERENCES `lab` (`id`);

--
-- Constraints for table `userquestion`
--
ALTER TABLE `userquestion`
  ADD CONSTRAINT `fk_UserQuestion_Answer` FOREIGN KEY (`answer_id`) REFERENCES `answer` (`id`),
  ADD CONSTRAINT `fk_UserQuestion_Question` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`),
  ADD CONSTRAINT `fk_UserQuestion_UserDetail` FOREIGN KEY (`user_detail_id`) REFERENCES `userdetail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
