-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2025 at 05:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webmaytinh`
--

-- --------------------------------------------------------

--
-- Table structure for table `vp_categories`
--

CREATE TABLE `vp_categories` (
  `cate_id` bigint(20) UNSIGNED NOT NULL,
  `cate_name` varchar(255) NOT NULL,
  `cate_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vp_categories`
--

INSERT INTO `vp_categories` (`cate_id`, `cate_name`, `cate_slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(69, 'Apple', 'apple', '2025-06-15 01:52:48', '2025-06-15 01:52:48', NULL),
(71, 'Asus', 'asus', '2025-06-15 01:52:57', '2025-06-15 01:52:57', NULL),
(72, 'Lenovo', 'lenovo', '2025-06-15 01:53:00', '2025-06-15 01:53:00', NULL),
(73, 'Dell', 'dell', '2025-06-15 01:53:06', '2025-06-15 01:53:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vp_comments`
--

CREATE TABLE `vp_comments` (
  `com_id` bigint(20) UNSIGNED NOT NULL,
  `com_email` varchar(255) NOT NULL,
  `com_name` varchar(255) NOT NULL,
  `com_content` varchar(255) NOT NULL,
  `com_status` int(11) NOT NULL DEFAULT 0,
  `com_product` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vp_orders`
--

CREATE TABLE `vp_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `total_products` varchar(255) NOT NULL,
  `placed_order_date` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL DEFAULT 'Chờ xác nhận',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vp_products`
--

CREATE TABLE `vp_products` (
  `prod_id` bigint(20) UNSIGNED NOT NULL,
  `prod_name` varchar(255) NOT NULL,
  `prod_slug` varchar(255) NOT NULL,
  `prod_price` bigint(50) NOT NULL,
  `prod_img` varchar(255) NOT NULL,
  `prod_condition` varchar(255) NOT NULL,
  `prod_status` tinyint(4) NOT NULL,
  `prod_description` text NOT NULL,
  `prod_featured` tinyint(4) NOT NULL,
  `prod_cate` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vp_products`
--

INSERT INTO `vp_products` (`prod_id`, `prod_name`, `prod_slug`, `prod_price`, `prod_img`, `prod_condition`, `prod_status`, `prod_description`, `prod_featured`, `prod_cate`, `created_at`, `updated_at`, `deleted_at`) VALUES
(303, 'Macbook Air M2', 'macbook-air-m2', 21000000, '250_57585_88466_laptop_apple_macbook_air_mc7x4sa_a_apple_m2_8c_cpu_8c_gpu_16gb_ram_256gb_ssd_13_6_mac_os_midnight_20241.jpg', '100%', 1, '<ul>\r\n	<li>\r\n	<h3>Bộ VXL: Apple M2 8-core CPU</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Bộ nhớ RAM: 16GB</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Ổ cứng: 256GB</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Card m&agrave;n h&igrave;nh: VGA Apple - 8 core GPU</h3>\r\n	</li>\r\n	<li>\r\n	<h3>K&iacute;ch thước m&agrave;n h&igrave;nh: 13.6Inch</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Hệ điều h&agrave;nh: Mac OS</h3>\r\n	</li>\r\n</ul>', 1, 69, '2025-06-15 01:55:26', '2025-06-15 01:55:26', NULL),
(304, 'Macbook Air M4', 'macbook-air-m4', 25000000, '250_58274_laptop_apple_macbook_air_m4_midnight_4.jpg', '100%', 1, '<ul>\r\n	<li>\r\n	<h3>Bộ VXL: Apple M4 10 Core CPU</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Bộ nhớ RAM: 16GB</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Ổ cứng: 256GB SSD</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Card m&agrave;n h&igrave;nh: VGA Apple - 8 core GPU</h3>\r\n	</li>\r\n	<li>\r\n	<h3>K&iacute;ch thước m&agrave;n h&igrave;nh: 13.6Inch</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Hệ điều h&agrave;nh: Mac OS</h3>\r\n	</li>\r\n</ul>', 0, 69, '2025-06-15 01:55:54', '2025-06-15 01:55:54', NULL),
(305, 'Macbook Air M2 MC7', 'macbook-air-m2-mc7', 21000000, '250_57584_88469_laptop_apple_macbook_air_mc7w4sa_a_apple_m2_8c_cpu_8c_gpu_16gb_ram_256gb_ssd_13_6_mac_os_starlight_20241.jpg', '100%', 1, '<ul>\r\n	<li>\r\n	<h3>Bộ VXL: Apple M2 8-core CPU</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Bộ nhớ RAM: 16GB</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Ổ cứng: 256GB</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Card m&agrave;n h&igrave;nh: VGA Apple - 8 core GPU</h3>\r\n	</li>\r\n	<li>\r\n	<h3>K&iacute;ch thước m&agrave;n h&igrave;nh: 13.6Inch</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Hệ điều h&agrave;nh: Mac OS</h3>\r\n	</li>\r\n</ul>', 1, 69, '2025-06-15 01:56:26', '2025-06-15 01:56:26', NULL),
(306, 'Vivobook 14 OLED', 'vivobook-14-oled', 15000000, '250_55713_laptop_asus_vivobook_14_oled_a1405za_km264w_thumb.jpg', '100%', 1, '<ul>\r\n	<li>\r\n	<h3>Bộ VXL: Core i5 12500H 2.5GHz</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Bộ nhớ RAM: 16Gb (8Gb onboard + 1 khe rời) DDR4</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Ổ cứng: 512Gb SSD</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Card m&agrave;n h&igrave;nh: VGA onboard - Intel Iris Xe Graphics</h3>\r\n	</li>\r\n	<li>\r\n	<h3>K&iacute;ch thước m&agrave;n h&igrave;nh: 14.0inch 2.8K</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Hệ điều h&agrave;nh: Windows 11 Home</h3>\r\n	</li>\r\n</ul>', 1, 71, '2025-06-15 01:57:05', '2025-06-15 01:57:05', NULL),
(307, 'Vivobook X1504ZA', 'vivobook-x1504za', 14000000, '250_56764_laptop_asus_vivobook_x1504za_nj1039w_8.jpg', '100%', 1, '<h2>Laptop Asus Vivobook X1504ZA-NJ1039W (i7 1255U/ 16GB/ 512GB SSD/ 15.6 inch FHD/ Win11/ Silver)</h2>\r\n\r\n<p>Trong thời đại c&ocirc;ng nghệ hiện đại, việc sở hữu một chiếc<a href=\"https://www.phucanh.vn/laptop.html\" target=\"_blank\"><strong>&nbsp;laptop</strong></a>&nbsp;mạnh mẽ v&agrave; linh hoạt trở n&ecirc;n cần thiết hơn bao giờ hết. Một trong những sản phẩm nổi bật trong ph&acirc;n kh&uacute;c laptop văn ph&ograve;ng hiện nay l&agrave;&nbsp;<a href=\"https://www.phucanh.vn/may-tinh-xach-tay-laptop-asus.html\" target=\"_blank\"><strong>Asus Vivobook</strong></a>&nbsp;X1504ZA-NJ1039W. Với cấu h&igrave;nh mạnh mẽ, thiết kế tinh tế v&agrave; c&aacute;c t&iacute;nh năng hiện đại, chiếc<a href=\"https://www.phucanh.vn/may-tinh-xach-tay-laptop-asus.html\" target=\"_blank\"><strong>&nbsp;laptop ASUS</strong></a>&nbsp;n&agrave;y hứa hẹn sẽ đ&aacute;p ứng tốt nhu cầu sử dụng của người d&ugrave;ng, từ c&ocirc;ng việc h&agrave;ng ng&agrave;y đến giải tr&iacute;.</p>\r\n\r\n<p>&nbsp;</p>', 0, 69, '2025-06-15 01:57:41', '2025-06-15 01:57:41', NULL),
(308, 'Vivobook 14 A1407', 'vivobook-14-a1407', 19000000, '250_57977_laptop_asus_vivobook_14_a1407ca_ly008ws_3.jpg', '100%', 1, '<ul>\r\n	<li>\r\n	<h3>Bộ VXL: Ultra 5 225H 1.7GHz</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Bộ nhớ RAM: 16Gb (Onboard) DDR5</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Ổ cứng: 512Gb SSD</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Card m&agrave;n h&igrave;nh: Intel Arc Graphics</h3>\r\n	</li>\r\n	<li>\r\n	<h3>K&iacute;ch thước m&agrave;n h&igrave;nh: 14.0inch WUXGA</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Hệ điều h&agrave;nh: Windows 11 Home + Microsoft Office Home 2024 + Microsoft 365 Basic 1 year</h3>\r\n	</li>\r\n</ul>', 0, 69, '2025-06-15 01:58:12', '2025-06-15 01:58:12', NULL),
(309, 'ThinkBook 14 G8 IRL', 'thinkbook-14-g8-irl', 19000000, '250_59161_1_2laptop_lenovo_thinkbook_14_g8_irl_21sga03hva.png', '100%', 1, '<h2>LAPTOP LENOVO THINKBOOK 14 G8 IRL 21SGA03HVA &ndash; THIẾT KẾ SANG TRỌNG, HIỆU NĂNG VƯỢT TRỘI</h2>\r\n\r\n<h3>Thiết kế nh&ocirc;m sang trọng, mỏng nhẹ, tinh tế</h3>\r\n\r\n<p>Nếu bạn đang t&igrave;m một chiếc laptop vừa đẹp mắt, vừa ph&ugrave; hợp với m&ocirc;i trường chuy&ecirc;n nghiệp, th&igrave; Lenovo ThinkBook 14 G8 IRL 21SGA03HVA ch&iacute;nh l&agrave; sự lựa chọn l&yacute; tưởng. Sở hữu lớp vỏ hợp kim nh&ocirc;m cao cấp, t&ocirc;ng m&agrave;u x&aacute;m hiện đại, chiếc m&aacute;y mang đến cảm gi&aacute;c chắc chắn m&agrave; vẫn thanh lịch. Ngo&agrave;i ra, thiết kế mỏng nhẹ c&ograve;n gi&uacute;p người d&ugrave;ng dễ d&agrave;ng mang theo trong c&aacute;c chuyến c&ocirc;ng t&aacute;c hay di chuyển giữa c&aacute;c cuộc họp.</p>\r\n\r\n<p><img alt=\"Laptop Lenovo ThinkBook 14 G8 IRL 21SGA03HVA\" src=\"https://phucanhcdn.com/media/lib/07-06-2025/59161_6_1laptop_lenovo_thinkbook_14_g8_irl_21sga03hva.png\" style=\"height:600px; width:1080px\" /></p>\r\n\r\n<h3>Hiệu năng mạnh mẽ từ Intel Core i5 thế hệ mới &amp; RAM DDR5</h3>\r\n\r\n<p>Sức mạnh b&ecirc;n trong của ThinkBook 14 G8 được thể hiện r&otilde; n&eacute;t với bộ vi xử l&yacute; Intel Core 5 210H thế hệ mới &ndash; 8 nh&acirc;n, 12 luồng, tốc độ tăng tốc tối đa l&ecirc;n tới 4.80 GHz. Kết hợp c&ugrave;ng RAM DDR5 16GB, cho tốc độ xử l&yacute; vượt trội, đ&aacute;p ứng tốt cả c&aacute;c t&aacute;c vụ đa nhiệm văn ph&ograve;ng lẫn c&aacute;c phần mềm chuy&ecirc;n dụng. Ngo&agrave;i ra, ổ cứng SSD dung lượng 512GB chuẩn PCIe kh&ocirc;ng chỉ gi&uacute;p truy xuất dữ liệu nhanh m&agrave; c&ograve;n cho ph&eacute;p n&acirc;ng cấp tối đa tới 4TB, ph&ugrave; hợp với nhu cầu lưu trữ lớn trong m&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp.</p>', 1, 72, '2025-06-15 01:58:53', '2025-06-15 01:58:53', NULL),
(310, 'Lenovo V14 G4 IRU', 'lenovo-v14-g4-iru', 13000000, '250_55472_laptop_lenovo_v14_g4_iru_7.jpg', '100%', 1, '<h2>Laptop Lenovo V14 G4 IRU&nbsp;83A000FNVN (i5 13420H/ 16GB/ 512GB SSD/ 14 inch FHD/ NoOS/ Grey/ 2Y)</h2>\r\n\r\n<p><a href=\"https://www.phucanh.vn/laptop.html\" target=\"_blank\"><strong>Laptop</strong>&nbsp;</a>đ&atilde; trở th&agrave;nh một phần kh&ocirc;ng thể thiếu trong cuộc sống h&agrave;ng ng&agrave;y của ch&uacute;ng ta, từ c&ocirc;ng việc văn ph&ograve;ng đến giải tr&iacute;. Một trong những sản phẩm nổi bật trong ph&acirc;n kh&uacute;c laptop văn ph&ograve;ng l&agrave;&nbsp;<strong><a href=\"https://www.phucanh.vn/laptop-lenovo-v-series-s-series.html\" target=\"_blank\">Laptop Lenovo V</a>14 G4 IRU 83A000FNVN</strong>. Với thiết kế hiện đại, hiệu năng mạnh mẽ c&ugrave;ng nhiều t&iacute;nh năng tiện &iacute;ch, sản phẩm n&agrave;y hứa hẹn sẽ đ&aacute;p ứng tốt nhu cầu của người d&ugrave;ng. B&agrave;i viết n&agrave;y sẽ ph&acirc;n t&iacute;ch chi tiết về&nbsp;<a href=\"https://www.phucanh.vn/may-tinh-xach-tay-laptop-lenovo.html\" target=\"_blank\"><strong>laptop Lenovo</strong></a>&nbsp;V14 G4, từ thiết kế, bộ nhớ, hiệu năng, m&agrave;n h&igrave;nh, b&agrave;n ph&iacute;m v&agrave; touchpad, đến c&aacute;c cổng kết nối v&agrave; t&iacute;nh năng đặc biệt.</p>\r\n\r\n<p>&nbsp;<img alt=\"Laptop Lenovo V14 G4 IRU 83A000BGVN \" src=\"https://phucanhcdn.com/media/product/55472_laptop_lenovo_v14_g4_iru_7.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<h3>Thiết kế tối giản</h3>\r\n\r\n<p>Laptop Lenovo V14 G4 IRU&nbsp;83A000FNVN được thiết kế theo phong c&aacute;ch tối giản nhưng vẫn đảm bảo sự sang trọng v&agrave; hiện đại. K&iacute;ch thước 324 x 215 x 19.5 mm v&agrave; trọng lượng chỉ 1,43 kg khiến n&oacute; trở th&agrave;nh một sản phẩm l&yacute; tưởng cho những người thường xuy&ecirc;n di chuyển. M&agrave;u sắc x&aacute;m (Grey) của m&aacute;y kh&ocirc;ng chỉ tạo cảm gi&aacute;c thanh lịch m&agrave; c&ograve;n dễ d&agrave;ng kết hợp với nhiều phong c&aacute;ch thời trang kh&aacute;c nhau.</p>\r\n\r\n<p>Chất liệu ABS được sử dụng trong thiết kế của V14 G4 gi&uacute;p tăng cường độ bền v&agrave; khả năng chống va đập, đồng thời đảm bảo m&aacute;y kh&ocirc;ng bị trầy xước trong qu&aacute; tr&igrave;nh sử dụng h&agrave;ng ng&agrave;y. C&aacute;c g&oacute;c cạnh được bo tr&ograve;n nhẹ nh&agrave;ng, tạo cảm gi&aacute;c dễ chịu khi cầm nắm. Mặt tr&ecirc;n của m&aacute;y c&ograve;n được trang tr&iacute; bằng logo Lenovo nổi bật, tạo điểm nhấn cho thiết kế tổng thể.</p>\r\n\r\n<p>&nbsp;<img alt=\"Laptop Lenovo V14 G4 IRU 83A000BGVN \" src=\"https://phucanhcdn.com/media/product/55472_laptop_lenovo_v14_g4_iru_6.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<h3>Bộ nhớ tối ưu</h3>\r\n\r\n<p>Bộ nhớ của Lenovo V14 G4 IRU&nbsp;83A000FNVN l&agrave; một trong những yếu tố quan trọng gi&uacute;p sản phẩm n&agrave;y nổi bật. Với dung lượng RAM 16GB DDR4, người d&ugrave;ng c&oacute; thể dễ d&agrave;ng chạy nhiều ứng dụng c&ugrave;ng l&uacute;c m&agrave; kh&ocirc;ng gặp phải t&igrave;nh trạng lag. Tốc độ bus RAM l&ecirc;n tới 3200 MHz đảm bảo khả năng truy xuất dữ liệu nhanh ch&oacute;ng v&agrave; hiệu quả.</p>\r\n\r\n<p>Ngo&agrave;i ra, laptop c&ograve;n trang bị một khe cắm RAM rời, cho ph&eacute;p người d&ugrave;ng n&acirc;ng cấp dung lượng RAM tối đa l&ecirc;n tới 24GB. Điều n&agrave;y rất hữu &iacute;ch cho những ai cần l&agrave;m việc với c&aacute;c phần mềm nặng hoặc đa nhiệm nhiều ứng dụng c&ugrave;ng l&uacute;c. Bạn c&oacute; thể thoải m&aacute;i l&agrave;m việc m&agrave; kh&ocirc;ng lo lắng về thiếu hụt bộ nhớ.</p>', 1, 72, '2025-06-15 01:59:29', '2025-06-15 01:59:29', NULL),
(311, 'Dell Inspiron 3530', 'dell-inspiron-3530', 15000000, '250_59405_laptop_dell_inspiron_3530_n5i5101w13.jpg', '100%', 1, '<h2>Laptop Dell Inspiron 3530 N5I5101W1 &ndash; Laptop văn ph&ograve;ng học tập hiệu năng ổn định, m&agrave;n h&igrave;nh mượt 120Hz</h2>\r\n\r\n<p>Hiện đại, tinh gọn v&agrave; thuận tiện cho mọi nhu cầu, chiếc laptop Dell Inspiron 3530 N5I5101W1 l&agrave; lựa chọn l&yacute; tưởng cho học sinh &ndash; sinh vi&ecirc;n, nh&acirc;n vi&ecirc;n văn ph&ograve;ng hoặc những ai đang cần một thiết bị l&agrave;m việc hiệu quả, gi&aacute; th&agrave;nh vừa tầm. Với thiết kế hiện đại, cấu h&igrave;nh mạnh mẽ c&ugrave;ng h&agrave;ng loạt tiện &iacute;ch c&agrave;i sẵn, chiếc laptop n&agrave;y hứa hẹn sẽ l&agrave; trợ thủ đắc lực cho c&ocirc;ng việc v&agrave; học tập h&agrave;ng ng&agrave;y.</p>\r\n\r\n<h3>Thiết kế mỏng nhẹ, độ ho&agrave;n thiện cao &ndash; Ph&ugrave; hợp cho người d&ugrave;ng thường xuy&ecirc;n di chuyển</h3>\r\n\r\n<p>Dell tiếp tục giữ vững phong c&aacute;ch thiết kế đơn giản nhưng cứng c&aacute;p tr&ecirc;n d&ograve;ng Inspiron. Laptop Dell Inspiron 3530 N5I5101W1 được ho&agrave;n thiện với lớp vỏ m&agrave;u đen thanh lịch, k&iacute;ch thước gọn g&agrave;ng v&agrave; trọng lượng nhẹ, gi&uacute;p bạn dễ d&agrave;ng mang theo b&ecirc;n m&igrave;nh đến lớp học hay văn ph&ograve;ng. Bản lề chắc chắn, bố cục b&agrave;n ph&iacute;m hợp l&yacute; v&agrave; h&agrave;nh tr&igrave;nh ph&iacute;m &ecirc;m nhẹ mang lại trải nghiệm g&otilde; thoải m&aacute;i trong thời gian d&agrave;i.</p>\r\n\r\n<p><img alt=\"Laptop Dell Inspiron 3530 N5I5101W1\" src=\"https://phucanhcdn.com/media/lib/07-06-2025/59405_laptop_dell_inspiron_3530_n5i5101w1.jpg\" style=\"height:625px; width:1000px\" /></p>\r\n\r\n<h3>Hiển thị sống động với m&agrave;n h&igrave;nh 120Hz Full HD</h3>\r\n\r\n<p>Một điểm cộng nổi bật tr&ecirc;n mẫu laptop văn ph&ograve;ng tầm trung n&agrave;y ch&iacute;nh l&agrave; m&agrave;n h&igrave;nh 15.6 inch độ ph&acirc;n giải Full HD (1920x1080), t&iacute;ch hợp tần số qu&eacute;t 120Hz &ndash; điều hiếm gặp trong ph&acirc;n kh&uacute;c gi&aacute;. đ&acirc;y l&agrave; lựa chọn l&yacute; tưởng cho người l&agrave;m c&ocirc;ng việc s&aacute;ng tạo nhẹ, thường xuy&ecirc;n l&agrave;m việc với văn bản hoặc giải tr&iacute;, xem phim nhờ khả năng hiển thị mượt m&agrave; v&agrave; sắc n&eacute;t vượt trội.</p>', 1, 73, '2025-06-15 02:00:07', '2025-06-15 02:00:07', NULL),
(312, 'Dell Latitude L3540', 'dell-latitude-l3540', 16000000, '250_55635_laptop_dell_latitude_l3540_71038102_8.jpg', '100%', 1, '<h2>Laptop Dell Latitude L3540 71038100 (i5 1235U/ 8GB/ 512GB SSD/ 15.6 inch FHD/ Win11/ Black/ 1Y)</h2>\r\n\r\n<p>Với mức gi&aacute; hợp l&yacute;,&nbsp;<a href=\"https://www.phucanh.vn/laptop-dell-latitude.html\" target=\"_blank\"><strong>Dell Latitude</strong></a>&nbsp;<strong>L3540&nbsp;</strong>l&agrave; lựa chọn&nbsp;<a href=\"https://www.phucanh.vn/may-tinh-xach-tay-laptop.html\" target=\"_blank\"><strong>m&aacute;y t&iacute;nh x&aacute;ch tay</strong></a>&nbsp;đ&aacute;ng c&acirc;n nhắc cho những ai đang t&igrave;m kiếm một chiếc<a href=\"https://www.phucanh.vn/laptop-hoc-tap-van-phong.html\" target=\"_blank\"><strong>&nbsp;laptop văn ph&ograve;ng/học tập</strong></a>&nbsp;c&oacute; cấu h&igrave;nh mạnh, thiết kế sang trọng v&agrave; bền bỉ.</p>\r\n\r\n<p>&nbsp;<img alt=\"Laptop Dell Latitude L3540 71038100 \" src=\"https://phucanhcdn.com/media/product/55635_laptop_dell_latitude_l3540_71038102_8.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<h3>Thiết kế Đẳng Cấp v&agrave; Bền Bỉ</h3>\r\n\r\n<p><a href=\"https://www.phucanh.vn/may-tinh-xach-tay-laptop-dell.html\" target=\"_blank\"><strong>Laptop Dell</strong>&nbsp;</a>Latitude L3540 71038100 sở hữu thiết kế hiện đại v&agrave; sang trọng với vỏ m&aacute;y bằng nh&ocirc;m cao cấp. Mẫu m&aacute;y n&agrave;y mang đến vẻ ngo&agrave;i chuy&ecirc;n nghiệp, tinh tế ph&ugrave; hợp cho m&ocirc;i trường văn ph&ograve;ng, học tập. Với trọng lượng 1,81 kg v&agrave; độ mỏng 16,69 mm, Latitude L3540 rất di động v&agrave; dễ d&agrave;ng mang theo b&ecirc;n m&igrave;nh. M&aacute;y c&oacute; độ bền cao, đ&aacute;p ứng c&aacute;c ti&ecirc;u chuẩn qu&acirc;n sự MIL-STD-810H, c&oacute; thể chịu đựng được c&aacute;c va chạm, rung động v&agrave; nhiệt độ khắc nghiệt.</p>', 0, 73, '2025-06-15 02:00:42', '2025-06-15 02:00:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vp_users`
--

CREATE TABLE `vp_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vp_users`
--

INSERT INTO `vp_users` (`id`, `email`, `password`, `level`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin@gmail.com', '$2y$10$LRHpw928Td0i3NMWuttwBu2qJzwMe/rN9g3CQCMZ2gsIN3MnfBu5W', 1, '2023-10-27 02:11:41', '2023-10-27 02:11:41', NULL),
(10, 'user@gmail.com', '$2y$10$wIL/6k5smFYLFTBwH1duTub4DZ0qZ02kV7Kq3e6kONubrAgcEPrku', 2, '2024-06-30 07:42:15', '2024-06-30 07:42:15', NULL),
(11, 'user1@gmail.com', '$2y$10$aKjDs9zkHjZps94ptKFqlecpSN3.ETJrvPRYkVfUVHWV6ZbTwqQNC', 2, '2024-09-14 07:39:30', '2024-09-14 07:39:30', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vp_categories`
--
ALTER TABLE `vp_categories`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `vp_comments`
--
ALTER TABLE `vp_comments`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `vp_comments_com_product_foreign` (`com_product`),
  ADD KEY `vp_comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `vp_orders`
--
ALTER TABLE `vp_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vp_products`
--
ALTER TABLE `vp_products`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `vp_products_prod_cate_foreign` (`prod_cate`);

--
-- Indexes for table `vp_users`
--
ALTER TABLE `vp_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vp_categories`
--
ALTER TABLE `vp_categories`
  MODIFY `cate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `vp_comments`
--
ALTER TABLE `vp_comments`
  MODIFY `com_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `vp_orders`
--
ALTER TABLE `vp_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vp_products`
--
ALTER TABLE `vp_products`
  MODIFY `prod_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT for table `vp_users`
--
ALTER TABLE `vp_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vp_comments`
--
ALTER TABLE `vp_comments`
  ADD CONSTRAINT `vp_comments_com_product_foreign` FOREIGN KEY (`com_product`) REFERENCES `vp_products` (`prod_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vp_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vp_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vp_products`
--
ALTER TABLE `vp_products`
  ADD CONSTRAINT `vp_products_prod_cate_foreign` FOREIGN KEY (`prod_cate`) REFERENCES `vp_categories` (`cate_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
