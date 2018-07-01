-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.31-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for entrust_admin
DROP DATABASE IF EXISTS `entrust_admin`;
CREATE DATABASE IF NOT EXISTS `entrust_admin` /*!40100 DEFAULT CHARACTER SET utf32 COLLATE utf32_unicode_ci */;
USE `entrust_admin`;

-- Dumping structure for table entrust_admin.category
DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `left` int(10) unsigned DEFAULT NULL,
  `right` int(10) unsigned DEFAULT NULL,
  `level` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table entrust_admin.category: ~16 rows (approximately)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `name`, `slug`, `parent_id`, `left`, `right`, `level`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 'root', 'root', 0, 1, 44, 0, 1, NULL, NULL),
	(2, 'Quy định', 'quy-dinh', 1, 4, 5, 1, 1, NULL, NULL),
	(3, 'Giới thiệu', 'gioi-thieu', 1, 6, 13, 1, 1, NULL, NULL),
	(4, 'Bảng giá', 'bang-gia', 1, 14, 15, 1, 1, NULL, NULL),
	(5, 'Tin tức', 'tin-tuc', 1, 2, 3, 1, 1, NULL, NULL),
	(6, 'Liên hệ', 'lien-he', 1, 16, 17, 1, 1, NULL, NULL),
	(7, 'Tin tức công nghệ', 'tin-tuc-cong-nghe', 3, 9, 10, 2, 1, NULL, NULL),
	(8, 'Sản phẩm', 'san-pham', 3, 11, 12, 2, 0, NULL, NULL),
	(9, 'Giới thiệu FTI', 'gioi-thieu', 3, 7, 8, 2, 0, NULL, NULL),
	(12, 'Khuyến mãi', 'khuyen-mai', 1, 18, 19, 1, 0, NULL, NULL),
	(13, 'Hỏi đáp', 'hoi-dap', 1, 20, 43, 1, 0, NULL, NULL),
	(26, 'Dịch vụ', 'dich-vu', 13, 21, 22, 2, 0, NULL, NULL),
	(27, 'Tài khoản', 'tai-khoan', 13, 23, 24, 2, 0, NULL, NULL),
	(28, 'Sự cố kỹ thuật', 'su-co-ki-thuat', 13, 25, 26, 2, 0, NULL, NULL),
	(29, 'Giá', 'gia', 13, 27, 28, 2, 0, NULL, NULL),
	(30, 'Hướng dẫn sử dụng', 'huong-dan-su-dung', 13, 29, 30, 2, 0, NULL, NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table entrust_admin.items
DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table entrust_admin.items: ~2 rows (approximately)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`id`, `title`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
	(4, 'Chào buổi sáng123', 'hihihehe', 2, '2018-06-08 03:26:14', '2018-06-14 02:03:12'),
	(6, 'vi du2', 'abc', 2, '2018-06-08 06:54:25', '2018-06-14 01:59:36');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Dumping structure for table entrust_admin.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table entrust_admin.migrations: ~2 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2018_06_06_065836_entrust_setup_tables', 1),
	(2, '2018_06_06_065936_create_items_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table entrust_admin.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table entrust_admin.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table entrust_admin.permissions
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table entrust_admin.permissions: ~18 rows (approximately)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'role-list', 'Display Role Listing', 'See only Listing Of Role', '2018-06-06 07:15:28', '2018-06-06 07:15:28'),
	(2, 'role-create', 'Create Role', 'Create New Role', '2018-06-06 07:15:28', '2018-06-06 07:15:28'),
	(3, 'role-edit', 'Edit Role', 'Edit Role', '2018-06-06 07:15:29', '2018-06-06 07:15:29'),
	(4, 'role-delete', 'Delete Role', 'Delete Role', '2018-06-06 07:15:29', '2018-06-06 07:15:29'),
	(5, 'item-list', 'Display Item Listing', 'See only Listing Of Item', '2018-06-06 07:15:29', '2018-06-06 07:15:29'),
	(6, 'item-create', 'Create Item', 'Create New Item', '2018-06-06 07:15:29', '2018-06-06 07:15:29'),
	(7, 'item-edit', 'Edit Item', 'Edit Item', '2018-06-06 07:15:29', '2018-06-06 07:15:29'),
	(8, 'item-delete', 'Delete Item', 'Delete Item', '2018-06-06 07:15:29', '2018-06-06 07:15:29'),
	(9, 'user-list', 'Display User Listing', 'See only Listing Of User', NULL, NULL),
	(10, 'user-create', 'Create User', 'Create New User', NULL, NULL),
	(11, 'user-edit', 'Edit Item', 'Edit Item', NULL, NULL),
	(12, 'user-delete', 'Delete Item', 'Delete Item', NULL, NULL),
	(13, 'kinhdoanh', 'kinhdoanh', 'kinhdoanh', NULL, NULL),
	(14, 'kithuat', 'kithuat', 'kithuat', NULL, NULL),
	(15, 'post-create', 'Create Post', 'Create New Post', NULL, NULL),
	(16, 'post-edit', 'Edit Post', 'Edit Post', NULL, NULL),
	(17, 'post-delete', 'Delete Post', 'Delete Post', NULL, NULL),
	(18, 'post-list', 'Display Post Listing', 'See only Listing Of Post', NULL, NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Dumping structure for table entrust_admin.permission_role
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table entrust_admin.permission_role: ~24 rows (approximately)
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(5, 2),
	(5, 5),
	(6, 1),
	(6, 2),
	(6, 5),
	(7, 1),
	(7, 5),
	(8, 1),
	(8, 5),
	(9, 1),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

-- Dumping structure for table entrust_admin.post
DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oustand` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_idcategory_foreign` (`category_id`),
  CONSTRAINT `post_idcategory_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table entrust_admin.post: ~18 rows (approximately)
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` (`id`, `title`, `slug`, `summary`, `content`, `image`, `category_id`, `user_id`, `active`, `created_at`, `updated_at`, `deleted_at`, `keyword`, `oustand`) VALUES
	(1, 'Anonymous là ai', '', 'Anonymous - nhóm hacker khét tiếng nhất thế giới - là hiện thân của sự hỗn độn, tối tăm trong thế giới tin tặc với những con người tài năng, lập dị và ẩn chứa cả sự phản bội.', 'Trong khi các nhóm hacker lừng danh như LulzSec, Lizard Squad hay Team Poison có thể gây chấn động thế giới một thời gian rồi rút lui vào bóng tối thì Anonymous đã hoạt động kéo dài tới hơn một thập kỷ cùng hàng loạt chiến dịch lớn làm đau đầu nhiều tổ chức, doanh nghiệp và cá nhân. Thậm chí, nhóm này góp mặt trong danh sách 100 nhân vật có ảnh hưởng nhất thế giới của tạp chí Time.\r\nVậy tại sao họ lại tồn tại lâu đến vậy? Đáp án cho câu hỏi "Anonymous là ai" đã phần nào giải thích lý do cho sự thành công của nhóm: Anonymous chẳng là ai cả. Trong khi đa số các tổ chức được hình thành có cấp bậc, phân quyền thì Anonymous có kết cấu lỏng lẻo, ngang hàng và không có thủ lĩnh với vai trò ra lệnh cho các thành viên còn lại. Phương châm của nhóm là: "Bạn không thể chặt đầu một con rắn không đầu". \r\nNói cách khác, về mặt lý thuyết, bất cứ thành viên nào (còn gọi là Anons) cũng có thể sử dụng tên "Anonymous" để phát động tấn công và nếu đủ sức hút, sẽ có một nhóm người cùng tham gia đến cùng. Dĩ nhiên, sẽ vẫn có những Anons chủ chốt sẵn sàng ra tay nhằm ngăn chặn các hoạt động vượt ra khỏi tiêu chí, mục tiêu mà nhóm đã đề ra.', NULL, 5, 2, 1, '2018-06-20 14:56:13', '2018-06-20 14:56:17', NULL, NULL, NULL),
	(8, 'avc', NULL, 'sua2', 'sua34qqqqqqqqqq qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq  ', NULL, 3, 2, 0, '2018-06-20 10:19:17', '2018-06-20 10:19:17', NULL, NULL, NULL),
	(9, 'avcavc', 'avcavc', '<p>avc</p>', '<p>avcavc</p>', NULL, 2, 2, 1, '2018-06-20 10:21:07', '2018-06-27 07:08:12', NULL, NULL, NULL),
	(11, 'Chào buổi sáng', 'chao-buoi-sang', '<p>avc</p>', '<p>avc</p>', NULL, 3, 2, 1, '2018-06-21 02:13:13', '2018-06-21 02:13:13', NULL, NULL, NULL),
	(12, 'tôi là huy', 'toi-la-huy', 'abcabc', '<p>123</p>', NULL, 13, 2, 1, '2018-06-21 02:14:49', '2018-06-29 02:49:09', NULL, NULL, NULL),
	(13, 'tôi là huy', 'toi-la-huy', '<p>avc</p>', '<p>avc</p>', 'JaEH_Jellyfish.jpg', 2, 13, 1, '2018-06-21 02:37:31', '2018-06-29 02:35:11', '2018-06-29 02:35:11', NULL, NULL),
	(14, 'Chào buổi sáng', 'chao-buoi-sang', '<p>av</p>', '<p>av</p>', 'zZ0h_Hydrangeas.jpg', 5, 2, 1, '2018-06-21 03:29:36', '2018-06-29 02:36:03', NULL, NULL, NULL),
	(17, 'Chào buổi sáng', 'chao-buoi-sang', '<p>ad</p>', '<p>ad</p>', NULL, 3, 2, 1, '2018-06-21 04:10:49', '2018-06-28 01:50:37', '2018-06-28 01:50:37', NULL, NULL),
	(18, 'huy', 'huy', '<p>huy</p>', '<p>huy</p>', NULL, 2, 2, 1, '2018-06-22 09:44:01', '2018-06-28 01:51:05', '2018-06-28 01:51:05', NULL, NULL),
	(19, 'Chào buổi sáng', 'chao-buoi-sang', '<p>abcdef</p>', '<p>abcdef</p>', 'dtxu_Tulips.jpg', 2, 2, 1, '2018-06-23 11:20:30', '2018-06-29 02:36:32', NULL, NULL, NULL),
	(20, 'tôi là huy', 'toi-la-huy', '<p>hihi</p>', '<p>haha</p>', NULL, 2, 2, 1, '2018-06-23 11:24:36', '2018-06-28 01:48:14', '2018-06-28 01:48:14', NULL, NULL),
	(28, 'Lý do vì sao Alibaba thâu tóm “YouTube Trung Quốc” với giá trị khổng lồ', 'ly-do-vi-sao-alibaba-thau-tom-youtube-trung-quoc-voi-gia-tri-khong-lo', 'Tập đoàn Alibaba vừa mới thông báo vào hôm thứ 6, rằng sẽ bỏ ra khoản tiền lên tới gần 3,7 tỷ USD để thâu tóm trang video trực tuyết hàng đầu của Trung Quốc là Youku Tudou. Mặc dù trên thực tế Youku Tudou hoạt động không thực sự hiệu quả và thua lỗ trong năm 2014 cũng như nửa đầu năm 2015', 'ccccccccccccccccccccccccccc<img alt="" src="/projectb/public/upload/tintuc/images/download.jpg" style="height:183px; width:275px" />', 'Rm6g_ailbaba.jpg', 2, 2, 1, '2018-06-25 08:22:55', '2018-06-29 04:38:32', NULL, NULL, 1),
	(30, 'Tại sao nói Amazon đang bay trên mây và không ai có thể chạm tới?', 'tai-sao-noi-amazon-dang-bay-tren-may-va-khong-ai-co-the-cham-toi-', 'Mảnh đất điện toán đám mây ngày càng đông người chơi, nhưng liệu mấy ai có thể trụ vững trước quy mô và sức ép của Amazon.', 'Thị trường điện to&aacute;n đ&aacute;m m&acirc;y tiếp tục cho thấy c&aacute;c kết quả bất ngờ, vượt ngo&agrave;i dự đo&aacute;n. Ngay cả khi cơn sốt của c&aacute;c startup c&oacute; dấu hiệu nguội đi ở Thung lũng Silicon, 3 &ocirc;ng lớn về điện to&aacute;n đ&aacute;m m&acirc;y l&agrave; Amazon, Microsoft v&agrave; Google đều th&ocirc;ng b&aacute;o tăng trưởng doanh thu trong ng&agrave;nh kinh doanh n&agrave;y. Ngo&agrave;i ra, quy m&ocirc; của &ldquo;đ&aacute;m m&acirc;y&rdquo; cũng đang rộng ra nhanh ch&oacute;ng với sự tham gia của nhiều tay chơi kh&aacute;c.<br />\r\n&nbsp;', 'X5tI_amazon_logo_rgb.jpg', 5, 2, 1, '2018-06-26 08:55:41', '2018-06-29 04:34:01', NULL, NULL, 1),
	(31, 'Vì sao Microsoft khai tử Internet Explorer?', 'vi-sao-microsoft-khai-tu-internet-explorer-', 'Windows 10 chính thức được trình làng đi kèm với nhiều tính năng mới, trong đó có cái tên Spartan - trình duyệt web được Microsoft lựa chọn thay thế Internet Explorer. Vậy tại sao Microsoft khai tử Internet Explorer khi trình duyệt này đã trở thành biểu tượng của hệ điều hành Windows?(cloud.fpt.net)', 'N&oacute;i Microsoft khai tử Internet Explorer (IE) chưa hẳn đ&atilde; đ&uacute;ng bởi tr&igrave;nh duyệt n&agrave;y vẫn sẽ tiếp tục được sử dụng nhưng mang t&iacute;nh bổ sung tr&ecirc;n hệ điều h&agrave;nh Windows mới. Cụ thể, IE vẫn sẽ c&oacute; mặt tr&ecirc;n Windows 10 nhưng chủ yếu để phục vụ cho c&aacute;c ứng dụng doanh nghiệp, chạy song song với Spartan, tr&igrave;nh duyệt chủ yếu để người d&ugrave;ng Windows 10 lướt web.<br />\r\n<br />\r\nNhư vậy, đối với người d&ugrave;ng phổ th&ocirc;ng, họ sẽ kh&ocirc;ng c&ograve;n được tiếp cận với biểu tượng tr&igrave;nh duyệt quen thuộc từ thời điểm Windows 10 được cập nhật một c&aacute;ch rộng r&atilde;i. V&agrave; đối với &quot;&ocirc;ng gi&agrave;&quot; IE, th&igrave; đ&acirc;y l&agrave; dấu chấm hết cho cuộc đời 20 năm tuổi của m&igrave;nh. Vậy tại sao IE lại ch&iacute;nh thức bị Microsoft loại khỏi hệ điều h&agrave;nh Windows sau những đ&oacute;ng g&oacute;p kh&ocirc;ng nhỏ 20 năm qua?', 'HS9U_aaa.jpg', 5, 2, 1, '2018-06-26 08:57:07', '2018-06-26 08:57:07', NULL, NULL, NULL),
	(32, 'Jailbreak iPhone, 225.000 tài khoản Apple bị nhiễm mã độc', 'jailbreak-iphone-225-000-tai-khoan-apple-bi-nhiem-ma-doc', 'Các tài khoản này đang bị nhiễm một loại mã độc có tên KeyRaider sau khi jailbreak iPhone.Các tài khoản này đang bị nhiễm một loại mã độc có tên KeyRaider sau khi jailbreak iPhone.', 'Một c&ocirc;ng ty bảo mật vừa ph&aacute;t hiện ra vụ trộm t&agrave;i khoản Apple được cho lớn nhất từ trước đến nay. C&ocirc;ng ty n&agrave;y đ&atilde; ph&aacute;t triển một c&ocirc;ng cụ tr&ecirc;n mạng gi&uacute;p người d&ugrave;ng kiểm tra xem họ c&oacute; l&agrave; một trong những nạn nh&acirc;n của vụ trộm hay kh&ocirc;ng.<br />\r\n<br />\r\nHiện tại, hơn 225.000 t&agrave;i khoản Apple đến từ 18 nước (Trung Quốc, Ph&aacute;p, Nga, Nhật, Anh, Mỹ, Canada, Đức, Australia, Israel, Italy, T&acirc;y Ban Nha, Singapore v&agrave; H&agrave;n Quốc) đ&atilde; nhiễm loại m&atilde; độc n&agrave;y. Tuy nhi&ecirc;n, n&oacute; chỉ c&oacute; t&aacute;c dụng với những thiết bị đ&atilde; jailbreak, theo Palo Alto Networks.<br />\r\n<br />\r\nĐiều n&agrave;y đồng nghĩa, nếu bạn chưa jailbreak iphone, t&agrave;i khoản của bạn chắc chắn an to&agrave;n với m&atilde; độc c&oacute; t&ecirc;n KeyRaider n&agrave;y.', 'LbAP_Lighthouse.jpg', 2, 2, 1, '2018-06-26 09:00:03', '2018-06-27 08:22:22', NULL, NULL, NULL),
	(33, 'Linux bước sang tuổi 24', 'linux-buoc-sang-tuoi-24', 'Vào ngày này 24 năm trước, Linus Torvalds đã tuyên bố ra mắt hệ điều hành Linux, mảnh ghép cuối cùng của dự án mã nguồn mở đầy tham vọng GNU.', 'D&ugrave; kh&ocirc;ng phải l&agrave; một hệ điều h&agrave;nh quen thuộc với người d&ugrave;ng phổ th&ocirc;ng nhưng Linux vẫn l&agrave; một phần quan trọng trong thế giới hi-tech: hệ điều h&agrave;nh m&atilde; nguồn mở n&agrave;y hiện nay vẫn l&agrave; lựa chọn phổ biến nhất cho c&aacute;c m&aacute;y chủ v&agrave; c&aacute;c hệ thống th&ocirc;ng tin h&agrave;ng đầu thế giới. Trong khi Microsoft v&agrave; Mac OS X c&oacute; thể mang tới trải nghiệm người d&ugrave;ng trực quan, dễ sử dụng hơn, khả năng t&ugrave;y biến, mức độ ổn định c&ugrave;ng hiệu năng vượt trội gi&uacute;p cho Linux trở th&agrave;nh lựa chọn số 1 của c&aacute;c chuy&ecirc;n gia c&ocirc;ng nghệ thực thụ.', 'AX8p_linux.jpg', 5, 2, 1, '2018-06-27 09:40:49', '2018-06-27 09:40:49', NULL, NULL, NULL),
	(34, 'Vì sao chu trình System trên Windows 10 lại “ngốn” nhiều RAM?', 'vi-sao-chu-trinh-system-tren-windows-10-lai-ngon-nhieu-ram-', 'Do Windows 10 đã thay đổi cách quản lí RAM dành cho các chu trình không được thường xuyên sử dụng, bạn sẽ thấy tình trạng chu trình "system" ngốn nhiều RAM và CPU xảy ra nhiều hơn so với Windows 8.', 'Nếu đ&atilde; thực hiện n&acirc;ng cấp PC l&ecirc;n Windows 10, chắc hẳn bạn đ&atilde; nhận ra một t&igrave;nh trạng đ&aacute;ng lo ngại khi mở Task Manager: chu tr&igrave;nh &quot;System&quot; của Windows lu&ocirc;n chiếm % của CPU v&agrave; c&oacute; l&uacute;c &quot;ăn&quot; tới hơn 1 GB RAM!<br />\r\n<img alt="" src="/projectb/public/upload/tintuc/images/1.png" style="height:613px; width:640px" />', 'NXY8_main.jpg', 5, 2, 1, '2018-06-28 01:55:20', '2018-06-28 01:55:20', NULL, NULL, NULL),
	(35, 'SharePoint mở ra cơ hội lớn cho doanh nghiệp', 'sharepoint-mo-ra-co-hoi-lon-cho-doanh-nghiep', 'Việc đưa ra các giải pháp về quản lý quy trình trên nền tảng SharePoint tại các doanh nghiệp không chỉ đem đến ưu thế cạnh tranh bằng cải tiến năng suất mà còn giúp rút ngắn thời gian triển khai cho khách hàng với chi phí thấp.', '<h1>&nbsp;</h1>\r\nViệc đưa ra c&aacute;c giải ph&aacute;p về quản l&yacute; quy tr&igrave;nh tr&ecirc;n nền tảng SharePoint tại c&aacute;c doanh nghiệp kh&ocirc;ng chỉ đem đến ưu thế cạnh tranh bằng cải tiến năng suất m&agrave; c&ograve;n gi&uacute;p r&uacute;t ngắn thời gian triển khai cho kh&aacute;ch h&agrave;ng với chi ph&iacute; thấp.', '2Ahg_dsc-0134-1440223138_1200x0.jpg', 5, 2, 1, '2018-06-29 02:28:37', '2018-06-29 02:28:37', NULL, NULL, NULL);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;

-- Dumping structure for table entrust_admin.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table entrust_admin.roles: ~3 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin', 'admin', NULL, NULL),
	(2, 'user', 'user', 'user', NULL, NULL),
	(5, 'manage', 'manage', 'manage', '2018-06-19 02:54:02', '2018-06-19 02:54:02');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table entrust_admin.role_user
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table entrust_admin.role_user: ~2 rows (approximately)
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
	(2, 1),
	(12, 2);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;

-- Dumping structure for table entrust_admin.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table entrust_admin.users: ~4 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(2, 'admin', 'admin@gmail.com', '$2y$10$wOWm4lD.yUa6T4Vu/qORpO.vsohAXJ6uNUyseQJ6b4uTyr1N6bH2y', 'yI4qP5bC2PYz5zWe7B16DcfImIQvKednX8xw4kjGBZHO7BiK29XXKf8wiXqe', NULL, NULL),
	(12, 'huy3', 'huy3@gmail.com', '$2y$10$E8PJ9kkGx14L5teSGSjKMuUrxcAHu/oAYeTqVL4g8cUwGPPc.tQ76', 'gA6USX30dLtsjcQ6R4zfCvElnKV6obv9BItQKGQBTxtoKCVDVvLDdHC74080', '2018-06-08 03:30:01', '2018-06-08 03:30:01'),
	(13, 'kinhdoanh', 'kinhdoanh@gmail.com', '$2y$10$Z3sgklc.zIlP1eDBql71S.Mo0SILkcnJ94O8YAjeidIOViHJdJ7pm', 'ZWtA2ixO05vGG8CxmB4Jw1ZdywJFrN7b9CXxKeebiXkIewhhTT4VTdse56sl', '2018-06-08 04:01:39', '2018-06-08 04:01:39'),
	(14, 'kithuat', 'kithuat@gmail.com', '$2y$10$qPuSrVjUGb.tweQb/qYxbObN/WmDWEfoykAdWmw7ehtfEVJ3YXD1K', 'svEszuXNGzh06neerfYtslKQJJUpcQ4qdUks63AizENkTDHq65lKaoYSO3qE', '2018-06-08 04:02:03', '2018-06-08 04:02:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
