-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 28, 2018 lúc 12:32 PM
-- Phiên bản máy phục vụ: 10.1.29-MariaDB
-- Phiên bản PHP: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hardwaremart`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `activations`
--

DROP TABLE IF EXISTS `activations`;
CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'ilPOiDhmKqsxtUpi7ZgWe5vDYjt2ICJK', 1, '2017-11-12 06:15:56', '2017-11-12 06:15:55', '2017-11-12 06:15:56'),
(2, 1, 'rcp04qHne8oATtrTCwKl9FuckJEarSCb', 1, '2017-11-12 06:20:02', '2017-11-12 06:20:02', '2017-11-12 06:20:02'),
(3, 1, 'AHbwHv4BMq4Z5b7nkdvOlvcOvXnPqMk0', 1, '2017-11-12 06:24:14', '2017-11-12 06:24:14', '2017-11-12 06:24:14'),
(4, 1, 'JqmoT6nwuNXt0D5jape2qCQsEVQgWEqA', 1, '2017-11-12 06:26:26', '2017-11-12 06:26:26', '2017-11-12 06:26:26'),
(5, 1, '1TnyfEnFLs7gdNZXKP2r35tc1hBvcnPg', 1, '2017-11-12 07:22:52', '2017-11-12 07:22:52', '2017-11-12 07:22:52'),
(6, 1, 'QlzbRQWzVJgg01NkGUVewoQhT4qPKTMZ', 1, '2017-11-12 07:23:56', '2017-11-12 07:23:56', '2017-11-12 07:23:56'),
(11, 6, 'Smmf8BjLrwkNo9SOvbnEcqCWyFovmfUe', 1, '2018-01-26 01:57:35', '2018-01-26 01:57:35', '2018-01-26 01:57:35'),
(12, 7, '6XNPqDd8ofeyZ93BU209SFT8smJHyvkc', 1, '2018-01-28 09:36:54', '2018-01-28 09:36:54', '2018-01-28 09:36:54'),
(13, 8, 'l16IOygny5ihmPBxkIZIVkZjCQmH1wfA', 1, '2018-01-28 10:04:24', '2018-01-28 10:04:24', '2018-01-28 10:04:24'),
(14, 9, 'DAf22Uade27AmO71vWsE0n2vGaVSpaQH', 1, '2018-02-04 05:35:55', '2018-02-04 05:35:55', '2018-02-04 05:35:55'),
(15, 10, 'Co4iZIApmazmeiv6Xffo6LA1IiKfFhhm', 1, '2018-02-04 08:06:20', '2018-02-04 08:06:20', '2018-02-04 08:06:20'),
(16, 11, 'hhfQFp2J0A9VcjKN1OjY6sJ01S3NzUVQ', 1, '2018-02-07 03:33:37', '2018-02-07 03:33:37', '2018-02-07 03:33:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `album`
--

DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `count_view` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `article`
--

INSERT INTO `article` (`id`, `fullname`, `alias`, `image`, `intro`, `content`, `description`, `meta_keyword`, `meta_description`, `count_view`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(15, 'Chính sách giao hàng', 'chinh-sach-giao-hang', 'conmochieu-1.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p style=\"text-align:justify\">GỖ SỒI TRẮNG GREENECOLIFE NHẬP KHẨU PH&Acirc;N PHỐI</p>\n\n<p style=\"text-align:justify\">Gỗ sồi trắng Mỹ (American White oak)</p>\n\n<p style=\"text-align:justify\">C&aacute;c t&ecirc;n kh&aacute;c: Northern White Oak, Southern White Oak.</p>\n\n<p style=\"text-align:justify\">C&ocirc;ng ty tnhh Greenecolife l&agrave; một trong những nh&agrave; nhập khẩu v&agrave; ph&acirc;n phối gỗ nguy&ecirc;n liệu nhiều nhất hiện nay tại thị trường Việt Nam.</p>\n\n<p style=\"text-align:justify\">M&agrave;u sắc v&agrave; h&igrave;nh dạng của gỗ sồi trắng Mỹ tương tự như gỗ sồi trắng Ch&acirc;u &Acirc;u. D&aacute;t gỗ m&agrave;u nhạt, t&acirc;m gỗ từ n&acirc;u nhạt cho đến n&acirc;u sậm. Đa số gỗ sồi trắng c&oacute; v&acirc;n gỗ thẳng, mặt gỗ từ trung b&igrave;nh đến th&ocirc; với c&aacute;c tia gỗ d&agrave;i hơn sồi đỏ. V&igrave; vậy, sồi trắng c&oacute; nhiều đốm h&igrave;nh hơn.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/go-soi-trang-phan-phoi-2.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: V&acirc;n gỗ sồi trắng Mỹ.</em></p>\n\n<p style=\"text-align:justify\">Gỗ sồi trắng greenecolife, nguy&ecirc;n liệu gỗ nhập khẩu từ Mỹ c&oacute; c&aacute;c ph&acirc;n loại:</p>\n\n<p style=\"text-align:justify\">+ Loại 1C</p>\n\n<p style=\"text-align:justify\">+ Loại 2C</p>\n\n<p style=\"text-align:justify\">&ndash; Quy c&aacute;ch đ&oacute;ng g&oacute;i nguy&ecirc;n liệu gỗ nhập khẩu từ Mỹ:</p>\n\n<p style=\"text-align:justify\">+ Ki&ecirc;̣n ngắn: 4 &rarr; 6 feet.</p>\n\n<p style=\"text-align:justify\">+ Ki&ecirc;̣n dài: 10 &rarr; 16 feet.</p>\n\n<p style=\"text-align:justify\">&ndash; Chi&ecirc;̀u r&ocirc;̣ng thanh gỗ: từ 3&Prime;= 75 mm đ&ecirc;́n 12&Prime;= 300 mm.</p>\n\n<p style=\"text-align:justify\">&ndash; Chi&ecirc;̀u dài thanh gỗ: từ 4&prime; = 1,2 m đ&ecirc;́n 16&rsquo;= 4,8 m.</p>\n\n<p style=\"text-align:justify\">&ndash; Độ ẩm của gỗ đạt từ 8 đến 12%.</p>\n\n<p style=\"text-align:justify\">Hiện tr&ecirc;n thị trường Mỹ c&oacute; rất nhiều nh&agrave; cung cấp gỗ. V&igrave; vậy m&agrave; cũng sẽ c&oacute; nhiều quy c&aacute;ch đ&oacute;ng g&oacute;i kh&aacute;c nhau, đa dạng t&ugrave;y thuộc v&agrave;o mỗi nh&agrave; cung cấp.</p>\n\n<p style=\"text-align:justify\">Tham khảo th&ecirc;m c&aacute;c sản phẩm gỗ sồi trắng Greenecolife nhập khẩu</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/go-soi-trang-phan-phoi-3.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: &nbsp;Gỗ sồi trắng 4/4&Prime;.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/go-soi-trang-phan-phoi-1.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: Gỗ sồi trắng 5/4&Prime;.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/go-soi-trang-phan-phoi-5.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: Gỗ sồi trắng 6/4&Prime;.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/go-soi-trang-phan-phoi-4.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: Gỗ sồi trắng 8/4&Prime;.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:justify\">Đặc t&iacute;nh ứng dụng: Gỗ chịu m&aacute;y tốt, độ b&aacute;m đinh v&agrave; ốc v&iacute;t tốt d&ugrave; phải khoan gỗ trước khi đ&oacute;ng đinh v&agrave; ốc. V&igrave; gỗ phản ứng với sắt, người thao t&aacute;c n&ecirc;n d&ugrave;ng đinh mạ kẽm. Độ b&aacute;m d&iacute;nh của gỗ thay đổi nhưng gỗ c&oacute; thể được nhuộm m&agrave;u v&agrave; đ&aacute;nh b&oacute;ng để th&agrave;nh th&agrave;nh phẩm tốt. Gỗ kh&ocirc; chậm n&ecirc;n người thao t&aacute;c cẩn thận để tr&aacute;nh nguy cơ rạn gỗ. V&igrave; độ co r&uacute;t lớn n&ecirc;n dễ biến dạng khi gỗ kh&ocirc;.</p>\n\n<p style=\"text-align:justify\">Đặc t&iacute;nh vật l&yacute;: Gỗ cứng v&agrave; nặng, độ chịu lực uốn xoắn v&agrave; lực n&eacute;n trung b&igrave;nh, độ chắc thấp nhưng rất dễ uốn c&ocirc;ng bằng hơi nước. Gỗ miền Nam lớn hơn với c&aacute;c v&ograve;ng tuổi gỗ rộng, c&oacute; khuynh hướng cứng hơn v&agrave; nặng hơn.</p>\n\n<p style=\"text-align:justify\">T&acirc;m gỗ c&oacute; khả năng kh&aacute;ng s&acirc;u, cực kỳ kh&ocirc;ng thấm chất bảo quản, d&aacute;t gỗ tương đối kh&ocirc;ng thấm chất n&agrave;y.</p>\n\n<p style=\"text-align:justify\">C&ocirc;ng dụng ch&iacute;nh của nguy&ecirc;n liệu gỗ sồi Mỹ nhập khẩu thường được sử dụng để l&agrave;m: đồ gỗ, v&aacute;n s&agrave;n, gỗ chạm kiến tr&uacute;c, gỗ chạm ngoại thất, gờ trang tr&iacute;, cửa c&aacute;i, tủ bếp, v&aacute;n l&oacute;t, t&agrave; vẹt đường sắt, cầu gỗ, v&aacute;n đ&oacute;ng th&ugrave;ng, v&agrave; hộp đựng nữ trang, &hellip;</p>\n\n<p style=\"text-align:justify\">M&agrave;u sắc, mặt gỗ, đặc t&iacute;nh v&agrave; đặc điểm của gỗ sồi trắng c&oacute; thể thay đổi t&ugrave;y v&ugrave;ng trồng gỗ. V&igrave; vậy, người ti&ecirc;u d&ugrave;ng cũng như c&aacute;c nh&agrave; chế biến gỗ chuy&ecirc;n nghiệp n&ecirc;n l&agrave;m việc chặc chẽ với đầu mối cung cấp gỗ để đảm bảo rằng loại gỗ được đặt h&agrave;ng th&iacute;ch hợp cho những nhu cầu cụ thể của họ.</p>\n\n<p style=\"text-align:justify\">Hiện nay, với nguồn gỗ tự nhi&ecirc;n ng&agrave;y c&agrave;ng khan hiếm, gi&aacute; gỗ nguy&ecirc;n liệu tự nhi&ecirc;n ng&agrave;y c&agrave;ng bị đẩy l&ecirc;n cao, c&ugrave;ng với rất nhiều c&aacute;c c&ocirc;ng ty nhập khẩu gỗ h&igrave;nh th&agrave;nh tr&ecirc;n thị trường, chất lượng gỗ cũng kh&aacute;c nhau, &nbsp;th&igrave; Greenecolife Việt Nam sẽ l&agrave; sự lựa chọn ho&agrave;n hảo về cung cấp gỗ nguy&ecirc;n liệu d&agrave;nh cho qu&yacute; xưởng sản xuất gỗ, qu&yacute; c&ocirc;ng ty thiết kế nội thất với chất lượng gỗ nguy&ecirc;n liệu tốt v&agrave; gi&aacute; cả phải chăng.</p>', '', '', '', 30, 1, 1, '2018-01-12 10:01:42', '2018-02-28 11:29:59'),
(17, 'Đổi trả bảo hành', 'doi-tra-bao-hanh', 'conmochieu-6.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p style=\"text-align:justify\">GỖ &Oacute;C CH&Oacute; 8/4&rdquo; 2C (WALNUT 8/4&rdquo; 2C)</p>\n\n<p style=\"text-align:justify\">Gỗ &oacute;c ch&oacute; 8/4&Prime; 2c Mỹ (American Walnut)</p>\n\n<p style=\"text-align:justify\">C&aacute;c t&ecirc;n kh&aacute;c: Black Walnut, Americam Walnut.</p>\n\n<p style=\"text-align:justify\">Nguy&ecirc;n cont gỗ vừa về kho Greenecolife Việt Nam s&aacute;ng nay, nhưng chưa kịp v&ocirc; kho th&igrave; đ&atilde; được xuất đi hết</p>\n\n<p style=\"text-align:justify\">Gỗ nhập khẩu nguy&ecirc;n liệu Mỹ với quy c&aacute;ch 8/4&rdquo; (50.8 mm) loại 2, l&agrave; những quy c&aacute;ch phổ biến được c&ocirc;ng ty tnhh Greenecolife nhập khẩu v&agrave; ph&acirc;n phối nhiều nhất hiện nay tại thị trường Việt Nam.</p>\n\n<p style=\"text-align:justify\">&ndash; Chi&ecirc;̀u r&ocirc;̣ng thanh gỗ: từ 3&Prime;= 75 mm đ&ecirc;́n 12&Prime;= 300 mm.</p>\n\n<p style=\"text-align:justify\">&ndash; Chi&ecirc;̀u dài thanh gỗ: từ 4&prime; = 1,2 m đ&ecirc;́n 16&rsquo;= 4,8 m.</p>\n\n<p style=\"text-align:justify\">&ndash; Độ ẩm của gỗ đạt từ 8 đến 12%.</p>\n\n<p style=\"text-align:justify\">Gỗ &oacute;c ch&oacute; 8/4&Prime;, gỗ nhập khẩu nguy&ecirc;n liệu từ Mỹ c&oacute; c&aacute;c ph&acirc;n loại:</p>\n\n<p style=\"text-align:justify\">+ Loại FAS</p>\n\n<p style=\"text-align:justify\">+ Loại 1C</p>\n\n<p style=\"text-align:justify\">+ Loại 2C</p>\n\n<p style=\"text-align:justify\">+ Loại 3C</p>\n\n<p style=\"text-align:justify\">&ndash; Quy c&aacute;ch đ&oacute;ng g&oacute;i nguy&ecirc;n liệu gỗ nhập khẩu từ Mỹ:</p>\n\n<p style=\"text-align:justify\">+ Ki&ecirc;̣n ngắn: 4 &rarr; 6 feet.</p>\n\n<p style=\"text-align:justify\">+ Ki&ecirc;̣n dài: 10 &rarr; 16 feet.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/go-oc-cho-walnut-1.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: Quy c&aacute;ch đ&oacute;ng g&oacute;i nguy&ecirc;n liệu gỗ &oacute;c ch&oacute; 8/4&Prime;.</em></p>\n\n<p style=\"text-align:justify\">Hiện tr&ecirc;n thị trường Mỹ c&oacute; rất nhiều nh&agrave; cung cấp gỗ nguy&ecirc;n liệu. V&igrave; vậy m&agrave; cũng sẽ c&oacute; nhiều quy c&aacute;ch đ&oacute;ng g&oacute;i kh&aacute;c nhau, đa dạng t&ugrave;y thuộc v&agrave;o mỗi nh&agrave; cung cấp gỗ.</p>\n\n<p style=\"text-align:justify\">Tham khảo th&ecirc;m c&aacute;c sản phẩm Greenecolife Việt Nam nhập khẩu: nguy&ecirc;n liệu gỗ &oacute;c ch&oacute; kh&aacute;c</p>\n\n<p style=\"text-align:justify\">Gỗ &oacute;c ch&oacute; 4/4&Prime;.</p>\n\n<p style=\"text-align:justify\">Gỗ &oacute;c ch&oacute; 5/4&Prime;.</p>\n\n<p style=\"text-align:justify\">Gỗ &oacute;c ch&oacute; 6/4&Prime;.</p>\n\n<p style=\"text-align:justify\">D&aacute;t gỗ m&agrave;u trắng kem, t&acirc;m gỗ m&agrave;u từ n&acirc;u nhạt đến n&acirc;u socola, thường &aacute;nh t&iacute;m đỏ v&agrave; c&oacute; sọc đỏ hơn. &Oacute;c ch&oacute; c&oacute; thể được sấy hơi nước để l&agrave;m sậm m&agrave;u d&aacute;t gỗ hoặc kh&ocirc;ng sấy hơi nước. Nh&igrave;n chung, v&acirc;n gỗ thẳng nhưng đ&ocirc;i khi uốn s&oacute;ng hoặc cuộn xo&aacute;y tạo th&agrave;nh những đốm h&igrave;nh hấp dẫn v&agrave; đẹp nhất.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/go-oc-cho-walnut-2.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: V&acirc;n &amp; m&agrave;u sắc gỗ &oacute;c ch&oacute; Mỹ.</em></p>\n\n<p style=\"text-align:justify\">Đặc t&iacute;nh ứng dụng: &Oacute;c ch&oacute; dễ xử l&yacute; cả bằng dụng cụ cầm tay lẫn m&aacute;y m&oacute;c. Gỗ b&aacute;m đinh, &oacute;c v&iacute;t v&agrave; d&iacute;nh keo tốt, giữ sơn, m&agrave;u nhuộm rất tốt v&agrave; c&oacute; thể được đ&aacute;nh b&oacute;ng để th&agrave;nh th&agrave;nh phẩm tuyệt vời. Gỗ kh&ocirc; chậm v&agrave; người thao t&aacute;c cẩn thận trọng trong qu&aacute; tr&igrave;nh sấy kh&ocirc; để tr&aacute;ch việc gỗ bị xuống cấp. Gỗ ổn định tốt về k&iacute;ch thước.<br />\nĐặc t&iacute;nh vật l&yacute;: &Oacute;c cho l&agrave; loại gỗ rất cứng, mật độ hạt gỗ trung b&igrave;nh, sức chịu lực uốn xoắn v&agrave; lực n&eacute;n trung b&igrave;nh, độ chắc thấp, khả năng uốn cong bằng hơi nước tốt.</p>\n\n<p style=\"text-align:justify\">Độ kh&aacute;ng s&acirc;u ở t&acirc;m gỗ rất tốt, l&agrave; một trong những loại gỗ c&oacute; độ bền cao nhất ngay cả l&uacute;c ở trong những điều kiện dễ hư mục. D&aacute;t gỗ dễ bị c&aacute;c loại mọt tấn c&ocirc;ng.<br />\nC&ocirc;ng dụng ch&iacute;nh của nguy&ecirc;n liệu gỗ &oacute;c ch&oacute; Mỹ nhập khẩu thường được sử dụng để l&agrave;m: đồ gỗ, tủ, vật kiến tr&uacute;c nội thất, gỗ chạm cao cấp,cửa c&aacute;i, v&aacute;n s&agrave;n v&agrave; v&aacute;n l&oacute;t. Th&iacute;ch hợp để tạo sự tương phản với những loại gỗ c&oacute; m&agrave;u nhạt hơn.</p>\n\n<p style=\"text-align:justify\">Một số h&igrave;nh ảnh Cont gỗ &oacute;c ch&oacute; 8/4&Prime; 2C vừa về :</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/go-oc-cho-walnut-3.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh 1: Gỗ &oacute;c ch&oacute; Mỹ 8/4&Prime; 2C.</em></p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/go-oc-cho-walnut-5.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh 2: Gỗ &oacute;c ch&oacute; Mỹ 8/4&Prime; loại 2C.</em></p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/go-oc-cho-walnut-4.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh 3: Gỗ &oacute;c ch&oacute; Mỹ 8/4&Prime; loại 2C tr&ecirc;n cont.</em></p>\n\n<p style=\"text-align:justify\">Gỗ l&agrave; một nguy&ecirc;n liệu tự nhi&ecirc;n v&agrave; do ch&iacute;nh bản chất của n&oacute; n&ecirc;n c&oacute; c&aacute;c đặc điểm v&agrave; khuyết điểm ta cần nắm r&otilde;. V&igrave; vậy, người ti&ecirc;u d&ugrave;ng cũng như c&aacute;c nh&agrave; chế biến gỗ chuy&ecirc;n nghiệp n&ecirc;n l&agrave;m việc chặc chẽ với đầu mối cung cấp gỗ để đảm bảo rằng loại gỗ được đặt h&agrave;ng th&iacute;ch hợp cho những nhu cầu cụ thể của họ.</p>\n\n<p style=\"text-align:justify\">Hiện nay, với nguồn gỗ tự nhi&ecirc;n ng&agrave;y c&agrave;ng khan hiếm, gi&aacute; gỗ nguy&ecirc;n liệu tự nhi&ecirc;n ng&agrave;y c&agrave;ng bị đẩy l&ecirc;n cao, c&ugrave;ng với rất nhiều c&aacute;c c&ocirc;ng ty nhập khẩu gỗ h&igrave;nh th&agrave;nh tr&ecirc;n thị trường, chất lượng gỗ cũng kh&aacute;c nhau, &nbsp;th&igrave; Greenecolife Việt Nam sẽ l&agrave; sự lựa chọn ho&agrave;n hảo về cung cấp gỗ nguy&ecirc;n liệu d&agrave;nh cho qu&yacute; xưởng sản xuất gỗ, qu&yacute; c&ocirc;ng ty thiết kế nội thất với chất lượng gỗ nguy&ecirc;n liệu tốt v&agrave; gi&aacute; cả phải chăng.</p>', '', '', '', 1, 3, 1, '2018-01-12 10:11:22', '2018-02-28 08:05:39'),
(18, 'Hướng dẫn mua hàng', 'huong-dan-mua-hang', 'conmochieu-1.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p style=\"text-align:justify\">Gỗ Sồi Trắng Mỹ (American White Oak) Nguy&ecirc;n Liệu Nhập Khẩu Mỹ</p>\n\n<p style=\"text-align:justify\">Gỗ Sồi trắng Mỹ (American White Oak, Northern White Oak, Southern White Oak) c&oacute; mặt ở khắp miền Đ&ocirc;ng nước Mỹ. Sồi trắng gồm nhiều loại nhưng chỉ c&oacute; t&aacute;m loại đựơc thương mại h&oacute;a.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/go-soi-trang-my-1.jpeg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: C&acirc;y gỗ sồi trắng Mỹ.</em></p>\n\n<p style=\"text-align:justify\">M&agrave;u sắc v&agrave; h&igrave;nh d&aacute;ng của sồi Mỹ tương tự như sồi Ch&acirc;u &Acirc;u. D&aacute;t gỗ m&agrave;u nhạt, t&acirc;m gỗ từ n&acirc;u nhạt đến n&acirc;u sậm. Đa số sồi trắng c&oacute; v&acirc;n gỗ thẳng, mặt gỗ từ trung b&igrave;nh đến th&ocirc; với c&aacute;c tia gỗ d&agrave;i hơn sồi đỏ. V&igrave; vậy, sồi trắng c&oacute; nhiều đốm h&igrave;nh hơn.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/go-soi-trang-my-2.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: C&aacute;c kiện nguy&ecirc;n liệu gỗ sồi trắng 4/4&Prime;.&nbsp;</em></p>\n\n<p style=\"text-align:justify\">Tham khảo th&ecirc;m quy c&aacute;c gỗ sồi trắng Mỹ, Greenecolife Việt Nam nhập khẩu:</p>\n\n<p style=\"text-align:justify\">Gỗ sồi trắng 4/4&Prime;.</p>\n\n<p style=\"text-align:justify\">Gỗ sồi trắng 5/4&Prime;.</p>\n\n<p style=\"text-align:justify\">Gỗ sồi trắng 6/4&Prime;.</p>\n\n<p style=\"text-align:justify\">Gỗ sồi trắng 8/4&Prime;.</p>\n\n<p style=\"text-align:justify\">Đặc t&iacute;nh ứng dụng &amp; vật l&yacute;: Gỗ chịu m&aacute;y tốt, độ b&aacute;m đinh v&agrave; ốc v&iacute;t tốt, d&ugrave; phải khoan gỗ trước khi đ&oacute;ng đinh v&agrave; ốc. Gỗ phản ứng với sắt do đ&oacute; người thao t&aacute;c n&ecirc;n d&ugrave;ng đinh mạ kẽm. Độ b&aacute;m d&iacute;nh của gỗ thay đổi nhưng gỗ c&oacute; thể được nhuộm m&agrave;u v&agrave; đ&aacute;nh b&oacute;ng để trở th&agrave;nh th&agrave;nh phẩm tốt. Gỗ kh&ocirc; chậm n&ecirc;n người thao t&aacute;c cẩn thận để tr&aacute;nh nguy cơ rạn gỗ. V&igrave; độ co r&uacute;t lớn n&ecirc;n gỗ dễ biến dạng khi kh&ocirc;.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/go-soi-trang-my-3.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: C&aacute;c th&ocirc;ng số, chỉ số của gỗ sồi trắng Mỹ.</em></p>\n\n<p style=\"text-align:justify\">Gỗ cứng v&agrave; nặng, độ chịu lực uốn xoắn v&agrave; lực n&eacute;n trung b&igrave;nh, độ chắc thấp nhưng rất dễ uốn cong bằng hơi nước. Sồi trắng miền nam lớn nhanh hơn với c&aacute;c v&ograve;ng tuổi gỗ rộng, c&oacute; khuynh hướng cứng v&agrave; nặng hơn.</p>\n\n<p style=\"text-align:justify\">Độ bền: T&acirc;m gỗ c&oacute; khả năng kh&aacute;ng s&acirc;u, cực kỳ kh&ocirc;ng thấm chất bảo quản, d&aacute;t gỗ tương đối kh&ocirc;ng thấm chất n&agrave;y.</p>\n\n<p style=\"text-align:justify\">C&ocirc;ng dụng ch&iacute;nh: Đồ gỗ, v&aacute;n s&agrave;n, gỗ chạm kiến tr&uacute;c, gỗ chạm ngoại thất, gờ trang tr&iacute;, cửa c&aacute;i, tủ bếp, v&aacute;n l&oacute;t, t&agrave; vẹt đường sắt, cầu gỗ, v&aacute;n đ&oacute;ng th&ugrave;ng, quan t&agrave;i v&agrave; hộp đựng nữ trang.</p>\n\n<p style=\"text-align:justify\">M&agrave;u sắc, mặt gỗ, đặc t&iacute;nh v&agrave; đặc điểm của Sồi trắng c&oacute; thể thay đổi t&ugrave;y thuộc v&ugrave;ng trồng gỗ. V&igrave; vậy người ti&ecirc;u d&ugrave;ng cũng như c&aacute;c nh&agrave; chế biến gỗ chuy&ecirc;n nghiệp n&ecirc;n l&agrave;m việc chặt chẽ với đầu mối cung cấp gỗ để đảm bảo l&agrave; loại gỗ được đặt h&agrave;ng th&iacute;ch hợp cho những nhu cầu cụ thể của họ. Sồi trắng miền Bắc v&agrave; Sồi trắng miền Nam c&oacute; thể được b&agrave;y b&aacute;n ri&ecirc;ng biệt.</p>\n\n<p style=\"text-align:justify\">Một số h&igrave;nh ảnh sản phẩm nội thất bằng gỗ sồi trắng Mỹ:Những th&ocirc;ng tin kh&aacute;c</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/go-soi-trang-my-4.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: bộ b&agrave;n ghế gỗ sồi trắng Mỹ.</em></p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/go-soi-trang-my-5.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: Nội thất ph&ograve;ng kh&aacute;ch gỗ sồi trắng Mỹ.</em></p>\n\n<p style=\"text-align:justify\">M&agrave;u sồi trắng thường rất đồng đều giữa c&aacute;c loại miền Bắc Mỹ đến miền Nam Mỹ. Một số khu vực v&ugrave;ng n&uacute;i Appalachian sản xuất c&aacute;c biến thể c&oacute; đốm s&acirc;u cao v&agrave; được b&aacute;n theo loại c&oacute; đốm s&acirc;u tố (Sound Wormy). C&aacute;c nguy&ecirc;n tắc của NHLA chấp nhận kh&ocirc;ng giới hạn d&aacute;t gỗ, nhưng thường được ph&acirc;n loại với tối thiểu một mặt t&acirc;m gỗ để xuất khẩu. N&ecirc;n tham khảo nh&agrave; cung cấp vể quy chuẩn xếp hạng của họ cho d&aacute;t gỗ.</p>\n\n<p style=\"text-align:justify\">Sồi trắng Mỹ được sử dụng rộng r&atilde;i tr&ecirc;n thế giới v&agrave; bổ sung cho gỗ sồi ch&acirc;u &Acirc;u, m&agrave;u sắc nhất qu&aacute;n v&agrave; khối lượng sản xuất ph&aacute;ch gỗ vạt g&oacute;c vu&ocirc;ng lớn gi&uacute;p sồi trắng Mỹ l&agrave; chọn lựa h&agrave;ng đầu cho nhiều nh&agrave; sản xuất đồ nội thất, v&aacute;n s&agrave;n v&agrave; đồ gỗ trang tr&iacute;.</p>\n\n<p style=\"text-align:justify\">Hiện nay, với nguồn gỗ tự nhi&ecirc;n ng&agrave;y c&agrave;ng khan hiếm, gi&aacute; gỗ nguy&ecirc;n liệu tự nhi&ecirc;n ng&agrave;y c&agrave;ng bị đẩy l&ecirc;n cao, c&ugrave;ng với rất nhiều c&aacute;c c&ocirc;ng ty nhập khẩu gỗ h&igrave;nh th&agrave;nh tr&ecirc;n thị trường, chất lượng gỗ cũng kh&aacute;c nhau, &nbsp;th&igrave; Greenecolife Việt Nam sẽ l&agrave; sự lựa chọn ho&agrave;n hảo về cung cấp gỗ nguy&ecirc;n liệu d&agrave;nh cho qu&yacute; xưởng sản xuất gỗ, qu&yacute; c&ocirc;ng ty thiết kế nội thất với chất lượng gỗ nguy&ecirc;n liệu tốt v&agrave; gi&aacute; cả phải chăng.</p>', '', '', '', 4, 4, 1, '2018-01-12 10:15:38', '2018-02-28 08:05:44'),
(19, 'Quy chế hoạt động', 'quy-che-hoat-dong', 'conmochieu-2.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>Với xu hướng hiện nay th&igrave; nguy&ecirc;n liệu gỗ Sồi , gỗ &oacute;c ch&oacute; nhập khẩu để thiết kế đồ nội thất đang được thịnh h&agrave;nh, v&igrave; đơn giản gỗ Sồi đ&atilde; c&oacute; vẻ đẹp ri&ecirc;ng của n&oacute;, n&ecirc;n chỉ cần biết c&aacute;ch phối v&agrave; chọn lựa mẫu m&atilde; đảm bảo sẽ mang tới kh&ocirc;ng gian ho&agrave;n hảo. Gỗ sồi chất lượng cao c&oacute; xuất xứ từ Bắc Mỹ, mang m&agrave;u sắc v&agrave;ng lợt thuộc t&ocirc;ng m&agrave;u s&aacute;ng nhẹ rất dễ phối với mọi đồ nội thất trong nh&agrave;. C&aacute;c sản phẩm được sản xuất từ Gỗ sồi chất lượng cao lu&ocirc;n tạo cảm gi&aacute;c cho ng&ocirc;i nh&agrave; h&agrave;i h&ograve;a với &aacute;nh s&aacute;ng tự nhi&ecirc;n, trẻ trung, ấm c&uacute;ng v&agrave; hiện đại.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/go-soi-chat-luong-cao-1.jpg\" /></p>\n\n<p>C&aacute;c sản phẩm nội thất được l&agrave;m bằng Gỗ sồi chất lượng cao lu&ocirc;n tạo cho căn ph&ograve;ng h&agrave;i h&ograve;a với &aacute;nh s&aacute;ng tự nhi&ecirc;n, trẻ trung, ấm c&uacute;ng v&agrave; hiện đại&hellip; Đặc biệt hơn nữa l&agrave; loại gỗ n&agrave;y c&oacute; thể tr&aacute;nh được muỗi v&agrave; c&ocirc;n tr&ugrave;ng, kh&ocirc;ng bị mối mọt ph&aacute; hoại. gỗ sồi c&oacute; độ chống thấm rất tốt, đường v&acirc;n gỗ đa dạng v&agrave; đẹp hơn, v&igrave; vậy gỗ sồi rất th&iacute;ch hợp cho việc sản xuất đồ gỗ với những v&acirc;n hoa đẹp. Gỗ sồi cứng v&agrave; nặng, chịu lực n&eacute;n tốt, t&acirc;m gỗ c&oacute; khả năng kh&aacute;ng s&acirc;u, cực kỳ kh&ocirc;ng thấm chất bảo quản.</p>\n\n<p>Gỗ sồi c&oacute; xu hướng phản ứng với sắt v&agrave; điều n&agrave;y c&oacute; thể nhanh ch&oacute;ng l&agrave;m hư hỏng một phần của đồ nội thất, mặc d&ugrave; điều n&agrave;y c&oacute; thể tr&aacute;nh được bằng c&aacute;ch sử dụng đinh v&iacute;t mạ kẽm. Hầu hết những đồ nội thất gỗ &oacute;c ch&oacute; b&aacute;n sẵn ng&agrave;y nay đều sử dụng đinh ghim, ốc v&iacute;t, một số nơi c&ograve;n sử dụng ch&uacute;ng ngay cả ở những phần quan trọng. Những h&atilde;ng nội thất uy t&iacute;n kh&ocirc;ng sử dụng đinh ghim hay ốc v&iacute;t ở tất cả mọi chỗ, họ sử dụng c&aacute;c mộng gỗ một c&aacute;ch ch&iacute;nh x&aacute;c để r&aacute;p c&aacute;c bộ phận của đồ nội thất lại với nhau, đinh ghim v&agrave; ốc v&iacute;t chỉ để gia cố th&ecirc;m.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/go-soi-chat-luong-cao-2.jpg\" /></p>\n\n<p>Nội thất gỗ sồi chất lượng cao c&oacute; thể sử dụng từ 15 năm đến 20 năm t&ugrave;y theo qu&aacute; tr&igrave;nh sử dụng v&agrave; c&aacute;ch bảo quản của người d&ugrave;ng. &Ocirc;ng cha ta c&oacute; c&acirc;u &ldquo;của bền tại người&rdquo; n&ecirc;n nếu muốn sử dụng đồ nội thất gỗ sồi nhập khẩu cao cấp hay bất cứ loại gỗ n&agrave;o kh&aacute;c d&agrave;i l&acirc;u đ&ograve;i hỏi gia chủ cần phải sử dụng hợp l&yacute;, biết c&aacute;ch bảo quản v&agrave; vệ sinh thường xuy&ecirc;n.</p>\n\n<p>Thuộc v&agrave;o d&ograve;ng gỗ tự nhi&ecirc;n n&ecirc;n nội thất Gỗ sồi chất lượng cao, nội thất gỗ &oacute;c ch&oacute; chất lượng kh&ocirc;ng thể tr&aacute;nh khỏi được việc thấm nước, nấm mốc, hay mối tấn c&ocirc;ng&hellip; khi ở trong điều kiện m&ocirc;i trường kh&ocirc;ng l&yacute; tưởng l&acirc;u ng&agrave;y.</p>\n\n<p>Ch&iacute;nh v&igrave; thế, khi lựa chọn nội thất Gỗ sồi chất lượng cao th&igrave; bạn n&ecirc;n ch&uacute; &yacute; vệ sinh thường xuy&ecirc;n v&agrave; phun thuốc chống mối để c&oacute; thể sử dụng sản phẩm l&acirc;u d&agrave;i.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/go-soi-chat-luong-cao-3.jpg\" /></p>\n\n<p>L&agrave; một đơn vị c&oacute; bề d&agrave;y uy t&iacute;n, c&oacute; nhiều kinh nghiệm hoạt động trong lĩnh vực tư vấn thiết kế v&agrave; thi c&ocirc;ng kiến tr&uacute;c nội ngoại thất c&ocirc;ng tr&igrave;nh từ nhiều năm nay với thế mạnh chủ lực l&agrave; Tư vấn thiết kế v&agrave; Thi c&ocirc;ng c&aacute;c sản phẩm nội thất gỗ &oacute;c ch&oacute; cao cấp nhập khẩu, nội thất gỗ tần b&igrave; chất lượng. Ngo&agrave;i ra ch&uacute;ng t&ocirc;i c&ograve;n &ldquo;Cung cấp mua b&aacute;n gỗ Sồi nhập khẩu, gỗ nguy&ecirc;n liệu, bao gồm gỗ Tần B&igrave;, gỗ &Oacute;c Ch&oacute;, gỗ Sồi, c&aacute;c gỗ loại nh&oacute;m 4, gỗ được nhập từ Mỹ v&agrave; Ch&acirc;u &Acirc;u ( Li&ecirc;n hệ để c&oacute; gi&aacute; tốt nhất ) 0902 90 74 75&rdquo;.</p>', '', '', '', 6, 5, 1, '2018-01-12 10:17:58', '2018-02-28 07:23:29'),
(20, 'Giới thiệu', 'gioi-thieu', 'conmochieu-3.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p style=\"text-align:justify\">Nh&agrave; thiết kế Joachim v&agrave; Erik theo đuổi dự &aacute;n thiết kế b&agrave;n ghế ph&ograve;ng ăn, kệ tủ gỗ sồi tại Việt Nam trong suốt nhiều năm.</p>\n\n<p style=\"text-align:justify\">Gỗ sồi vốn được ưa chuộng trong ng&agrave;nh c&ocirc;ng nghiệp nội thất nhờ độ bền vững, vẻ đẹp l&acirc;u d&agrave;i với thời gian. C&aacute;c bộ phận l&agrave;m bằng gỗ sồi l&agrave; phần cứng c&aacute;p nhất, c&oacute; thể chịu đựng mối mọt v&agrave; nấm mốc qua h&agrave;ng ngh&igrave;n năm. Nhờ lợi thế n&agrave;y m&agrave; sồi được ứng dụng rộng r&atilde;i trong nhiều phong c&aacute;ch nội thất kh&aacute;c nhau. Đ&acirc;y cũng l&agrave; l&yacute; do để nh&agrave; thiết kế người Ph&aacute;p Joachim Poirier chọn sồi l&agrave;m nguy&ecirc;n liệu bắt đầu dự &aacute;n s&aacute;ng tạo của m&igrave;nh tại si&ecirc;u thị nội thất v&agrave; trang tr&iacute; UMA (Việt Nam).</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/bo-suu-tap-1.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: Erik (tr&aacute;i) v&agrave; Joachim (phải) l&agrave; 2 nh&agrave; thiết kế nội thất trẻ tuổi v&agrave; t&agrave;i năng.</em></p>\n\n<p style=\"text-align:justify\">Điểm nhấn của dự &aacute;n Cobra ch&iacute;nh l&agrave; bộ b&agrave;n ghế ph&ograve;ng ăn v&agrave; kệ tủ l&agrave;m từ gỗ sồi chắc chắn, thiết kế kh&aacute;c biệt.</p>\n\n<p style=\"text-align:justify\">Joachim tận dụng tối đa đường n&eacute;t tự nhi&ecirc;n của từng thớ gỗ khi thiết kế, nhằm tăng cường vẻ đẹp tự nhi&ecirc;n cho bộ sưu tập Cobra. Lấy cảm hứng từ phong c&aacute;ch v&ugrave;ng Scandinavian, Joachim thổi th&ecirc;m hơi thở thanh lịch, hiện đại v&agrave;o từng m&oacute;n đồ, t&iacute;nh to&aacute;n hợp l&yacute; mọi yếu tố nhỏ, tạo n&ecirc;n thế c&acirc;n bằng giữa c&aacute;c đường n&eacute;t.Th&aacute;ng 9/2013, dự &aacute;n mang t&ecirc;n Cobra ch&iacute;nh thức khởi động. Joachim mất nhiều đ&ecirc;m trăn trở c&aacute;ch l&agrave;m sao khiến cho phong c&aacute;ch nội thất v&ugrave;ng Scandinavian (Bắc &Acirc;u) trở n&ecirc;n ph&ugrave; hợp với văn h&oacute;a Việt Nam. D&ugrave; gặp kh&oacute; khăn, nhưng dự &aacute;n vẫn ho&agrave;n th&agrave;nh tốt đẹp sau một năm r&ograve;ng r&atilde; nhờ t&acirc;m huyết của cả đội ngũ.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/bo-suu-tap-2.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: Nội thất &nbsp;bộ ghế Cobra qu&acirc;y quanh chiếc b&agrave;n elip bằng gỗ sồi.</em></p>\n\n<p style=\"text-align:justify\">Tuy nhi&ecirc;n chất liệu sồi chuy&ecirc;n d&ugrave;ng cho nội thất cao cấp, sẽ khiến gi&aacute; th&agrave;nh cuối c&ugrave;ng của sản phẩm sẽ đắt đỏ. &ldquo;Phải l&agrave;m sao để gi&aacute; th&agrave;nh nằm trong ngưỡng chấp nhận được, thật nhiều người c&oacute; thể trải nghiệm được vẻ đẹp v&agrave; độ bền của sồi&rdquo; l&agrave; c&acirc;u hỏi m&agrave; Jan-Erik Svensson &ndash; Gi&aacute;m đốc ph&aacute;t triển ng&agrave;nh h&agrave;ng đỗ nội thất gỗ UMA, cũng l&agrave; th&agrave;nh vi&ecirc;n trong nh&oacute;m dự &aacute;n Cobra trăn trở. Nh&agrave; thiết kế cắt giảm c&aacute;c yếu tố phụ th&ecirc;m, chỉ tập trung v&agrave;o chức năng. V&iacute; dụ như chiếc ghế ăn Cobra với phần lưng v&agrave; ch&acirc;n sau gắn liền th&agrave;nh một khối. Joachim muốn thiết kế một chiếc ghế mộc mạc v&agrave; đơn giản, l&agrave; nơi để gia đ&igrave;nh v&agrave; bạn b&egrave; d&agrave;nh thời gian cho nhau. S&aacute;nh đ&ocirc;i b&ecirc;n những chiếc ghế sồi chắc chắn l&agrave; b&agrave;n ăn h&igrave;nh elip, tạo th&ecirc;m kh&ocirc;ng kh&iacute; gần gũi khi mọi người qu&acirc;y quần trong bữa cơm.</p>\n\n<p style=\"text-align:justify\">Sau một năm thiết kế, t&igrave;m kiếm v&agrave; thỏa thuận th&agrave;nh c&ocirc;ng với nh&agrave; sản xuất, từng m&oacute;n đồ nội thất Cobra được ho&agrave;n thiện v&agrave; ph&acirc;n phối tr&ecirc;n to&agrave;n quốc với gi&aacute; th&agrave;nh ph&ugrave; hợp t&uacute;i tiền nhiều gia đ&igrave;nh Việt Nam. Erik chia sẻ: &ldquo;T&ocirc;i nhớ lại cảm x&uacute;c l&uacute;c ấy, vừa h&agrave;o hứng vừa hồi hộp, v&igrave; e rằng kết quả kh&ocirc;ng như mong đợi. Thực tế, Cobra l&agrave; bộ sưu tập sản phẩm chất lượng cao với gi&aacute; cả phải chăng&rdquo;.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/bo-suu-tap-3.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: Bộ sưu tập nội thất ph&ograve;ng ăn Attila với khoảng 10 sản phẩm.</em></p>\n\n<p style=\"text-align:justify\">Trước đ&oacute;, cả hai cũng thử th&aacute;ch m&igrave;nh trong một dự &aacute;n kh&aacute;c về gỗ sồi, mang t&ecirc;n Attila với khoảng 10 sản phẩm.<br />\nBộ sưu tập n&agrave;y khởi động sớm hơn cả Cobra, song đến năm 2015 mới ra mắt do y&ecirc;u cầu x&acirc;y dựng bộ nội thất ph&ograve;ng ăn phức tạp. Cả 2 dự &aacute;n đều th&agrave;nh c&ocirc;ng ngo&agrave;i mong đợi, được mệnh danh l&agrave; những m&oacute;n đồ nội thất c&oacute; gi&aacute; trị ngh&igrave;n đời của UMA. Joachim v&agrave; Erik đ&atilde; bắt tay thực hiện c&aacute;c &yacute; tưởng thiết kế bộ sưu tập nội thất gỗ sồi Cobra. Họ kết hợp phong c&aacute;ch Bắc &Acirc;u với văn h&oacute;a Việt Nam, s&aacute;ng tạo v&agrave; đảm bảo chất lượng sản phẩm vượt tr&ecirc;n cả kỳ vọng.</p>', '', '', '', 14, 6, 1, '2018-01-12 10:20:06', '2018-02-28 08:05:34'),
(21, 'Xiaomi Redmi 5 Plus cho đặt trước tại FPT Shop từ 1/3', 'xiaomi-redmi-5-plus-cho-dat-truoc-tai-fpt-shop-tu-13', 'tin-tuc-large-2.png', 'Từ 1 đến 5/3, người dùng có thể đặt trước Redmi 5 Plus chính hãng tại FPT Shop và nhận sạc dự phòng Xiaomi Gen 2 10.000 mAh.', '<p style=\"text-align:justify\">Xiaomi Redmi 5 Plus l&agrave; smartphone ở ph&acirc;n kh&uacute;c dưới bốn triệu đồng mới nhất của Xiaomi. Sản phẩm ch&iacute;nh h&atilde;ng ph&acirc;n phối bởi Digiworld, sẽ được b&aacute;n độc quyền tại FPT Shop từ 6/3 với mức gi&aacute; 3,999 triệu đồng với ba m&agrave;u: xanh coral, đen v&agrave; v&agrave;ng. Đặt trước từ 1 đến 5/3, bạn sẽ được sở hữu sản phẩm sớm cũng như được tặng th&ecirc;m sạc dự ph&ograve;ng dung lượng 10.000 mAh trị gi&aacute; 380.000 đồng.</p>\n\n<p style=\"text-align:justify\">Sạc dự ph&ograve;ng Gen 2 của Xiaomi l&agrave; sản phẩm được y&ecirc;u th&iacute;ch tr&ecirc;n thị trường bởi sở hữu thiết kế mỏng nhẹ v&agrave; dung lượng &quot;khủng&quot; 10.000 mAh. Đ&acirc;y được v&iacute; như &quot;phao cứu sinh&quot; sẽ tiếp năng lượng cho chiếc smartphone của bạn v&agrave; hứa hẹn l&agrave; người bạn đồng h&agrave;nh cho những người phải d&ugrave;ng điện thoại li&ecirc;n tục, người hay di chuyển hay thường xuy&ecirc;n giải tr&iacute;, &quot;chiến&quot; game tr&ecirc;n điện thoại.</p>\n\n<p style=\"text-align:justify\">Ngo&agrave;i ra, bạn c&oacute; thể chọn mua Redmi 5 Plus trả g&oacute;p 0% l&atilde;i suất với khoản trả trước chỉ 10% gi&aacute; m&aacute;y v&agrave; được ho&agrave;n tiền 100.000 đồng. Như vậy, chỉ với 299.000 đồng, bạn đ&atilde; c&oacute; thể sở hữu ngay Xiaomi Redmi 5 Plus v&agrave; hưởng 0% l&atilde;i suất trong suốt bốn th&aacute;ng trả g&oacute;p.</p>\n\n<p style=\"text-align:justify\">Những ưu đ&atilde;i tr&ecirc;n sẽ d&agrave;nh tặng cho 1.000 kh&aacute;ch h&agrave;ng đầu ti&ecirc;n đặt mua Xiaomi Redmi 5 Plus tại đ&acirc;y với số tiền cọc chỉ 500.000 đồng.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/28-2-20186-9547-1519793114.png\" /></p>\n\n<p style=\"text-align:center\"><em>Từ 1-5/3, 1.000 kh&aacute;ch h&agrave;ng đặt trước Xiaomi Redmi 5 Plus sẽ nhận th&ecirc;m sạc dự ph&ograve;ng Xiaomi Gen 2 hoặc được trả g&oacute;p 0% l&atilde;i suất, trả trước chỉ 299.000 đồng.</em></p>\n\n<p style=\"text-align:justify\">Redmi 5 Plus c&oacute; gi&aacute; dưới 4 triệu đồng nhưng được Xiaomi chăm ch&uacute;t từ thiết kế đến cấu h&igrave;nh. Nh&agrave; sản xuất đ&atilde; kết hợp với c&aacute;c nh&agrave; cung cấp tốt, những phương ph&aacute;p kiểm nghiệm độ bền nghi&ecirc;m ngặt để sản phẩm của họ đạt chất lượng.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/28-2-201817-8115-1519793114.png\" /></p>\n\n<p style=\"text-align:center\"><em>Redmi 5 Plus nhỉnh hơn c&aacute;c smartphone trong c&ugrave;ng ph&acirc;n kh&uacute;c kể cả về cấu h&igrave;nh v&agrave; thiết kế.</em></p>\n\n<p style=\"text-align:justify\">Về thiết kế, Xiaomi Redmi 5 Plus c&oacute; mặt lưng l&agrave;m từ kim loại nguy&ecirc;n khối với kiểu cắt v&aacute;t kim cương chạy dọc th&acirc;n m&aacute;y cho tổng thể tr&ocirc;ng thanh mảnh, chắc tay v&agrave; sang trọng. Sản phẩm c&ograve;n ấn tượng với m&agrave;n h&igrave;nh tr&agrave;n viền k&iacute;ch thước 6 inch với tỷ lệ 18:9, viền m&agrave;n h&igrave;nh mỏng &ndash; xu hướng đang rất thịnh h&agrave;nh trong giới smartphone từ cuối năm 2017 đến nay.</p>\n\n<p style=\"text-align:justify\">Kh&ocirc;ng chỉ to, m&agrave;n h&igrave;nh Redmi 5 Plus c&ograve;n c&oacute; độ ph&acirc;n giải Full HD, kết hợp c&ugrave;ng t&acirc;́m n&ecirc;̀n IPS. K&iacute;nh Gorilla Glass gi&uacute;p m&agrave;n h&igrave;nh bền chắc, hạn chế vỡ khi c&oacute; va đập. M&aacute;y c&ograve;n được thiết kế để khi rơi, phần g&oacute;c sẽ tiếp đất trước, giảm thiểu việc vỡ m&agrave;n h&igrave;nh. Redmi 5 Plus đang sở hữu thiết kế v&agrave; m&agrave;n h&igrave;nh nhỉnh hơn c&aacute;c smartphone kh&aacute;c trong c&ugrave;ng tầm gi&aacute;.</p>\n\n<p style=\"text-align:justify\">Xiaomi Redmi 5 Plus c&ograve;n sở hữu chip Snapdragon 625 của Qualcomm, xung nhịp 2.0GHz. Đ&acirc;y l&agrave; một trong những chip tầm trung hiếm hoi được sản xuất theo tiến tr&igrave;nh 14nm, c&oacute; khả năng tiết kiệm điện tốt v&agrave; &iacute;t toả nhiệt hơn. M&aacute;y c&agrave;i sẵn hệ điều h&agrave;nh Android 7.1 v&agrave; giao diện t&ugrave;y chỉnh MIUI 9.0. M&aacute;y c&oacute; khả năng chạy song song hai ứng dụng c&ugrave;ng l&uacute;c, tiện lợi hơn trong qu&aacute; tr&igrave;nh sử dụng.</p>\n\n<p style=\"text-align:justify\">Một điểm đ&aacute;ng gi&aacute; kh&aacute;c m&agrave; Redmi 5 Plus sở hữu l&agrave; vi&ecirc;n pin Li-Po 4.000mAh. Với trang bị &quot;khủng&quot; n&agrave;y, sau mỗi lần sạc đầy bạn c&oacute; thể xem video li&ecirc;n tục trong 14 tiếng, chơi game kh&ocirc;ng ngừng trong t&aacute;m tiếng.</p>\n\n<p style=\"text-align:justify\">Redmi 5 Plus c&oacute; camera sau 12 megapxiel, ống k&iacute;nh khẩu độ F2.2, hợp c&ugrave;ng đ&egrave;n flash hai t&ocirc;ng m&agrave;u trợ s&aacute;ng, chế độ tự động lấy n&eacute;t, nhận dạng khu&ocirc;n mặt, chụp to&agrave;n cảnh Panorama, x&oacute;a ph&ocirc;ng... Xiaomi cũng quan t&acirc;m đến người d&ugrave;ng th&iacute;ch chụp ảnh selfie bằng việc trang bị camera trước 5 megapixel, đ&egrave;n flash hỗ trợ cả khi quay video... Ngo&agrave;i ra, bạn c&oacute; thể &quot;trang điểm&quot; cho bức ảnh của m&igrave;nh bằng chế độ l&agrave;m đẹp th&ocirc;ng minh Beautify 3.0 gồm 36 kiểu.</p>', '', 'Xiaomi Redmi 5 Plus cho đặt trước tại FPT Shop từ 1/3 - Sohoa', 'Từ 1 đến 5/3, người dùng có thể đặt trước Redmi 5 Plus chính hãng tại FPT Shop và nhận sạc dự phòng Xiaomi Gen 2 10.000 mAh. - Sohoa', 4, 1, 1, '2018-02-28 08:52:58', '2018-02-28 10:47:34'),
(22, 'Nokia - nhìn về quá khứ để hướng tới tương lai', 'nokia-nhin-ve-qua-khu-de-huong-toi-tuong-lai', 'tin-tuc-large-11.png', 'Sau khi hồi sinh mẫu điện thoại 3310, Nokia lại tiếp tục cho ra đời điện thoại \"quả chuối\" 8110 vốn đã xuất hiện từ 20 năm trước.', '<p style=\"text-align:justify\">Một thời gian vắng b&oacute;ng, thương hiệu Nokia đ&atilde; quay trở lại thị trường c&aacute;ch đ&acirc;y đ&uacute;ng một năm dưới sự tiếp quản của c&ocirc;ng ty HMD Global (Phần Lan). Trong qu&yacute; IV/2017, Nokia b&aacute;n được 4,4 triệu smartphone v&agrave; chiếm 1% thị phần to&agrave;n cầu theo thống k&ecirc; của Counterpoint. Con số n&agrave;y nghe c&oacute; vẻ khi&ecirc;m tốn, nhưng đủ để Nokia trở th&agrave;nh nh&agrave; sản xuất smartphone lớn thứ 11 to&agrave;n cầu, đứng trước cả HTC, Sony, Alphabet/Google, Lenovo v&agrave; Asus.</p>\n\n<p style=\"text-align:justify\">T&iacute;nh cả năm 2017, Nokia Mobile b&aacute;n được 8,7 triệu smartphone, được đ&aacute;nh gi&aacute; l&agrave; sự trở lại ấn tượng nếu so s&aacute;nh với iPhone v&agrave; Nokia Lumia - từng chỉ đạt doanh số tương ứng 1,7 triệu v&agrave; 2,9 triệu m&aacute;y được ti&ecirc;u thụ trong năm đầu ti&ecirc;n c&oacute; mặt tr&ecirc;n thị trường.</p>\n\n<p style=\"text-align:justify\">Theo Fox Business, th&agrave;nh c&ocirc;ng của Nokia l&agrave; nhờ doanh số mạnh mẽ tại c&aacute;c thị trường như Anh, Nga, Việt Nam v&agrave; Trung Đ&ocirc;ng.&nbsp;</p>\n\n<p style=\"text-align:justify\">Gi&aacute;m đốc điều h&agrave;nh Florian Seiche của HMD cho biết, trong năm 2017, họ đ&atilde; giới thiệu 11 điện thoại, đạt doanh số 30 triệu m&aacute;y. C&oacute; nghĩa, kh&ocirc;ng chỉ đứng thứ 11 về smartphone, Nokia c&ograve;n l&agrave; nh&agrave; sản xuất điện thoại di động lớn thứ s&aacute;u thế giới v&agrave; nh&agrave; sản xuất điện thoại gi&aacute; rẻ số một thế giới.</p>\n\n<p style=\"text-align:justify\">Những con số tr&ecirc;n l&agrave; t&iacute;n hiệu tốt cho Nokia, nhưng r&otilde; r&agrave;ng, điều đ&oacute; phụ thuộc rất lớn v&agrave;o danh tiếng v&agrave; sự tin y&ecirc;u m&agrave; người d&ugrave;ng d&agrave;nh cho thương hiệu Nokia từ trước.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/Nokia-1-4891-1519706265.jpg\" /></p>\n\n<p style=\"text-align:center\">Nokia 3310.</p>\n\n<p style=\"text-align:justify\">Việc &quot;b&aacute;m&quot; v&agrave;o sự tin y&ecirc;u của người d&ugrave;ng đ&atilde; được thể hiện qua việc Nokia tr&igrave;nh l&agrave;ng điện thoại 3310 đầu năm 2017 tại sự kiện MWC. Năm nay, họ tiếp tục &quot;nh&igrave;n lại qu&aacute; khứ&quot; với phi&ecirc;n bản &quot;quả chuối&quot; 8110 từng nổi tiếng trong phim The Matrix cũng tại triển l&atilde;m MWC ở T&acirc;y Ban Nha.</p>\n\n<p style=\"text-align:justify\">Nh&igrave;n b&ecirc;n ngo&agrave;i, 8810 tr&ocirc;ng rất giống chiếc điện thoại của 20 năm trước nhưng c&oacute; th&ecirc;m c&ocirc;ng nghệ hiện đại như kết nối 4G hay ứng dụng Facebook. Tuy vậy, cũng như 3310, Nokia dường như muốn cho ra đời những mẫu điện thoại cho người ho&agrave;i cổ, hay những người sẵn s&agrave;ng bỏ ra 100 USD để mua c&aacute;c m&oacute;n đồ độc lạ, hơn l&agrave; sản xuất đại tr&agrave; cho người d&ugrave;ng phổ th&ocirc;ng.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/Nokia-2-8133-1519706265.jpg\" /></p>\n\n<p style=\"text-align:center\">Nokia 8110</p>\n\n<p style=\"text-align:justify\">Một số chuy&ecirc;n gia c&ocirc;ng nghệ nhận định, những phi&ecirc;n bản như 3310 hay 8110 được hồi sinh kh&ocirc;ng phải để chạy đua về doanh số, m&agrave; để người d&ugrave;ng c&oacute; cảm gi&aacute;c rằng Nokia thực sự đ&atilde; trở lại, vẫn l&agrave; Nokia của ng&agrave;y xưa chứ kh&ocirc;ng phải h&igrave;nh ảnh ho&agrave;n to&agrave;n xa lạ dưới thời Microsoft.</p>\n\n<p style=\"text-align:justify\">Chiến lược nh&igrave;n lại qu&aacute; khứ, khơi dậy niềm tin sẵn c&oacute; của người d&ugrave;ng sẽ l&agrave; động lực th&uacute;c đẩy doanh số cho những sản phẩm mới mẻ kh&aacute;c của Nokia.</p>', '', 'Nokia - nhìn về quá khứ để hướng tới tương lai - Sohoa', 'Sau khi hồi sinh mẫu điện thoại 3310, Nokia lại tiếp tục cho ra đời điện thoại \"quả chuối\" 8110 vốn đã xuất hiện từ 20 năm trước. - Sohoa', 1, 2, 1, '2018-02-28 08:58:41', '2018-02-28 10:47:48'),
(23, 'Samsung mua lại iPhone X với giá 350 USD', 'samsung-mua-lai-iphone-x-voi-gia-350-usd', 'tin-tuc-large-4.png', 'Samsung tại Mỹ sẽ mua lại iPhone X với giá 350 USD và trừ vào số tiền người dùng mua Galaxy S9 hoặc S9+.', '<p style=\"text-align:justify\">Chương tr&igrave;nh thu mua điện thoại cũ để n&acirc;ng cấp l&ecirc;n bộ đ&ocirc;i Galaxy S9 v&agrave; S9+ tại Mỹ của Samsung được &aacute;p dụng cho sản phẩm của cả ba h&atilde;ng đối thủ l&agrave; Apple, Google v&agrave; LG. Apple l&agrave; h&atilde;ng c&oacute; nhiều d&ograve;ng điện thoại được chấp nhận nhất, từ iPhone 6/6 Plus đến cao cấp v&agrave; mới nhất l&agrave; iPhone X. Trong khi với người d&ugrave;ng đang sử dụng Samsung, model cũ nhất m&agrave; h&atilde;ng hỗ trợ l&agrave; Galaxy S6 v&agrave; cả c&aacute;c m&aacute;y Galaxy S7 bị vỡ m&agrave;n h&igrave;nh.&nbsp;</p>\n\n<p style=\"text-align:justify\">Đ&aacute;ng ch&uacute; &yacute;, Samsung chấp nhận mua lại iPhone X - smartphone gi&aacute; ngh&igrave;n đ&ocirc; của Apple - với gi&aacute; chỉ 350 USD - khi kh&aacute;ch h&agrave;ng đổi sang Galaxy S9/S9+. Gi&aacute; n&agrave;y tương đương với gi&aacute; mua lại Galaxy S8+, trong khi gi&aacute; b&aacute;n mới tại Mỹ của iPhone X l&agrave; 999 USD c&ograve;n Galaxy S9 l&agrave; 720 USD chưa bao gồm thuế.&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/a1-3769-1519697621.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>Gi&aacute; thu mua iPhone X l&agrave; 350 USD khi người sở hữu muốn đổi sang Galaxy S9.</em></p>\n\n<p style=\"text-align:justify\">Bộ đ&ocirc;i sản phẩm của Samsung sẽ bắt đầu được cho đặt trước từ ng&agrave;y 2/3 tại Mỹ v&agrave; một số thị trường kh&aacute;c trước khi ch&iacute;nh thức l&ecirc;n kệ v&agrave;o ng&agrave;y 16/3.</p>\n\n<p style=\"text-align:justify\">Galaxy S9 v&agrave; S9+ c&oacute; k&iacute;ch thước m&agrave;n h&igrave;nh v&agrave; độ ph&acirc;n giải giống Galaxy S8 v&agrave; S8+ l&agrave; QuadHD với k&iacute;ch cỡ 5,8 v&agrave; 6,2 inch. Tuy nhi&ecirc;n, S9 kh&ocirc;ng c&oacute; camera k&eacute;p như S9+. Tr&ecirc;n model cao cấp cỡ lớn, cụm camera đ&ocirc;i 12 megapixel (một ống ti&ecirc;u chuẩn v&agrave; một ống tele) được đặt dọc thay v&igrave; nằm ngang như Note8. Camera trước 8 megapixel với ống k&iacute;nh khẩu độ f/1.7.</p>\n\n<p style=\"text-align:justify\">Một điểm th&uacute; vị tr&ecirc;n smartphone mới l&agrave; t&iacute;nh năng AR Emoji, gi&uacute;p biến ch&acirc;n dung của người d&ugrave;ng th&agrave;nh h&igrave;nh hoạt h&igrave;nh 3D. So với Animoji của Apple, AR Emoji của Samsung c&oacute; khả năng tuỳ biến đa dạng hơn, nhiều biểu hiện cảm x&uacute;c hơn...</p>', '', 'Samsung mua lại iPhone X với giá 350 USD - Sohoa', 'Samsung tại Mỹ sẽ mua lại iPhone X với giá 350 USD và trừ vào số tiền người dùng mua Galaxy S9 hoặc S9+.  - Sohoa', NULL, 3, 1, '2018-02-28 09:02:07', '2018-02-28 10:49:31'),
(24, 'Giá Galaxy S9 tại Việt Nam sẽ khoảng 20 triệu đồng', 'gia-galaxy-s9-tai-viet-nam-se-khoang-20-trieu-dong', 'tin-tuc-large-6.png', 'Nhiều nhà bán lẻ trong nước đã cho đặt hàng Galaxy S9 và Galaxy S9+ với giá chưa tới 20 triệu đồng kèm quà tặng.', '<p style=\"text-align:justify\">Ngay sau khi ra mắt, bộ đ&ocirc;i Galaxy S9 v&agrave; Galaxy S9+ đ&atilde; được một số nh&agrave; ph&acirc;n phối tại Việt Nam cho đặt h&agrave;ng trước. Tuy nhi&ecirc;n, với việc Samsung Việt Nam chưa đưa ra gi&aacute; ch&iacute;nh thức, mức m&agrave; c&aacute;c nh&agrave; b&aacute;n lẻ đưa ra cũng kh&ocirc;ng giống nhau.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/Capture2-PNG-6982-1519700935.png\" /></p>\n\n<p style=\"text-align:center\"><em>Gi&aacute; dự kiến bộ đ&ocirc;i Galaxy S9 v&agrave; Galaxy S9+ tại một hệ thống b&aacute;n lẻ.</em></p>\n\n<p style=\"text-align:justify\">Cụ thể, FPT Shop đưa ra mức gi&aacute; đặt trước thấp nhất cho Galaxy S9 với 19,99 triệu đồng v&agrave; Galaxy S9+ với 23,49 triệu đồng. Trong khi đ&oacute;, Thế Giới Di Động đưa ra mức 20,49 triệu đồng v&agrave; 23,79 triệu đồng.</p>\n\n<p style=\"text-align:justify\">Đối với c&aacute;c chuỗi b&aacute;n lẻ nhỏ hơn, mức ch&ecirc;nh lệch gi&aacute; b&aacute;n cũng kh&ocirc;ng nhiều, như Mai Nguy&ecirc;n lần lượt l&agrave; 21 triệu đồng v&agrave; 22,49 triệu đồng, CellphoneS khoảng 20,99 triệu đồng v&agrave; 22,99 triệu đồng. Hầu hết c&aacute;c nh&agrave; b&aacute;n lẻ đều cho đặt trước k&egrave;m qu&agrave; tặng gi&aacute; trị.</p>\n\n<p style=\"text-align:justify\">Như vậy, nếu so với mức 18,49 triệu đồng của Galaxy S8 v&agrave; 20,49 triệu đồng của Galaxy S8+ năm ngo&aacute;i, bộ đ&ocirc;i smartphone Galaxy mới của Samsung c&oacute; gi&aacute; dự kiến đắt hơn. Trong khi đ&oacute;, ph&iacute;a đại diện Samsung Việt Nam cho biết sẽ tiết lộ gi&aacute; b&aacute;n v&agrave; ng&agrave;y l&ecirc;n kệ bộ đ&ocirc;i n&agrave;y sau ng&agrave;y 5/3.</p>\n\n<p style=\"text-align:justify\">&Ocirc;ng Mai Triều Nguy&ecirc;n, chủ một hệ thống b&aacute;n lẻ điện thoại tại Việt Nam, đ&aacute;nh gi&aacute; Galaxy S9 v&agrave; Galaxy S9+ năm nay kh&aacute; to&agrave;n diện, d&ugrave; kh&ocirc;ng c&oacute; nhiều n&acirc;ng cấp về thiết kế. &quot;Bộ đ&ocirc;i Galaxy mới kh&ocirc;ng thay đổi nhiều về thiết kế hoặc c&oacute; thể chưa đến chu kỳ thay đổi, ngoại trừ việc bố tr&iacute; lại cụm cảm biến v&acirc;n tay cho thuận tiện. Tuy nhi&ecirc;n, t&ocirc;i đ&aacute;nh gi&aacute; cao c&aacute;c t&iacute;nh năng b&ecirc;n trong, như cấu h&igrave;nh mạnh, camera tuyệt vời, quay slow-motion hay AR Emoji...&quot;, &ocirc;ng Nguy&ecirc;n nhận định.</p>\n\n<p style=\"text-align:justify\">Tuy nhi&ecirc;n, &ocirc;ng Nguy&ecirc;n cũng cho rằng vấn đề ở đ&acirc;y l&agrave; l&agrave;m thế n&agrave;o để khuyến kh&iacute;ch người d&ugrave;ng đổi điện thoại, đặc biệt l&agrave; từ S8 l&ecirc;n S9. &quot;Đối với người đ&atilde; mua điện thoại cao cấp năm ngo&aacute;i, năm nay c&oacute; thể chưa cần n&acirc;ng cấp, nhưng nếu ai muốn chuyển từ điện thoại tầm thấp hơn, hoặc muốn trải nghiệm t&iacute;nh năng mới th&igrave; Galaxy S9 l&agrave; lựa chọn tuyệt vời&quot;, &ocirc;ng Nguy&ecirc;n nhận x&eacute;t.</p>\n\n<p style=\"text-align:justify\">Dự kiến, Samsung sẽ b&aacute;n ra Galaxy S9 v&agrave; Galaxy S9+ đợt đầu v&agrave;o 16/3 tới tại nhiều thị trường. M&aacute;y gồm bốn m&agrave;u sắc: xanh san h&ocirc;, đen huyền b&iacute;, t&iacute;m Lilac v&agrave; bạc Titan.</p>', '', 'Giá Galaxy S9 tại Việt Nam sẽ khoảng 20 triệu đồng - Sohoa', 'Nhiều nhà bán lẻ trong nước đã cho đặt hàng Galaxy S9 và Galaxy S9+ với giá chưa tới 20 triệu đồng kèm quà tặng. - Sohoa', NULL, 4, 1, '2018-02-28 09:03:46', '2018-02-28 10:52:54'),
(25, 'Galaxy S9 và S9+ so \'độ thon gọn\' với các đối thủ', 'galaxy-s9-va-s9-so-do-thon-gon-voi-cac-doi-thu', 'tin-tuc-large-12.png', 'Galaxy S9 tương đương với iPhone X, Pixel 2 trong khi S9+ là đối thủ của iPhone 8+, Pixel 2 XL.', '<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/So-sanh-galaxy-S9-2-1519717630.jpg\" /></p>', '', 'infographic,design,news', 'Galaxy S9 tương đương với iPhone X, Pixel 2 trong khi S9+ là đối thủ của iPhone 8+, Pixel 2 XL. - VnExpress', 1, 5, 1, '2018-02-28 09:05:18', '2018-02-28 10:54:18');
INSERT INTO `article` (`id`, `fullname`, `alias`, `image`, `intro`, `content`, `description`, `meta_keyword`, `meta_description`, `count_view`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(26, 'Apple sắp ra iPhone màn hình \'khổng lồ\'', 'apple-sap-ra-iphone-man-hinh-khong-lo', 'tin-tuc-large-8.png', 'Công ty công nghệ Mỹ đang lên kế hoạch phát triển smartphone có màn hình tới 6,5 inch và một chiếc iPhone X giá rẻ.', '<p style=\"text-align:justify\">Theo Bloomberg, Apple c&oacute; thể ra ba mẫu iPhone mới trong 2018 nhằm đa dạng lựa chọn cho người d&ugrave;ng, đồng thời gi&uacute;p tăng doanh số b&aacute;n h&agrave;ng. Kế hoạch sẽ bao gồm một chiếc iPhone m&agrave;n h&igrave;nh &quot;khổng lồ&quot; l&ecirc;n đến 6,5 inch, bản n&acirc;ng cấp cho iPhone X v&agrave; một lựa chọn kh&aacute;c gi&aacute; rẻ nhưng c&oacute; một số t&iacute;nh năng giống iPhone X.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/iPhone-X-Plus-2018-iPhone-X-6144-1519705596.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>Apple c&oacute; thể ra điện thoại m&agrave;n h&igrave;nh 6,5 inch.</em><br />\nCụ thể, chiếc iPhone 6,5 inch mới sẽ c&oacute; t&ecirc;n m&atilde; D33, l&agrave; nỗ lực của Apple trong việc t&igrave;m kiếm kh&aacute;ch h&agrave;ng mới y&ecirc;u th&iacute;ch những sản phẩm m&agrave;n h&igrave;nh lớn. N&oacute; sẽ c&oacute; k&iacute;ch cỡ tương đương iPhone 8 Plus nhưng kh&ocirc;ng gian hiển thị nhiều hơn nhờ viền mỏng tương tự iPhone X.</p>\n\n<p style=\"text-align:justify\">Smartphone m&agrave;n h&igrave;nh lớn đặc biệt hấp dẫn với người d&ugrave;ng doanh nghiệp, cho ph&eacute;p họ soạn email, quản l&yacute; t&agrave;i liệu, văn bản thuận tiện như tr&ecirc;n một chiếc m&aacute;y t&iacute;nh bảng thu nhỏ. Giống d&ograve;ng Plus hiện nay, iPhone 6,5 inch mới sẽ hỗ trợ chia m&agrave;n h&igrave;nh với một số ứng dụng.</p>\n\n<p style=\"text-align:justify\">Tương tự iPhone X, điện thoại mới sẽ bao gồm m&aacute;y qu&eacute;t khu&ocirc;n mặt Face ID. Độ ph&acirc;n giải m&agrave;n h&igrave;nh được n&acirc;ng l&ecirc;n 1.242 x 2.688 pixel gi&uacute;p n&oacute; hiển thị sắc n&eacute;t hơn cả iPhone X (k&iacute;ch thước 5,8 inch, độ ph&acirc;n giải 1.125 x 2.436). Model mới cũng d&ugrave;ng c&ocirc;ng nghệ OLED đắt tiền.</p>\n\n<p style=\"text-align:justify\">Trong khi đ&oacute; iPhone X sẽ c&oacute; bản n&acirc;ng cấp với chip Apple A12 mạnh hơn, bổ sung lựa chọn m&agrave;u v&agrave;ng. Apple đ&atilde; cố gắng ph&aacute;t triển m&agrave;u v&agrave;ng cho iPhone X nhưng h&atilde;ng đ&atilde; phải huỷ kế hoạch v&igrave; vấn đề sản xuất. Việc th&ecirc;m m&agrave;u v&agrave;ng sẽ gi&uacute;p c&ocirc;ng ty th&uacute;c đẩy doanh số, nhất l&agrave; tại thị trường ch&acirc;u &Aacute;.</p>\n\n<p style=\"text-align:justify\">Ngo&agrave;i ra, Apple c&ograve;n xem x&eacute;t ra iPhone với hai khe cắm sim, cho ph&eacute;p người sử dụng thay đổi giữa hai nh&agrave; mạng m&agrave; kh&ocirc;ng cần đổi sim. T&iacute;nh năng n&agrave;y c&oacute; thể nhằm chiều l&ograve;ng c&aacute;c kh&aacute;ch h&agrave;ng ở ch&acirc;u &Aacute; v&agrave; ngay cả c&aacute;c nước ch&acirc;u &Acirc;u cũng chuộng v&igrave; t&iacute;nh tiện dụng khi di chuyển giữa c&aacute;c nước.</p>\n\n<p style=\"text-align:justify\">Việc x&acirc;y dựng một chiếc iPhone gi&aacute; rẻ cũng được Apple th&uacute;c đẩy khi m&agrave; c&aacute;c model hiện tại của Apple hoặc c&oacute; gi&aacute; cao hoặc kh&ocirc;ng đủ sức hấp dẫn trước c&aacute;c sản phẩm của đối thủ. M&ocirc; h&igrave;nh mới được dự đo&aacute;n c&oacute; thiết kế m&agrave;n h&igrave;nh tr&agrave;n viền như iPhone X, hỗ trợ Face ID với mức gi&aacute; thấp hơn.</p>\n\n<p style=\"text-align:justify\">Để giảm chi ph&iacute;, iPhone X bản gi&aacute; rẻ sẽ d&ugrave;ng m&agrave;n h&igrave;nh LCD giống iPhone 8 thay v&igrave; OLED. N&oacute; cũng d&ugrave;ng khung nh&ocirc;m chứ kh&ocirc;ng phải bằng th&eacute;p kh&ocirc;ng gỉ như d&ograve;ng cao cấp. Sau thất bại của iPhone 5c, c&oacute; thể Apple sẽ ra một chiếc điện thoại thật sự hấp dẫn với số tiền m&agrave; người d&ugrave;ng bỏ ra.</p>', '', 'Apple sắp ra iPhone màn hình \'khổng lồ\' - Sohoa', 'Công ty công nghệ Mỹ đang lên kế hoạch phát triển smartphone có màn hình tới 6,5 inch và một chiếc iPhone X giá rẻ. - Sohoa', NULL, 6, 1, '2018-02-28 09:09:42', '2018-02-28 10:55:58'),
(27, 'Sony Alpha A7 III - phiên bản giá \'mềm\' của Alpha A9', 'sony-alpha-a7-iii-phien-ban-gia-mem-cua-alpha-a9', 'tin-tuc-large-5.png', 'Mẫu mirrorless mới của Sony vẫn sử dụng cảm biến BSI với chip tiền xử lý Front End LSI chụp 10 hình/giây và quay 4K.', '<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/a1-8341-1519722507.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>Sony Alpha A7 III.&nbsp;</em></p>\n\n<p style=\"text-align:justify\">Alpha A7 III l&agrave; chiếc mirrorless mới nhất của Sony với nhiều t&iacute;nh năng thừa hưởng từ d&ograve;ng A9 v&agrave; A7R III nhưng ở ph&acirc;n kh&uacute;c gi&aacute; thấp hơn, dưới 2.000 USD. C&aacute;c điểm nhấn đ&aacute;ng ch&uacute; &yacute; kh&aacute;c của m&aacute;y l&agrave; cảm biến BSI, pin d&ograve;ng Z dung lượng cao v&agrave; t&iacute;nh năng EyeAF &nbsp;tương tự phi&ecirc;n bản cao cấp hơn.&nbsp;</p>\n\n<p style=\"text-align:justify\">Camera mới của Sony sở hữu cảm biến độ ph&acirc;n giải 24 megapixel với thiết kế BSI nhưng kh&ocirc;ng c&oacute; tốc độ nhanh như loại được d&ugrave;ng trong mẫu A9. Tuy nhi&ecirc;n, hệ thống AF của A7 III vẫn thừa hưởng nhiều ưu điểm từ A9 cho tốc độ nhanh gấp hai lần so với A7 II. M&aacute;y c&oacute; tới 693 điểm lấy n&eacute;t, phủ 93% khung h&igrave;nh trong đ&oacute; c&oacute; 425 điểm lấy n&eacute;t theo tương phản.&nbsp;</p>\n\n<p style=\"text-align:justify\">Với chip tiền xử l&yacute; Front End LSI kh&aacute; giống A7R III, m&aacute;y c&oacute; thể chụp tốc độ 10 h&igrave;nh mỗi gi&acirc;y v&agrave; bộ nhớ đệm cho ph&eacute;p chụp li&ecirc;n tiếp 177 ảnh JPEG sau mỗi lần bấm n&uacute;t.&nbsp;</p>\n\n<p style=\"text-align:justify\">Video quay 4K tốc độ 24 h&igrave;nh/gi&acirc;y của A7 III được lấy từ v&ugrave;ng 6K của cảm biến trong khi tốc độ 30 h&igrave;nh/gi&acirc;y lấy từ v&ugrave;ng 5K của cảm biến với hệ số crop 1.2x. M&aacute;y hỗ trợ cả S-Log2 V&agrave; S-Log3 để chụp c&aacute;c cảnh với dải tương phản rộng hoặc Hybrid Log Gamma cho ph&aacute;t lại tr&ecirc;n m&agrave;n h&igrave;nh với dải tương phản cao m&agrave; kh&ocirc;ng cần hậu kỳ.&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/a2-5012-1519722507.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>C&aacute;c b&aacute;nh xe điều chỉnh tr&ecirc;n A7 III.&nbsp;</em></p>\n\n<p style=\"text-align:justify\">Alpha A7 III c&oacute; thể chụp được tới 610 bức h&igrave;nh sau mỗi lần sạc với pin NP-FZ100 đi k&egrave;m (710 h&igrave;nh nếu chỉ sử dụng m&agrave;n h&igrave;nh ph&iacute;a sau). Con số n&agrave;y gấp đ&ocirc;i so với thế hệ trước v&agrave; nhiều m&aacute;y mirrorless tr&ecirc;n thị trường.&nbsp;</p>\n\n<p style=\"text-align:justify\">Model của Sony trang bị k&iacute;nh ngắm OLED độ ph&acirc;n giải 2,36 triệu điểm ảnh (1.024 x 678 pixel) thay v&igrave; bản độ ph&acirc;n giải cao như A7R III).</p>\n\n<p style=\"text-align:justify\">Alpha A7 III &nbsp;bắt đầu b&aacute;n ra từ th&aacute;ng 4 với gi&aacute; cho th&acirc;n m&aacute;y l&agrave; 1.999 USD tại Mỹ. Sony c&oacute; thể b&aacute;n th&ecirc;m bộ ống kit đi k&egrave;m l&agrave; 28-70 mm nhưng chưa c&oacute; th&ocirc;ng tin về gi&aacute;.</p>', '', 'Sony Alpha A7 III - phiên bản giá \'mềm\' của Alpha A9 - Sohoa', 'Mẫu mirrorless mới của Sony vẫn sử dụng cảm biến BSI với chip tiền xử lý Front End LSI chụp 10 hình/giây và quay 4K.  - Sohoa', 2, 7, 1, '2018-02-28 09:13:03', '2018-02-28 11:10:19'),
(28, 'Samsung và Nokia - hai điểm nhấn tại MWC 2018', 'samsung-va-nokia-hai-diem-nhan-tai-mwc-2018', 'tin-tuc-large-3.png', 'Bên cạnh các xu hướng công nghệ mới, Galaxy S9 và Nokia 8110 (2018) được chú ý nhiều nhất tại Hội nghị di động toàn cầu năm nay.', '<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/1400x-1-1_680x0.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>Tại MWC năm nay, Samsung l&agrave; h&atilde;ng được ch&uacute; &yacute; nhất khi tr&igrave;nh l&agrave;ng mẫu điện thoại Galaxy S9 v&agrave; Galaxy S9+ tại sự kiện Unpacked. Kh&ocirc;ng thay đổi nhiều về thiết kế, nhưng bộ đ&ocirc;i vẫn nhận được sự quan t&acirc;m lớn nhờ những n&acirc;ng cấp về cấu h&igrave;nh cũng như t&iacute;nh năng.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/1400x-1-1519705041_680x0.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>Camera l&agrave; điểm nổi bật nhất tr&ecirc;n Galaxy S9 v&agrave; Galaxy S9+, được nhiều kh&aacute;ch tham quan trải nghiệm. Galaxy S9 trang bị camera đơn độ ph&acirc;n giải 12 megapixel c&ugrave;ng khả năng thay đổi khẩu độ f/1.5 v&agrave; f/2.4 - điều chỉ thấy tr&ecirc;n m&aacute;y ảnh chuy&ecirc;n nghiệp, chưa từng c&oacute; tr&ecirc;n smartphone. Trong khi đ&oacute;, Galaxy S9+ sở hữu camera k&eacute;p độ ph&acirc;n giải đều 12 megapixel c&ugrave;ng t&iacute;nh năng thay đổi khẩu độ tương tự camera Galaxy S9. Cả hai hỗ trợ quay video si&ecirc;u chậm (slow-motion) v&agrave; AR Emoji độc đ&aacute;o.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/1400x-1-3_680x0.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>Nếu như MWC 2017, HMD Global đ&atilde; &quot;hồi sinh&quot; chiếc Nokia 3310 ra mắt năm 2000, th&igrave; năm nay, h&atilde;ng tiếp tục l&agrave;m điều đ&oacute; với mẫu Nokia 8110 - chiếc điện thoại &quot;quả chuối&quot; từng ra mắt năm 1996 - với thiết kế mảnh mai v&agrave; hiện đại. Tại sự kiện, b&ecirc;n cạnh điện thoại mới, gian trưng b&agrave;y của HMD Global c&ograve;n c&oacute; rất nhiều chuối.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/1400x-1-4-1519705689_680x0.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>Mẫu điện thoại của Nokia được l&agrave;m mới, t&iacute;ch hợp th&ecirc;m camera, 2 sim 2 s&oacute;ng v&agrave; đặc biệt l&agrave; c&oacute; khả năng ph&aacute;t Wi-Fi từ mạng 4G, th&iacute;ch hợp để d&ugrave;ng điện thoại phụ v&agrave; cục ph&aacute;t Wi-Fi.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/1400x-1-2-1519705766_680x0.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>HMD Global cũng giới thiệu tại sự kiện 4 smartphone mới, cao cấp nhất l&agrave; Nokia 8 Sirocco. Tr&ecirc;n ảnh l&agrave; ph&oacute;ng vi&ecirc;n đang trải nghiệm t&iacute;nh năng quay phim với chiếc smartphone n&agrave;y.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/1400x-1-6-1519705894_680x0.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>Thiết bị đeo, k&iacute;nh thực tế ảo cũng xuất hiện tại MWC trong nhiều năm. Năm nay, một số nh&agrave; sản xuất mang đến nhiều mẫu k&iacute;nh thực tế ảo mới với thiết kế nhỏ, gọn nhẹ nhưng sở hữu sức mạnh tốt hơn v&agrave; gi&aacute; b&aacute;n phải chăng hơn. Tr&ecirc;n đ&acirc;y l&agrave; một kh&aacute;ch tham quan trải nghiệm k&iacute;nh thực tế ảo chuy&ecirc;n game của Acer.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/1400x-1-5-1519706049_680x0.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>Một robot c&oacute; thể vẽ tranh được tr&igrave;nh diễn bởi nh&agrave; mạng Nhật Bản NTT Docomo. Robot sử dụng mạng 5G để nhận dữ liệu.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/1400x-1-7-1519706126_680x0.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>Mạng 5G cũng sẽ l&agrave; xu thế mới, được nhiều c&ocirc;ng ty c&ocirc;ng nghệ tập trung trong 2018. B&ecirc;n cạnh đ&oacute;, c&aacute;c vấn đề về dữ liệu đ&aacute;m m&acirc;y, an ninh mạng, tr&iacute; tuệ nh&acirc;n tạo, tiền ảo, c&ocirc;ng nghệ blockchain... cũng sẽ được mang ra thảo luận tại sự kiện. Hội nghị di động to&agrave;n cầu năm nay thu h&uacute;t khoảng 100.000 kh&aacute;ch tham quan. Sự kiện l&agrave; nơi trưng b&agrave;y h&agrave;ng ng&agrave;n sản phẩm mới đến từ hơn 2.000 c&ocirc;ng ty. B&ecirc;n cạnh sản phẩm, đ&acirc;y cũng l&agrave; m&ocirc;i trường giao lưu học hỏi của c&aacute;c nh&agrave; quản l&yacute;, nh&agrave; ph&acirc;n t&iacute;ch, cũng như l&agrave; nơi mua sắm của nhiều người.</em></p>', '', 'Samsung và Nokia - hai điểm nhấn tại MWC 2018 - VnExpress', 'Bên cạnh các xu hướng công nghệ mới, Galaxy S9 và Nokia 8110 (2018) được chú ý nhiều nhất tại Hội nghị di động toàn cầu năm nay. - VnExpress', 1, 8, 1, '2018-02-28 09:17:25', '2018-02-28 11:10:07'),
(29, 'Ảnh chụp thử từ camera kép của Galaxy S9 Plus', 'anh-chup-thu-tu-camera-kep-cua-galaxy-s9-plus', 'tin-tuc-large-13.png', 'Samsung chia sẻ một số ảnh được ghi lại bằng chiếc Galaxy S đầu tiên tích hợp camera kép.', '<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/SS-1-1519695907_680x0.png\" /></p>\n\n<p style=\"text-align:justify\">Bộ đ&ocirc;i Galaxy S9 v&agrave; S9 Plus vẫn giữ nguy&ecirc;n kiểu d&aacute;ng như Galaxy S8 v&agrave; S8 Plus. Kh&aacute;c biệt lớn nhất tr&ecirc;n sản phẩm mới nằm ở camera, đặc biệt l&agrave; Galaxy S9 - chiếc Galaxy S đầu ti&ecirc;n t&iacute;ch hợp camera k&eacute;p với độ ph&acirc;n giải 12 megapixel, bao gồm một ống ti&ecirc;u chuẩn v&agrave; một ống tele.</p>\n\n<p style=\"text-align:justify\">Ngo&agrave;i ra, khẩu độ k&eacute;p Dual Aperture (f/1.5 - f/2.4) tr&ecirc;n Galaxy S9+ sẽ tự động đ&oacute;n nhiều &aacute;nh s&aacute;ng hơn trong điều kiện tối v&agrave; &iacute;t s&aacute;ng hơn khi qu&aacute; rực s&aacute;ng, gi&uacute;p chụp ảnh sắc n&eacute;t v&agrave; r&otilde; r&agrave;ng.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/SS-2-1519695907_680x0.png\" /></p>\n\n<p style=\"text-align:justify\">Với khẩu độ f/1.5, camera c&oacute; thể thu nhiều &aacute;nh s&aacute;ng hơn, nhờ đ&oacute; mang đến những bức ảnh sống động. Camera k&eacute;p cũng hỗ trợ chụp ảnh x&oacute;a ph&ocirc;ng, tạo hiệu ứng bokeh.&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/SS-13-1519695925_680x0.jpg\" /></p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/SS-4-1519695909_680x0.png\" /></p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/SS-14-1519695926_680x0.jpg\" /></p>\n\n<p style=\"text-align:justify\">Nhờ khả năng điều chỉnh khẩu độ linh hoạt ở m&ocirc;i trường thiếu s&aacute;ng, Galaxy S9 Plus c&oacute; thể cho ra đời những bức ảnh kh&ocirc;ng bị nhiễu hạt hay rung mờ.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/SS-6-1519695913_680x0.png\" /></p>\n\n<p style=\"text-align:justify\">Ba bức ảnh thể hiện khả năng chụp cận cảnh v&agrave; thể hiện m&agrave;u sắc kh&aacute; tốt v&agrave; sinh động của S9+.</p>\n\n<p style=\"text-align:center\"><strong><img alt=\"\" src=\"/upload/SS-8-1519695917_680x0.png\" /></strong></p>\n\n<p style=\"text-align:center\"><strong><img alt=\"\" src=\"/upload/SS-18-1519697280_680x0.jpg\" /></strong></p>\n\n<p style=\"text-align:center\"><strong><img alt=\"\" src=\"/upload/SS-9-1519695919_680x0.png\" /></strong></p>\n\n<p style=\"text-align:center\"><strong><img alt=\"\" src=\"/upload/SS-10-1519695921_680x0.png\" /></strong></p>\n\n<p style=\"text-align:justify\">Với khẩu độ F/2.4, camera tr&ecirc;n S9 Plus được đ&aacute;nh gi&aacute; sẽ l&agrave; &quot;bạn đồng h&agrave;nh&quot; của người d&ugrave;ng trong c&aacute;c chuyến đi</p>\n\n<p style=\"text-align:center\"><strong><img alt=\"\" src=\"/upload/SS-20_680x0.jpg\" /></strong></p>\n\n<p style=\"text-align:center\"><strong><img alt=\"\" src=\"/upload/SS-19-1519697515_680x0.jpg\" /></strong></p>\n\n<p style=\"text-align:justify\">Việc hạn chế thu s&aacute;ng trong điều kiện thừa s&aacute;ng mang lại những bức ảnh đẹp, kh&ocirc;ng bị nh&ograve;a, l&oacute;a...</p>\n\n<p>&nbsp;</p>', '', 'Ảnh chụp thử từ camera kép của Galaxy S9 Plus - VnExpress', 'Samsung chia sẻ một số ảnh được ghi lại bằng chiếc Galaxy S đầu tiên tích hợp camera kép. - VnExpress', 3, 9, 1, '2018-02-28 09:19:08', '2018-02-28 11:30:39'),
(30, 'Bộ đôi smartphone Nokia chuyên chụp ảnh', 'bo-doi-smartphone-nokia-chuyen-chup-anh', 'tin-tuc-selfi.png', 'Nokia 7 Plus và Nokia 8 Sirocco đều sở hữu camera kép với ống kính Zeiss.', '<p style=\"text-align:center\"><em><img alt=\"\" src=\"/upload/20-Nokia-7-Plus-Nokia-8-VnE-3678-1519682006_680x0.jpg\" /></em></p>\n\n<p style=\"text-align:center\"><em>Nokia 7 Plus c&oacute; thiết kế viền mỏng, m&agrave;n h&igrave;nh 6 inch tỷ lệ 18:9 theo xu hướng. M&aacute;y tr&ocirc;ng kh&aacute; to với khung vỏ l&agrave;m từ nh&ocirc;m nguy&ecirc;n khối.&nbsp;</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><em><img alt=\"\" src=\"/upload/20-Nokia-7-Plus-Nokia-8-VnE-3681-1519682011_680x0.jpg\" /></em></p>\n\n<p style=\"text-align:center\"><em>Nokia 7 Plus được định vị ở ph&acirc;n kh&uacute;c tầm trung cận cao cấp với gi&aacute; gần 500 USD. M&aacute;y được trang bị cụm camera k&eacute;p ống k&iacute;nh Carl Zeiss, gồm một camera g&oacute;c rộng 12 megapixel tele 13 megapixel. Camera trước của m&aacute;y c&oacute; độ ph&acirc;n giải 16 megapixel.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><em><img alt=\"\" src=\"/upload/20-Nokia-7-Plus-Nokia-8-VnE-3696-1519682023_680x0.jpg\" /></em></p>\n\n<p style=\"text-align:center\"><em>Ngo&agrave;i ống Zeiss, điểm th&uacute; vị tr&ecirc;n mẫu Android Nokia mới l&agrave; việc c&oacute; giao diện chụp ảnh chuy&ecirc;n nghiệp giống một số mẫu Lumia chuy&ecirc;n chụp ảnh nổi tiếng trước kia.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><em><img alt=\"\" src=\"/upload/20-Nokia-7-Plus-Nokia-8-VnE-3684-1519682018_680x0.jpg\" /></em></p>\n\n<p style=\"text-align:center\"><em>Thiết kế khung viền của Nokia 7 Plus chưa được sắc sảo v&agrave; kh&ocirc;ng mang nhiều n&eacute;t đặc trưng của c&aacute;c điện thoại Nokia Lumia trước kia.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><em><img alt=\"\" src=\"/upload/20-Nokia-7-Plus-Nokia-8-VnE-3685-1519682021_680x0.jpg\" /></em></p>\n\n<p style=\"text-align:center\"><em>Sản phẩm c&oacute; cấu h&igrave;nh kh&aacute; với vi xử l&yacute; Snapdragon 660 8 nh&acirc;n đi k&egrave;m RAM 4GB. Ưu điểm của model n&agrave;y l&agrave; pin lớn với dung lượng l&ecirc;n tới 3.800 mAh v&agrave; chạy hệ điều h&agrave;nh Android 8.0 trong dự &aacute;n Android One, sẽ thường xuy&ecirc;n được cập nhật l&ecirc;n phi&ecirc;n bản mới sớm nhất c&oacute; thể.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><em><img alt=\"\" src=\"/upload/20-Nokia-7-Plus-Nokia-8-VnE-3712-1519682026_680x0.jpg\" /></em></p>\n\n<p style=\"text-align:center\"><em>Trong khi đ&oacute;, Nokia 8 Sirocco l&agrave; model cao cấp hơn 7 Plus với kiểu thiết kế m&agrave;n h&igrave;nh truyền thống. K&iacute;ch thước m&aacute;y tương đương với Galaxy S9 v&agrave; iPhone X nhưng tr&ocirc;ng ngắn v&agrave; to ngang.&nbsp;</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><em><img alt=\"\" src=\"/upload/20-Nokia-7-Plus-Nokia-8-VnE-3713-1519683468_680x0.jpg\" /></em></p>\n\n<p style=\"text-align:center\"><em>Hai b&ecirc;n viền m&aacute;y c&oacute; thiết kế cong hai phần viền tương tự một số smartphone cao cấp của Samsung, viền tr&ecirc;n v&agrave; dưới mỏng, ph&iacute;m Home vật l&yacute; bị loại bỏ, cảm biến v&acirc;n tay dời ra mặt sau m&aacute;y.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><em><img alt=\"\" src=\"/upload/20-Nokia-7-Plus-Nokia-8-VnE-3725-1519683481_680x0.jpg\" /></em></p>\n\n<p style=\"text-align:center\"><em>Th&acirc;n m&aacute;y được l&agrave;m bằng k&iacute;nh với tỷ lệ l&ecirc;n tới 95% c&ugrave;ng khung th&eacute;p kh&ocirc;ng gỉ. Điều n&agrave;y tạo ra cảm gi&aacute;c cầm m&aacute;y kh&ocirc;ng thật thoải m&aacute;i v&agrave; hơi kh&oacute; chịu khi d&ugrave;ng l&acirc;u v&igrave; c&aacute;c đường viền hơi sắc.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><em><img alt=\"\" src=\"/upload/20-Nokia-7-Plus-Nokia-8-VnE-3719-1519683472_680x0.jpg\" /></em></p>\n\n<p style=\"text-align:center\"><em>Nokia 8 Sirocco l&agrave; mẫu Android cao cấp nhất của HMD Global khi được trang bị m&agrave;n h&igrave;nh OLED 5,5 inch Quad HD, vi xử l&yacute; Snapdragon 835 của Qualcomm, RAM 6 GB, bộ nhớ trong dung lượng 128 GB.&nbsp;</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><em><img alt=\"\" src=\"/upload/20-Nokia-7-Plus-Nokia-8-VnE-3704-1519682025_680x0.jpg\" /></em></p>\n\n<p style=\"text-align:center\"><em>Ri&ecirc;ng khả năng chụp ảnh, m&aacute;y c&oacute; camera ch&iacute;nh 12 megapixel v&agrave; 13 megapixel, ống k&iacute;nh Carl Zeiss k&egrave;m phần mềm Pro Camera cho ph&eacute;p tự điều chỉnh c&aacute;c th&ocirc;ng số camera, như c&acirc;n bằng trắng, lấy n&eacute;t, ISO, phơi s&aacute;ng... bằng tay. Ống k&iacute;nh Zeiss v&agrave; phần mềm chụp ảnh gợi nhớ đến những chiếc Windows Phone Lumia chuy&ecirc;n chụp ảnh trước kia của Nokia.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><em><img alt=\"\" src=\"/upload/20-Nokia-7-Plus-Nokia-8-VnE-3726-1519683482_680x0.jpg\" /></em></p>\n\n<p style=\"text-align:center\"><em>D&ugrave; vậy, camera trước của Nokia 8 Sirocco chỉ 5 megapixel, đi k&egrave;m ống k&iacute;nh g&oacute;c rộng 84 độ cho chụp &quot;tự sướng&quot;. Mẫu m&aacute;y Nokia cao cấp n&agrave;y c&oacute; gi&aacute; 920 USD, tương đương với Galaxy S9 v&agrave; S9+ v&agrave; kh&ocirc;ng rẻ hơn nhiều so với iPhone X.</em></p>', '', 'Bộ đôi smartphone Nokia chuyên chụp ảnh - VnExpress', 'Nokia 7 Plus và Nokia 8 Sirocco đều sở hữu camera kép với ống kính Zeiss. - VnExpress', 4, 10, 1, '2018-02-28 09:21:06', '2018-02-28 11:30:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `article_category`
--

DROP TABLE IF EXISTS `article_category`;
CREATE TABLE `article_category` (
  `id` bigint(20) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `article_category`
--

INSERT INTO `article_category` (`id`, `article_id`, `category_id`, `created_at`, `updated_at`) VALUES
(32, 15, 4, '2018-02-28 07:22:41', '2018-02-28 07:22:41'),
(33, 17, 4, '2018-02-28 07:22:55', '2018-02-28 07:22:55'),
(34, 18, 4, '2018-02-28 07:23:16', '2018-02-28 07:23:16'),
(35, 19, 4, '2018-02-28 07:23:29', '2018-02-28 07:23:29'),
(36, 20, 4, '2018-02-28 07:24:00', '2018-02-28 07:24:00'),
(37, 21, 5, '2018-02-28 08:52:58', '2018-02-28 08:52:58'),
(38, 22, 5, '2018-02-28 08:58:41', '2018-02-28 08:58:41'),
(39, 23, 5, '2018-02-28 09:02:07', '2018-02-28 09:02:07'),
(40, 24, 5, '2018-02-28 09:03:46', '2018-02-28 09:03:46'),
(41, 25, 5, '2018-02-28 09:05:18', '2018-02-28 09:05:18'),
(42, 26, 5, '2018-02-28 09:09:42', '2018-02-28 09:09:42'),
(43, 27, 5, '2018-02-28 09:13:03', '2018-02-28 09:13:03'),
(44, 28, 5, '2018-02-28 09:17:25', '2018-02-28 09:17:25'),
(45, 29, 5, '2018-02-28 09:19:08', '2018-02-28 09:19:08'),
(46, 30, 5, '2018-02-28 09:21:06', '2018-02-28 09:21:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` bigint(20) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `caption` text COLLATE utf8_unicode_ci,
  `alt` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_url` text COLLATE utf8_unicode_ci,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `category_id`, `caption`, `alt`, `image`, `page_url`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bé đón giáng sinh', 'bé đón giáng sinh 1', 'slider_1.jpg', 'https://www.hdwallpapers.in', 1, 1, '2017-12-16 05:03:34', '2018-02-27 02:07:45'),
(2, 1, 'Khi trẻ cười', 'khi trẻ cười 2', 'slider_2.jpg', 'cloudbeauty.vn', 2, 1, '2017-12-16 05:04:04', '2018-02-27 02:07:51'),
(3, 2, '', '', 'member-1.png', '', 1, 1, '2017-12-28 02:38:24', '2017-12-28 02:40:03'),
(4, 2, '', '', 'member-2.png', '', 2, 1, '2017-12-28 02:38:40', '2017-12-28 02:40:03'),
(5, 2, '', '', 'member-3.png', '', 3, 1, '2017-12-28 02:38:51', '2017-12-28 02:40:07'),
(6, 2, '', '', 'member-4.png', '', 4, 1, '2017-12-28 02:38:59', '2017-12-28 02:40:03'),
(7, 2, '', '', 'member-5.png', '', 5, 1, '2017-12-28 02:39:08', '2017-12-28 02:40:03'),
(8, 2, '', '', 'member-6.png', '', 6, 1, '2017-12-28 02:39:19', '2017-12-28 02:40:03'),
(9, 2, '', '', 'member-7.png', '', 7, 1, '2017-12-28 02:39:28', '2017-12-28 02:40:03'),
(14, 1, 'test 1', 'test 1', 'slider_3.jpg', 'http://magiwan.vn/', 3, 1, '2018-01-18 07:23:11', '2018-02-27 02:07:58'),
(15, 2, '', '', 'partner-1.png', '', 8, 1, '2018-01-20 04:26:00', '2018-01-20 04:26:00'),
(16, 2, '', '', 'partner-2.png', '', 9, 1, '2018-01-20 04:26:06', '2018-01-20 04:26:06'),
(17, 2, '', '', 'partner-3.png', '', 10, 1, '2018-01-20 04:26:14', '2018-01-20 04:26:14'),
(18, 2, '', '', 'partner-4.png', '', 11, 1, '2018-01-20 04:26:23', '2018-01-20 04:26:23'),
(19, 2, '', '', 'partner-5.png', '', 12, 1, '2018-01-20 04:26:32', '2018-01-20 04:26:32'),
(20, 2, '', '', 'partner-6.png', '', 13, 1, '2018-01-20 04:26:43', '2018-01-20 04:26:43'),
(21, 2, '', '', 'partner-7.png', '', 14, 1, '2018-01-20 04:26:54', '2018-01-20 04:27:02'),
(22, 2, '', '', 'partner-8.png', '', 15, 1, '2018-01-20 04:27:12', '2018-01-20 04:27:12'),
(23, 2, '', '', 'partner-9.png', '', 16, 1, '2018-01-20 04:27:20', '2018-01-20 04:27:20'),
(24, 2, '', '', 'partner-10.png', '', 17, 1, '2018-01-20 04:27:28', '2018-01-20 04:27:28'),
(25, 2, '', '', 'partner-11.png', '', 19, 1, '2018-01-20 04:27:38', '2018-01-20 04:27:38'),
(26, 2, '', '', 'partner-12.png', '', 20, 1, '2018-01-20 04:27:50', '2018-01-20 04:27:50'),
(27, 2, '', '', 'partner-13.png', '', 21, 1, '2018-01-20 04:28:00', '2018-01-20 04:28:05'),
(28, 5, 'Thời trang nữ', 'Thời trang nữ', 'thoi-trang-nu-1.jpg', '', 1, 1, '2018-02-22 16:19:19', '2018-02-22 17:44:45'),
(29, 5, 'Thời trang nữ', 'thoi-trang-nu', 'thoi-trang-nu-2.jpg', '', 2, 1, '2018-02-22 16:19:35', '2018-02-22 17:44:53'),
(30, 7, '', '', 'thoi-trang-nu-1.jpg', '', 1, 1, '2018-02-25 12:13:48', '2018-02-25 12:13:48'),
(31, 7, '', '', 'thoi-trang-nu-2.jpg', '', 2, 1, '2018-02-25 12:13:55', '2018-02-25 12:13:55'),
(32, 8, '', '', 'thoi-trang-nu-1.jpg', '', 1, 1, '2018-02-25 12:14:08', '2018-02-25 12:14:08'),
(33, 8, '', '', 'thoi-trang-nu-2.jpg', '', 2, 1, '2018-02-25 12:14:14', '2018-02-25 12:14:14'),
(34, 9, '', '', 'thoi-trang-nu-1.jpg', '', 1, 1, '2018-02-25 12:14:27', '2018-02-25 12:14:27'),
(35, 9, '', '', 'thoi-trang-nu-2.jpg', '', 2, 1, '2018-02-25 12:14:33', '2018-02-25 12:14:33'),
(36, 10, '', '', 'thoi-trang-nu-1.jpg', '', 1, 1, '2018-02-25 12:14:43', '2018-02-25 12:14:43'),
(37, 10, '', '', 'thoi-trang-nu-2.jpg', '', 2, 1, '2018-02-25 12:14:50', '2018-02-25 12:14:50'),
(38, 11, '', '', 'thoi-trang-nu-1.jpg', '', 1, 1, '2018-02-25 12:15:00', '2018-02-25 12:15:00'),
(39, 11, '', '', 'thoi-trang-nu-2.jpg', '', 2, 1, '2018-02-25 12:15:08', '2018-02-25 12:15:08'),
(40, 12, '', '', 'thoi-trang-nu-1.jpg', '', 1, 1, '2018-02-25 12:15:20', '2018-02-25 12:15:20'),
(41, 12, '', '', 'thoi-trang-nu-2.jpg', '', 2, 1, '2018-02-25 12:15:25', '2018-02-25 12:15:25'),
(42, 13, '', '', 'thoi-trang-nu-1.jpg', '', 1, 1, '2018-02-25 12:15:37', '2018-02-25 12:15:37'),
(43, 13, '', '', 'thoi-trang-nu-2.jpg', '', 2, 1, '2018-02-25 12:15:43', '2018-02-25 12:15:43'),
(44, 14, '', '', 'thoi-trang-nu-1.jpg', '', 1, 1, '2018-02-25 12:15:54', '2018-02-25 12:15:54'),
(45, 14, '', '', 'thoi-trang-nu-2.jpg', '', 2, 1, '2018-02-25 12:16:00', '2018-02-25 12:16:00'),
(46, 15, '', '', 'thoi-trang-nu-1.jpg', '', 1, 1, '2018-02-25 12:16:11', '2018-02-25 12:16:11'),
(47, 15, '', '', 'thoi-trang-nu-2.jpg', '', 2, 1, '2018-02-25 12:16:17', '2018-02-25 12:16:17'),
(48, 6, '', '', 'thoi-trang-nu-1.jpg', '', 1, 1, '2018-02-25 12:16:33', '2018-02-25 12:16:33'),
(49, 6, '', '', 'thoi-trang-nu-2.jpg', '', 2, 1, '2018-02-25 12:16:39', '2018-02-25 12:16:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_article`
--

DROP TABLE IF EXISTS `category_article`;
CREATE TABLE `category_article` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_article`
--

INSERT INTO `category_article` (`id`, `fullname`, `meta_keyword`, `meta_description`, `alias`, `parent_id`, `image`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Hỗ trợ khách hàng', 'metakeyword Tin dự án', 'metadescription Tin dự án', 'ho-tro-khach-hang', 0, 'conmochieu-5.png', 1, 1, '2017-12-18 02:17:10', '2018-02-28 07:22:22'),
(5, 'Đời sống số', 'metakeword Ngành gỗ', 'metadescription Ngành gỗ', 'doi-song-so', 0, 'conmochieu-6.png', 2, 1, '2017-12-18 02:17:19', '2018-02-28 08:08:31'),
(8, 'Sản phẩm', '', '', 'san-pham', 0, NULL, 3, 1, '2018-02-28 08:08:49', '2018-02-28 08:08:49'),
(9, 'Điện tử gia dụng', '', '', 'dien-tu-gia-dung', 0, NULL, 4, 1, '2018-02-28 08:09:03', '2018-02-28 08:09:03'),
(10, 'Làng game', '', '', 'lang-game', 0, NULL, 5, 1, '2018-02-28 08:09:29', '2018-02-28 08:09:39'),
(11, 'Kinh nghiệm', '', '', 'kinh-nghiem', 0, NULL, 6, 1, '2018-02-28 08:09:50', '2018-02-28 08:10:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_banner`
--

DROP TABLE IF EXISTS `category_banner`;
CREATE TABLE `category_banner` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_banner`
--

INSERT INTO `category_banner` (`id`, `fullname`, `theme_location`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Slideshow', 'slideshow', 1, 1, '2017-12-16 05:02:58', '2017-12-28 08:45:44'),
(2, 'Đối tác', 'doi-tac', 1, 12, '2017-12-26 04:32:09', '2018-02-25 12:13:20'),
(5, 'Thời trang nữ', 'thoi-trang-nu', 1, 2, '2018-02-22 16:18:56', '2018-02-25 12:13:20'),
(6, 'Điện thoại máy tính', 'dien-thoai-may-tinh', 1, 13, '2018-02-25 12:10:15', '2018-02-25 12:13:20'),
(7, 'Thời trang nam', 'thoi-trang-nam', 1, 3, '2018-02-25 12:10:28', '2018-02-25 12:13:20'),
(8, 'Giày dép túi xách', 'giay-dep-tui-xach', 1, 4, '2018-02-25 12:10:49', '2018-02-25 12:13:20'),
(9, 'Phụ kiện số camera', 'phu-kien-so-camera', 1, 5, '2018-02-25 12:11:10', '2018-02-25 12:13:20'),
(10, 'Mẹ  bé - Đồ chơi', 'me-be-do-choi', 1, 6, '2018-02-25 12:11:27', '2018-02-25 12:13:20'),
(11, 'Đồng hồ phụ kiện', 'dong-ho-phu-kien', 1, 7, '2018-02-25 12:11:47', '2018-02-25 12:13:20'),
(12, 'Nhà cửa tân trang nhà', 'nha-cua-tan-trang-nha', 1, 8, '2018-02-25 12:12:08', '2018-02-25 12:13:20'),
(13, 'Sức khỏe sắc đẹp', 'suc-khoe-sac-dep', 1, 9, '2018-02-25 12:12:26', '2018-02-25 12:13:20'),
(14, 'Tivi thiết bị âm thanh', 'tivi-thiet-bi-am-thanh', 1, 10, '2018-02-25 12:12:42', '2018-02-25 12:13:20'),
(15, 'Dụng cụ thể thao', 'dung-cu-the-thao', 1, 11, '2018-02-25 12:13:00', '2018-02-25 12:13:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_param`
--

DROP TABLE IF EXISTS `category_param`;
CREATE TABLE `category_param` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `param_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_param`
--

INSERT INTO `category_param` (`id`, `fullname`, `alias`, `parent_id`, `param_value`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Xuất xứ', 'xuat-xu', 0, '', 1, 1, '2018-02-01 20:40:54', '2018-02-02 01:34:27'),
(5, 'Nhật', 'nhat', 1, '', 1, 1, '2018-02-01 20:46:48', '2018-02-02 01:40:43'),
(9, 'Thương hiệu', 'thuong-hieu', 0, '', 2, 1, '2018-02-02 01:38:44', '2018-02-02 01:38:48'),
(10, 'Mỹ', 'my', 1, '', 2, 1, '2018-02-02 01:39:59', '2018-02-02 01:39:59'),
(11, 'Hàn Quốc', 'han-quoc', 1, '', 3, 1, '2018-02-02 01:40:14', '2018-02-02 01:40:14'),
(12, 'Trung Quốc', 'trung-quoc', 1, '', 4, 1, '2018-02-02 01:40:27', '2018-02-02 01:40:30'),
(13, 'Nike', 'nike', 9, '', 9, 1, '2018-02-02 01:41:04', '2018-02-02 01:44:02'),
(14, 'Adidas', 'adidas', 9, '', 2, 1, '2018-02-02 01:41:32', '2018-02-02 01:44:02'),
(15, 'Jordan', 'jordan', 9, '', 4, 1, '2018-02-02 01:41:45', '2018-02-02 01:44:02'),
(16, 'Converse', 'converse', 9, '', 5, 1, '2018-02-02 01:42:53', '2018-02-02 01:44:02'),
(17, 'Reebok', 'reebok', 9, '', 6, 1, '2018-02-02 01:43:05', '2018-02-02 01:44:02'),
(18, 'Vans', 'vans', 9, '', 7, 1, '2018-02-02 01:43:17', '2018-02-02 01:44:02'),
(19, 'Under Armour', 'under-armour', 9, '', 8, 1, '2018-02-02 01:43:26', '2018-02-02 01:44:02'),
(20, 'Puma', 'puma', 9, '', 1, 1, '2018-02-02 01:43:34', '2018-02-02 01:43:34'),
(21, 'New Balance', 'new-balance', 9, '', 3, 1, '2018-02-02 01:43:49', '2018-02-02 01:44:02'),
(22, 'Đơn vị', 'don-vi', 0, '', 3, 1, '2018-02-02 01:44:45', '2018-02-02 01:45:02'),
(23, 'Chiếc', 'chiec', 22, '', 1, 1, '2018-02-02 01:45:15', '2018-02-02 01:45:15'),
(24, 'Bịch', 'bich', 22, '', 1, 1, '2018-02-02 01:45:25', '2018-02-02 01:45:25'),
(25, 'Lọ', 'lo', 22, '', 1, 1, '2018-02-02 01:45:34', '2018-02-02 01:45:34'),
(26, 'Lô hàng', 'lo-hang', 22, '', 1, 1, '2018-02-02 01:46:20', '2018-02-02 01:46:20'),
(27, 'Màu', 'mau', 0, '', 4, 1, '2018-02-02 01:47:29', '2018-02-02 01:47:29'),
(28, 'Xanh lá cây', 'xanh-la-cay', 27, '#00c60e', 5, 1, '2018-02-02 01:48:01', '2018-02-02 01:51:22'),
(29, 'Đỏ', 'do', 27, '#c60000', 4, 1, '2018-02-02 01:48:22', '2018-02-02 01:51:22'),
(30, 'Tím', 'tim', 27, '#8c00c6', 3, 1, '2018-02-02 01:48:45', '2018-02-02 01:51:22'),
(31, 'Vàng', 'vang', 27, '#e6e900', 2, 1, '2018-02-02 01:49:17', '2018-02-02 01:51:22'),
(32, 'Hồng', 'hong', 27, '#ff00e4', 1, 1, '2018-02-02 01:49:49', '2018-02-02 01:51:22'),
(33, 'Bạc', 'bac', 27, '#e8d65d', 6, 1, '2018-02-02 01:51:00', '2018-02-02 01:51:22'),
(34, 'Kích thước', 'kich-thuoc', 0, '1', 5, 1, '2018-02-02 04:24:15', '2018-02-02 04:24:23'),
(35, 'S', 's', 34, '', 1, 1, '2018-02-02 04:24:40', '2018-02-02 04:24:40'),
(36, 'M', 'm', 34, '', 2, 1, '2018-02-02 04:24:54', '2018-02-02 04:25:48'),
(37, 'L', 'l', 34, '', 3, 1, '2018-02-02 04:25:02', '2018-02-02 04:25:48'),
(38, 'XL', 'xl', 34, '', 4, 1, '2018-02-02 04:25:11', '2018-02-02 04:25:48'),
(39, 'XS', 'xs', 34, '', 5, 1, '2018-02-02 04:25:21', '2018-02-02 04:25:48'),
(40, 'REN', 'ren', 9, '', 1, 1, '2018-02-03 04:15:08', '2018-02-03 04:15:08'),
(41, 'NOSBYN', 'nosbyn', 9, '', 1, 1, '2018-02-03 04:15:24', '2018-02-03 04:15:24'),
(42, 'THE BLUE T-SHIRT', 'the-blue-t-shirt', 9, '', 1, 1, '2018-02-03 04:15:38', '2018-02-03 04:15:38'),
(43, 'COCOSIN', 'cocosin', 9, '', 1, 1, '2018-02-03 04:15:53', '2018-02-03 04:15:53'),
(44, 'WEPHOBIA', 'wephobia', 9, '', 1, 1, '2018-02-03 04:16:05', '2018-02-03 04:16:05'),
(45, 'MAGONN', 'magonn', 9, '', 1, 1, '2018-02-03 04:16:21', '2018-02-03 04:16:21'),
(46, 'LIBE', 'libe', 9, '', 1, 1, '2018-02-03 04:16:33', '2018-02-03 04:16:33'),
(47, 'Chất liệu', 'chat-lieu', 0, '', 6, 1, '2018-02-03 11:34:21', '2018-02-03 11:34:29'),
(48, 'Thun', 'thun', 47, '', 2, 1, '2018-02-03 11:34:43', '2018-02-03 11:35:29'),
(49, 'Vải', 'vai', 47, '', 1, 1, '2018-02-03 11:34:53', '2018-02-03 11:35:29'),
(50, 'Nhà thiết kế', 'nha-thiet-ke', 0, '', 7, 1, '2018-02-03 11:36:34', '2018-02-03 11:36:34'),
(51, 'Clara Fashion', 'clara-fashion', 50, '', 1, 1, '2018-02-03 11:36:54', '2018-02-03 11:36:54'),
(52, 'Tình trạng', 'tinh-trang', 0, '', 7, 1, '2018-02-27 03:33:32', '2018-02-27 03:33:46'),
(53, 'Mới', 'moi', 52, '1', 1, 1, '2018-02-27 03:34:09', '2018-02-27 03:34:09'),
(54, 'Cũ', 'cu', 52, '0', 2, 1, '2018-02-27 03:34:29', '2018-02-27 03:34:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_product`
--

DROP TABLE IF EXISTS `category_product`;
CREATE TABLE `category_product` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `category_product`
--

INSERT INTO `category_product` (`id`, `fullname`, `meta_keyword`, `meta_description`, `alias`, `image`, `status`, `parent_id`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', 'metakeyword Gỗ óc chó', 'metadescription Gỗ óc chó', 'laptop', 'laptop-sinh-vien.png', 1, 0, 1, '2018-01-02 05:00:16', '2018-02-28 01:58:22'),
(12, 'Máy tính', 'metakeyword Điện thoại mới', 'metadescription Điện thoại mới', 'may-tinh', NULL, 1, 0, 2, '2018-02-01 03:00:35', '2018-02-28 01:58:26'),
(13, 'Tablet', 'metakeyword Điện thoại cũ', 'metadescription Điện thoại cũ', 'tablet', NULL, 1, 0, 3, '2018-02-01 03:04:34', '2018-02-28 01:58:31'),
(14, 'Điện thoại', 'metakeyword laptop', 'metadescription laptop', 'dien-thoai', NULL, 1, 0, 4, '2018-02-01 03:05:37', '2018-02-28 01:58:36'),
(15, 'Phụ kiện điện thoại', 'metakeyword Máy tính bảng', 'metadescription Máy tính bảng', 'phu-kien-dien-thoai', NULL, 1, 0, 5, '2018-02-01 03:06:32', '2018-02-26 07:36:09'),
(16, 'Phụ kiện máy tính', 'metakeyword Máy tính để bàn', 'metadescription Máy tính để bàn', 'phu-kien-may-tinh', NULL, 1, 0, 6, '2018-02-01 03:07:07', '2018-02-26 07:36:09'),
(17, 'Loa âm thanh', 'metakeyword Máy in và phụ kiện', 'metadescription Máy in và phụ kiện', 'loa-am-thanh', NULL, 1, 0, 7, '2018-02-01 03:07:37', '2018-02-28 04:01:59'),
(185, 'Iphone', '', '', 'iphone', NULL, 1, 14, 1, '2018-02-26 07:44:10', '2018-02-26 07:52:44'),
(186, 'Samsung', '', '', 'samsung', NULL, 1, 14, 2, '2018-02-26 07:44:23', '2018-02-26 07:52:44'),
(187, 'Sony', '', '', 'sony', NULL, 1, 14, 3, '2018-02-26 07:44:32', '2018-02-26 07:52:44'),
(188, 'Oppo', '', '', 'oppo', NULL, 1, 14, 4, '2018-02-26 07:44:43', '2018-02-26 07:52:44'),
(189, 'Philips', '', '', 'philips', NULL, 1, 14, 5, '2018-02-26 07:44:57', '2018-02-26 07:52:44'),
(190, 'Nokia', '', '', 'nokia', NULL, 1, 14, 6, '2018-02-26 07:45:07', '2018-02-26 07:52:44'),
(191, 'LG', '', '', 'lg', NULL, 1, 14, 7, '2018-02-26 07:45:20', '2018-02-26 07:52:44'),
(192, 'HTC', '', '', 'htc', NULL, 1, 14, 8, '2018-02-26 07:45:29', '2018-02-26 07:52:44'),
(193, 'Blackberry', '', '', 'blackberry', NULL, 1, 14, 9, '2018-02-26 07:45:59', '2018-02-26 07:52:44'),
(194, 'Ginonee', '', '', 'ginonee', NULL, 1, 14, 10, '2018-02-26 07:46:12', '2018-02-26 07:52:44'),
(195, 'Q-mobile', '', '', 'q-mobile', NULL, 1, 14, 11, '2018-02-26 07:46:26', '2018-02-26 07:52:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_video`
--

DROP TABLE IF EXISTS `category_video`;
CREATE TABLE `category_video` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_video`
--

INSERT INTO `category_video` (`id`, `fullname`, `meta_keyword`, `meta_description`, `alias`, `parent_id`, `image`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Video', 'metakeyword video', 'metadescription video', 'video', NULL, 'thuvienhinh-1.png', 1, 1, '2018-01-09 10:03:48', '2018-01-09 11:08:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district`
--

DROP TABLE IF EXISTS `district`;
CREATE TABLE `district` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `district`
--

INSERT INTO `district` (`id`, `fullname`, `alias`, `province_id`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tân Bình', 'tan-binh', 24, 3, 1, '2018-02-26 03:03:50', '2018-02-26 03:23:39'),
(2, 'Phú Nhuận', 'phu-nhuan', 24, 4, 1, '2018-02-26 03:19:32', '2018-02-26 03:23:39'),
(3, 'Quận 1', 'quan-1', 24, 1, 1, '2018-02-26 03:19:56', '2018-02-26 03:21:12'),
(4, 'Quận 2', 'quan-2', 24, 2, 1, '2018-02-26 03:20:06', '2018-02-26 03:26:09'),
(5, 'Quận 2', 'quan-2', 36, 6, 1, '2018-02-26 03:23:23', '2018-02-26 03:25:07'),
(6, 'Quận 1', 'quan-1', 36, 5, 1, '2018-02-26 03:24:19', '2018-02-26 03:25:00'),
(7, 'Tân Bình', 'tan-binh', 36, 7, 1, '2018-02-26 03:24:47', '2018-02-26 03:25:07'),
(8, 'Phú Nhuận', 'phu-nhuan', 36, 8, 1, '2018-02-26 03:25:52', '2018-02-26 03:25:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_member`
--

DROP TABLE IF EXISTS `group_member`;
CREATE TABLE `group_member` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `group_member`
--

INSERT INTO `group_member` (`id`, `fullname`, `alias`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', 1, '2016-12-17 05:05:18', '2018-02-01 20:44:57'),
(2, 'Bài viết', 'bai-viet', 2, '2016-12-17 05:05:41', '2018-01-26 04:49:29'),
(3, 'Thành viên vip', 'thanh-vien-vip', 3, '2018-01-26 04:06:49', '2018-01-26 04:49:35'),
(4, 'Thành viên thường', 'thanh-vien-thuong', 4, '2018-01-26 04:08:16', '2018-01-26 04:49:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_privilege`
--

DROP TABLE IF EXISTS `group_privilege`;
CREATE TABLE `group_privilege` (
  `id` int(11) NOT NULL,
  `group_member_id` int(11) NOT NULL,
  `privilege_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `group_privilege`
--

INSERT INTO `group_privilege` (`id`, `group_member_id`, `privilege_id`, `created_at`, `updated_at`) VALUES
(3040, 2, 1, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3041, 2, 2, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3042, 2, 3, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3043, 2, 4, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3044, 2, 5, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3045, 2, 16, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3046, 2, 17, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3047, 2, 33, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3048, 2, 49, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3049, 2, 50, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3050, 2, 55, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3051, 2, 56, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3052, 2, 57, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3053, 2, 58, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3054, 2, 59, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3055, 2, 60, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3056, 2, 61, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3057, 2, 62, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3058, 2, 63, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3059, 2, 67, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3060, 2, 68, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3061, 2, 79, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3062, 2, 80, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3063, 2, 85, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3064, 2, 86, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3065, 2, 103, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3066, 2, 104, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3067, 2, 105, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3068, 2, 106, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3069, 2, 107, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3070, 2, 108, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3071, 2, 109, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3072, 2, 110, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3073, 2, 111, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3074, 2, 112, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3075, 2, 113, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3076, 2, 114, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3077, 2, 115, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3078, 2, 116, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3079, 2, 117, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3080, 2, 118, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3081, 2, 119, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3082, 2, 120, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3083, 2, 121, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3084, 2, 122, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3085, 2, 123, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3086, 2, 124, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3087, 2, 125, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3088, 2, 126, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3089, 2, 127, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3090, 2, 128, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3091, 2, 129, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3092, 2, 130, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3093, 2, 131, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3094, 2, 132, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3095, 2, 133, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3096, 2, 134, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3097, 2, 135, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3098, 2, 136, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3099, 2, 137, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3100, 2, 138, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3101, 2, 139, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3102, 2, 140, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3103, 2, 141, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3104, 2, 142, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3105, 2, 143, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3106, 2, 144, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3180, 3, 0, '2018-01-26 04:06:59', '2018-01-26 04:06:59'),
(3641, 1, 1, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3642, 1, 2, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3643, 1, 3, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3644, 1, 4, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3645, 1, 5, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3646, 1, 16, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3647, 1, 17, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3648, 1, 18, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3649, 1, 19, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3650, 1, 24, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3651, 1, 25, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3652, 1, 33, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3653, 1, 43, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3654, 1, 44, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3655, 1, 49, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3656, 1, 50, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3657, 1, 55, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3658, 1, 56, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3659, 1, 57, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3660, 1, 58, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3661, 1, 59, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3662, 1, 60, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3663, 1, 61, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3664, 1, 62, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3665, 1, 63, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3666, 1, 67, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3667, 1, 68, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3668, 1, 79, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3669, 1, 80, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3670, 1, 85, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3671, 1, 86, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3672, 1, 103, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3673, 1, 104, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3674, 1, 105, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3675, 1, 106, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3676, 1, 107, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3677, 1, 108, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3678, 1, 109, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3679, 1, 110, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3680, 1, 111, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3681, 1, 112, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3682, 1, 113, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3683, 1, 114, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3684, 1, 115, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3685, 1, 116, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3686, 1, 117, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3687, 1, 118, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3688, 1, 119, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3689, 1, 120, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3690, 1, 121, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3691, 1, 122, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3692, 1, 123, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3693, 1, 124, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3694, 1, 125, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3695, 1, 126, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3696, 1, 127, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3697, 1, 128, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3698, 1, 129, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3699, 1, 130, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3700, 1, 131, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3701, 1, 132, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3702, 1, 133, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3703, 1, 134, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3704, 1, 135, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3705, 1, 136, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3706, 1, 137, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3707, 1, 138, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3708, 1, 139, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3709, 1, 140, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3710, 1, 141, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3711, 1, 142, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3712, 1, 143, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3713, 1, 144, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3714, 1, 145, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3715, 1, 146, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3716, 1, 147, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3717, 1, 148, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3718, 1, 149, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3719, 1, 150, '2018-02-01 20:44:57', '2018-02-01 20:44:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `payment_method_id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice_detail`
--

DROP TABLE IF EXISTS `invoice_detail`;
CREATE TABLE `invoice_detail` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `product_image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `product_total_price` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `menu_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `fullname`, `alias`, `parent_id`, `menu_type_id`, `level`, `menu_class`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(57, 'Trang chủ', 'trang-chu', 0, 5, 0, NULL, 1, 1, '2018-01-10 07:14:21', '2018-01-10 07:14:21'),
(58, 'Giới thiệu', 'gioi-thieu', 0, 5, 0, NULL, 2, 1, '2018-01-10 07:14:39', '2018-01-23 02:05:46'),
(59, 'Tin tức', 'tin-tuc', 0, 5, 0, NULL, 5, 1, '2018-01-10 07:14:57', '2018-01-23 02:10:38'),
(61, 'Liên hệ', 'lien-he', 0, 5, 0, NULL, 6, 1, '2018-01-10 07:15:34', '2018-01-23 02:11:11'),
(88, 'Tin dự án', 'ho-tro-khach-hang', 59, 5, 1, NULL, 1, 1, '2018-01-10 17:26:01', '2018-01-21 04:24:20'),
(89, 'Tin bất động sản', 'doi-song-so', 59, 5, 1, NULL, 2, 1, '2018-01-10 17:26:18', '2018-01-21 04:24:38'),
(137, 'Tầm nhìn', 'tam-nhin', 58, 5, 1, NULL, 1, 1, '2018-01-23 02:06:04', '2018-01-23 02:06:04'),
(138, 'Sứ mệnh', 'su-menh', 58, 5, 1, NULL, 2, 1, '2018-01-23 02:06:17', '2018-01-23 02:06:17'),
(139, 'Giá trị cốt lõi', 'gia-tri-cot-loi', 58, 5, 1, NULL, 3, 1, '2018-01-23 02:06:30', '2018-01-23 02:06:30'),
(140, 'Triết lý kinh doanh', 'triet-ly-kinh-doanh', 58, 5, 1, NULL, 4, 1, '2018-01-23 02:06:44', '2018-01-23 02:06:44'),
(141, 'Dự án', 'du-an', 0, 5, 0, NULL, 3, 1, '2018-01-23 02:07:24', '2018-01-23 02:07:24'),
(142, 'Dịch vụ', 'dich-vu', 0, 5, 0, NULL, 4, 1, '2018-01-23 02:07:51', '2018-01-23 02:10:38'),
(143, 'Quản lý bất động sản', 'quan-ly-bat-dong-san', 142, 5, 1, NULL, 1, 1, '2018-01-23 02:08:11', '2018-01-23 02:08:11'),
(144, 'Cho thuê căn hộ', 'cho-thue-can-ho', 142, 5, 1, NULL, 2, 1, '2018-01-23 02:08:26', '2018-01-23 02:08:26'),
(145, 'Bán bất động sản', 'ban-bat-dong-san', 142, 5, 1, NULL, 3, 1, '2018-01-23 02:08:40', '2018-01-23 02:08:40'),
(146, 'Thị trường', 'thi-truong', 59, 5, 1, NULL, 3, 1, '2018-01-23 02:09:43', '2018-01-23 02:09:43'),
(147, 'Tư vấn', 'tu-van', 59, 5, 1, NULL, 4, 1, '2018-01-23 02:09:56', '2018-01-23 02:09:56'),
(340, 'Laptop', 'laptop', 0, 1, 0, '', 1, 1, '2018-02-26 07:47:48', '2018-02-28 02:00:27'),
(341, 'Máy tính', 'may-tinh', 0, 1, 0, '', 2, 1, '2018-02-26 07:47:58', '2018-02-28 02:00:31'),
(342, 'Tablet', 'tablet', 0, 1, 0, '', 3, 1, '2018-02-26 07:48:06', '2018-02-28 02:00:39'),
(343, 'Điện thoại', 'dien-thoai', 0, 1, 0, '', 4, 1, '2018-02-26 07:48:22', '2018-02-28 02:00:43'),
(344, 'Phụ kiện điện thoại', 'phu-kien-dien-thoai', 0, 1, 0, '', 5, 1, '2018-02-26 07:48:34', '2018-02-26 07:48:34'),
(345, 'Phụ kiện máy tính', 'phu-kien-may-tinh', 0, 1, 0, '', 6, 1, '2018-02-26 07:48:46', '2018-02-26 07:48:46'),
(346, 'Loa âm thanh', 'loa-am-thanh', 0, 1, 0, '', 7, 1, '2018-02-26 07:48:59', '2018-02-28 04:02:28'),
(348, 'Iphone', 'iphone', 343, 1, 1, '', 1, 1, '2018-02-26 07:53:22', '2018-02-26 07:53:22'),
(349, 'Samsung', 'samsung', 343, 1, 1, '', 2, 1, '2018-02-26 07:53:40', '2018-02-26 07:53:40'),
(350, 'Sony', 'sony', 343, 1, 1, '', 3, 1, '2018-02-26 07:53:55', '2018-02-26 07:53:55'),
(351, 'Oppo', 'oppo', 343, 1, 1, '', 4, 1, '2018-02-26 07:54:30', '2018-02-26 07:54:30'),
(352, 'Philips', 'philips', 343, 1, 1, '', 5, 1, '2018-02-26 07:54:48', '2018-02-26 07:54:48'),
(353, 'Nokia', 'nokia', 343, 1, 1, '', 6, 1, '2018-02-26 07:55:07', '2018-02-26 07:55:07'),
(354, 'LG', 'lg', 343, 1, 1, '', 7, 1, '2018-02-26 07:55:27', '2018-02-26 07:55:27'),
(355, 'HTC', 'htc', 343, 1, 1, '', 8, 1, '2018-02-26 07:55:44', '2018-02-26 07:57:30'),
(356, 'Blackberry', 'blackberry', 343, 1, 1, '', 9, 1, '2018-02-26 07:56:04', '2018-02-26 07:56:04'),
(357, 'Ginonee', 'ginonee', 343, 1, 1, '', 10, 1, '2018-02-26 07:56:34', '2018-02-26 07:56:34'),
(358, 'Q-mobile', 'q-mobile', 343, 1, 1, '', 11, 1, '2018-02-26 07:56:47', '2018-02-26 07:56:47'),
(361, 'Laptop', 'laptop', 0, 8, 0, '', 1, 1, '2018-02-28 07:00:20', '2018-02-28 07:00:20'),
(362, 'Máy tính', 'may-tinh', 0, 8, 0, '', 2, 1, '2018-02-28 07:00:28', '2018-02-28 07:00:28'),
(363, 'Tablet', 'tablet', 0, 8, 0, '', 3, 1, '2018-02-28 07:00:41', '2018-02-28 07:00:41'),
(364, 'Điện thoại', 'dien-thoai', 0, 8, 0, '', 4, 1, '2018-02-28 07:00:50', '2018-02-28 07:00:50'),
(365, 'Phụ kiện điện thoại', 'phu-kien-dien-thoai', 0, 8, 0, '', 5, 1, '2018-02-28 07:00:59', '2018-02-28 07:00:59'),
(366, 'Phụ kiện máy tính', 'phu-kien-may-tinh', 0, 8, 0, '', 6, 1, '2018-02-28 07:01:08', '2018-02-28 07:01:08'),
(367, 'Loa âm thanh', 'loa-am-thanh', 0, 8, 0, '', 7, 1, '2018-02-28 07:01:17', '2018-02-28 07:01:17'),
(372, 'Chính sách giao hàng', 'chinh-sach-giao-hang', 0, 9, 0, '', 1, 1, '2018-02-28 07:25:53', '2018-02-28 07:25:53'),
(373, 'Đổi trả bảo hành', 'doi-tra-bao-hanh', 0, 9, 0, '', 2, 1, '2018-02-28 07:26:05', '2018-02-28 07:26:05'),
(374, 'Hướng dẫn mua hàng', 'huong-dan-mua-hang', 0, 9, 0, '', 3, 1, '2018-02-28 07:26:16', '2018-02-28 07:26:16'),
(375, 'Quy chế hoạt động', 'quy-che-hoat-dong', 0, 9, 0, '', 4, 1, '2018-02-28 07:26:27', '2018-02-28 07:26:27'),
(376, 'Giới thiệu', 'gioi-thieu', 0, 9, 0, '', 5, 1, '2018-02-28 07:26:39', '2018-02-28 07:26:39'),
(377, 'Liên hệ', 'lien-he', 0, 9, 0, '', 6, 1, '2018-02-28 07:26:56', '2018-02-28 07:27:00'),
(382, 'Đời sống số', 'doi-song-so', 0, 3, 0, '', 1, 1, '2018-02-28 08:10:40', '2018-02-28 08:10:40'),
(383, 'Sản phẩm', 'san-pham', 0, 3, 0, '', 2, 1, '2018-02-28 08:10:48', '2018-02-28 08:10:48'),
(384, 'Điện tử gia dụng', 'dien-tu-gia-dung', 0, 3, 0, '', 3, 1, '2018-02-28 08:10:55', '2018-02-28 08:10:55'),
(386, 'Làng game', 'lang-game', 0, 3, 0, '', 4, 1, '2018-02-28 08:11:18', '2018-02-28 08:11:18'),
(387, 'Kinh nghiệm', 'kinh-nghiem', 0, 3, 0, '', 5, 1, '2018-02-28 08:11:39', '2018-02-28 08:11:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type`
--

DROP TABLE IF EXISTS `menu_type`;
CREATE TABLE `menu_type` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type`
--

INSERT INTO `menu_type` (`id`, `fullname`, `theme_location`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'MainMenu', 'main-menu', 1, 1, '2017-12-15 03:37:06', '2018-02-22 17:15:43'),
(3, 'Tin tức sự kiện', 'ttsk', 1, 3, '2018-01-03 04:22:54', '2018-02-28 07:58:31'),
(5, 'MobileMenu', 'mobile-menu', 1, 5, '2018-01-09 19:31:48', '2018-01-09 19:31:48'),
(8, 'Danh mục sản phẩm', 'danhmucspfooter', 1, 4, '2018-02-28 06:56:55', '2018-02-28 06:59:40'),
(9, 'Hỗ trợ khách hàng', 'htkh', 1, 6, '2018-02-28 07:19:49', '2018-02-28 07:25:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `module_item`
--

DROP TABLE IF EXISTS `module_item`;
CREATE TABLE `module_item` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` text COLLATE utf8_unicode_ci,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `component` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `setting` text COLLATE utf8_unicode_ci,
  `status` int(1) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `module_item`
--

INSERT INTO `module_item` (`id`, `fullname`, `item_id`, `position`, `component`, `setting`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(9, 'Sản phẩm mới', '[{\"id\":1,\"sort_order\":\"1\"},{\"id\":2,\"sort_order\":\"2\"},{\"id\":3,\"sort_order\":\"3\"},{\"id\":4,\"sort_order\":\"4\"},{\"id\":5,\"sort_order\":\"5\"},{\"id\":6,\"sort_order\":\"6\"},{\"id\":7,\"sort_order\":\"7\"},{\"id\":8,\"sort_order\":\"8\"},{\"id\":9,\"sort_order\":\"9\"},{\"id\":10,\"sort_order\":\"10\"},{\"id\":11,\"sort_order\":\"11\"},{\"id\":12,\"sort_order\":\"12\"},{\"id\":13,\"sort_order\":\"13\"},{\"id\":14,\"sort_order\":\"14\"},{\"id\":15,\"sort_order\":\"15\"},{\"id\":16,\"sort_order\":\"16\"},{\"id\":17,\"sort_order\":\"17\"},{\"id\":18,\"sort_order\":\"18\"},{\"id\":19,\"sort_order\":\"19\"},{\"id\":20,\"sort_order\":\"20\"}]', 'san-pham-moi', 'product', NULL, 1, 4, '2018-01-10 15:43:11', '2018-01-14 05:38:37'),
(10, 'Tư vấn giải pháp', '[{\"id\":20,\"sort_order\":\"1\"},{\"id\":19,\"sort_order\":\"2\"},{\"id\":18,\"sort_order\":\"3\"},{\"id\":17,\"sort_order\":\"4\"},{\"id\":16,\"sort_order\":\"5\"},{\"id\":15,\"sort_order\":\"6\"}]', 'tu-van-giai-phap-widget', 'article', NULL, 1, 5, '2018-01-10 17:40:07', '2018-01-14 06:13:38'),
(12, 'Tin tức', '[{\"id\":7,\"sort_order\":\"1\"},{\"id\":11,\"sort_order\":\"2\"},{\"id\":12,\"sort_order\":\"3\"},{\"id\":13,\"sort_order\":\"4\"},{\"id\":14,\"sort_order\":\"5\"},{\"id\":15,\"sort_order\":\"6\"},{\"id\":16,\"sort_order\":\"7\"},{\"id\":17,\"sort_order\":\"8\"},{\"id\":18,\"sort_order\":\"9\"},{\"id\":19,\"sort_order\":\"10\"},{\"id\":20,\"sort_order\":\"11\"},{\"id\":21,\"sort_order\":\"12\"}]', 'news-between', 'article', NULL, 1, 1, '2018-01-10 19:16:28', '2018-01-19 18:21:17'),
(13, 'Các tin khác', '[{\"id\":15,\"sort_order\":1},{\"id\":17,\"sort_order\":3},{\"id\":18,\"sort_order\":4}]', 'other-news', 'article', NULL, 1, 2, '2018-01-10 19:30:14', '2018-02-22 01:32:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `organization`
--

DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `count_view` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `count_view` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`id`, `fullname`, `alias`, `theme_location`, `image`, `intro`, `content`, `description`, `meta_keyword`, `meta_description`, `count_view`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Công Ty TNHH GreeneCoLife', 'cong-ty-tnhh-greenecolife', 'intro-footer', NULL, '', '<p>Vp Giao dịch : 27/13/8 Đường số 27, P.Hiệp B&igrave;nh Ch&aacute;nh, Q.Thủ Đức</p>\n\n<p>Điện thoại: 0902.90.74.75<br />\nEmail: gellumber@gmail.com<br />\nWebsite:http://greenecolife.vn</p>', '', '', '', NULL, 6, 1, '2017-12-28 04:10:41', '2018-01-17 01:33:54'),
(2, 'Về chúng tôi', 've-chung-toi', 'about-us-footer', NULL, '', '<p>&quot;GreenEcoLife cam kết tất cả quyền lợi d&agrave;nh cho kh&aacute;ch h&agrave;ng&quot;</p>', '', '', '', NULL, 2, 1, '2017-12-28 04:54:45', '2018-01-14 06:43:47'),
(4, 'Về Công Ty TNHH GreeneCoLife', 've-cong-ty-tnhh-greenecolife', 'introduce', 'conmochieu-10.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nWhy do we use it?\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<p style=\"text-align:justify\"><span style=\"font-size:24px\"><strong>GỖ NHẬP KHẨU: GỖ SỒI, GỖ &Oacute;C CH&Oacute;, GỖ TẦN B&Igrave;</strong></span></p>\n\n<p style=\"text-align:justify\"><span style=\"font-size:18px\"><em>Giới thiệu chung:</em></span></p>\n\n<p style=\"text-align:justify\">C&ocirc;ng ty tnhh GreenEcoLife (GEL), l&agrave; nh&agrave; nhập khẩu v&agrave; ph&acirc;n phối gỗ nguy&ecirc;n liệu Mỹ: gỗ &oacute;c ch&oacute;, gỗ sồi, gỗ tần b&igrave;, v&aacute;n s&agrave;n, &hellip;</p>\n\n<p style=\"text-align:justify\">Năm 2012, với nhu cầu cần rất nhiều về nguồn gỗ nguy&ecirc;n liệu chất lượng cho lĩnh vực sản xuất nội thất gỗ cao cấp của Việt Nam. GreenEcoLife Việt Nam ra đời từ đ&oacute;.</p>\n\n<p style=\"text-align:justify\">Hiện n&agrave;y, C&ocirc;ng ty tnhh GreenEcoLife (GEL) l&agrave; một trong c&aacute;c nh&agrave; nhập khẩu v&agrave; cung cấp gỗ nguy&ecirc;n liệu h&agrave;ng đầu tại khu vực miền Nam về: gỗ sồi, gỗ &oacute;c ch&oacute;, gỗ tần b&igrave;, &hellip;</p>\n\n<p style=\"text-align:justify\"><span style=\"font-size:18px\"><em>C&aacute;c sản phẩm gỗ nhập khẩu GreenEcoLife Việt Nam:</em></span></p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/gioi-thieu-go-soi-trang-.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh : Gỗ sồi trắng</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/gioi-thieu-go-oc-cho.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh : Gỗ &oacute;c ch&oacute;</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/gioi-thieu-go-tan-bi.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh : Gỗ tần b&igrave;</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p>C&aacute;c đối t&aacute;c v&agrave; kh&aacute;ch h&agrave;ng của C&ocirc;ng ty tnhh GreenEcoLife (GEL) chủ yếu l&agrave;: c&ocirc;ng ty thương mại, xưởng sản xuất, nội thất, c&ocirc;ng ty thiết kế x&acirc;y dựng, &hellip;.</p>\n\n<p>Hiện nay, với nguồn gỗ tự nhi&ecirc;n ng&agrave;y c&agrave;ng khan hiếm, gi&aacute; gỗ nguy&ecirc;n liệu tự nhi&ecirc;n ng&agrave;y c&agrave;ng bị đẩy l&ecirc;n cao, c&ugrave;ng với rất nhiều c&aacute;c c&ocirc;ng ty nhập khẩu gỗ h&igrave;nh th&agrave;nh tr&ecirc;n thị trường, chất lượng gỗ cũng kh&aacute;c nhau, &nbsp;th&igrave; Greenecolife Việt Nam sẽ l&agrave; sự lựa chọn ho&agrave;n hảo về cung cấp gỗ nguy&ecirc;n liệu d&agrave;nh cho qu&yacute; xưởng sản xuất gỗ, qu&yacute; c&ocirc;ng ty thiết kế nội thất với chất lượng gỗ nguy&ecirc;n liệu tốt v&agrave; gi&aacute; cả phải chăng.</p>', '', 'metakeyword giới thiệu', 'metadescription giới thiệu', 234, 5, 1, '2018-01-03 10:35:10', '2018-01-22 08:55:33'),
(5, 'Thông tin liên hệ', 'thong-tin-lien-he', 'thong-tin-lien-he-widget', NULL, '', '<h2><span style=\"color:#2980b9\"><strong>C&Ocirc;NG TY TNHH GREENECOLIFE</strong></span></h2>\n\n<p><em><strong>Vp Giao dịch:</strong></em> 27/13/8 Đường số 27, P.Hiệp B&igrave;nh Ch&aacute;nh, Q.Thủ Đức</p>\n\n<p><em><strong>Điện thoại:</strong></em> 0902.90.74.75</p>\n\n<p><em><strong>Email:</strong></em> gellumber@gmail.com</p>\n\n<p><em><strong>Website:</strong></em> http://greenecolife.vn</p>', '', '', '', NULL, 1, 1, '2018-01-14 16:13:12', '2018-01-16 20:00:40'),
(6, 'Fanpage', 'fanpage', 'fanpage-footer', NULL, '<div class=\"fb-page\" data-href=\"https://www.facebook.com/Test-127067831421037/\" data-tabs=\"timeline\" data-width=\"250\" data-height=\"200\" data-small-header=\"true\" data-adapt-container-width=\"true\" data-hide-cover=\"false\" data-show-facepile=\"true\"><blockquote cite=\"https://www.facebook.com/gonguyenlieumy/\" class=\"fb-xfbml-parse-ignore\"><a href=\"https://www.facebook.com/gonguyenlieumy/\">Công ty tnhh Greenecolife</a></blockquote></div>', '', '', '', '', NULL, 7, 1, '2018-01-19 02:31:15', '2018-02-26 09:41:01'),
(7, 'Tầm nhìn', 'tam-nhin', 'tam-nhin-home-content', 'conmochieu-1.png', 'Trở thành công ty đứng đầu về hệ thống phân phối rộng khắp Việt Nam trong những năm đầu tiên.\nTầm nhìn đến 2030: \"Trở thành 1 trong 10 công ty phát triển Bất động sản tốt nhất Đông Nam Á”', '<p style=\"text-align:justify\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '', '', '', 31, 1, 1, '2018-01-19 09:04:27', '2018-01-22 10:25:53'),
(8, 'Sứ mệnh', 'su-menh', 'su-menh-hand-content', 'conmochieu-2.png', 'Cung cấp sản phẩm và dịch vụ ưu việt, nâng cao giá trị , chất lượng cuộc sống', '<p style=\"text-align:justify\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '', '', '', 10, 1, 1, '2018-01-19 09:04:52', '2018-01-22 08:56:14'),
(9, 'Giá trị cốt lõi', 'gia-tri-cot-loi', 'gia-tri-cot-loi-hand-content', 'conmochieu-3.png', 'Khát vọng - Chính trực - Chuyên nghiệp - Nhân văn\nVới nhiều năm kinh nghiệm hoạt động trong lĩnh vực bất động sản và đội ngũ nhân viên chuyên nghiệp, nhiệt tình, có trình độ cao, luôn lấy chữ tín làm trọng.', '<p style=\"text-align:justify\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>', '', '', '', 6, 1, 1, '2018-01-19 09:05:26', '2018-01-22 08:56:16'),
(10, 'Triết lý kinh doanh', 'triet-ly-kinh-doanh', 'triet-ly-kinh-doanh-hand-content', 'conmochieu-4.png', 'Đối tác, khách hàng là giá trị cơ bản của bất kỳ doanh nghiệp nào, là lý do duy nhất để doanh nghiệp tồn tại và phát triển. Chính sách “khách hàng là trung tâm” chỉ lối cho mọi hoạt động của công ty.', '<p style=\"text-align:justify\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', '', '', '', 5, 1, 1, '2018-01-19 09:05:56', '2018-01-22 08:56:18'),
(11, 'Quản lý bất động sản', 'quan-ly-bat-dong-san', 'service-left', 'conmochieu-6.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p style=\"text-align:justify\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>', '', '', '', 25, 1, 1, '2018-01-19 16:08:40', '2018-01-23 02:08:00'),
(12, 'Cho thuê căn hộ', 'cho-thue-can-ho', 'service-center', 'conmochieu-5.png', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<p style=\"text-align:justify\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', '', '', '', 9, 1, 1, '2018-01-19 16:09:30', '2018-01-22 08:56:23'),
(13, 'Bán bất động sản', 'ban-bat-dong-san', 'service-right', 'conmochieu-4.png', 'Cras et fringilla neque. Donec vulputate ornare placerat. Proin elit eros, egestas vitae mauris in, mattis tincidunt ipsum. Phasellus sodales, erat sit amet porta pretium, ligula dui convallis leo, semper varius est ipsum semper turpis. Sed id velit tellus. Sed eu metus interdum, fringilla lacus ac, finibus dolor. Maecenas tempus dolor vel tortor accumsan feugiat. Proin in tellus tristique, dignissim nunc vel, gravida mauris. In sed augue viverra, aliquet quam sit amet, fringilla risus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla lobortis, ex nec pulvinar cursus, risus turpis ornare tellus, a facilisis augue enim sed tellus. Quisque lacinia vel dolor ac porta. Praesent hendrerit dictum velit, sodales sagittis leo interdum quis.', '<p style=\"text-align:justify\">Aliquam cursus elit ut commodo tristique. Curabitur at elit scelerisque, consequat dolor vel, egestas ipsum. Sed auctor venenatis quam a ultricies. Quisque vehicula gravida tristique. Maecenas interdum, mi vel pellentesque laoreet, nisl diam sollicitudin urna, ac dictum erat purus sit amet purus. In facilisis consectetur rutrum. Curabitur vitae est a libero volutpat tristique eget a erat. Vivamus in eros dignissim erat congue maximus. Etiam euismod nec metus nec volutpat. Morbi et scelerisque orci. Donec nisl justo, varius sit amet pharetra quis, lacinia in lacus. Nulla cursus vulputate urna vitae mattis. Proin ultrices dignissim felis, eu viverra massa viverra ut. Praesent eu euismod mauris. Pellentesque in lobortis felis, vel egestas erat. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>\n\n<p style=\"text-align:justify\">Integer elementum, tortor quis egestas rutrum, libero arcu egestas orci, dapibus ornare enim risus sed ex. Aliquam congue laoreet nunc eu varius. Duis ullamcorper urna ac nunc sagittis mattis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris in nibh non ligula rutrum ultrices at in velit. Nullam tempus dui et eros vestibulum, vitae rhoncus risus facilisis. In eu iaculis mi, id convallis enim. Etiam dignissim lacus elit, eget efficitur dolor auctor ac. Aenean condimentum congue iaculis. Curabitur eget ex tincidunt, scelerisque diam sed, fermentum ligula. Nullam imperdiet, risus elementum malesuada sagittis, massa odio congue eros, vitae interdum nisi dolor ut orci.</p>', '', '', '', 9, 1, 1, '2018-01-19 16:10:20', '2018-01-22 08:56:24'),
(14, 'Call us free', 'call-us-free', 'top-info', NULL, '', '<p style=\"text-align:center\">Call us free on 0800 255 0498</p>\n\n<p style=\"text-align:center\">or 0161 85 00 88 4</p>\n\n<p style=\"text-align:center\">Monday to Friday 8.30am to 5.30pm</p>', '', '', '', NULL, 1, 1, '2018-01-25 03:04:04', '2018-01-25 03:04:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `content` text,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `payment_method`
--

INSERT INTO `payment_method` (`id`, `fullname`, `alias`, `content`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Thanh toán bằng Ví điện tử NgânLượng', 'NL', '<p style=\"text-align:justify\">Thanh toán trực tuyến AN TOÀN và ĐƯỢC BẢO VỆ, sử dụng thẻ ngân hàng trong và ngoài nước hoặc nhiều hình thức tiện lợi khác. Được bảo hộ & cấp phép bởi NGÂN HÀNG NHÀ NƯỚC, ví điện tử duy nhất được cộng đồng ƯA THÍCH NHẤT 2 năm liên tiếp, Bộ Thông tin Truyền thông trao giải thưởng Sao Khuê<br />\nGiao dịch. Đăng ký ví NgânLượng.vn miễn phí <a href=\"https://www.nganluong.vn/?portal=nganluong&page=user_register\"><span style=\"color:#2980b9\">tại đây</span></a></p>', 1, 1, '2018-01-07 17:25:13', '2018-02-06 10:46:40'),
(2, 'Thanh toán online bằng thẻ ngân hàng nội địa', 'ATM_ONLINE', '<p><i>\n				<span style=\"color:#ff5a00;font-weight:bold;text-decoration:underline;\">Lưu ý</span>: Bạn cần đăng ký Internet-Banking hoặc dịch vụ thanh toán trực tuyến tại ngân hàng trước khi thực hiện.</i></p>\n							\n						<ul class=\"cardList clearfix\">\n						<li class=\"bank-online-methods \">\n							<label for=\"vcb_ck_on\">\n								<i class=\"BIDV\" title=\"Ngân hàng TMCP Đầu tư &amp; Phát triển Việt Nam\"></i>\n								<input type=\"radio\" value=\"BIDV\" name=\"bankcode\">\n							\n						</label></li>\n						<li class=\"bank-online-methods \">\n							<label for=\"vcb_ck_on\">\n								<i class=\"VCB\" title=\"Ngân hàng TMCP Ngoại Thương Việt Nam\"></i>\n								<input type=\"radio\" value=\"VCB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"vnbc_ck_on\">\n								<i class=\"DAB\" title=\"Ngân hàng Đông Á\"></i>\n								<input type=\"radio\" value=\"DAB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"tcb_ck_on\">\n								<i class=\"TCB\" title=\"Ngân hàng Kỹ Thương\"></i>\n								<input type=\"radio\" value=\"TCB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_mb_ck_on\">\n								<i class=\"MB\" title=\"Ngân hàng Quân Đội\"></i>\n								<input type=\"radio\" value=\"MB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_vib_ck_on\">\n								<i class=\"VIB\" title=\"Ngân hàng Quốc tế\"></i>\n								<input type=\"radio\" value=\"VIB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_vtb_ck_on\">\n								<i class=\"ICB\" title=\"Ngân hàng Công Thương Việt Nam\"></i>\n								<input type=\"radio\" value=\"ICB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_exb_ck_on\">\n								<i class=\"EXB\" title=\"Ngân hàng Xuất Nhập Khẩu\"></i>\n								<input type=\"radio\" value=\"EXB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_acb_ck_on\">\n								<i class=\"ACB\" title=\"Ngân hàng Á Châu\"></i>\n								<input type=\"radio\" value=\"ACB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_hdb_ck_on\">\n								<i class=\"HDB\" title=\"Ngân hàng Phát triển Nhà TPHCM\"></i>\n								<input type=\"radio\" value=\"HDB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_msb_ck_on\">\n								<i class=\"MSB\" title=\"Ngân hàng Hàng Hải\"></i>\n								<input type=\"radio\" value=\"MSB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_nvb_ck_on\">\n								<i class=\"NVB\" title=\"Ngân hàng Nam Việt\"></i>\n								<input type=\"radio\" value=\"NVB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_vab_ck_on\">\n								<i class=\"VAB\" title=\"Ngân hàng Việt Á\"></i>\n								<input type=\"radio\" value=\"VAB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_vpb_ck_on\">\n								<i class=\"VPB\" title=\"Ngân Hàng Việt Nam Thịnh Vượng\"></i>\n								<input type=\"radio\" value=\"VPB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_scb_ck_on\">\n								<i class=\"SCB\" title=\"Ngân hàng Sài Gòn Thương tín\"></i>\n								<input type=\"radio\" value=\"SCB\" name=\"bankcode\">\n							\n						</label></li>\n\n						\n\n						<li class=\"bank-online-methods \">\n							<label for=\"bnt_atm_pgb_ck_on\">\n								<i class=\"PGB\" title=\"Ngân hàng Xăng dầu Petrolimex\"></i>\n								<input type=\"radio\" value=\"PGB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"bnt_atm_gpb_ck_on\">\n								<i class=\"GPB\" title=\"Ngân hàng TMCP Dầu khí Toàn Cầu\"></i>\n								<input type=\"radio\" value=\"GPB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"bnt_atm_agb_ck_on\">\n								<i class=\"AGB\" title=\"Ngân hàng Nông nghiệp &amp; Phát triển nông thôn\"></i>\n								<input type=\"radio\" value=\"AGB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"bnt_atm_sgb_ck_on\">\n								<i class=\"SGB\" title=\"Ngân hàng Sài Gòn Công Thương\"></i>\n								<input type=\"radio\" value=\"SGB\" name=\"bankcode\">\n							\n						</label></li>	\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_bab_ck_on\">\n								<i class=\"BAB\" title=\"Ngân hàng Bắc Á\"></i>\n								<input type=\"radio\" value=\"BAB\" name=\"bankcode\">\n							\n						</label></li>\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_bab_ck_on\">\n								<i class=\"TPB\" title=\"Tền phong bank\"></i>\n								<input type=\"radio\" value=\"TPB\" name=\"bankcode\">\n							\n						</label></li>\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_bab_ck_on\">\n								<i class=\"NAB\" title=\"Ngân hàng Nam Á\"></i>\n								<input type=\"radio\" value=\"NAB\" name=\"bankcode\">\n							\n						</label></li>\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_bab_ck_on\">\n								<i class=\"SHB\" title=\"Ngân hàng TMCP Sài Gòn - Hà Nội (SHB)\"></i>\n								<input type=\"radio\" value=\"SHB\" name=\"bankcode\">\n							\n						</label></li>\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_bab_ck_on\">\n								<i class=\"OJB\" title=\"Ngân hàng TMCP Đại Dương (OceanBank)\"></i>\n								<input type=\"radio\" value=\"OJB\" name=\"bankcode\">\n							\n						</label></li>\n						\n\n\n\n						\n					</ul>', 2, 1, '2018-01-07 17:25:25', '2018-02-08 02:57:55'),
(3, 'Thanh toán bằng IB', 'IB_ONLINE', '<p><i>\n						<span style=\"color:#ff5a00;font-weight:bold;text-decoration:underline;\">Lưu ý</span>: Bạn cần đăng ký Internet-Banking hoặc dịch vụ thanh toán trực tuyến tại ngân hàng trước khi thực hiện.</i></p>\n\n				<ul class=\"cardList clearfix\">\n					<li class=\"bank-online-methods \">\n						<label for=\"vcb_ck_on\">\n							<i class=\"BIDV\" title=\"Ngân hàng TMCP Đầu tư &amp; Phát triển Việt Nam\"></i>\n							<input type=\"radio\" value=\"BIDV\" name=\"bankcode\">\n\n						</label></li>\n					<li class=\"bank-online-methods \">\n						<label for=\"vcb_ck_on\">\n							<i class=\"VCB\" title=\"Ngân hàng TMCP Ngoại Thương Việt Nam\"></i>\n							<input type=\"radio\" value=\"VCB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"vnbc_ck_on\">\n							<i class=\"DAB\" title=\"Ngân hàng Đông Á\"></i>\n							<input type=\"radio\" value=\"DAB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"tcb_ck_on\">\n							<i class=\"TCB\" title=\"Ngân hàng Kỹ Thương\"></i>\n							<input type=\"radio\" value=\"TCB\" name=\"bankcode\">\n\n						</label></li>\n\n\n				</ul>', 3, 1, '2018-02-05 11:55:58', '2018-02-08 02:58:59'),
(4, 'Thanh toán atm offline', 'ATM_OFFLINE', '<ul class=\"cardList clearfix\">\n					<li class=\"bank-online-methods \">\n						<label for=\"vcb_ck_on\">\n							<i class=\"BIDV\" title=\"Ngân hàng TMCP Đầu tư &amp; Phát triển Việt Nam\"></i>\n							<input type=\"radio\" value=\"BIDV\" name=\"bankcode\">\n\n						</label></li>\n						\n					<li class=\"bank-online-methods \">\n						<label for=\"vcb_ck_on\">\n							<i class=\"VCB\" title=\"Ngân hàng TMCP Ngoại Thương Việt Nam\"></i>\n							<input type=\"radio\" value=\"VCB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"vnbc_ck_on\">\n							<i class=\"DAB\" title=\"Ngân hàng Đông Á\"></i>\n							<input type=\"radio\" value=\"DAB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"tcb_ck_on\">\n							<i class=\"TCB\" title=\"Ngân hàng Kỹ Thương\"></i>\n							<input type=\"radio\" value=\"TCB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_mb_ck_on\">\n							<i class=\"MB\" title=\"Ngân hàng Quân Đội\"></i>\n							<input type=\"radio\" value=\"MB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_vtb_ck_on\">\n							<i class=\"ICB\" title=\"Ngân hàng Công Thương Việt Nam\"></i>\n							<input type=\"radio\" value=\"ICB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_acb_ck_on\">\n							<i class=\"ACB\" title=\"Ngân hàng Á Châu\"></i>\n							<input type=\"radio\" value=\"ACB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_msb_ck_on\">\n							<i class=\"MSB\" title=\"Ngân hàng Hàng Hải\"></i>\n							<input type=\"radio\" value=\"MSB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_scb_ck_on\">\n							<i class=\"SCB\" title=\"Ngân hàng Sài Gòn Thương tín\"></i>\n							<input type=\"radio\" value=\"SCB\" name=\"bankcode\">\n\n						</label></li>\n					<li class=\"bank-online-methods \">\n						<label for=\"bnt_atm_pgb_ck_on\">\n							<i class=\"PGB\" title=\"Ngân hàng Xăng dầu Petrolimex\"></i>\n							<input type=\"radio\" value=\"PGB\" name=\"bankcode\">\n\n						</label></li>\n					\n					 <li class=\"bank-online-methods \">\n						<label for=\"bnt_atm_agb_ck_on\">\n							<i class=\"AGB\" title=\"Ngân hàng Nông nghiệp &amp; Phát triển nông thôn\"></i>\n							<input type=\"radio\" value=\"AGB\" name=\"bankcode\">\n\n						</label></li>\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_bab_ck_on\">\n							<i class=\"SHB\" title=\"Ngân hàng TMCP Sài Gòn - Hà Nội (SHB)\"></i>\n							<input type=\"radio\" value=\"SHB\" name=\"bankcode\">\n\n						</label></li>\n					\n\n\n\n				</ul>', 4, 1, '2018-02-06 10:09:38', '2018-02-08 03:00:18'),
(5, 'Thanh toán tại văn phòng ngân hàng', 'NH_OFFLINE', '<ul class=\"cardList clearfix\">\n					<li class=\"bank-online-methods \">\n						<label for=\"vcb_ck_on\">\n							<i class=\"BIDV\" title=\"Ngân hàng TMCP Đầu tư &amp; Phát triển Việt Nam\"></i>\n							<input type=\"radio\" value=\"BIDV\" name=\"bankcode\">\n\n						</label></li>\n					<li class=\"bank-online-methods \">\n						<label for=\"vcb_ck_on\">\n							<i class=\"VCB\" title=\"Ngân hàng TMCP Ngoại Thương Việt Nam\"></i>\n							<input type=\"radio\" value=\"VCB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"vnbc_ck_on\">\n							<i class=\"DAB\" title=\"Ngân hàng Đông Á\"></i>\n							<input type=\"radio\" value=\"DAB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"tcb_ck_on\">\n							<i class=\"TCB\" title=\"Ngân hàng Kỹ Thương\"></i>\n							<input type=\"radio\" value=\"TCB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_mb_ck_on\">\n							<i class=\"MB\" title=\"Ngân hàng Quân Đội\"></i>\n							<input type=\"radio\" value=\"MB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_vib_ck_on\">\n							<i class=\"VIB\" title=\"Ngân hàng Quốc tế\"></i>\n							<input type=\"radio\" value=\"VIB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_vtb_ck_on\">\n							<i class=\"ICB\" title=\"Ngân hàng Công Thương Việt Nam\"></i>\n							<input type=\"radio\" value=\"ICB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_acb_ck_on\">\n							<i class=\"ACB\" title=\"Ngân hàng Á Châu\"></i>\n							<input type=\"radio\" value=\"ACB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_msb_ck_on\">\n							<i class=\"MSB\" title=\"Ngân hàng Hàng Hải\"></i>\n							<input type=\"radio\" value=\"MSB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_scb_ck_on\">\n							<i class=\"SCB\" title=\"Ngân hàng Sài Gòn Thương tín\"></i>\n							<input type=\"radio\" value=\"SCB\" name=\"bankcode\">\n\n						</label></li>\n\n\n\n					<li class=\"bank-online-methods \">\n						<label for=\"bnt_atm_pgb_ck_on\">\n							<i class=\"PGB\" title=\"Ngân hàng Xăng dầu Petrolimex\"></i>\n							<input type=\"radio\" value=\"PGB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"bnt_atm_agb_ck_on\">\n							<i class=\"AGB\" title=\"Ngân hàng Nông nghiệp &amp; Phát triển nông thôn\"></i>\n							<input type=\"radio\" value=\"AGB\" name=\"bankcode\">\n\n						</label></li>\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_bab_ck_on\">\n							<i class=\"TPB\" title=\"Tền phong bank\"></i>\n							<input type=\"radio\" value=\"TPB\" name=\"bankcode\">\n\n						</label></li>\n\n\n\n				</ul>', 5, 1, '2018-02-06 10:09:53', '2018-02-08 03:01:03'),
(6, 'Thanh toán bằng thẻ Visa hoặc MasterCard', 'VISA', '<p><span style=\"color:#ff5a00;font-weight:bold;text-decoration:underline;\">Lưu ý</span>:Visa hoặc MasterCard.</p>\n				<ul class=\"cardList clearfix\">\n						<li class=\"bank-online-methods \">\n							<label for=\"vcb_ck_on\">\n								Visa:\n								<input type=\"radio\" value=\"VISA\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"vnbc_ck_on\">\n								Master:<input type=\"radio\" value=\"MASTER\" name=\"bankcode\">\n						</label></li>\n				</ul>', 6, 1, '2018-02-06 10:10:08', '2018-02-08 03:01:34'),
(7, 'Thanh toán bằng thẻ Visa hoặc MasterCard trả trước', 'CREDIT_CARD_PREPAID', '<p><span style=\"color:#ff5a00;font-weight:bold;text-decoration:underline;\">Lưu ý</span>:Thanh toán bằng thẻ Visa hoặc MasterCard trả trước.</p>', 7, 1, '2018-02-06 10:10:45', '2018-02-06 11:02:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `persistences`
--

DROP TABLE IF EXISTS `persistences`;
CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(6, 1, 'WphP2gHqBbRpGKp2WcZb6APTYCNo1onf', '2017-11-12 08:12:08', '2017-11-12 08:12:08'),
(12, 1, 'HMMWMPpBDgdUbv54tKOldPvWyvcaeDCp', '2017-11-12 08:20:55', '2017-11-12 08:20:55'),
(20, 1, 'F4bWDfEvllT0fTv4EzWDp3NWpLxGo4n5', '2017-11-12 08:44:06', '2017-11-12 08:44:06'),
(27, 1, 'f7VCzyYASPW5vTVgTfv3Ji50sxy2ckIt', '2017-11-12 10:14:09', '2017-11-12 10:14:09'),
(35, 1, 'Zlbi5ja6c9Z7no06i5MvPsa8kZI3oLEZ', '2017-11-12 10:41:59', '2017-11-12 10:41:59'),
(43, 3, 'ZsvbfzLh4A4k34VMpmZCqIO2KIDk9pzP', '2017-11-12 10:51:37', '2017-11-12 10:51:37'),
(45, 3, '61CQHzrI8v42ppzJ35HclGUgzulYNwKD', '2017-11-12 10:51:57', '2017-11-12 10:51:57'),
(48, 4, 'M1VbjAgWRrVuXhVCqqvWAQHP287e5fuk', '2017-11-12 11:00:38', '2017-11-12 11:00:38'),
(52, 4, 'zWj9obfujhk7L1DEKOcSOMTi49HvkeVo', '2017-11-12 11:04:17', '2017-11-12 11:04:17'),
(64, 4, 'sGcmm3lmMPLTUyFeagebRe9YiPjWxHn0', '2017-11-12 11:20:36', '2017-11-12 11:20:36'),
(68, 4, 'DsgzaC5yhMG3miJpNrQFeWCpBwqfsMuO', '2017-11-12 11:21:48', '2017-11-12 11:21:48'),
(71, 4, 'aFa63uj6gzLcV0mZtU0nYvVinHZnvyAi', '2017-11-12 11:22:33', '2017-11-12 11:22:33'),
(73, 4, 'P672dGDcBqxGazfRAzJtUxPwSjTq9N4K', '2017-11-12 11:22:59', '2017-11-12 11:22:59'),
(74, 4, 'm0D8Z9mVczUYgqkSJXAwGQi8S9EaqrSg', '2017-11-12 11:23:03', '2017-11-12 11:23:03'),
(94, 1, 'W1uglu6PzKaOfwxa766IOJ33NDdulIri', '2017-11-12 13:01:17', '2017-11-12 13:01:17'),
(105, 4, 'lpP9axx2fJB8SUi7t2NlNMHasH10fl9N', '2017-11-12 19:31:42', '2017-11-12 19:31:42'),
(106, 4, '1PNxpqM3E2RYNr5CT1NzPzCOlNu4xILB', '2017-11-12 19:31:45', '2017-11-12 19:31:45'),
(107, 4, 'IJleJPrQEduTCpRbolCVqNbD3vzzhqXH', '2017-11-12 19:31:51', '2017-11-12 19:31:51'),
(110, 4, 'RyU6rnrEVVwusqJpB1boWgpODKNKthib', '2017-11-12 19:32:50', '2017-11-12 19:32:50'),
(113, 4, '2iWGSejY4rkJdkY2iK65Na0UV05uJEZ3', '2017-11-12 19:34:34', '2017-11-12 19:34:34'),
(115, 1, 'WQkHX9pd7HnW6Fwd58b6FNwURcoRYyK6', '2017-11-12 19:36:57', '2017-11-12 19:36:57'),
(119, 4, 'FGLu6nkqZkVigimI5Chx4mNmXgdi22qe', '2017-11-12 19:44:50', '2017-11-12 19:44:50'),
(124, 1, '1kZXCQqSfCEwmILvBACrUaHl5MpzQWXX', '2017-11-12 20:47:34', '2017-11-12 20:47:34'),
(125, 1, 'XJfqJ7pZakt8xtLNkULZUElD7jHOCtKt', '2017-11-13 17:44:28', '2017-11-13 17:44:28'),
(129, 1, 'JtMzzU4e61U2GRbOedwzutyNWAHHRHKp', '2017-11-13 23:43:59', '2017-11-13 23:43:59'),
(134, 1, 'zTVEKL7zcc4kvYk80AuKHQkn17d1TX0d', '2017-11-14 07:10:53', '2017-11-14 07:10:53'),
(135, 1, 'ZxzpfDpxrMTx7dRhvd1IQs0KoAyp8beZ', '2017-11-14 10:00:40', '2017-11-14 10:00:40'),
(138, 1, 'M9zXqXyMOTprNqZQI4LEpKqNogmDZiCE', '2017-11-14 20:35:29', '2017-11-14 20:35:29'),
(139, 1, 'CDF73h1lqr864dh5T5BQdTRf0hcrS45y', '2017-11-15 01:20:36', '2017-11-15 01:20:36'),
(143, 1, '50Hrxr02Q6CqKUF4p0G0bpP6PhcrLaNG', '2017-11-15 10:34:05', '2017-11-15 10:34:05'),
(145, 1, 'LRlBDrPFH3sF0WLHAUBGdJuLn5beDkqb', '2017-11-15 10:45:25', '2017-11-15 10:45:25'),
(149, 1, 'zV2fdfnD6X5jTDrXbKtgm2BQ4I4CN0vP', '2017-11-15 21:20:42', '2017-11-15 21:20:42'),
(154, 1, 'VbajMvJtRtkXTmUREmO1x8SnojOzoNy4', '2017-11-16 12:09:09', '2017-11-16 12:09:09'),
(155, 1, 'EN255XIbrvzjbXm2TdeuHOJnjAHBKhm0', '2017-11-16 19:00:45', '2017-11-16 19:00:45'),
(156, 1, 'a2STqoxCKAdKjJBxt5RxyBo23j196SqS', '2017-11-17 01:55:13', '2017-11-17 01:55:13'),
(157, 1, 'bWYcBrGX0pTubrxZ2Gz8mOrpfZh4d3R5', '2017-11-17 03:54:15', '2017-11-17 03:54:15'),
(158, 1, 'rOqRgZyRXdpE2wPQxm60VZEi4MVsaHwd', '2017-11-17 09:26:45', '2017-11-17 09:26:45'),
(159, 1, 'MUi9tluQQy8AhsadOL4sMuRSRaMPY2Vi', '2017-11-17 21:05:41', '2017-11-17 21:05:41'),
(162, 1, '0fsBWGHy3uFkICDp4rgusPKisYenbUr5', '2017-11-18 08:03:50', '2017-11-18 08:03:50'),
(163, 1, 'z2MidVz3A5SfcQtc9CjF83lbB9Ncxw4c', '2017-11-19 05:53:59', '2017-11-19 05:53:59'),
(164, 1, 'C3NrRRgDRZQLTrZraBO9IGEl2wXobUup', '2017-11-20 05:47:41', '2017-11-20 05:47:41'),
(165, 1, 'wgjWLdlRLP6Cireh1mZswQnOOTXG8z8O', '2017-11-21 03:33:18', '2017-11-21 03:33:18'),
(166, 1, 'OHI8P6DtqZVW9K4VlZ1mw5gI0IuJYPH1', '2017-11-21 04:17:05', '2017-11-21 04:17:05'),
(167, 1, 'qNdOfppeTTO8yQemqSZtz0s9qjIu8bSY', '2017-11-21 17:39:32', '2017-11-21 17:39:32'),
(168, 1, 'UJbhn9QwAcZUUXnVDtSStqNCq5akR4Lw', '2017-11-21 23:49:19', '2017-11-21 23:49:19'),
(169, 1, 'eo5eQNRwtkvZlv0DmXfze6JymlS0wylC', '2017-11-22 18:21:12', '2017-11-22 18:21:12'),
(173, 1, 'IulV4jEfAVovdnn5YGOTprw3kkvFe8NP', '2017-11-23 05:15:58', '2017-11-23 05:15:58'),
(174, 1, 'Awg5gkMADLkjPbiVitjCzS9ad5sCN9eF', '2017-11-23 18:51:55', '2017-11-23 18:51:55'),
(175, 1, 'STmoiFXISPPMkYZ46mHVd1FgZleRFPma', '2017-11-24 01:23:33', '2017-11-24 01:23:33'),
(176, 1, 'DS9Yw83Zm2blL1F2azbyCcQ4v2ktYX5H', '2017-11-24 02:11:20', '2017-11-24 02:11:20'),
(177, 1, 'e1ZyuWKHR7HQaQSkQEv4J6YMwpFFLXeC', '2017-11-24 06:39:38', '2017-11-24 06:39:38'),
(178, 1, '6KeLIVlJyL7P6FMEGpgxpNljzsQxI20T', '2017-11-25 05:02:32', '2017-11-25 05:02:32'),
(179, 1, 'tKhufJfgecAKrGEAT2EBaEPLaf517QVS', '2017-11-25 09:08:54', '2017-11-25 09:08:54'),
(180, 1, 't3XDlldaLWhVaxrPuwM6dT02mMflr87j', '2017-11-25 19:53:59', '2017-11-25 19:53:59'),
(182, 1, 'fM0W9o41fDgCiycVxhvQeJ02Opj3tULU', '2017-11-25 21:10:55', '2017-11-25 21:10:55'),
(184, 1, 'EMmXbaWTDFtG4QX9UfVNcK7eUBsy7nmJ', '2017-11-25 21:32:34', '2017-11-25 21:32:34'),
(185, 1, 'r6cxynGaM90IU8uZA7aJFjox941jTivP', '2017-11-26 05:12:26', '2017-11-26 05:12:26'),
(198, 1, 'qNJI9OXlvBnQT9IZvLyhcvnjFBHI3dZz', '2017-11-26 10:37:48', '2017-11-26 10:37:48'),
(199, 1, 'C9FPmC5NtedAPoygDQN2oqpB4EZN8azX', '2017-11-26 11:20:11', '2017-11-26 11:20:11'),
(202, 1, 'qCWvTU0oJSjAyobzeHt21656Rl1eWuvq', '2017-11-26 20:07:36', '2017-11-26 20:07:36'),
(203, 1, 'I0m5QArlodAFsFQj0cfoSiIaJ2ZGgbyg', '2017-11-26 23:06:11', '2017-11-26 23:06:11'),
(204, 1, '6tDVgt6sfCGnbfPYISYbMzCQKpXm8QKc', '2017-11-27 00:00:05', '2017-11-27 00:00:05'),
(205, 1, 'R0MhkpKtLCI5fIe1wwCeicZa0ftDQPwx', '2017-11-27 02:16:57', '2017-11-27 02:16:57'),
(206, 1, 'E69AlB0p8xLhxxNVrs46xwrP0a5wm3KX', '2017-11-27 07:58:05', '2017-11-27 07:58:05'),
(207, 1, 'qFJkZtCoPK72qECK96tX226VuMubIMBv', '2017-11-27 19:23:06', '2017-11-27 19:23:06'),
(208, 1, 'yTiyEBo8xE3PfzxTL1GFRVnqqi4ChmIZ', '2017-11-27 20:15:53', '2017-11-27 20:15:53'),
(209, 1, 'YN8x4updqv0OrIsWStBz2c7ZxI7VO5ug', '2017-11-27 20:17:20', '2017-11-27 20:17:20'),
(210, 1, 'UpPwfQYjNbyRmztTDCfl16md4weLyjG3', '2017-11-30 08:03:21', '2017-11-30 08:03:21'),
(211, 1, 'ArOxlkVdyW3lu3SJqot209bFrPZUAPgD', '2017-12-01 10:48:28', '2017-12-01 10:48:28'),
(212, 1, 'xoOGCB3x8fVFoBznts5EU1k13GmZiO11', '2017-12-02 19:53:50', '2017-12-02 19:53:50'),
(214, 1, 'Jqk5DXGugxgRtsZy4pBEFn7brMvOjghm', '2017-12-03 11:57:16', '2017-12-03 11:57:16'),
(216, 1, 'nYe5QuFSOr8eu7GG8atx6EbvbM1XUMlY', '2017-12-03 17:58:34', '2017-12-03 17:58:34'),
(217, 1, 'P5Q1q3gYWSt4k7c0BLPth6QEpGmYVG5T', '2017-12-04 11:12:33', '2017-12-04 11:12:33'),
(218, 1, '0aNMDBXR8Xzt5DTF9HcK4OBSaZyohSzF', '2017-12-05 09:04:17', '2017-12-05 09:04:17'),
(219, 1, '8J8vasVhkLwqagOIRNKwiIU94QoexH4O', '2017-12-05 18:41:41', '2017-12-05 18:41:41'),
(220, 1, 'JChXlObze9eklsMJrTNLH6ekOw47H5mz', '2017-12-06 00:14:21', '2017-12-06 00:14:21'),
(221, 1, 'z18eXjqdkmbBbwJcvBAIt2o5DxA51xjw', '2017-12-06 08:20:51', '2017-12-06 08:20:51'),
(222, 1, 'F40EmMwa02fVssVHs66z0XASzB3S5sqM', '2017-12-08 11:51:41', '2017-12-08 11:51:41'),
(223, 1, 'Ee5i5S8MD2HQVPa7TKeEK3HekFbSCLcO', '2017-12-10 19:42:21', '2017-12-10 19:42:21'),
(224, 1, 'JebpNZTP11ct8IzcxmbYePuG978Jpumq', '2017-12-10 20:05:44', '2017-12-10 20:05:44'),
(226, 1, 'qPVObxjq9k29qoRVkiAV89K6Ds8MnpRz', '2017-12-10 21:48:03', '2017-12-10 21:48:03'),
(227, 1, 'Q0mGHYM1KOmlyLqq9Kw2lH5F1e2t8nIE', '2017-12-11 09:24:23', '2017-12-11 09:24:23'),
(228, 1, 'PKvAShIoy3rHzKX98qFrlcxx9q0weXbE', '2017-12-11 20:07:50', '2017-12-11 20:07:50'),
(229, 1, 'D3EIc9je8gVdFHzEluwGYSxLvcYWfISa', '2017-12-12 10:23:23', '2017-12-12 10:23:23'),
(230, 1, 'LlCfFTdhZIG7Fqb0249N2hlssIbwgswv', '2017-12-12 19:38:58', '2017-12-12 19:38:58'),
(231, 1, '5P3ys652WPCFCcMEtYp9K6YFz8KClLdt', '2017-12-12 20:37:12', '2017-12-12 20:37:12'),
(232, 1, 'AuLUtUUmPWZaLWJxm2RtyHkflWsMlIvb', '2017-12-12 20:48:06', '2017-12-12 20:48:06'),
(233, 1, 'OoMvRAracnoqhoXECrlxDTA8S4M7pGEC', '2017-12-12 21:39:03', '2017-12-12 21:39:03'),
(234, 1, 'LspxbedO8o6CbiofYR0uqLfOwunUpfCT', '2017-12-12 22:11:41', '2017-12-12 22:11:41'),
(235, 1, 'TaJdE7jjBDOwYE4eqf955JoMQh2MGnga', '2017-12-12 23:42:01', '2017-12-12 23:42:01'),
(236, 1, '9ldSOnqDOOdFI4SuMFTE5sOXeKeDaFMK', '2017-12-13 01:24:31', '2017-12-13 01:24:31'),
(237, 1, 'Omqc5SMLNnckeyPe5h70EHA0yUqZ1yAr', '2017-12-13 01:26:17', '2017-12-13 01:26:17'),
(238, 1, 'N57JQIUmXSgVZUN25mI9zA6QB3krnDJa', '2017-12-13 01:27:02', '2017-12-13 01:27:02'),
(239, 1, 'tKi6yXfXoogbGH6Ui12Pps4xBnKQQ1Y6', '2017-12-13 02:42:24', '2017-12-13 02:42:24'),
(241, 1, 'fdAX0oX5HE6HEOuPnpQOCPJPQHOTJazL', '2017-12-13 11:11:26', '2017-12-13 11:11:26'),
(243, 1, '5F15aKMYAKbpu8xARjjk4Z3b4ZLLaiHN', '2017-12-13 19:46:28', '2017-12-13 19:46:28'),
(244, 1, 'bmx6cC4QULNMW3CCh933DzA3kvhDM0ai', '2017-12-13 20:18:26', '2017-12-13 20:18:26'),
(245, 1, 'p89msT6X0idRVFgnJegC63D5VXzGzQZs', '2017-12-13 20:46:43', '2017-12-13 20:46:43'),
(247, 1, 'pS5xSImoYKACiZzQYCbCN9WYfAyE17BJ', '2017-12-13 23:44:24', '2017-12-13 23:44:24'),
(248, 1, 'Ei3UzlkB8E8L2EwvJ6uf7RqWbSiEXWqw', '2017-12-14 02:24:40', '2017-12-14 02:24:40'),
(249, 1, 'XDhhxpNpsyR8JqU9QF9ciEtMAUxzQb70', '2017-12-14 05:39:40', '2017-12-14 05:39:40'),
(251, 1, 'gYei12wI1Xx9L458waGZcXrpzfJSLrEw', '2017-12-14 05:40:20', '2017-12-14 05:40:20'),
(253, 1, 'o0i98RskGVcDO68h58WHtVILX3X7GyZZ', '2017-12-14 08:30:08', '2017-12-14 08:30:08'),
(254, 1, 'rYXzVG9bTG0q8AAikn8E1gKFDUln4zZT', '2017-12-14 17:36:03', '2017-12-14 17:36:03'),
(255, 1, 'yaZ3Gkr2fhEHy46HJzcTlIMgLZjtVE0P', '2017-12-14 18:39:23', '2017-12-14 18:39:23'),
(256, 1, 'YmZvD9xhUam8WQjZebIu5UA5fa79Vmpw', '2017-12-14 19:13:37', '2017-12-14 19:13:37'),
(257, 1, 'GHd02IbsGjboWps4UOuoRMKEHhdAeM4Q', '2017-12-14 19:20:29', '2017-12-14 19:20:29'),
(258, 1, 'bEwsrdAAVsEols37gzepZRofpjQ5CpkS', '2017-12-14 19:46:00', '2017-12-14 19:46:00'),
(259, 1, 'Op5b8y1v9a1Z1AasgU1buuI9PXTpXq14', '2017-12-14 20:36:43', '2017-12-14 20:36:43'),
(260, 1, 'H491pNtELCOBnhzmGJJG5pVQqCQqQ6y9', '2017-12-15 07:13:52', '2017-12-15 07:13:52'),
(265, 1, 'x7SZJyE8pqvN1UmSOiLMvTIDgPU8Op1v', '2017-12-15 23:56:34', '2017-12-15 23:56:34'),
(269, 1, 'bCLJ9ILMZeWaTyO9PK1h4WZ3yG712Q3h', '2017-12-16 00:27:26', '2017-12-16 00:27:26'),
(270, 1, 'VTVKHrHmyn9Ree3oENKNiqLQ8PEllFBP', '2017-12-16 00:40:12', '2017-12-16 00:40:12'),
(271, 1, 'tE71PsmEixwJk0QCDYeIEPpZ6XfzfmQL', '2017-12-16 02:57:23', '2017-12-16 02:57:23'),
(272, 1, '5aHeCSmiZ5bKLIYyaV3gGw8msN1aA63K', '2017-12-16 08:08:53', '2017-12-16 08:08:53'),
(282, 1, 'EUtWgeynbqabsviLDajTiXg6az4xEx4S', '2017-12-16 11:25:51', '2017-12-16 11:25:51'),
(283, 1, 'xKZoSmxNW0WGyljs2cdzeQI7OoHOEYbj', '2017-12-16 20:33:48', '2017-12-16 20:33:48'),
(284, 1, '958RICNQ5SWqdtnNopOEAQEGjy71OLrP', '2017-12-17 07:52:39', '2017-12-17 07:52:39'),
(286, 1, '5wQF5syYD14KXWyo2G0TdOpFgPvDwWML', '2017-12-17 19:52:04', '2017-12-17 19:52:04'),
(287, 1, '57cBU7Ds9QMsjwn0klqjotmHkWuIFlp7', '2017-12-25 19:27:36', '2017-12-25 19:27:36'),
(288, 1, 'pSNdXiePmuervyNG25HffYLqSY4CqCNV', '2017-12-25 21:29:41', '2017-12-25 21:29:41'),
(289, 1, 'HrHLtRQPfVz6XIzSP9YMkHOswmru4q9A', '2017-12-25 21:47:02', '2017-12-25 21:47:02'),
(290, 1, 'loABizfP1dl9zchCj2681qVIsF3OKrJ3', '2017-12-27 10:38:20', '2017-12-27 10:38:20'),
(291, 1, '6oNxIkIquNcQIOEPZnb9gd69OiMONpDD', '2017-12-27 10:45:14', '2017-12-27 10:45:14'),
(292, 1, '1tEcrFgJDbeU1aUB6H5mnmO7zua63PuQ', '2017-12-27 19:13:01', '2017-12-27 19:13:01'),
(293, 1, 'MUkVIspzdlXbtHyCGhcCsnvK7SeCkOVu', '2017-12-27 19:25:12', '2017-12-27 19:25:12'),
(294, 1, 'PSyuKpYZcZ9Ji2eZ5j5rfSh0u6yWDxDS', '2017-12-27 22:32:12', '2017-12-27 22:32:12'),
(295, 1, '5QXQdR5dMiMQF4MSYyuVsYzj5N51Tzux', '2017-12-28 01:38:51', '2017-12-28 01:38:51'),
(296, 1, '6oyeQrWmS58vLjNBe4iMxPX7mUl4gJ8g', '2017-12-29 02:09:33', '2017-12-29 02:09:33'),
(297, 1, 'myq1k4YmAJV6HmELv3CY4Fme7QllpMyV', '2017-12-29 05:40:48', '2017-12-29 05:40:48'),
(298, 1, 'KqG7rQKRTxtJ5owuAVvKCpgDd9ylxyuB', '2018-01-01 19:20:46', '2018-01-01 19:20:46'),
(299, 1, 'gGIbwURi3h2p30EwdzpVSN7s89oJbs1o', '2018-01-01 19:42:39', '2018-01-01 19:42:39'),
(300, 1, 'TMAKb6m8MTahrN1lFJTIoni9vymizoPX', '2018-01-01 22:34:23', '2018-01-01 22:34:23'),
(301, 1, 'fZ3RQ9jvj6UvF2UOcrWIC5tnFpmqrmJr', '2018-01-02 00:59:34', '2018-01-02 00:59:34'),
(302, 1, 'mP3Z9KVER7893IYjcGERZFXKDhm7biAm', '2018-01-02 18:30:12', '2018-01-02 18:30:12'),
(303, 1, 'tsyksujmywH7Hoz3hxqML9Th24Zcv3Dy', '2018-01-03 00:41:50', '2018-01-03 00:41:50'),
(304, 1, 'dMRpWGk7Uvdn3lza8LXBsbteeUnWMOSW', '2018-01-03 05:04:01', '2018-01-03 05:04:01'),
(305, 1, 'F8pNbJFdCdNEIwRCgulVQ1rb5oYmT267', '2018-01-03 09:50:30', '2018-01-03 09:50:30'),
(308, 1, 'mmgyGjX6FKaZrTA1Sy46Xk5afFSPTiLz', '2018-01-03 10:32:13', '2018-01-03 10:32:13'),
(309, 1, 'WkZAETYgs1qll9a5SzLJ5emRNEM2jQcC', '2018-01-03 19:35:54', '2018-01-03 19:35:54'),
(310, 1, 'i3u3Fev9GhSTSKw8zqKOtDxyBukTswNF', '2018-01-04 00:00:04', '2018-01-04 00:00:04'),
(311, 1, 'wIgyuIWSRPW3SoRC3SCDlIdvMSN1ntwp', '2018-01-04 07:50:26', '2018-01-04 07:50:26'),
(312, 1, 'lhTwGs8hINh78Dsjm9VZpOqyGh4ubnFD', '2018-01-04 18:27:00', '2018-01-04 18:27:00'),
(313, 1, 'XZqSKTU7fCn9dhY7pDGf6ny090eeqe8H', '2018-01-05 05:03:20', '2018-01-05 05:03:20'),
(314, 1, 'xPlA9MCUQ1DqNmZwgnVqmexRptuA4bju', '2018-01-05 07:13:15', '2018-01-05 07:13:15'),
(315, 1, 'tIKVZUBkeaj76cE4QGvO5rqFgawgYMNP', '2018-01-06 03:08:10', '2018-01-06 03:08:10'),
(316, 1, 'ntMLkIGaGhDneocoWJFOZTyl6MhuzZan', '2018-01-06 12:28:22', '2018-01-06 12:28:22'),
(317, 1, 'QU8qluCPQ7F4XdP5njtjcRWqzlXX9S8h', '2018-01-06 22:56:38', '2018-01-06 22:56:38'),
(318, 1, 'Us4ZHvY5DHcwpQVf9XysqakskdvsAzFV', '2018-01-07 04:20:27', '2018-01-07 04:20:27'),
(319, 1, 'AsTUE50pKXOtm27NbymiqbnpVrlhzWQ4', '2018-01-07 07:12:26', '2018-01-07 07:12:26'),
(320, 1, 'TSocJysjRMp42L96vEg02rwZBiEUKyyN', '2018-01-07 09:18:55', '2018-01-07 09:18:55'),
(321, 1, 'KQ0cszOBSWH87hnzA7wcYJLSbNcVQgpg', '2018-01-07 19:37:24', '2018-01-07 19:37:24'),
(322, 1, 'H8BxgWKyBTe4U5lwpdbYG43owssAnk1y', '2018-01-08 02:28:24', '2018-01-08 02:28:24'),
(323, 1, '8CEZcoGrealxWIzhXRxoDIGmPieyZkGP', '2018-01-08 04:07:45', '2018-01-08 04:07:45'),
(324, 1, '9wJ8Z8j1bqUBFAPGBkUytzbUmZqKV3HL', '2018-01-08 08:56:34', '2018-01-08 08:56:34'),
(325, 1, 'XKZh1syWLfcamMSbLhsL9SJVPf2Mfv67', '2018-01-08 10:14:35', '2018-01-08 10:14:35'),
(327, 1, 'loNG0asl3Sj6zCitYw1n692cZ5AWL72j', '2018-01-08 23:13:14', '2018-01-08 23:13:14'),
(328, 1, 'kFqFfFmhk2m2hy3Bj3Kuhn8YkI6WyGP1', '2018-01-08 23:20:42', '2018-01-08 23:20:42'),
(329, 1, 'U7t1BBwwPaAhglF8LUPBuWCzHANUDsKh', '2018-01-09 01:22:36', '2018-01-09 01:22:36'),
(330, 1, 'kryBmI5jqwrndEJvS7r4QFl5aKOUn4Rl', '2018-01-09 11:51:15', '2018-01-09 11:51:15'),
(331, 1, 'Yll3QjOrDTaxUkqpcbg62fOqmFlHLhgp', '2018-01-09 20:29:19', '2018-01-09 20:29:19'),
(332, 1, 'AYnzFsKBk3DG8o1HFCkbUaRcTs92YbM3', '2018-01-09 21:30:21', '2018-01-09 21:30:21'),
(333, 1, 'rNBV0y0Wan6Qpj65pQmiJOQ52qtkQ0sL', '2018-01-10 00:31:26', '2018-01-10 00:31:26'),
(334, 1, 'jKTPdBjo4Ev0seh3qIoU8CMVvIE0TTkE', '2018-01-10 02:52:39', '2018-01-10 02:52:39'),
(335, 1, 'E8NFXc9C2nsm8W6FWfgrrGsobWiPRnCT', '2018-01-10 08:34:20', '2018-01-10 08:34:20'),
(336, 1, 'vQMwlhh0SMMXZiQ7fQX1UweaJtNwM2Bv', '2018-01-10 19:06:53', '2018-01-10 19:06:53'),
(337, 1, 'ws5Lv88o5eWYYKzeiqwIHXmhwb5ItcOf', '2018-01-11 07:38:41', '2018-01-11 07:38:41'),
(338, 1, 'ouWCgfhI5q9H3k4h6w2tttsiJV8y3Qzp', '2018-01-11 10:31:12', '2018-01-11 10:31:12'),
(339, 1, 'elx9rwAfOXrPGOmTcsxZ9gsI5i9B9FAJ', '2018-01-11 10:32:25', '2018-01-11 10:32:25'),
(340, 1, 'utdXQIFty8RcOHFm8tpglAx8ANG7irml', '2018-01-11 18:57:38', '2018-01-11 18:57:38'),
(341, 1, 'XigZe34t3cWVnSlrmtPwHHvUHXNHmyPT', '2018-01-11 19:10:44', '2018-01-11 19:10:44'),
(342, 1, 'wwJoo2CBoB1bdZp6C56TPlo1lQ7mLSUa', '2018-01-11 23:57:32', '2018-01-11 23:57:32'),
(343, 1, 'D4OaTt5Z6zu1q6cPPJdne029l1QSAIJz', '2018-01-12 00:55:46', '2018-01-12 00:55:46'),
(344, 1, 'pvdA7qp7hS1G0FazeLwNIJkHXK7hQXzs', '2018-01-12 01:56:45', '2018-01-12 01:56:45'),
(345, 1, 'TcFmUyoJEeyOuCos5ePBdYugNanUjxVd', '2018-01-12 02:06:12', '2018-01-12 02:06:12'),
(346, 1, 'gKRIy92eSDkDLPtDEzZxHPvTO7vmNoaA', '2018-01-13 12:11:00', '2018-01-13 12:11:00'),
(347, 1, 'RHDxUSWbh2csZRCETQ3hXJuTLr4FyzzU', '2018-01-13 13:09:15', '2018-01-13 13:09:15'),
(348, 1, 'pTRVtKlFP6VnVnh61v9ZDhDBtutgZcta', '2018-01-13 13:12:05', '2018-01-13 13:12:05'),
(349, 1, '6k8RmyBaDmXZTwXKws2BaqjnebRDA46s', '2018-01-13 22:32:59', '2018-01-13 22:32:59'),
(350, 1, '29aWBcPaThOZhTUJ3TCMTr06inrXXpPc', '2018-01-14 05:18:27', '2018-01-14 05:18:27'),
(351, 1, 'l1FodYbVYnF5qllJXQn47jURkjbYQIah', '2018-01-14 09:12:20', '2018-01-14 09:12:20'),
(352, 1, 'C7CLHzromxCwETZPNWuFB5KQ1lLgJktO', '2018-01-14 09:39:44', '2018-01-14 09:39:44'),
(353, 1, 'Y7i1AwV61KINlely1225s2t3KYEoTeCl', '2018-01-14 09:54:05', '2018-01-14 09:54:05'),
(354, 1, 'yEepEQljz0lQ9veGResUYlNzZmZVSzYY', '2018-01-14 21:21:16', '2018-01-14 21:21:16'),
(355, 1, 'MoHMY2GAVZ06IfQ8lOrjvKHgSpRlt3sf', '2018-01-14 21:43:17', '2018-01-14 21:43:17'),
(356, 1, 'gJFjqXGL718vBEDWtiWFqrXd7wzQ3PJu', '2018-01-15 11:12:16', '2018-01-15 11:12:16'),
(357, 1, 'lAT4nQL5p2NV6Av36QLpsaS9oTck2miN', '2018-01-15 18:30:37', '2018-01-15 18:30:37'),
(358, 1, '7YzpEdozcjd8zxPMQBoLKz4wKQNvPvmk', '2018-01-15 18:55:34', '2018-01-15 18:55:34'),
(359, 1, 'CDE7azpfNeLEJOz3qA6iixYxURaNY7eL', '2018-01-16 02:56:25', '2018-01-16 02:56:25'),
(360, 1, 'MeVL2sSlFRzhrG0xaJ6ZqRoDCyyrfqpw', '2018-01-16 10:27:54', '2018-01-16 10:27:54'),
(362, 1, '7YWkgnr0fcthbBrZtZxI5VYfq9GkeIrH', '2018-01-16 20:15:12', '2018-01-16 20:15:12'),
(363, 1, 'C7HQZp1uoHWuUddbCURbC67F8WRFPbhz', '2018-01-16 20:57:30', '2018-01-16 20:57:30'),
(364, 1, 'An1hk9DM1kFNeHQDbXs26BUas2QhrMQM', '2018-01-17 00:28:12', '2018-01-17 00:28:12'),
(366, 1, '1wUTqWD2BFEEIS98lz1DmfP6K2QhdeMT', '2018-01-17 00:47:17', '2018-01-17 00:47:17'),
(368, 1, 'qsZQcTzpevnkZoiyIpQbaR4qu3r4g3GV', '2018-01-17 04:18:35', '2018-01-17 04:18:35'),
(372, 1, 'WjL3wP64VMbVgVUFVl99MdM5kcIdpQCy', '2018-01-17 08:29:47', '2018-01-17 08:29:47'),
(373, 1, 'ttUIgNCKBMBEkjLsKH9WuRDAEG4TPjzU', '2018-01-17 20:14:51', '2018-01-17 20:14:51'),
(374, 1, 'noRUog2Feq5ZNAGHfze9DBaubeDzabca', '2018-01-17 20:57:02', '2018-01-17 20:57:02'),
(375, 1, 'zkZ51ymxpywKCyuXmR3HqwHymINrQMfz', '2018-01-18 00:10:25', '2018-01-18 00:10:25'),
(376, 1, 'lzNZOymz8HgNudpRO5sMyTKipm0tpDGF', '2018-01-18 00:16:14', '2018-01-18 00:16:14'),
(377, 1, '2yCG7tSmilLxN8pzJjS2eMkCbplTTJ0h', '2018-01-18 03:52:31', '2018-01-18 03:52:31'),
(378, 1, 'RMWiH4kf71KduXOMGFtgTa3VDI7RA25R', '2018-01-18 09:25:22', '2018-01-18 09:25:22'),
(379, 1, 'jXAi4A9SVVlzEzUs51gWW6AFaJRNKgkG', '2018-01-18 11:20:09', '2018-01-18 11:20:09'),
(380, 1, 'WxxLLaypmZiGOfHWBQbzPUjt0bams3gx', '2018-01-18 11:57:31', '2018-01-18 11:57:31'),
(381, 1, 'KkJ6EvsSh1GkOXBYtfLzTeTE4H2mLzTT', '2018-01-18 19:23:30', '2018-01-18 19:23:30'),
(382, 1, 'xF88UwOSd9p1tmkrmBOEgAjIomkJB0Hx', '2018-01-19 00:25:51', '2018-01-19 00:25:51'),
(383, 1, 'A32q6kvPJplJ4WAIYSrx60zCSSnxpaDG', '2018-01-19 01:20:22', '2018-01-19 01:20:22'),
(384, 1, 'lPLxh0KbKNSsXA2BILeBXobgaGj68OKR', '2018-01-19 02:03:13', '2018-01-19 02:03:13'),
(385, 1, '5HCVqG0BkfTwNNXMnON1OkvmplY5VtPh', '2018-01-19 09:04:44', '2018-01-19 09:04:44'),
(386, 1, 'taFneiiXaSPaXyiEJwFR60oA690Cb2X8', '2018-01-19 20:43:49', '2018-01-19 20:43:49'),
(387, 1, 't23Yq0Wf57G9dDYIZ2lHzkBEnq6ICQAK', '2018-01-20 11:58:10', '2018-01-20 11:58:10'),
(388, 1, 'XmFShMJFqbARwYvuwfNLSOdWLrZmr32z', '2018-01-20 21:08:01', '2018-01-20 21:08:01'),
(389, 1, 'MBWjdSM0CwnQcdFbo5ea8EyDH1YC5ST0', '2018-01-21 05:40:50', '2018-01-21 05:40:50'),
(390, 1, 'evDd4G82kjgac50TOKv1DZrobHzWEZr8', '2018-01-21 08:05:52', '2018-01-21 08:05:52'),
(391, 1, '4dPKUN7BFQPOuGvA8Xt8Oh8azZQQ9pkx', '2018-01-21 10:51:12', '2018-01-21 10:51:12'),
(392, 1, 'iOi6rBobAw6B2Khg9CLDbPizVJYKGW94', '2018-01-21 18:51:39', '2018-01-21 18:51:39'),
(393, 1, 'CY5tmN8UCUMqmSVoRFOipfHKUpoT0j4f', '2018-01-22 00:07:03', '2018-01-22 00:07:03'),
(394, 1, 'aGzNsWOhDrVlT9HIVVFwCpsue1r7D5YA', '2018-01-22 00:44:48', '2018-01-22 00:44:48'),
(395, 1, 'VS5iiETNULvHItpuUmHQUH81sChbbY1l', '2018-01-22 19:02:07', '2018-01-22 19:02:07'),
(399, 1, 'NWnj4UvnZqwWOTX3CeusZ6v8Fhf2c6ub', '2018-01-24 19:02:36', '2018-01-24 19:02:36'),
(400, 1, 'VLSxXPLlSKCtughyjzMut9ug3flrhyi1', '2018-01-24 19:27:36', '2018-01-24 19:27:36'),
(401, 1, 'SnMonFyxu1katYF7DoIioInfgbQIbY6Z', '2018-01-24 23:56:14', '2018-01-24 23:56:14'),
(402, 1, 'u8RnIhbv4c9eCZZaMSjHrsM9hfTRb3r5', '2018-01-25 00:09:18', '2018-01-25 00:09:18'),
(403, 1, 'kb7yBdeIHuIl4kIa9Jt7nDFpllfRVRhx', '2018-01-25 02:08:12', '2018-01-25 02:08:12'),
(404, 1, 'gVw8xTL0zeKZYrqEGP4CcC85esbG8ypE', '2018-01-25 18:18:17', '2018-01-25 18:18:17'),
(406, 4, 'A4FLGiVU9LvfsVEp5mrRl5TZl6nb3ksW', '2018-01-26 01:05:01', '2018-01-26 01:05:01'),
(408, 4, 'aiVheclIV8RMZL6ZMbi0Dg04vjfucSZP', '2018-01-26 01:05:31', '2018-01-26 01:05:31'),
(409, 1, 'gUdW9qbl64egCPRWtavTK9wnexEo3keM', '2018-01-26 01:08:27', '2018-01-26 01:08:27'),
(410, 4, '3HSzUQI78C96yV5DRt6jGX33bdYCK9fb', '2018-01-26 01:43:11', '2018-01-26 01:43:11'),
(411, 4, 'tOlFF3JRWPtyXMuVCeaaMiHjBd2elRJF', '2018-01-26 01:44:07', '2018-01-26 01:44:07'),
(412, 4, 'NscMqRLmkV3IOWMf6RhfVuJbkL8xgsDC', '2018-01-26 01:46:45', '2018-01-26 01:46:45'),
(414, 6, 'wgJCXkC4Mn1V5f0YC9lp8bPKDt85kGtq', '2018-01-26 02:25:04', '2018-01-26 02:25:04'),
(416, 6, 'zSKba5kTj8Qr4ojFsxLqGI7xLuD4q0WR', '2018-01-26 02:30:32', '2018-01-26 02:30:32'),
(417, 6, 'rzG8JBGeT8fiapZ9DtD2uip0lQJwh5q2', '2018-01-26 02:37:18', '2018-01-26 02:37:18'),
(419, 1, 'Sw9M1Lswoukl6vcgMxoFzXvaAtMQCxAA', '2018-01-26 02:57:09', '2018-01-26 02:57:09'),
(420, 1, 'uUOUyXWyeFziFHkxz8h4bDzxhywQ37Si', '2018-01-26 02:57:48', '2018-01-26 02:57:48'),
(421, 1, 'MbKhVbGfhtxwZPPVgtHxdstVXuLeAaiU', '2018-01-26 02:58:29', '2018-01-26 02:58:29'),
(422, 1, 'wJ73tjH6p3w5MYYe7n21fOiCeA3QZfKb', '2018-01-26 02:58:29', '2018-01-26 02:58:29'),
(423, 1, 'VnxOGigvNVkdiHwI3uvstUftvZRW8oBI', '2018-01-26 02:58:36', '2018-01-26 02:58:36'),
(425, 6, 'J0ifpUcLW0NOdbzz7ewLRHG9BpBcOrRA', '2018-01-26 03:17:02', '2018-01-26 03:17:02'),
(427, 6, 'balWgkJAiveVZzQfMycjeIUYgqNmLW3y', '2018-01-26 03:35:38', '2018-01-26 03:35:38'),
(429, 6, 'UyB9F0vWGHpwS1r9avhYxJizwU4HVIwM', '2018-01-26 03:39:37', '2018-01-26 03:39:37'),
(431, 6, 'qfkVlp3dp4QXymKAkS2PfMQCdIeFHQOx', '2018-01-26 04:32:49', '2018-01-26 04:32:49'),
(433, 1, 'A3z4mzsQPa7TSS1rthS9qcXBXGZRHvME', '2018-01-28 09:36:02', '2018-01-28 09:36:02'),
(434, 1, 'fAPFbxNuoTiKlDhdRh4hZPCArPfnVG4h', '2018-01-28 09:36:02', '2018-01-28 09:36:02'),
(439, 1, '0KG2CDdHiNeVtq5WaMwsrvsHxWeLiY9E', '2018-01-28 09:59:33', '2018-01-28 09:59:33'),
(441, 1, 'coUpXV4oip1EFQd6L1wHB22aEgmD85MB', '2018-01-28 10:02:44', '2018-01-28 10:02:44'),
(442, 1, 'qxtyJQgQjE7IdV5pnazmZdm0VB1dGvJn', '2018-01-28 10:02:44', '2018-01-28 10:02:44'),
(443, 1, 'eBajDKsoIEBHqQFXz0BKLjJ9nJHtELsK', '2018-01-28 18:19:52', '2018-01-28 18:19:52'),
(444, 1, 'l9baDmYe0AnLN5Gle9ep2sE7cHEVOnr5', '2018-01-28 18:19:52', '2018-01-28 18:19:52'),
(447, 8, 'GmZMlufC8X5lo3RzA5gsyz2kXYwWvwQF', '2018-01-28 20:45:36', '2018-01-28 20:45:36'),
(448, 8, 'PPGJaXq6NaHLG1dnSP9FOkjzFSdKqvvI', '2018-01-28 21:38:01', '2018-01-28 21:38:01'),
(449, 1, 'vBzzq1RtNsCmGiczUJLFsHSyNzTTubXg', '2018-01-28 21:38:13', '2018-01-28 21:38:13'),
(451, 1, 'B3WzQ8UpMARDoY28vEkB7erfEEpHmLT1', '2018-01-28 21:38:37', '2018-01-28 21:38:37'),
(454, 8, 'tn7HvCBoyGphTHqjxPl0d3fJ3TWVRmTi', '2018-01-29 00:39:35', '2018-01-29 00:39:35'),
(457, 1, 'oo71n7ghA1RolYX2RzzeXwiTJ4KcV6zr', '2018-01-29 18:33:51', '2018-01-29 18:33:51'),
(458, 8, 'jfRtZvsf76QuiNUNY0sgWSA0SbX0YmBR', '2018-01-30 01:41:20', '2018-01-30 01:41:20'),
(460, 1, 'V2vGTjxoDwMXXVvXTCCsodx2oqNRBswK', '2018-01-31 00:07:51', '2018-01-31 00:07:51'),
(461, 1, 'WXfdX3IbIO2N4pHvxeElybt2HWjDzpsZ', '2018-01-31 00:07:51', '2018-01-31 00:07:51'),
(462, 1, 'zWSf8uHGNVGZn8HsVpCc4iowpPHSBqvU', '2018-01-31 09:19:53', '2018-01-31 09:19:53'),
(464, 8, 'ajfSvynTDfObqdqWFVTaN52EkMP1AUNJ', '2018-01-31 10:29:33', '2018-01-31 10:29:33'),
(465, 8, 'ag2Euhwpe5LXZvoQ1FsRXSH2yo0EHwsm', '2018-01-31 10:35:49', '2018-01-31 10:35:49'),
(467, 8, 'yR8tHjT4HKlrVJLADJ5LykJbP27czCKC', '2018-01-31 10:38:45', '2018-01-31 10:38:45'),
(468, 1, 'gJnB66CrVq6a8Mo6GhtYiOtLZhZ1LTMd', '2018-01-31 10:50:07', '2018-01-31 10:50:07'),
(475, 1, 'L7DcvNPiOQIUjCUATn61Y2sh3g3R2k49', '2018-01-31 19:35:25', '2018-01-31 19:35:25'),
(476, 1, 'QK86h3fyZTBFMRUhuP0ZKm1Wq4kzxPbS', '2018-01-31 19:35:25', '2018-01-31 19:35:25'),
(478, 1, 'VqoYkwd6LBv1rVWPEtIMR05InmYOuszG', '2018-01-31 19:55:02', '2018-01-31 19:55:02'),
(479, 1, 'JztvQ0vdnItZtqSiZD0Fi6NEK6c5PjZc', '2018-01-31 19:55:02', '2018-01-31 19:55:02'),
(481, 8, 'zX2GBFJB6Jpcz8jaXScc8XmWSgARW6y1', '2018-02-01 01:42:35', '2018-02-01 01:42:35'),
(482, 8, 'JWqpm7p61IXddy2YyuMkzHTdg7OWwVdL', '2018-02-01 01:50:31', '2018-02-01 01:50:31'),
(483, 1, 'Ck89j1QoAOeoNZvhYi5wPRW4nTm0C1dq', '2018-02-01 02:29:04', '2018-02-01 02:29:04'),
(486, 1, 'AKrOzoCvVttxLIVRMnTD6GPbj2iWGwvK', '2018-02-01 02:56:37', '2018-02-01 02:56:37'),
(487, 1, 'BaciCQSFrRR68rCmWlXSBTzmdHd27uiN', '2018-02-01 02:56:37', '2018-02-01 02:56:37'),
(488, 1, 'KGY6WVGRXBb3UJWz8YnDSw8hXGgzgkA6', '2018-02-01 11:35:24', '2018-02-01 11:35:24'),
(489, 1, '6WdgCEIxtViQrSWjU3UK9HL7wyZ34TUX', '2018-02-01 11:35:24', '2018-02-01 11:35:24'),
(490, 1, 'SfQrjxzVWC8XrSnz8yWht0t3Q8UQdOQr', '2018-02-01 18:27:36', '2018-02-01 18:27:36'),
(494, 1, 'RjNhUlg5noCoWG1eUNo1StHO874EkDvu', '2018-02-01 19:03:40', '2018-02-01 19:03:40'),
(497, 1, 'cESLyplJNgtAmPpMwURnw68ZWEV39PK2', '2018-02-01 19:42:32', '2018-02-01 19:42:32'),
(499, 8, 'NtMOofbv1v5rH5JB3OUHnsrFrF271Tzi', '2018-02-01 20:49:06', '2018-02-01 20:49:06'),
(500, 1, 'wcFo02JafGaHPsM64DKM6t3jA5wTrYjF', '2018-02-01 20:56:50', '2018-02-01 20:56:50'),
(502, 1, 'fGUtMqDBI2ZARFPFBhlaxnCkzrm7UodL', '2018-02-01 20:57:08', '2018-02-01 20:57:08'),
(504, 8, 'KfXSL3FN1hK8b6QT9LdmouyS37T0qqHB', '2018-02-01 20:57:36', '2018-02-01 20:57:36'),
(505, 1, '8Iv9LY8GOJZd1WTl1I5Wz01lx1KzdZWT', '2018-02-01 20:58:09', '2018-02-01 20:58:09'),
(507, 1, 'w9M0kSWQtdQD7zD6stbK63JUbTj1u058', '2018-02-01 20:58:17', '2018-02-01 20:58:17'),
(510, 8, 'NJ76oLl9RoWbXTJShfkd00cpuQZK5zr5', '2018-02-01 21:37:57', '2018-02-01 21:37:57'),
(511, 1, 'jgz8uBUFbY3MSxPOXp7bqA0knGoU5zi7', '2018-02-01 21:37:59', '2018-02-01 21:37:59'),
(514, 8, 'JsQzqbxIGhNuS6SeJ4y8eCnhSDJaeL3s', '2018-02-01 23:56:53', '2018-02-01 23:56:53'),
(515, 1, 'r3gBMpKSI53eQpXqydREPc6oSjC06OUB', '2018-02-01 23:56:56', '2018-02-01 23:56:56'),
(518, 1, 'QoyBvVRHUwmgnGPnOcyUXU4YqPRqMZVe', '2018-02-02 00:01:51', '2018-02-02 00:01:51'),
(521, 1, '0SWAzz5NkBMas3g7T6GC34L38vm83epY', '2018-02-02 00:19:04', '2018-02-02 00:19:04'),
(524, 1, 'MQuKcCFJhtuKynkQkFHxyZBLIy8Ivd3r', '2018-02-02 00:24:05', '2018-02-02 00:24:05'),
(526, 1, '3DniRRSZFO1aYX6cCNqgyiL0OJqpfEVf', '2018-02-02 01:06:18', '2018-02-02 01:06:18'),
(528, 1, 'OfRdoNYhFL3afKEYmg9oWZjtuhANsBfv', '2018-02-02 01:44:35', '2018-02-02 01:44:35'),
(529, 1, 'MlR5175cwkutGCxMpXuVrhgCzUgFIt9A', '2018-02-02 01:44:35', '2018-02-02 01:44:35'),
(530, 8, 'ipiaaYYS8qIo8iSdqnZ6VdkRKq1iyooC', '2018-02-02 09:02:53', '2018-02-02 09:02:53'),
(531, 1, 'wSD7DupM92LgniN8nQQvue0JvXYrEUwC', '2018-02-02 10:18:45', '2018-02-02 10:18:45'),
(532, 1, 'X2NpDhYEcKGWnyoBxRkMG0nasltzUZq4', '2018-02-02 10:18:45', '2018-02-02 10:18:45'),
(533, 1, 'HdLRvWB8aWY9gaFouz9JVIZii2eGcpPp', '2018-02-02 19:05:37', '2018-02-02 19:05:37'),
(535, 1, 'ot4ul9MDUpNjh3avRZwfDQhckk7zNpNC', '2018-02-02 19:07:26', '2018-02-02 19:07:26'),
(536, 1, 'QMzisn3xBXMMAegjFxwbyYlkU2opUFRz', '2018-02-02 19:07:26', '2018-02-02 19:07:26'),
(538, 8, 'ubMneyA1o1wIPK0UHx6I8WuhTRJlYHkP', '2018-02-02 21:16:54', '2018-02-02 21:16:54'),
(539, 8, 'qGTddyiGKSzM0wHVkenVijba0gtvLqOt', '2018-02-03 04:53:58', '2018-02-03 04:53:58'),
(541, 8, 'Nwn0yVO5SlhBd9eY4Z46SbZ1gEPi5IEr', '2018-02-03 09:41:10', '2018-02-03 09:41:10'),
(543, 8, '1aF9GIC1ZWN63Q3hyjgcI91MVJfM5syC', '2018-02-03 13:40:10', '2018-02-03 13:40:10'),
(544, 8, 'Ac5aAgvHGYcsowe9TvjwCmQ4Pp1qNc5P', '2018-02-03 22:01:23', '2018-02-03 22:01:23'),
(546, 1, '2DXLdK0k8pyyhkft4O1N31OHN3qVoZYv', '2018-02-04 06:13:43', '2018-02-04 06:13:43'),
(551, 1, '8Vt8s6xqOFyHpiqYk2QykhWXRenYyUJW', '2018-02-04 08:07:49', '2018-02-04 08:07:49'),
(557, 8, 'COuQ7uk7ZUXmIXoa9x5b5d0WhvRAniBn', '2018-02-04 12:33:20', '2018-02-04 12:33:20'),
(558, 8, 'qLTc2Kf6n28q8us3IMOWD4xzBoQMtVTk', '2018-02-04 18:52:19', '2018-02-04 18:52:19'),
(559, 1, 'OrzHOZ6ZZKJqxkZ0uuh7RKPL9XURJpXd', '2018-02-04 22:21:08', '2018-02-04 22:21:08'),
(561, 8, '1PJvdJesyc0mWbqOamG4hCblgkwH5qgI', '2018-02-04 22:47:36', '2018-02-04 22:47:36'),
(562, 8, 'tVXO1RdjrqL2sGvzHXidbAPJIamEnWxw', '2018-02-04 22:53:02', '2018-02-04 22:53:02'),
(563, 1, 'UdTjDEseGz6vBOmnq318N4Y4raiVQBrB', '2018-02-04 22:53:04', '2018-02-04 22:53:04'),
(565, 8, 'oT80knQNx6JAaH80HdUeHaCsf7HHsuwY', '2018-02-05 01:50:20', '2018-02-05 01:50:20'),
(566, 1, 'vaD9xZckMlXmH8R7l7TyJWgOZD5do7Uc', '2018-02-05 01:50:37', '2018-02-05 01:50:37'),
(568, 1, 'EOGfrIYfC9vcvYfvXURtTeVVrPmeOoXJ', '2018-02-05 01:52:32', '2018-02-05 01:52:32'),
(570, 8, 'peDpe1IKfhu56XA0DLJe8OSCk0zKJqvj', '2018-02-05 03:05:08', '2018-02-05 03:05:08'),
(571, 1, 'UINT91dzThurVugQu61SJytD5X3LmyZH', '2018-02-05 03:16:48', '2018-02-05 03:16:48'),
(572, 1, 'UM3IJ8WRYFkhphJOrwfErOH0523YDVuS', '2018-02-05 19:49:28', '2018-02-05 19:49:28'),
(574, 8, 'uaRVCHac02KAjEWxDiFmDPas2xYNUqAX', '2018-02-05 20:04:45', '2018-02-05 20:04:45'),
(579, 1, 'tnf6HppP4rV0x45qbHoz4BGfoD47gWbI', '2018-02-06 01:01:51', '2018-02-06 01:01:51'),
(580, 1, 'FZe4gTDXRLFyUZ3A17o0qnX95A1OSwer', '2018-02-06 01:01:51', '2018-02-06 01:01:51'),
(583, 8, 'tqm9bi8D3RLI8zOnKZsKAn7a7cJKmj3Y', '2018-02-06 03:00:07', '2018-02-06 03:00:07'),
(584, 1, '8IZWzK4wl0Xk01HPV8Vh1koOFhdBwZWF', '2018-02-06 19:27:14', '2018-02-06 19:27:14'),
(586, 1, '15ABJfq0cryamDZ5TV6HD9Mba3p0Uyff', '2018-02-06 20:03:27', '2018-02-06 20:03:27'),
(588, 1, '13y4QjFvSXPvYHHfN5YrsJA7kQYlqL9B', '2018-02-06 21:31:19', '2018-02-06 21:31:19'),
(589, 8, '6Lk66es0aaoHBjnWLOiXoEC09UixmRoL', '2018-02-06 22:14:33', '2018-02-06 22:14:33'),
(594, 1, 'LqfDWDEwEXDSaXGuQRMwWzjq77ji3Nly', '2018-02-07 19:10:05', '2018-02-07 19:10:05'),
(595, 1, 'mBU8rnnsiGvHbXSOV09fHj7sT1d1FloX', '2018-02-07 19:10:05', '2018-02-07 19:10:05'),
(603, 1, 'bTaiIxtbyDm1fGgESgMMIRMJB1ARzzfN', '2018-02-08 00:31:00', '2018-02-08 00:31:00'),
(605, 8, 'wxlw1jLv1NJPSyyCrjEihVsS8AkSeKdB', '2018-02-08 01:22:05', '2018-02-08 01:22:05'),
(607, 1, 'OVz8xnhOU8CPRYocJu7VZFnUKbs4F7pU', '2018-02-08 02:00:31', '2018-02-08 02:00:31'),
(608, 1, 'WvVjNtgeRP2EOW2R9aydHr7a0rqYQf8s', '2018-02-08 02:00:31', '2018-02-08 02:00:31'),
(609, 1, 'z3FGmuAL19mXNfrDX7HExsCkTbm8LYb7', '2018-02-20 18:38:21', '2018-02-20 18:38:21'),
(610, 1, '8iIAmLFC5uspsDTI1zQ9gSu25mvwHYXA', '2018-02-20 18:38:21', '2018-02-20 18:38:21'),
(611, 1, 'MFXMdjdHYLiWQo0o1aJfn28uaSrS1GDo', '2018-02-20 23:00:58', '2018-02-20 23:00:58'),
(612, 1, 'a1OKXCZYs0EMwGgaHaW2qJSZaGtsal13', '2018-02-20 23:00:58', '2018-02-20 23:00:58'),
(613, 1, 'q0j01G5VhXCVFUZ0IZ6VsCpEJfRHAWez', '2018-02-21 18:32:21', '2018-02-21 18:32:21'),
(614, 1, 'EY4TszKzR6ghCh9MaMwHAQfr8QepXbBa', '2018-02-21 18:32:21', '2018-02-21 18:32:21'),
(615, 1, '8ZTCNSIt1J9qlpQDK4PH1V0ctML0IMJr', '2018-02-22 00:51:27', '2018-02-22 00:51:27'),
(616, 1, 'nbTuhxZ0PxDipT1kSUpgDZUmFsUkwPsx', '2018-02-22 09:03:38', '2018-02-22 09:03:38'),
(618, 1, 'uKNI6Mvu1ExO7rK09MNvAovaWYHLhTs1', '2018-02-23 01:15:17', '2018-02-23 01:15:17'),
(619, 1, 'FspQxFJhmh85knlMInT4WZDQRixJz71d', '2018-02-23 18:38:12', '2018-02-23 18:38:12'),
(620, 1, 'tjOZJFQR1oDB5LaKTE8Ms8vxLUUKbbBF', '2018-02-23 18:38:12', '2018-02-23 18:38:12'),
(621, 1, 'K3NNN4k9OKUSnvmsj5kK14rq8l39pFmT', '2018-02-23 22:37:19', '2018-02-23 22:37:19'),
(622, 1, '5VdOj9t1SMTOOkxlX3SGJb8qVQ9WoHgM', '2018-02-23 22:37:19', '2018-02-23 22:37:19'),
(623, 1, 'Ul8BpMVjUeWF98UrKmTgSPUtkv9Xic9A', '2018-02-23 22:37:41', '2018-02-23 22:37:41'),
(624, 1, 'qKGsmyQqNwNTYgTG5O9sEJrmibWsYdVD', '2018-02-23 22:37:41', '2018-02-23 22:37:41'),
(625, 1, 'C7VKdFfGrpXWoomUQCmBXO02hcu8fGCO', '2018-02-23 22:39:35', '2018-02-23 22:39:35'),
(626, 1, '220mzZp1oL38PQ2d8VhliYoNo7UxHm67', '2018-02-23 22:39:35', '2018-02-23 22:39:35'),
(627, 1, 'al5sb4g355hIHLH0BIP0ejesi0XPo5Di', '2018-02-25 05:09:49', '2018-02-25 05:09:49'),
(628, 1, 'ZJXzKSM1VX1qqAWf6unOvBqLY9a6Hb6P', '2018-02-25 05:09:49', '2018-02-25 05:09:49'),
(629, 1, 'LhH0SVTSzMCqaqPf4QX0aotZP9v3taog', '2018-02-26 00:25:42', '2018-02-26 00:25:42'),
(630, 1, 'hjLZjKjEArW8ZQelh5p7QqG0vhApKwAo', '2018-02-26 00:25:42', '2018-02-26 00:25:42'),
(631, 1, 'jaftrpAl7wTji0W4Vyb16pkxzoapWsfy', '2018-02-26 01:00:44', '2018-02-26 01:00:44'),
(632, 1, '4XZRRoTxUao1PGjjCxGWXllfR5ruKWfi', '2018-02-26 01:00:44', '2018-02-26 01:00:44'),
(633, 1, 'z20ZCP6ZoaRUfjoiYXYl0VfUDtJpkV7I', '2018-02-26 18:21:19', '2018-02-26 18:21:19'),
(634, 1, 'fYkysaSFydtYce4V0Kqu66HMH98mhsZA', '2018-02-26 18:21:19', '2018-02-26 18:21:19'),
(635, 1, 'NVO6Qedfm9ioOmGBaG0UsueQmLLaMVAC', '2018-02-26 18:26:11', '2018-02-26 18:26:11'),
(636, 1, '3EHuVytNqQxcUc5Xuq08CC1n51YzNSiD', '2018-02-26 18:26:11', '2018-02-26 18:26:11'),
(637, 1, 'c4iIxDaA2K6OiJr0XAW6Tu47VBukfcQf', '2018-02-26 20:13:38', '2018-02-26 20:13:38'),
(638, 1, 'vqXjvCqJe3X1op4zgUqUCudbHjpy28gg', '2018-02-26 20:13:38', '2018-02-26 20:13:38'),
(639, 1, 'NpDrfo1E8XvDjE0mShe5FB97WcO94rn4', '2018-02-27 10:23:41', '2018-02-27 10:23:41'),
(640, 1, 'j587qEvVqx0IehstgvOJTJjUoA8k6N8X', '2018-02-27 10:23:41', '2018-02-27 10:23:41'),
(641, 1, 'PfZXqgOR1v7gA6WrxyxpyWzyrPlgvS0a', '2018-02-27 17:47:18', '2018-02-27 17:47:18'),
(642, 1, 'L5CmFhHsSk6eCz6Cozc8uR4Dpn7umBqd', '2018-02-27 17:47:18', '2018-02-27 17:47:18'),
(643, 1, 'KXjsLxOPGtNy5fY68ahfuMo4OPnNXitK', '2018-02-27 23:48:15', '2018-02-27 23:48:15'),
(644, 1, '7XxjQd4pk2DClfqq1IXry2iSKr6LmLAo', '2018-02-27 23:48:15', '2018-02-27 23:48:15'),
(645, 1, 'JHpWzQbEXMpcG0mQnTEDJw5rlUJITahI', '2018-02-28 01:50:26', '2018-02-28 01:50:26'),
(646, 1, 'HRAVYZBLZl4R5biLhwuavdWyVb43UOUj', '2018-02-28 01:50:26', '2018-02-28 01:50:26'),
(647, 1, 'uH3X4pzxKl9fV4wDwVJ1XZbpt3STpyRm', '2018-02-28 03:37:47', '2018-02-28 03:37:47'),
(648, 1, 'E13QWrFrZqr5PLSyEeYHgsAB25STeClg', '2018-02-28 03:37:47', '2018-02-28 03:37:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `photo`
--

DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` int(11) NOT NULL,
  `album_id` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `privilege`
--

DROP TABLE IF EXISTS `privilege`;
CREATE TABLE `privilege` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `controller` varchar(45) NOT NULL,
  `action` varchar(45) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `privilege`
--

INSERT INTO `privilege` (`id`, `fullname`, `controller`, `action`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'category-article-list', 'category-article', 'list', 1, '2017-05-18 06:49:30', '2017-05-19 17:26:33'),
(2, 'category-article-form', 'category-article', 'form', 2, '2017-05-18 06:50:32', '2017-11-26 16:43:37'),
(3, 'category-article-trash', 'category-article', 'trash', 3, '2017-05-18 06:51:27', '2017-11-26 16:43:37'),
(4, 'article-list', 'article', 'list', 1, '2017-05-18 08:34:41', '2017-05-19 18:11:35'),
(5, 'article-form', 'article', 'form', 2, '2017-05-18 08:35:17', '2017-05-19 17:24:54'),
(16, 'category-article-status', 'category-article', 'status', 4, '2017-05-19 08:23:46', '2017-11-26 16:43:37'),
(17, 'category-article-delete', 'category-article', 'delete', 5, '2017-05-19 08:25:14', '2017-11-26 16:43:37'),
(18, 'privilege-list', 'privilege', 'list', 1, NULL, '2017-11-26 16:43:37'),
(19, 'privilege-form', 'privilege', 'form', 2, NULL, '2017-11-26 16:43:37'),
(24, 'group-member-list', 'group-member', 'list', 1, '2017-05-19 11:59:40', '2017-11-26 16:43:37'),
(25, 'group-member-form', 'group-member', 'form', 2, '2017-05-19 12:00:09', '2017-11-26 16:43:37'),
(33, 'category-article-ordering', 'category-article', 'ordering', 6, '2017-05-19 17:29:14', '2017-11-26 16:43:37'),
(43, 'user-list', 'user', 'list', 1, '2017-05-19 17:45:27', '2017-11-26 16:43:37'),
(44, 'user-form', 'user', 'form', 2, '2017-05-19 17:45:57', '2017-11-26 16:43:37'),
(49, 'menu-type-list', 'menu-type', 'list', 1, '2017-05-19 17:49:35', '2017-11-26 16:43:37'),
(50, 'menu-type-form', 'menu-type', 'form', 2, '2017-05-19 17:49:53', '2017-11-26 16:43:37'),
(55, 'menu-list', 'menu', 'list', 1, '2017-05-19 18:01:20', '2017-11-26 16:43:37'),
(56, 'menu-form', 'menu', 'form', 2, '2017-05-19 18:01:38', '2017-11-26 16:43:37'),
(57, 'menu-trash', 'menu', 'trash', 3, '2017-05-19 18:01:52', '2017-11-26 16:43:37'),
(58, 'menu-delete', 'menu', 'delete', 4, '2017-05-19 18:02:17', '2017-11-26 16:43:37'),
(59, 'menu-status', 'menu', 'status', 5, '2017-05-19 18:02:31', '2017-11-26 16:43:37'),
(60, 'menu-ordering', 'menu', 'ordering', 6, '2017-05-19 18:02:50', '2017-11-26 16:43:37'),
(61, 'media-list', 'media', 'list', 1, '2017-05-19 18:05:47', '2017-11-26 16:43:37'),
(62, 'media-form', 'media', 'form', 2, '2017-05-19 18:06:05', '2017-11-26 16:43:37'),
(63, 'media-trash', 'media', 'trash', 3, '2017-05-19 18:06:22', '2017-11-26 16:43:37'),
(67, 'product-list', 'product', 'list', 1, '2017-05-19 18:09:08', '2017-11-26 16:43:37'),
(68, 'product-form', 'product', 'form', 2, '2017-05-19 18:09:20', '2017-11-26 16:43:37'),
(79, 'invoice-list', 'invoice', 'list', 1, '2017-05-19 18:14:02', '2017-11-26 16:43:37'),
(80, 'invoice-form', 'invoice', 'form', 2, '2017-05-19 18:14:30', '2017-11-26 16:43:37'),
(85, 'customer-list', 'customer', 'list', 1, '2017-05-19 18:16:10', '2017-11-26 16:43:37'),
(86, 'customer-form', 'customer', 'form', 2, '2017-05-19 18:16:33', '2017-11-26 16:43:37'),
(103, 'category-product-list', 'category-product', 'list', 1, '2017-11-26 14:50:53', '2017-11-26 14:50:53'),
(104, 'category-product-form', 'category-product', 'form', 2, '2017-11-26 14:51:11', '2017-11-26 14:51:11'),
(105, 'payment-method-list', 'payment-method', 'list', 1, '2017-11-26 14:52:56', '2017-11-26 14:52:56'),
(106, 'payment-method-form', 'payment-method', 'form', 2, '2017-11-26 14:53:10', '2017-11-26 14:53:10'),
(107, 'module-item-list', 'module-item', 'list', 1, '2017-11-26 14:54:56', '2017-11-26 14:54:56'),
(108, 'module-item-form', 'module-item', 'form', 2, '2017-11-26 14:55:07', '2017-11-26 14:55:07'),
(109, 'setting-system-list', 'setting-system', 'list', 1, '2017-11-26 14:56:14', '2017-11-26 14:56:31'),
(110, 'setting-system-form', 'setting-system', 'form', 2, '2017-11-26 14:56:46', '2017-11-26 14:56:46'),
(111, 'category-product-trash', 'category-product', 'trash', 3, '2017-11-26 16:31:27', '2017-11-26 16:31:45'),
(112, 'category-product-status', 'category-product', 'status', 4, '2017-11-26 16:32:17', '2017-11-26 16:32:17'),
(113, 'category-product-delete', 'category-product', 'delete', 5, '2017-11-26 16:32:50', '2017-11-26 16:32:50'),
(114, 'category-product-ordering', 'category-product', 'ordering', 6, '2017-11-26 16:33:08', '2017-11-26 16:33:08'),
(115, 'category-banner-list', 'category-banner', 'list', 1, '2017-12-12 04:05:17', '2017-12-12 04:05:17'),
(116, 'category-banner-form', 'category-banner', 'form', 2, '2017-12-12 04:05:47', '2017-12-12 04:05:47'),
(117, 'category-banner-trash', 'category-banner', 'trash', 3, '2017-12-12 04:06:15', '2017-12-12 04:06:15'),
(118, 'category-banner-status', 'category-banner', 'status', 4, '2017-12-12 04:06:43', '2017-12-12 04:06:43'),
(119, 'category-banner-delete', 'category-banner', 'delete', 5, '2017-12-12 04:07:11', '2017-12-12 04:08:01'),
(120, 'category-banner-ordering', 'category-banner', 'ordering', 6, '2017-12-12 04:07:32', '2017-12-12 04:08:01'),
(121, 'banner-list', 'banner', 'list', 1, '2017-12-12 07:41:46', '2017-12-12 07:41:46'),
(122, 'banner-form', 'banner', 'form', 2, '2017-12-12 07:41:56', '2017-12-12 07:41:56'),
(123, 'page-list', 'page', 'list', 1, '2017-12-13 18:10:13', '2017-12-13 18:10:13'),
(124, 'page-form', 'page', 'form', 2, '2017-12-13 18:10:24', '2017-12-13 18:10:24'),
(125, 'project-list', 'project', 'list', 1, '2018-01-04 09:45:36', '2018-01-04 09:45:36'),
(126, 'project-form', 'project', 'form', 2, '2018-01-04 09:45:49', '2018-01-04 09:45:49'),
(127, 'project-article-list', 'project-article', 'list', 1, '2018-01-04 15:21:53', '2018-01-04 15:21:53'),
(128, 'project-article-form', 'project-article', 'form', 2, '2018-01-04 15:22:08', '2018-01-04 15:22:08'),
(129, 'supporter-list', 'supporter', 'list', 1, '2018-01-07 17:18:23', '2018-01-07 17:18:23'),
(130, 'supporter-form', 'supporter', 'form', 2, '2018-01-07 17:18:39', '2018-01-07 17:18:39'),
(131, 'organization-list', 'organization', 'list', 1, '2018-01-08 04:32:03', '2018-01-08 04:32:03'),
(132, 'organization-form', 'organization', 'form', 2, '2018-01-08 04:32:17', '2018-01-08 04:32:17'),
(133, 'album-list', 'album', 'list', 1, '2018-01-08 15:57:00', '2018-01-08 15:57:00'),
(134, 'album-form', 'album', 'form', 2, '2018-01-08 15:57:10', '2018-01-08 15:57:10'),
(135, 'photo-list', 'photo', 'list', 1, '2018-01-08 18:07:30', '2018-01-08 18:07:30'),
(136, 'photo-form', 'photo', 'form', 2, '2018-01-08 18:07:39', '2018-01-08 18:07:39'),
(137, 'category-video-list', 'category-video', 'list', 1, '2018-01-09 09:54:53', '2018-01-09 09:54:53'),
(138, 'category-video-form', 'category-video', 'form', 2, '2018-01-09 09:55:06', '2018-01-09 09:55:06'),
(139, 'video-list', 'video', 'list', 1, '2018-01-09 09:55:16', '2018-01-09 09:55:16'),
(140, 'video-form', 'video', 'form', 2, '2018-01-09 09:55:24', '2018-01-09 09:55:24'),
(141, 'province-list', 'province', 'list', 1, '2018-01-21 17:53:20', '2018-01-21 17:53:20'),
(142, 'province-form', 'province', 'form', 2, '2018-01-21 17:53:29', '2018-01-21 17:53:29'),
(143, 'district-list', 'district', 'list', 1, '2018-01-22 02:03:24', '2018-01-22 02:03:24'),
(144, 'district-form', 'district', 'form', 2, '2018-01-22 02:03:34', '2018-01-22 02:03:34'),
(145, 'category-param-list', 'category-param', 'list', 1, '2018-02-01 20:15:43', '2018-02-01 20:15:43'),
(146, 'category-param-form', 'category-param', 'form', 2, '2018-02-01 20:15:56', '2018-02-01 20:15:56'),
(147, 'category-param-trash', 'category-param', 'trash', 3, '2018-02-01 20:43:36', '2018-02-01 20:43:36'),
(148, 'category-param-delete', 'category-param', 'delete', 4, '2018-02-01 20:43:52', '2018-02-01 20:43:52'),
(149, 'category-param-status', 'category-param', 'status', 1, '2018-02-01 20:44:13', '2018-02-01 20:44:13'),
(150, 'category-param-ordering', 'category-param', 'ordering', 5, '2018-02-01 20:44:42', '2018-02-01 20:44:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `child_image` text CHARACTER SET utf8,
  `price` decimal(11,2) DEFAULT NULL,
  `sale_price` decimal(11,2) DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `detail` text CHARACTER SET utf8,
  `count_view` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `code`, `fullname`, `meta_keyword`, `meta_description`, `alias`, `image`, `status`, `child_image`, `price`, `sale_price`, `intro`, `detail`, `count_view`, `category_id`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, '128746935', 'Lenovo IdeaPad 120S 11IAP N3350 (81A40072VN)', 'metakeyword Lenovo IdeaPad', 'metadescription Lenovo IdeaPad', 'lenovo-ideapad-120s-11iap-n3350-81a40072vn', 'laptop-1.png', 1, '[\"laptop-2.png\",\"laptop-3.png\",\"laptop-4.png\"]', '5190000.00', '4600000.00', 'giới thiệu Lenovo IdeaPad', '<p>chi tiết&nbsp;Lenovo IdeaPad</p>', NULL, 1, 1, '2018-02-27 03:25:36', '2018-02-27 04:12:06'),
(2, '781234596', 'Acer Aspire ES1 432 N3350', 'metakeyword Acer Aspire ES1 432 N3350', 'metadescription Acer Aspire ES1 432 N3350', 'acer-aspire-es1-432-n3350', 'laptop-2.png', 1, '[\"laptop-1.png\",\"laptop-3.png\",\"laptop-4.png\"]', '6290000.00', '0.00', 'giới thiệu Acer Aspire ES1 432 N3350', '<p>chi tiết&nbsp;Acer Aspire ES1 432 N3350</p>', NULL, 1, 2, '2018-02-27 04:11:33', '2018-02-27 04:23:25'),
(3, '138796452', 'Asus X441NA N4200 (GA070T)', 'metakeyword Asus X441NA N4200 (GA070T)', 'metadescription Asus X441NA N4200 (GA070T)', 'asus-x441na-n4200-ga070t', 'laptop-3.png', 1, '[\"laptop-1.png\",\"laptop-2.png\",\"laptop-4.png\"]', '7490000.00', '0.00', 'giới thiệu Asus X441NA N4200 (GA070T)', '<p>chi tiết&nbsp;Asus X441NA N4200 (GA070T)</p>', NULL, 1, 3, '2018-02-27 04:13:15', '2018-02-27 04:13:15'),
(4, '476285319', 'Acer ES1 533 N4200 (NX.GFTSV.003)', 'metakeyword Acer ES1 533 N4200 (NX.GFTSV.003)', 'metadescription Acer ES1 533 N4200 (NX.GFTSV.003)', 'acer-es1-533-n4200-nxgftsv003', 'laptop-4.png', 1, '[\"laptop-1.png\",\"laptop-2.png\",\"laptop-3.png\"]', '7490000.00', '0.00', 'giới thiệu Acer ES1 533 N4200 (NX.GFTSV.003)', '<p>chi tiết&nbsp;Acer ES1 533 N4200 (NX.GFTSV.003)</p>', NULL, 1, 4, '2018-02-27 04:14:16', '2018-02-27 04:14:16'),
(5, '719853246', 'Acer ES1 533 P6L2 N4200 (NX.GFTSV.008)', 'metakeyword Acer ES1 533 P6L2 N4200 (NX.GFTSV.008)', 'metadescription Acer ES1 533 P6L2 N4200 (NX.GFTSV.008)', 'acer-es1-533-p6l2-n4200-nxgftsv008', 'laptop-5.png', 1, '[\"laptop-1.png\",\"laptop-2.png\",\"laptop-3.png\"]', '7490000.00', '0.00', 'giới thiệu Acer ES1 533 P6L2 N4200 (NX.GFTSV.008)', '<p>chi tiết&nbsp;Acer ES1 533 P6L2 N4200 (NX.GFTSV.008)</p>', NULL, 1, 5, '2018-02-27 04:16:35', '2018-02-27 04:16:35'),
(6, '415723689', 'HP 15 bs578TU N3710 (2LR89PA)', 'metakeyword HP 15 bs578TU N3710 (2LR89PA)', 'metadescription HP 15 bs578TU N3710 (2LR89PA)', 'hp-15-bs578tu-n3710-2lr89pa', 'laptop-6.png', 1, '[\"laptop-1.png\",\"laptop-2.png\",\"laptop-3.png\"]', '7690000.00', '0.00', 'giới thiệu HP 15 bs578TU N3710 (2LR89PA)', '<p>chi tiết&nbsp;HP 15 bs578TU N3710 (2LR89PA)</p>', NULL, 1, 6, '2018-02-27 04:17:44', '2018-02-27 04:17:44'),
(7, '419327658', 'Lenovo Ideapad 320 14ISK i3 6006 (80XG0083VN)', 'metakeyword Lenovo Ideapad 320 14ISK i3 6006 (80XG0083VN)', 'metadescription Lenovo Ideapad 320 14ISK i3 6006 (80XG0083VN)', 'lenovo-ideapad-320-14isk-i3-6006-80xg0083vn', 'laptop-7.png', 1, '[\"laptop-1.png\",\"laptop-2.png\",\"laptop-3.png\"]', '8990000.00', '0.00', 'giới thiệu Lenovo Ideapad 320 14ISK i3 6006 (80XG0083VN)', '<p>chi tiết&nbsp;Lenovo Ideapad 320 14ISK i3 6006 (80XG0083VN)</p>', NULL, 1, 7, '2018-02-27 04:18:58', '2018-02-27 04:18:58'),
(8, '924175638', 'Lenovo IdeaPad 110 15ISK i3 6006U (80UD018KVN)', 'metakeyword Lenovo IdeaPad 110 15ISK i3 6006U (80UD018KVN)', 'metadescription Lenovo IdeaPad 110 15ISK i3 6006U (80UD018KVN)', 'lenovo-ideapad-110-15isk-i3-6006u-80ud018kvn', 'laptop-8.png', 1, '[\"laptop-1.png\",\"laptop-2.png\",\"laptop-3.png\"]', '9290000.00', '0.00', 'giới thiệu Lenovo IdeaPad 110 15ISK i3 6006U (80UD018KVN)', '<p>chi tiết&nbsp;Lenovo IdeaPad 110 15ISK i3 6006U (80UD018KVN)</p>', NULL, 1, 8, '2018-02-27 04:20:39', '2018-02-27 04:47:42'),
(9, '352461897', 'Asus TP203NAH N4200 (BP052T)', 'metakeyword Asus TP203NAH N4200 (BP052T)', 'metadescription Asus TP203NAH N4200 (BP052T)', 'asus-tp203nah-n4200-bp052t', 'laptop-9.png', 1, '[\"laptop-1.png\",\"laptop-2.png\",\"laptop-3.png\"]', '9890000.00', '0.00', 'giới thiệu Asus TP203NAH N4200 (BP052T)', '<p>chi tiết&nbsp;Asus TP203NAH N4200 (BP052T)</p>', 1, 1, 9, '2018-02-27 05:02:45', '2018-02-27 10:20:34'),
(10, '328519647', 'HP 15 bs571TU i3 6006U (2JQ68PA)', 'metakeyword HP 15 bs571TU i3 6006U (2JQ68PA)', 'metadescription HP 15 bs571TU i3 6006U (2JQ68PA)', 'hp-15-bs571tu-i3-6006u-2jq68pa', 'laptop-10.png', 1, '[\"laptop-4.png\",\"laptop-5.png\",\"laptop-6.png\"]', '10490000.00', '0.00', 'giới thiệu HP 15 bs571TU i3 6006U (2JQ68PA)', '<p>chi tiết&nbsp;HP 15 bs571TU i3 6006U (2JQ68PA)</p>', NULL, 1, 10, '2018-02-27 05:03:46', '2018-02-27 05:03:46'),
(11, '971358246', 'Máy tính để bàn ACER ASPIRE ATC-780 DT.B59SV.002', 'metakeyword Máy tính để bàn ACER ASPIRE ATC-780 DT.B59SV.002', 'metadescription Máy tính để bàn ACER ASPIRE ATC-780 DT.B59SV.002', 'may-tinh-de-ban-acer-aspire-atc-780-dtb59sv002', 'may-bo-1.png', 1, '[\"may-bo-2.png\",\"may-bo-3.png\",\"may-bo-4.png\"]', '8490000.00', '0.00', 'giới thiệu Máy tính để bàn ACER ASPIRE ATC-780 DT.B59SV.002', '<p>chi tiết&nbsp;M&aacute;y t&iacute;nh để b&agrave;n ACER ASPIRE ATC-780 DT.B59SV.002</p>', NULL, 12, 11, '2018-02-27 17:49:34', '2018-02-27 17:53:55'),
(12, '849162357', 'Máy tính để bàn ACER ASPIRE TC-780 (DT.B89SV.008)', 'metakeyword ACER ASPIRE TC-780 (DT.B89SV.008)', 'metadescription ACER ASPIRE TC-780 (DT.B89SV.008)', 'may-tinh-de-ban-acer-aspire-tc-780-dtb89sv008', 'may-bo-2.png', 1, '[\"may-bo-1.png\",\"may-bo-3.png\",\"may-bo-4.png\",\"may-bo-5.png\"]', '8690000.00', '0.00', 'giới thiệu ACER ASPIRE TC-780 (DT.B89SV.008)', '<p>chi tiết&nbsp;ACER ASPIRE TC-780 (DT.B89SV.008)</p>', NULL, 12, 12, '2018-02-27 17:51:40', '2018-02-27 17:52:23'),
(13, '179526348', 'Máy tính để bàn DELL VOSTRO 3268 (CORE I5)', 'metakeyword DELL VOSTRO 3268 (CORE I5)', 'metadescription DELL VOSTRO 3268 (CORE I5)', 'may-tinh-de-ban-dell-vostro-3268-core-i5', 'may-bo-3.png', 1, '[\"may-bo-4.png\",\"may-bo-5.png\",\"may-bo-6.png\"]', '11490000.00', '0.00', 'giới thiệu DELL VOSTRO 3268 (CORE I5)', '<p>chi tiết&nbsp;DELL VOSTRO 3268 (CORE I5)</p>', NULL, 12, 13, '2018-02-27 17:56:08', '2018-02-27 17:56:39'),
(14, '329156847', 'Máy tính để bàn ACER ASPIRE TC-780', 'metakeyword ACER ASPIRE TC-780 (COREi3/RAM4GB/HDD1TB)', 'metadescription ACER ASPIRE TC-780 (COREi3/RAM4GB/HDD1TB)', 'may-tinh-de-ban-acer-aspire-tc-780', 'may-bo-4.png', 1, '[\"may-bo-1.png\",\"may-bo-2.png\",\"may-bo-3.png\"]', '8490000.00', '0.00', 'giới thiệu ACER ASPIRE TC-780 (COREi3/RAM4GB/HDD1TB)', '<p>chi tiết&nbsp;ACER ASPIRE TC-780 (COREi3/RAM4GB/HDD1TB)</p>', NULL, 12, 14, '2018-02-27 17:57:52', '2018-02-27 18:08:32'),
(15, '489257361', 'Máy tính để bàn ACER ASPIRE TC-780 (DT.B89SV.005)', '', '', 'may-tinh-de-ban-acer-aspire-tc-780-dtb89sv005', 'may-bo-5.png', 1, NULL, '8590000.00', '0.00', '', '', NULL, 12, 15, '2018-02-27 18:06:27', '2018-02-27 18:06:27'),
(16, '657428319', 'Máy tính để bàn FPT ELEAD NK930 6811', 'metakeyword FPT ELEAD NK930 6811', 'metadescription FPT ELEAD NK930 6811', 'may-tinh-de-ban-fpt-elead-nk930-6811', 'may-bo-6.png', 1, '[\"may-bo-1.png\",\"may-bo-2.png\",\"may-bo-3.png\"]', '7290000.00', '0.00', 'giới thiệu FPT ELEAD NK930 6811', '<p>chi tiết&nbsp;ACER ASPIRE TC-780 (DT.B89SV.005)</p>', NULL, 12, 16, '2018-02-27 18:08:03', '2018-02-27 18:08:03'),
(17, '853917624', 'Samsung Galaxy Tab A SM-T285', 'metakeyword Tab A SM-T285', 'metadescription Tab A SM-T285', 'samsung-galaxy-tab-a-sm-t285', 'tablet-1.png', 1, '[\"tablet-2.png\",\"tablet-3.png\",\"tablet-4.png\"]', '3590000.00', '0.00', 'giới thiệu Tab A SM-T285', '<p>chi tiết&nbsp;Tab A SM-T285</p>', NULL, 13, 17, '2018-02-28 01:19:43', '2018-02-28 01:27:07'),
(18, '423589176', 'Samsung Galaxy Tab E', 'metakeyword Samsung Galaxy Tab E', 'metadescription Samsung Galaxy Tab E', 'samsung-galaxy-tab-e', 'tablet-2.png', 1, '[\"tablet-1.png\",\"tablet-2.png\",\"tablet-4.png\"]', '4490000.00', '0.00', 'giới thiệu Samsung Galaxy Tab E', '<p>chi tiết&nbsp;Samsung Galaxy Tab E</p>', NULL, 13, 18, '2018-02-28 01:24:19', '2018-02-28 01:27:14'),
(19, '162954873', 'Samsung Galaxy Tab A 8.0 (2017) SM-T385', 'metakeyword Samsung Galaxy Tab A 8.0 (2017) SM-T385', 'metadescription Samsung Galaxy Tab A 8.0 (2017) SM-T385', 'samsung-galaxy-tab-a-80-2017-sm-t385', 'tablet-3.png', 1, '[\"tablet-1.png\",\"tablet-2.png\",\"tablet-3.png\"]', '6490000.00', '0.00', 'giới thiệu Samsung Galaxy Tab A 8.0 (2017) SM-T385', '<p>chi tiết&nbsp;Samsung Galaxy Tab A 8.0 (2017) SM-T385</p>', NULL, 13, 19, '2018-02-28 01:26:12', '2018-02-28 01:27:23'),
(20, '361459872', 'Samsung Galaxy Tab A 2016 10.1 kèm bút Spen', 'metakeyword  Samsung Galaxy Tab A 2016 10.1 kèm bút Spen', 'metadescription Samsung Galaxy Tab A 2016 10.1 kèm bút Spen', 'samsung-galaxy-tab-a-2016-101-kem-but-spen', 'tablet-4.png', 1, '[\"tablet-1.png\",\"tablet-2.png\",\"tablet-3.png\"]', '7990000.00', '0.00', 'giới thiệu Samsung Galaxy Tab A 2016 10.1 kèm bút Spen', '<p>chi tiết&nbsp;Samsung Galaxy Tab A 2016 10.1 k&egrave;m b&uacute;t Spen</p>', NULL, 13, 20, '2018-02-28 01:29:15', '2018-02-28 01:29:15'),
(21, '786354129', 'Ipad WI-FI 32GB Gold 2017', 'metakeyword Ipad WI-FI 32GB Gold 2017', 'metadescription Ipad WI-FI 32GB Gold 2017', 'ipad-wi-fi-32gb-gold-2017', 'tablet-5.png', 1, '[\"tablet-1.png\",\"tablet-2.png\",\"tablet-4.png\"]', '8490000.00', '0.00', 'giới thiệu Ipad WI-FI 32GB Gold 2017', '<p>chi tiết&nbsp;Ipad WI-FI 32GB Gold 2017</p>', NULL, 13, 21, '2018-02-28 01:30:58', '2018-02-28 01:30:58'),
(22, '971642538', 'Ipad WI-FI CELLULAR 32GB SILVER 2017', 'metakeyword Ipad WI-FI CELLULAR 32GB SILVER 2017', 'metadescription Ipad WI-FI CELLULAR 32GB SILVER 2017', 'ipad-wi-fi-cellular-32gb-silver-2017', 'tablet-6.png', 1, '[\"tablet-1.png\",\"tablet-2.png\",\"tablet-5.png\"]', '12490000.00', '0.00', 'giới thiệu Ipad WI-FI CELLULAR 32GB SILVER 2017', '<p>chi tiết&nbsp;Ipad WI-FI CELLULAR 32GB SILVER 2017</p>', NULL, 13, 22, '2018-02-28 01:33:06', '2018-02-28 01:33:06'),
(23, '129845673', 'Samsung Galaxy A8 2018 Vàng', 'metakeyword Samsung Galaxy A8 2018 Vàng', 'metadescription Samsung Galaxy A8 2018 Vàng', 'samsung-galaxy-a8-2018-vang', 'dien-thoai-1.png', 1, '[\"dien-thoai-2.png\",\"dien-thoai-3.png\",\"dien-thoai-4.png\"]', '10990000.00', '0.00', 'giới thiệu Samsung Galaxy A8 2018 Vàng', '<p>chi tiết&nbsp;Samsung Galaxy A8 2018 V&agrave;ng</p>', NULL, 186, 23, '2018-02-28 01:47:16', '2018-02-28 01:47:16'),
(24, '615342798', 'Samsung Galaxy A8 2018 Tím', 'metakeyword SAMSUNG GALAXY A8 2018 TÍM', 'metadescription SAMSUNG GALAXY A8 2018 TÍM', 'samsung-galaxy-a8-2018-tim', 'dien-thoai-2.png', 1, '[\"dien-thoai-1.png\",\"dien-thoai-3.png\",\"dien-thoai-4.png\"]', '10990000.00', '0.00', 'giới thiệu SAMSUNG GALAXY A8 2018 TÍM', '<p>chi tiết&nbsp;SAMSUNG GALAXY A8 2018 T&Iacute;M</p>', NULL, 186, 24, '2018-02-28 02:09:35', '2018-02-28 02:09:45'),
(25, '932546187', 'Samsung Galaxy A8 2018 Đen', 'metakeyword SAMSUNG GALAXY A8+ 2018 ĐEN', 'metadescription SAMSUNG GALAXY A8+ 2018 ĐEN', 'samsung-galaxy-a8-2018-den', 'dien-thoai-3.png', 1, '[\"dien-thoai-1.png\",\"dien-thoai-2.png\",\"dien-thoai-4.png\"]', '13490000.00', '0.00', 'giới thiệu SAMSUNG GALAXY A8+ 2018 ĐEN', '<p>chi tiết&nbsp;SAMSUNG GALAXY A8+ 2018 ĐEN</p>', NULL, 186, 25, '2018-02-28 02:11:23', '2018-02-28 02:11:23'),
(26, '792483615', 'Samsung Galaxy S8 PLUS 2018 Vàng', 'metakeyword Samsung Galaxy A8 2018 Vàng', 'metadescription Samsung Galaxy A8 2018 Vàng', 'samsung-galaxy-s8-plus-2018-vang', 'dien-thoai-4.png', 1, '[\"dien-thoai-1.png\",\"dien-thoai-2.png\",\"dien-thoai-3.png\"]', '13490000.00', '0.00', 'giới thiệu Samsung Galaxy A8 2018 Vàng', '<p>chi tiết&nbsp;Samsung Galaxy A8 2018 V&agrave;ng</p>', NULL, 186, 26, '2018-02-28 02:13:36', '2018-02-28 02:13:36'),
(27, '673518942', 'Samsung Galaxy S8 Đen', 'metakeyword Samsung Galaxy S8 Đen', 'metadescription Samsung Galaxy S8 Đen', 'samsung-galaxy-s8-den', 'dien-thoai-5.png', 1, '[\"dien-thoai-1.png\",\"dien-thoai-2.png\",\"dien-thoai-4.png\"]', '16490000.00', '0.00', 'giới thiệu Samsung Galaxy S8 Đen', '<p>chi tiết&nbsp;Samsung Galaxy S8 Đen</p>', NULL, 186, 27, '2018-02-28 02:15:11', '2018-02-28 02:15:11'),
(28, '532497168', 'Samsung Galaxy S8 Tím', 'metakeyword Samsung Galaxy S8 Tím', 'metadescription Samsung Galaxy S8 Tím', 'samsung-galaxy-s8-tim', 'dien-thoai-6.png', 1, '[\"dien-thoai-2.png\",\"dien-thoai-3.png\",\"dien-thoai-4.png\"]', '17990000.00', '0.00', 'giới thiệu Samsung Galaxy S8 Tím', '<p>chi tiết&nbsp;Samsung Galaxy S8 T&iacute;m</p>', NULL, 186, 28, '2018-02-28 02:16:27', '2018-02-28 02:16:27'),
(29, '814275639', 'Loa BLUETOOTH ROMAN Y15', 'metakeyword Loa BLUETOOTH ROMAN Y15', 'metadescription Loa BLUETOOTH ROMAN Y15', 'loa-bluetooth-roman-y15', 'phu-kien-1.png', 1, '[\"phu-kien-2.png\",\"phu-kien-3.png\",\"phu-kien-4.png\"]', '100000.00', '0.00', 'giới thiệu Loa BLUETOOTH ROMAN Y15', '<p>chi tiết&nbsp;Loa BLUETOOTH ROMAN Y15</p>', NULL, 15, 29, '2018-02-28 02:31:08', '2018-02-28 02:31:23'),
(30, '742396185', 'Gậy Chụp Hình MONOPOD MINI', 'metakeyword Gậy Chụp Hình MONOPOD MINI', 'metadescription Gậy Chụp Hình MONOPOD MINI', 'gay-chup-hinh-monopod-mini', 'phu-kien-2.png', 1, '[\"phu-kien-1.png\",\"phu-kien-2.png\",\"phu-kien-3.png\"]', '20000.00', '0.00', 'giới thiệu Gậy Chụp Hình MONOPOD MINI', '<p>Chi tiết&nbsp;Gậy Chụp H&igrave;nh MONOPOD MINI</p>', NULL, 15, 30, '2018-02-28 02:33:36', '2018-02-28 02:33:36'),
(31, '643592718', 'Pin Sạc Dự Phòng MICROTEK MT -502', 'metakeyword PIN SẠC DỰ PHÒNG MICROTEK MT -502', 'metadescription PIN SẠC DỰ PHÒNG MICROTEK MT -502', 'pin-sac-du-phong-microtek-mt-502', 'phu-kien-3.png', 1, '[\"phu-kien-1.png\",\"phu-kien-2.png\",\"phu-kien-4.png\"]', '100000.00', '0.00', 'giới thiệu PIN SẠC DỰ PHÒNG MICROTEK MT -502', '<p>chi tiết&nbsp;PIN SẠC DỰ PH&Ograve;NG MICROTEK MT -502</p>', NULL, 15, 31, '2018-02-28 02:35:42', '2018-02-28 02:35:58'),
(32, '749632518', 'Cáp Màu MICRO REMAX', 'metakeyword CÁP MÀU MICRO REMAX', 'metadescription CÁP MÀU MICRO REMAX', 'cap-mau-micro-remax', 'phu-kien-4.png', 1, '[\"phu-kien-1.png\",\"phu-kien-2.png\",\"phu-kien-3.png\"]', '80000.00', '0.00', 'giới thiệu CÁP MÀU MICRO REMAX', '<p>chi tiết&nbsp;C&Aacute;P M&Agrave;U MICRO REMAX</p>', NULL, 15, 32, '2018-02-28 02:37:54', '2018-02-28 02:37:54'),
(33, '671483925', 'Gậy Chụp Hình MACARON M2', 'metakeyword GẬY CHỤP HÌNH MACARON M2', 'metadescription GẬY CHỤP HÌNH MACARON M2', 'gay-chup-hinh-macaron-m2', 'phu-kien-5.png', 1, '[\"phu-kien-4.png\",\"phu-kien-3.png\",\"phu-kien-2.png\"]', '20000.00', '0.00', 'giới thiệu GẬY CHỤP HÌNH MACARON M2', '<p>chi tiết&nbsp;GẬY CHỤP HÌNH MACARON M2</p>', NULL, 15, 33, '2018-02-28 02:39:16', '2018-02-28 02:39:16'),
(34, '613725498', 'Pin Sạc SUZUMI S-511', 'metakeyword SUZUMI S-511', 'metadescription SUZUMI S-511', 'pin-sac-suzumi-s-511', 'phu-kien-6.png', 1, '[\"phu-kien-2.png\",\"phu-kien-3.png\",\"phu-kien-4.png\"]', '139000.00', '0.00', 'giới thiệu SUZUMI S-511', '<p>chi tiết&nbsp;SUZUMI S-511</p>', NULL, 15, 34, '2018-02-28 02:41:21', '2018-02-28 02:42:59'),
(35, '163597842', 'Tai Nghe PHILIPS SHE1350', 'metakeyword Miếng Dán Màn Hình Laptop 15.5\"', 'metadescription Miếng Dán Màn Hình Laptop 15.5\"', 'tai-nghe-philips-she1350', 'pk-may-tinh-1.png', 1, '[\"pk-may-tinh-2.png\",\"pk-may-tinh-3.png\",\"pk-may-tinh-4.png\"]', '49000.00', '0.00', 'giới thiệu Miếng Dán Màn Hình Laptop 15.5\"', '<p>chi tiết&nbsp;Miếng D&aacute;n M&agrave;n H&igrave;nh Laptop 15.5&quot;</p>', NULL, 16, 35, '2018-02-28 03:40:45', '2018-02-28 03:48:55'),
(36, '324759816', 'Chuột KD KONIG KN915', 'metakeyword CHUỘT KD KONIG KN915', 'metadescription CHUỘT KD KONIG KN915', 'chuot-kd-konig-kn915', 'pk-may-tinh-2.png', 1, '[\"pk-may-tinh-1.png\",\"pk-may-tinh-3.png\",\"pk-may-tinh-4.png\"]', '89000.00', '0.00', 'giới thiệu CHUỘT KD KONIG KN915', '<p>chi tiết&nbsp;CHUỘT KD KONIG KN915</p>', NULL, 16, 36, '2018-02-28 03:44:03', '2018-02-28 03:44:03'),
(37, '315294876', 'USB SANDISK 8GB CZ50 CRUZER GLIDE', 'metakeyword USB SANDISK 8GB CZ50 CRUZER GLIDE', 'metadescription USB SANDISK 8GB CZ50 CRUZER GLIDE', 'usb-sandisk-8gb-cz50-cruzer-glide', 'pk-may-tinh-3.png', 1, '[\"pk-may-tinh-1.png\",\"pk-may-tinh-2.png\",\"pk-may-tinh-4.png\"]', '89000.00', '0.00', 'giới thiệu USB SANDISK 8GB CZ50 CRUZER GLIDE', '<p>chi tiết&nbsp;USB SANDISK 8GB CZ50 CRUZER GLIDE</p>', NULL, 16, 37, '2018-02-28 03:45:18', '2018-02-28 03:45:27'),
(38, '589643127', 'Ổ Cứng Di Động 8GB CZ50 CRUZER BLADE USB 2.0 SANDISK', 'metakeyword Ổ CỨNG DI ĐỘNG 8GB CZ50 CRUZER BLADE USB 2.0 SANDISK', 'metadescription Ổ CỨNG DI ĐỘNG 8GB CZ50 CRUZER BLADE USB 2.0 SANDISK', 'o-cung-di-dong-8gb-cz50-cruzer-blade-usb-20-sandisk', 'pk-may-tinh-4.png', 1, '[\"pk-may-tinh-1.png\",\"pk-may-tinh-2.png\",\"pk-may-tinh-3.png\"]', '89000.00', '0.00', 'giới thiệu Ổ CỨNG DI ĐỘNG 8GB CZ50 CRUZER BLADE USB 2.0 SANDISK', '<p>chi tiết&nbsp;Ổ CỨNG DI ĐỘNG 8GB CZ50 CRUZER BLADE USB 2.0 SANDISK</p>', NULL, 16, 38, '2018-02-28 03:47:44', '2018-02-28 03:47:57'),
(39, '967324158', 'Miếng Dán Màn Hình LAPTOP 15.5\"', 'metakeyword Tai Nghe PHILIPS SHE1350', 'metadescription Tai Nghe PHILIPS SHE1350', 'mieng-dan-man-hinh-laptop-155', 'pk-may-tinh-5.png', 1, '[\"pk-may-tinh-2.png\",\"pk-may-tinh-3.png\",\"pk-may-tinh-4.png\"]', '49000.00', '0.00', 'giới thiệu Tai Nghe PHILIPS SHE1350', '<p>chi tiết&nbsp;Tai Nghe PHILIPS SHE1350</p>', NULL, 16, 39, '2018-02-28 03:50:58', '2018-02-28 03:50:58'),
(40, '183954762', 'Headphone A4 TECH HS - 12', 'metakeyword HEADPHONE A4 TECH HS - 12', 'metadescription HEADPHONE A4 TECH HS - 12', 'headphone-a4-tech-hs-12', 'pk-may-tinh-6.png', 1, '[\"pk-may-tinh-3.png\",\"pk-may-tinh-4.png\",\"pk-may-tinh-5.png\"]', '50000.00', '0.00', 'giới thiệu HEADPHONE A4 TECH HS - 12', '<p>chi tiết&nbsp;HEADPHONE A4 TECH HS - 12</p>', NULL, 16, 40, '2018-02-28 03:52:21', '2018-02-28 04:00:40'),
(41, '134682795', 'Loa ARIRANG JANT I', 'metakeyword Loa ARIRANG JANT I', 'metadescription Loa ARIRANG JANT I', 'loa-arirang-jant-i', 'loa-1.png', 1, '[\"loa-2.png\",\"loa-3.png\",\"loa-4.png\"]', '1990000.00', '0.00', 'giới thiệu Loa ARIRANG JANT I', '<p>chi tiết&nbsp;Loa ARIRANG JANT I</p>', NULL, 17, 41, '2018-02-28 04:30:37', '2018-02-28 04:30:37'),
(42, '827963415', 'Loa RINTON RT-705', 'metakeyword Loa RINTON RT-705', 'metadescription Loa RINTON RT-705', 'loa-rinton-rt-705', 'loa-2.png', 1, '[\"loa-1.png\",\"loa-2.png\",\"loa-4.png\"]', '2490000.00', '0.00', 'giới thiệu Loa RINTON RT-705', '<p>chi tiết&nbsp;Loa RINTON RT-705</p>', NULL, 17, 42, '2018-02-28 04:32:19', '2018-02-28 04:32:49'),
(43, '831425769', 'Máy Tăng Âm RINTON PA-7600', 'metakeyword MÁY TĂNG ÂM RINTON PA-7600', 'metadescription MÁY TĂNG ÂM RINTON PA-7600', 'may-tang-am-rinton-pa-7600', 'loa-3.png', 1, '[\"loa-1.png\",\"loa-2.png\",\"loa-4.png\"]', '2690000.00', '0.00', 'giới thiệu MÁY TĂNG ÂM RINTON PA-7600', '<p>chi tiết&nbsp;M&Aacute;Y TĂNG &Acirc;M RINTON PA-7600</p>', NULL, 17, 43, '2018-02-28 04:36:15', '2018-02-28 04:36:24'),
(44, '928475136', 'Máy Tăng Âm ARIRANG SPA 203 III', 'metakeyword MÁY TĂNG ÂM ARIRANG SPA 203 III', 'metadescription MÁY TĂNG ÂM ARIRANG SPA 203 III', 'may-tang-am-arirang-spa-203-iii', 'loa-4.png', 1, '[\"loa-1.png\",\"loa-2.png\",\"loa-3.png\"]', '2490000.00', '0.00', 'giới thiệu MÁY TĂNG ÂM ARIRANG SPA 203 III', '<p>chi tiết&nbsp;M&Aacute;Y TĂNG &Acirc;M ARIRANG SPA 203 III</p>', NULL, 17, 44, '2018-02-28 04:37:28', '2018-02-28 04:37:28'),
(45, '519438267', 'Loa Kéo RINTON PL-1', 'metakeyword Loa Kéo RINTON PL-1', 'metadescription Loa Kéo RINTON PL-1', 'loa-keo-rinton-pl-1', 'loa-5.png', 1, '[\"loa-2.png\",\"loa-3.png\",\"loa-4.png\"]', '4790000.00', '0.00', 'giới thiệu Loa Kéo RINTON PL-1', '<p>chi tiết&nbsp;Loa K&eacute;o RINTON PL-1</p>', NULL, 17, 45, '2018-02-28 04:42:31', '2018-02-28 04:43:07'),
(46, '387621594', 'Loa BOSE ACOUSTIMASS 6 SERIES V', 'metakeyword LOA BOSE ACOUSTIMASS 6 SERIES V', 'metadescription LOA BOSE ACOUSTIMASS 6 SERIES V', 'loa-bose-acoustimass-6-series-v', 'loa-6.png', 1, '[\"loa-1.png\",\"loa-2.png\",\"loa-3.png\"]', '18760000.00', '0.00', 'giới thiệu LOA BOSE ACOUSTIMASS 6 SERIES V', '<p>chi tiết&nbsp;LOA BOSE ACOUSTIMASS 6 SERIES V</p>', NULL, 17, 46, '2018-02-28 04:44:11', '2018-02-28 04:45:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_param`
--

DROP TABLE IF EXISTS `product_param`;
CREATE TABLE `product_param` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `param_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_param`
--

INSERT INTO `product_param` (`id`, `product_id`, `param_id`, `created_at`, `updated_at`) VALUES
(4, 1, 10, '2018-02-27 04:02:28', '2018-02-27 04:02:28'),
(5, 1, 24, '2018-02-27 04:02:28', '2018-02-27 04:02:28'),
(6, 1, 29, '2018-02-27 04:02:28', '2018-02-27 04:02:28'),
(7, 1, 42, '2018-02-27 04:02:28', '2018-02-27 04:02:28'),
(8, 1, 54, '2018-02-27 04:02:28', '2018-02-27 04:02:28'),
(9, 2, 10, '2018-02-27 04:11:33', '2018-02-27 04:11:33'),
(10, 2, 53, '2018-02-27 04:11:33', '2018-02-27 04:11:33'),
(11, 3, 10, '2018-02-27 04:13:15', '2018-02-27 04:13:15'),
(12, 3, 53, '2018-02-27 04:13:15', '2018-02-27 04:13:15'),
(13, 4, 10, '2018-02-27 04:14:16', '2018-02-27 04:14:16'),
(14, 4, 54, '2018-02-27 04:14:16', '2018-02-27 04:14:16'),
(15, 5, 10, '2018-02-27 04:16:35', '2018-02-27 04:16:35'),
(16, 5, 53, '2018-02-27 04:16:35', '2018-02-27 04:16:35'),
(17, 6, 10, '2018-02-27 04:17:44', '2018-02-27 04:17:44'),
(18, 6, 54, '2018-02-27 04:17:44', '2018-02-27 04:17:44'),
(19, 7, 54, '2018-02-27 04:18:58', '2018-02-27 04:18:58'),
(20, 8, 10, '2018-02-27 04:20:39', '2018-02-27 04:20:39'),
(21, 8, 54, '2018-02-27 04:20:39', '2018-02-27 04:20:39'),
(22, 9, 10, '2018-02-27 05:02:45', '2018-02-27 05:02:45'),
(23, 9, 54, '2018-02-27 05:02:45', '2018-02-27 05:02:45'),
(24, 10, 10, '2018-02-27 05:03:46', '2018-02-27 05:03:46'),
(25, 10, 54, '2018-02-27 05:03:46', '2018-02-27 05:03:46'),
(26, 11, 10, '2018-02-27 17:49:34', '2018-02-27 17:49:34'),
(27, 11, 53, '2018-02-27 17:49:34', '2018-02-27 17:49:34'),
(30, 12, 10, '2018-02-27 17:52:23', '2018-02-27 17:52:23'),
(31, 12, 54, '2018-02-27 17:52:23', '2018-02-27 17:52:23'),
(32, 13, 10, '2018-02-27 17:56:08', '2018-02-27 17:56:08'),
(33, 13, 53, '2018-02-27 17:56:08', '2018-02-27 17:56:08'),
(34, 14, 10, '2018-02-27 17:57:52', '2018-02-27 17:57:52'),
(35, 14, 54, '2018-02-27 17:57:52', '2018-02-27 17:57:52'),
(36, 15, 10, '2018-02-27 18:06:27', '2018-02-27 18:06:27'),
(37, 15, 53, '2018-02-27 18:06:27', '2018-02-27 18:06:27'),
(38, 16, 10, '2018-02-27 18:08:03', '2018-02-27 18:08:03'),
(39, 16, 53, '2018-02-27 18:08:03', '2018-02-27 18:08:03'),
(40, 17, 11, '2018-02-28 01:19:43', '2018-02-28 01:19:43'),
(41, 17, 53, '2018-02-28 01:19:43', '2018-02-28 01:19:43'),
(42, 18, 11, '2018-02-28 01:24:19', '2018-02-28 01:24:19'),
(43, 18, 53, '2018-02-28 01:24:19', '2018-02-28 01:24:19'),
(44, 19, 11, '2018-02-28 01:26:12', '2018-02-28 01:26:12'),
(45, 19, 53, '2018-02-28 01:26:12', '2018-02-28 01:26:12'),
(46, 20, 11, '2018-02-28 01:29:15', '2018-02-28 01:29:15'),
(47, 20, 53, '2018-02-28 01:29:15', '2018-02-28 01:29:15'),
(48, 21, 10, '2018-02-28 01:30:58', '2018-02-28 01:30:58'),
(49, 21, 53, '2018-02-28 01:30:58', '2018-02-28 01:30:58'),
(50, 22, 10, '2018-02-28 01:33:06', '2018-02-28 01:33:06'),
(51, 22, 53, '2018-02-28 01:33:06', '2018-02-28 01:33:06'),
(52, 23, 11, '2018-02-28 01:47:16', '2018-02-28 01:47:16'),
(53, 23, 53, '2018-02-28 01:47:16', '2018-02-28 01:47:16'),
(54, 24, 11, '2018-02-28 02:09:35', '2018-02-28 02:09:35'),
(55, 24, 53, '2018-02-28 02:09:35', '2018-02-28 02:09:35'),
(56, 25, 11, '2018-02-28 02:11:23', '2018-02-28 02:11:23'),
(57, 25, 53, '2018-02-28 02:11:23', '2018-02-28 02:11:23'),
(58, 26, 11, '2018-02-28 02:13:36', '2018-02-28 02:13:36'),
(59, 26, 53, '2018-02-28 02:13:36', '2018-02-28 02:13:36'),
(60, 27, 11, '2018-02-28 02:15:11', '2018-02-28 02:15:11'),
(61, 27, 53, '2018-02-28 02:15:11', '2018-02-28 02:15:11'),
(62, 28, 11, '2018-02-28 02:16:27', '2018-02-28 02:16:27'),
(63, 28, 53, '2018-02-28 02:16:27', '2018-02-28 02:16:27'),
(64, 29, 12, '2018-02-28 02:31:08', '2018-02-28 02:31:08'),
(65, 29, 53, '2018-02-28 02:31:08', '2018-02-28 02:31:08'),
(66, 30, 12, '2018-02-28 02:33:36', '2018-02-28 02:33:36'),
(67, 30, 53, '2018-02-28 02:33:36', '2018-02-28 02:33:36'),
(68, 31, 12, '2018-02-28 02:35:42', '2018-02-28 02:35:42'),
(69, 31, 53, '2018-02-28 02:35:42', '2018-02-28 02:35:42'),
(70, 32, 12, '2018-02-28 02:37:54', '2018-02-28 02:37:54'),
(71, 32, 53, '2018-02-28 02:37:54', '2018-02-28 02:37:54'),
(72, 33, 12, '2018-02-28 02:39:16', '2018-02-28 02:39:16'),
(73, 33, 53, '2018-02-28 02:39:16', '2018-02-28 02:39:16'),
(74, 34, 12, '2018-02-28 02:41:21', '2018-02-28 02:41:21'),
(75, 34, 53, '2018-02-28 02:41:21', '2018-02-28 02:41:21'),
(76, 35, 12, '2018-02-28 03:40:45', '2018-02-28 03:40:45'),
(77, 35, 54, '2018-02-28 03:40:45', '2018-02-28 03:40:45'),
(78, 36, 12, '2018-02-28 03:44:03', '2018-02-28 03:44:03'),
(79, 36, 53, '2018-02-28 03:44:03', '2018-02-28 03:44:03'),
(80, 37, 53, '2018-02-28 03:45:18', '2018-02-28 03:45:18'),
(81, 38, 12, '2018-02-28 03:47:44', '2018-02-28 03:47:44'),
(82, 38, 53, '2018-02-28 03:47:44', '2018-02-28 03:47:44'),
(83, 39, 12, '2018-02-28 03:50:58', '2018-02-28 03:50:58'),
(84, 39, 53, '2018-02-28 03:50:58', '2018-02-28 03:50:58'),
(85, 40, 12, '2018-02-28 03:52:21', '2018-02-28 03:52:21'),
(86, 40, 53, '2018-02-28 03:52:21', '2018-02-28 03:52:21'),
(87, 41, 10, '2018-02-28 04:30:37', '2018-02-28 04:30:37'),
(88, 41, 53, '2018-02-28 04:30:37', '2018-02-28 04:30:37'),
(89, 42, 10, '2018-02-28 04:32:19', '2018-02-28 04:32:19'),
(90, 42, 53, '2018-02-28 04:32:19', '2018-02-28 04:32:19'),
(91, 43, 10, '2018-02-28 04:36:15', '2018-02-28 04:36:15'),
(92, 43, 53, '2018-02-28 04:36:15', '2018-02-28 04:36:15'),
(93, 44, 10, '2018-02-28 04:37:28', '2018-02-28 04:37:28'),
(94, 44, 53, '2018-02-28 04:37:28', '2018-02-28 04:37:28'),
(95, 45, 10, '2018-02-28 04:42:31', '2018-02-28 04:42:31'),
(96, 45, 53, '2018-02-28 04:42:31', '2018-02-28 04:42:31'),
(102, 46, 10, '2018-02-28 04:45:43', '2018-02-28 04:45:43'),
(103, 46, 53, '2018-02-28 04:45:43', '2018-02-28 04:45:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` bigint(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count_view` int(11) DEFAULT NULL,
  `total_cost` int(11) DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `overview` text COLLATE utf8_unicode_ci,
  `equipment` text COLLATE utf8_unicode_ci,
  `price_list` text COLLATE utf8_unicode_ci,
  `googlemap_url` text COLLATE utf8_unicode_ci,
  `province_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `street` text COLLATE utf8_unicode_ci,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project_article`
--

DROP TABLE IF EXISTS `project_article`;
CREATE TABLE `project_article` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `count_view` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project_member`
--

DROP TABLE IF EXISTS `project_member`;
CREATE TABLE `project_member` (
  `id` bigint(20) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `project_member`
--

INSERT INTO `project_member` (`id`, `project_id`, `member_id`, `created_at`, `updated_at`) VALUES
(1, 10, 4, '2018-01-07 14:09:20', '2018-01-07 14:09:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `province`
--

DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `province`
--

INSERT INTO `province` (`id`, `fullname`, `alias`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Việt Nam', 'viet-nam', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:18:21'),
(2, 'An Giang', 'an-giang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:34'),
(3, 'Bà Rịa Vũng Tàu', 'ba-ria-vung-tau', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:28'),
(4, 'Bình Dương', 'binh-duong', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:21'),
(5, 'Bình Phước', 'binh-phuoc', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:16'),
(6, 'Bình Thuận', 'binh-thuan', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:09'),
(7, 'Bình Định', 'binh-dinh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:02'),
(8, 'Bắc Giang', 'bac-giang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:55'),
(9, 'Bắc Kạn', 'bac-kan', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:49'),
(10, 'Bắc Ninh', 'bac-ninh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:43'),
(11, 'Bến Tre', 'ben-tre', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:37'),
(12, 'Cao Bằng', 'cao-bang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:28'),
(13, 'Cà Mau', 'ca-mau', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:22'),
(14, 'Cần Thơ', 'can-tho', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:15'),
(15, 'Gia Lai', 'gia-lai', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:40'),
(16, 'Hà Giang', 'ha-giang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:47'),
(17, 'Hà Nam', 'ha-nam', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:54'),
(18, 'Hà Nội', 'ha-noi', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:18:14'),
(19, 'Hà Tĩnh', 'ha-tinh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:18:08'),
(20, 'Hòa Bình', 'hoa-binh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:18:02'),
(21, 'Hưng Yên', 'hung-yen', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:55'),
(22, 'Hải Dương', 'hai-duong', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:50'),
(23, 'Hải Phòng', 'hai-phong', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:43'),
(24, 'Hồ Chí Minh', 'ho-chi-minh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:38'),
(25, 'Khánh Hòa', 'khanh-hoa', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:32'),
(26, 'Kiên Giang', 'kien-giang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:26'),
(27, 'Kon Tum', 'kon-tum', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:21'),
(28, 'Lai Châu', 'lai-chau', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:14'),
(29, 'Long An', 'long-an', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:08'),
(30, 'Lào Cai', 'lao-cai', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:01'),
(31, 'Lâm Đồng', 'lam-dong', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:08'),
(32, 'Lạng Sơn', 'lang-son', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:01'),
(33, 'Nam Định', 'nam-dinh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:14:54'),
(34, 'Nghệ An', 'nghe-an', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:41'),
(35, 'Ninh Bình', 'ninh-binh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:33'),
(36, 'Ninh Thuận', 'ninh-thuan', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:27'),
(37, 'Phú Thọ', 'phu-tho', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:20'),
(38, 'Phú Yên', 'phu-yen', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:14'),
(39, 'Quảng Nam', 'quang-nam', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:09'),
(40, 'Quảng Ngãi', 'quang-ngai', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:03'),
(41, 'Quảng Ninh', 'quang-ninh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:11:57'),
(42, 'Quảng Trị', 'quang-tri', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:11:52'),
(43, 'Sơn La', 'son-la', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:11:45'),
(44, 'Thanh Hóa', 'thanh-hoa', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:11:39'),
(45, 'Thái Bình', 'thai-binh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:11:33'),
(46, 'Thái Nguyên', 'thai-nguyen', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:11:28'),
(47, 'Thừa Thiên Huế', 'thua-thien-hue', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:47'),
(48, 'Tiền Giang', 'tien-giang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:52'),
(49, 'Trà Vinh', 'tra-vinh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:58'),
(50, 'Tuyên Quang', 'tuyen-quang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:14:49'),
(51, 'Tây Ninh', 'tay-ninh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:14:34'),
(52, 'Vĩnh Long', 'vinh-long', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:14:25'),
(53, 'Vĩnh Phúc', 'vinh-phuc', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:14:20'),
(54, 'Yên Bái', 'yen-bai', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:14:11'),
(55, 'Đà Nẵng', 'da-nang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:13:58'),
(56, 'Đắk Lắk', 'dak-lak', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:13:52'),
(57, 'Đồng Nai', 'dong-nai', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:13:46'),
(58, 'Đồng Tháp', 'dong-thap', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:13:40'),
(59, 'Bạc Liêu', 'bac-lieu', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:13:33'),
(60, 'Sóc Trăng', 'soc-trang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:13:19'),
(61, 'Hậu Giang', 'hau-giang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:13:11'),
(62, 'Đắk Nông', 'dak-nong', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:13:05'),
(63, 'Điện Biên', 'dien-bien', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:11:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reminders`
--

DROP TABLE IF EXISTS `reminders`;
CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_users`
--

DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_system`
--

DROP TABLE IF EXISTS `setting_system`;
CREATE TABLE `setting_system` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `title` text,
  `meta_keyword` text,
  `meta_description` text,
  `author` varchar(255) DEFAULT NULL,
  `copyright` text,
  `google_site_verification` text,
  `google_analytics` text,
  `logo_frontend` text,
  `favicon` varchar(255) DEFAULT NULL,
  `setting` text,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `setting_system`
--

INSERT INTO `setting_system` (`id`, `fullname`, `alias`, `title`, `meta_keyword`, `meta_description`, `author`, `copyright`, `google_site_verification`, `google_analytics`, `logo_frontend`, `favicon`, `setting`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'settingsystem', 'setting-system', 'DC Mobile Chuyên kinh doanh điện thoại, máy tính laptop mới cũ', 'máy tính,  laptop cũ,  điện thoại thông minh', 'Bán lẻ máy tính, laptop, điện thoại mới cũ trên toàn quốc. DC Mobile một trong những thương hiệu có tiếng lâu đời về các sản phẩm công nghệ', 'DC Mobile Chuyên kinh doanh điện thoại, máy tính laptop mới cũ', 'DC Mobile Chuyên kinh doanh điện thoại, máy tính laptop mới cũ [seodekiemtien@gmail.com]', 'KqqAiIZhyvjETFMGGAwT_GliP8lOHb4-lIpwli3Fua8', '444111222', 'logo.png', 'favicon.ico', '[{\"field_name\":\"Số bài viết trên 1 trang\",\"field_code\":\"article_perpage\",\"field_value\":\"5\"},{\"field_name\":\"Độ rộng hình bài viết\",\"field_code\":\"article_width\",\"field_value\":\"400\"},{\"field_name\":\"Độ cao hình bài viết\",\"field_code\":\"article_height\",\"field_value\":\"250\"},{\"field_name\":\"Số sản phẩm trên 1 trang\",\"field_code\":\"product_perpage\",\"field_value\":\"32\"},{\"field_name\":\"Độ rộng hình sản phẩm\",\"field_code\":\"product_width\",\"field_value\":\"400\"},{\"field_name\":\"Độ cao hình sản phẩm\",\"field_code\":\"product_height\",\"field_value\":\"400\"},{\"field_name\":\"Đơn vị tiền tệ\",\"field_code\":\"currency_unit\",\"field_value\":\"vi_VN\"},{\"field_name\":\"MERCHANT_ID\",\"field_code\":\"merchant_id\",\"field_value\":\"36680\"},{\"field_name\":\"MERCHANT_PASS\",\"field_code\":\"merchant_pass\",\"field_value\":\"matkhauketnoi\"},{\"field_name\":\"RECEIVER\",\"field_code\":\"receiver\",\"field_value\":\"demo@nganluong.vn\"},{\"field_name\":\"Smtp host\",\"field_code\":\"smtp_host\",\"field_value\":\"smtp.gmail.com\"},{\"field_name\":\"Smtp port\",\"field_code\":\"smtp_port\",\"field_value\":\"465\"},{\"field_name\":\"Smtp authication\",\"field_code\":\"authentication\",\"field_value\":\"1\"},{\"field_name\":\"Encription\",\"field_code\":\"encription\",\"field_value\":\"ssl\"},{\"field_name\":\"Smtp username\",\"field_code\":\"smtp_username\",\"field_value\":\"dien.toannang@gmail.com\"},{\"field_name\":\"Smtp password\",\"field_code\":\"smtp_password\",\"field_value\":\"bjsdgetadsutdono\"},{\"field_name\":\"Email to\",\"field_code\":\"email_to\",\"field_value\":\"dienit02@gmail.com\"},{\"field_name\":\"Contact person\",\"field_code\":\"contacted_person\",\"field_value\":\"Công Ty TNHH GreenEcoLife\"},{\"field_name\":\"Trụ sở\",\"field_code\":\"address\",\"field_value\":\"50/2/59 Dương Quảng Hàm, Phường 5, Quận Gò Vấp\"},{\"field_name\":\"Hotline\",\"field_code\":\"telephone\",\"field_value\":\"0902.90.74.75\"},{\"field_name\":\"Facebook\",\"field_code\":\"facebook_url\",\"field_value\":\"https://www.facebook.com/nguyenvan.laptrinh\"},{\"field_name\":\"Twitter\",\"field_code\":\"twitter_url\",\"field_value\":\"https://twitter.com/\"},{\"field_name\":\"Google Plus\",\"field_code\":\"google_plus\",\"field_value\":\"https://plus.google.com/u/0/?hl=vi\"},{\"field_name\":\"Youtube\",\"field_code\":\"youtube_url\",\"field_value\":\"https://www.youtube.com/watch?v=kAcV7S3sySU\"},{\"field_name\":\"Instagram\",\"field_code\":\"instagram_url\",\"field_value\":\"http://flickr.com\"},{\"field_name\":\"Pinterest\",\"field_code\":\"pinterest_url\",\"field_value\":\"http://daidung.vn/\"},{\"field_name\":\"Map\",\"field_code\":\"map_url\",\"field_value\":\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.7765505259867!2d106.68751671435092!3d10.828404792286284!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528f0d3be7c47%3A0x3f95e11384c4817f!2zNTAgRMawxqFuZyBRdeG6o25nIEjDoG0sIHBoxrDhu51uZyA1LCBHw7IgVuG6pXAsIEjhu5MgQ2jDrSBNaW5oLCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1515998374369\"},{\"field_name\":\"Giờ giao dịch\",\"field_code\":\"opened_time\",\"field_value\":\"7:00 - 22:30\"}]', 1, 1, '2017-12-03 07:45:35', '2018-02-28 09:24:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supporter`
--

DROP TABLE IF EXISTS `supporter`;
CREATE TABLE `supporter` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_money` decimal(11,0) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `supporter`
--

INSERT INTO `supporter` (`id`, `fullname`, `number_money`, `payment_method_id`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Nguyễn Thị Thu Hằng', '1000000', 1, 1, 1, '2018-01-07 17:32:50', '2018-01-07 17:47:21'),
(7, 'Trần Gia Lạc', '2000000', 2, 2, 1, '2018-01-07 18:02:15', '2018-01-08 07:19:18'),
(8, 'Lê Văn Đại', '2000000', 1, 3, 1, '2018-01-08 02:38:56', '2018-01-08 09:29:07'),
(9, 'Nguyễn Mạnh Hùng', '3000000', 2, 4, 1, '2018-01-08 02:39:19', '2018-01-08 02:39:19'),
(10, 'Trần Tiến Dư', '3000000', 2, 5, 1, '2018-01-08 02:39:35', '2018-01-08 02:39:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `throttle`
--

DROP TABLE IF EXISTS `throttle`;
CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2017-11-12 07:00:10', '2017-11-12 07:00:10'),
(2, NULL, 'ip', '127.0.0.1', '2017-11-12 07:00:10', '2017-11-12 07:00:10'),
(3, NULL, 'global', NULL, '2017-11-12 07:00:22', '2017-11-12 07:00:22'),
(4, NULL, 'ip', '127.0.0.1', '2017-11-12 07:00:22', '2017-11-12 07:00:22'),
(5, NULL, 'global', NULL, '2017-11-12 07:00:36', '2017-11-12 07:00:36'),
(6, NULL, 'ip', '127.0.0.1', '2017-11-12 07:00:36', '2017-11-12 07:00:36'),
(7, NULL, 'global', NULL, '2017-11-12 07:05:02', '2017-11-12 07:05:02'),
(8, NULL, 'ip', '127.0.0.1', '2017-11-12 07:05:02', '2017-11-12 07:05:02'),
(9, NULL, 'global', NULL, '2017-11-12 07:30:11', '2017-11-12 07:30:11'),
(10, NULL, 'ip', '127.0.0.1', '2017-11-12 07:30:11', '2017-11-12 07:30:11'),
(11, NULL, 'global', NULL, '2017-11-12 07:32:49', '2017-11-12 07:32:49'),
(12, NULL, 'ip', '127.0.0.1', '2017-11-12 07:32:49', '2017-11-12 07:32:49'),
(13, NULL, 'global', NULL, '2017-11-12 07:39:23', '2017-11-12 07:39:23'),
(14, NULL, 'ip', '127.0.0.1', '2017-11-12 07:39:23', '2017-11-12 07:39:23'),
(15, NULL, 'global', NULL, '2017-11-12 07:55:42', '2017-11-12 07:55:42'),
(16, NULL, 'ip', '127.0.0.1', '2017-11-12 07:55:42', '2017-11-12 07:55:42'),
(17, NULL, 'global', NULL, '2017-11-12 07:59:33', '2017-11-12 07:59:33'),
(18, NULL, 'ip', '127.0.0.1', '2017-11-12 07:59:33', '2017-11-12 07:59:33'),
(19, NULL, 'global', NULL, '2017-11-12 08:01:13', '2017-11-12 08:01:13'),
(20, NULL, 'ip', '127.0.0.1', '2017-11-12 08:01:13', '2017-11-12 08:01:13'),
(21, NULL, 'global', NULL, '2017-11-12 08:01:34', '2017-11-12 08:01:34'),
(22, NULL, 'ip', '127.0.0.1', '2017-11-12 08:01:34', '2017-11-12 08:01:34'),
(23, NULL, 'global', NULL, '2017-11-12 08:01:41', '2017-11-12 08:01:41'),
(24, NULL, 'ip', '127.0.0.1', '2017-11-12 08:01:41', '2017-11-12 08:01:41'),
(25, NULL, 'global', NULL, '2017-11-12 08:02:05', '2017-11-12 08:02:05'),
(26, NULL, 'ip', '127.0.0.1', '2017-11-12 08:02:05', '2017-11-12 08:02:05'),
(27, NULL, 'global', NULL, '2017-11-12 08:12:23', '2017-11-12 08:12:23'),
(28, NULL, 'ip', '127.0.0.1', '2017-11-12 08:12:23', '2017-11-12 08:12:23'),
(29, NULL, 'global', NULL, '2017-11-12 08:18:51', '2017-11-12 08:18:51'),
(30, NULL, 'ip', '127.0.0.1', '2017-11-12 08:18:51', '2017-11-12 08:18:51'),
(31, NULL, 'global', NULL, '2017-11-12 08:19:22', '2017-11-12 08:19:22'),
(32, NULL, 'ip', '127.0.0.1', '2017-11-12 08:19:22', '2017-11-12 08:19:22'),
(33, NULL, 'global', NULL, '2017-11-12 08:34:38', '2017-11-12 08:34:38'),
(34, NULL, 'ip', '127.0.0.1', '2017-11-12 08:34:38', '2017-11-12 08:34:38'),
(35, NULL, 'global', NULL, '2017-11-12 10:21:38', '2017-11-12 10:21:38'),
(36, NULL, 'ip', '127.0.0.1', '2017-11-12 10:21:38', '2017-11-12 10:21:38'),
(37, NULL, 'global', NULL, '2017-11-12 10:38:16', '2017-11-12 10:38:16'),
(38, NULL, 'ip', '127.0.0.1', '2017-11-12 10:38:16', '2017-11-12 10:38:16'),
(39, 1, 'user', NULL, '2017-11-12 10:38:16', '2017-11-12 10:38:16'),
(40, NULL, 'global', NULL, '2017-11-12 10:39:37', '2017-11-12 10:39:37'),
(41, NULL, 'ip', '127.0.0.1', '2017-11-12 10:39:37', '2017-11-12 10:39:37'),
(42, 1, 'user', NULL, '2017-11-12 10:39:37', '2017-11-12 10:39:37'),
(43, NULL, 'global', NULL, '2017-11-12 10:58:13', '2017-11-12 10:58:13'),
(44, NULL, 'ip', '127.0.0.1', '2017-11-12 10:58:13', '2017-11-12 10:58:13'),
(45, NULL, 'global', NULL, '2017-11-12 10:59:19', '2017-11-12 10:59:19'),
(46, NULL, 'ip', '127.0.0.1', '2017-11-12 10:59:19', '2017-11-12 10:59:19'),
(47, 4, 'user', NULL, '2017-11-12 10:59:19', '2017-11-12 10:59:19'),
(48, NULL, 'global', NULL, '2017-11-12 11:00:10', '2017-11-12 11:00:10'),
(49, NULL, 'ip', '127.0.0.1', '2017-11-12 11:00:10', '2017-11-12 11:00:10'),
(50, 4, 'user', NULL, '2017-11-12 11:00:10', '2017-11-12 11:00:10'),
(51, NULL, 'global', NULL, '2017-11-12 11:04:27', '2017-11-12 11:04:27'),
(52, NULL, 'ip', '127.0.0.1', '2017-11-12 11:04:27', '2017-11-12 11:04:27'),
(53, 4, 'user', NULL, '2017-11-12 11:04:27', '2017-11-12 11:04:27'),
(54, NULL, 'global', NULL, '2017-11-12 11:05:04', '2017-11-12 11:05:04'),
(55, NULL, 'ip', '127.0.0.1', '2017-11-12 11:05:04', '2017-11-12 11:05:04'),
(56, 1, 'user', NULL, '2017-11-12 11:05:04', '2017-11-12 11:05:04'),
(57, NULL, 'global', NULL, '2017-11-12 11:08:43', '2017-11-12 11:08:43'),
(58, NULL, 'ip', '127.0.0.1', '2017-11-12 11:08:43', '2017-11-12 11:08:43'),
(59, 1, 'user', NULL, '2017-11-12 11:08:43', '2017-11-12 11:08:43'),
(60, NULL, 'global', NULL, '2017-11-12 11:14:37', '2017-11-12 11:14:37'),
(61, NULL, 'ip', '127.0.0.1', '2017-11-12 11:14:37', '2017-11-12 11:14:37'),
(62, 1, 'user', NULL, '2017-11-12 11:14:37', '2017-11-12 11:14:37'),
(63, NULL, 'global', NULL, '2017-11-12 11:18:13', '2017-11-12 11:18:13'),
(64, NULL, 'ip', '127.0.0.1', '2017-11-12 11:18:13', '2017-11-12 11:18:13'),
(65, 4, 'user', NULL, '2017-11-12 11:18:13', '2017-11-12 11:18:13'),
(66, NULL, 'global', NULL, '2017-11-12 11:19:22', '2017-11-12 11:19:22'),
(67, NULL, 'ip', '127.0.0.1', '2017-11-12 11:19:22', '2017-11-12 11:19:22'),
(68, 4, 'user', NULL, '2017-11-12 11:19:22', '2017-11-12 11:19:22'),
(69, NULL, 'global', NULL, '2017-11-12 12:21:15', '2017-11-12 12:21:15'),
(70, NULL, 'ip', '127.0.0.1', '2017-11-12 12:21:15', '2017-11-12 12:21:15'),
(71, 1, 'user', NULL, '2017-11-12 12:21:15', '2017-11-12 12:21:15'),
(72, NULL, 'global', NULL, '2017-11-12 12:30:54', '2017-11-12 12:30:54'),
(73, NULL, 'ip', '127.0.0.1', '2017-11-12 12:30:54', '2017-11-12 12:30:54'),
(74, 1, 'user', NULL, '2017-11-12 12:30:54', '2017-11-12 12:30:54'),
(75, NULL, 'global', NULL, '2017-11-12 12:31:09', '2017-11-12 12:31:09'),
(76, NULL, 'ip', '127.0.0.1', '2017-11-12 12:31:09', '2017-11-12 12:31:09'),
(77, 1, 'user', NULL, '2017-11-12 12:31:09', '2017-11-12 12:31:09'),
(78, NULL, 'global', NULL, '2017-11-12 19:20:51', '2017-11-12 19:20:51'),
(79, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:51', '2017-11-12 19:20:51'),
(80, NULL, 'global', NULL, '2017-11-12 19:20:51', '2017-11-12 19:20:51'),
(81, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:51', '2017-11-12 19:20:51'),
(82, NULL, 'global', NULL, '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(83, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(84, NULL, 'global', NULL, '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(85, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(86, NULL, 'global', NULL, '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(87, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(88, NULL, 'global', NULL, '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(89, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(90, NULL, 'global', NULL, '2017-11-12 19:24:30', '2017-11-12 19:24:30'),
(91, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:30', '2017-11-12 19:24:30'),
(92, NULL, 'global', NULL, '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(93, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(94, NULL, 'global', NULL, '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(95, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(96, NULL, 'global', NULL, '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(97, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(98, NULL, 'global', NULL, '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(99, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(100, NULL, 'global', NULL, '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(101, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(102, NULL, 'global', NULL, '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(103, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(104, NULL, 'global', NULL, '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(105, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(106, NULL, 'global', NULL, '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(107, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(108, NULL, 'global', NULL, '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(109, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(110, NULL, 'global', NULL, '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(111, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(112, NULL, 'global', NULL, '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(113, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(114, NULL, 'global', NULL, '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(115, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(116, NULL, 'global', NULL, '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(117, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(118, NULL, 'global', NULL, '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(119, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(120, NULL, 'global', NULL, '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(121, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(122, NULL, 'global', NULL, '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(123, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(124, NULL, 'global', NULL, '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(125, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(126, NULL, 'global', NULL, '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(127, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(128, NULL, 'global', NULL, '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(129, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(130, NULL, 'global', NULL, '2017-11-12 19:24:39', '2017-11-12 19:24:39'),
(131, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:39', '2017-11-12 19:24:39'),
(132, NULL, 'global', NULL, '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(133, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(134, NULL, 'global', NULL, '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(135, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(136, NULL, 'global', NULL, '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(137, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(138, NULL, 'global', NULL, '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(139, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(140, NULL, 'global', NULL, '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(141, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(142, NULL, 'global', NULL, '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(143, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(144, NULL, 'global', NULL, '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(145, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(146, NULL, 'global', NULL, '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(147, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(148, NULL, 'global', NULL, '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(149, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(150, NULL, 'global', NULL, '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(151, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(152, NULL, 'global', NULL, '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(153, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(154, NULL, 'global', NULL, '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(155, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(156, NULL, 'global', NULL, '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(157, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(158, NULL, 'global', NULL, '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(159, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(160, NULL, 'global', NULL, '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(161, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(162, NULL, 'global', NULL, '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(163, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(164, NULL, 'global', NULL, '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(165, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(166, NULL, 'global', NULL, '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(167, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(168, NULL, 'global', NULL, '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(169, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(170, NULL, 'global', NULL, '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(171, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(172, NULL, 'global', NULL, '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(173, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(174, NULL, 'global', NULL, '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(175, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(176, NULL, 'global', NULL, '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(177, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(178, NULL, 'global', NULL, '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(179, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(180, NULL, 'global', NULL, '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(181, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(182, NULL, 'global', NULL, '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(183, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(184, NULL, 'global', NULL, '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(185, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(186, NULL, 'global', NULL, '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(187, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(188, NULL, 'global', NULL, '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(189, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(190, NULL, 'global', NULL, '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(191, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(192, NULL, 'global', NULL, '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(193, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(194, NULL, 'global', NULL, '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(195, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(196, NULL, 'global', NULL, '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(197, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(198, NULL, 'global', NULL, '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(199, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(200, NULL, 'global', NULL, '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(201, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(202, NULL, 'global', NULL, '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(203, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(204, NULL, 'global', NULL, '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(205, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(206, NULL, 'global', NULL, '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(207, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(208, NULL, 'global', NULL, '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(209, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(210, NULL, 'global', NULL, '2017-11-12 19:24:51', '2017-11-12 19:24:51'),
(211, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:51', '2017-11-12 19:24:51'),
(212, NULL, 'global', NULL, '2017-11-12 19:24:51', '2017-11-12 19:24:51'),
(213, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:51', '2017-11-12 19:24:51'),
(214, NULL, 'global', NULL, '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(215, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(216, NULL, 'global', NULL, '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(217, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(218, NULL, 'global', NULL, '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(219, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(220, NULL, 'global', NULL, '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(221, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(222, NULL, 'global', NULL, '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(223, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(224, NULL, 'global', NULL, '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(225, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(226, NULL, 'global', NULL, '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(227, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(228, NULL, 'global', NULL, '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(229, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(230, NULL, 'global', NULL, '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(231, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(232, NULL, 'global', NULL, '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(233, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(234, NULL, 'global', NULL, '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(235, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(236, NULL, 'global', NULL, '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(237, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(238, NULL, 'global', NULL, '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(239, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(240, NULL, 'global', NULL, '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(241, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(242, NULL, 'global', NULL, '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(243, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(244, NULL, 'global', NULL, '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(245, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(246, NULL, 'global', NULL, '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(247, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(248, NULL, 'global', NULL, '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(249, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(250, NULL, 'global', NULL, '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(251, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(252, NULL, 'global', NULL, '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(253, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(254, NULL, 'global', NULL, '2017-11-12 19:25:02', '2017-11-12 19:25:02'),
(255, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:02', '2017-11-12 19:25:02'),
(256, NULL, 'global', NULL, '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(257, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(258, NULL, 'global', NULL, '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(259, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(260, NULL, 'global', NULL, '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(261, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(262, NULL, 'global', NULL, '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(263, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(264, NULL, 'global', NULL, '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(265, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(266, NULL, 'global', NULL, '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(267, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(268, NULL, 'global', NULL, '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(269, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(270, NULL, 'global', NULL, '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(271, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(272, NULL, 'global', NULL, '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(273, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(274, NULL, 'global', NULL, '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(275, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(276, NULL, 'global', NULL, '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(277, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(278, NULL, 'global', NULL, '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(279, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(280, NULL, 'global', NULL, '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(281, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(282, NULL, 'global', NULL, '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(283, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(284, NULL, 'global', NULL, '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(285, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(286, NULL, 'global', NULL, '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(287, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(288, NULL, 'global', NULL, '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(289, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(290, NULL, 'global', NULL, '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(291, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(292, NULL, 'global', NULL, '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(293, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(294, NULL, 'global', NULL, '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(295, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(296, NULL, 'global', NULL, '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(297, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(298, NULL, 'global', NULL, '2017-11-12 19:36:41', '2017-11-12 19:36:41'),
(299, NULL, 'ip', '127.0.0.1', '2017-11-12 19:36:41', '2017-11-12 19:36:41'),
(300, 4, 'user', NULL, '2017-11-12 19:36:41', '2017-11-12 19:36:41'),
(301, NULL, 'global', NULL, '2017-11-12 19:44:35', '2017-11-12 19:44:35'),
(302, NULL, 'ip', '127.0.0.1', '2017-11-12 19:44:35', '2017-11-12 19:44:35'),
(303, 1, 'user', NULL, '2017-11-12 19:44:35', '2017-11-12 19:44:35'),
(304, NULL, 'global', NULL, '2017-11-13 12:12:10', '2017-11-13 12:12:10'),
(305, NULL, 'ip', '127.0.0.1', '2017-11-13 12:12:10', '2017-11-13 12:12:10'),
(306, 1, 'user', NULL, '2017-11-13 12:12:10', '2017-11-13 12:12:10'),
(307, NULL, 'global', NULL, '2017-11-15 04:15:14', '2017-11-15 04:15:14'),
(308, NULL, 'ip', '127.0.0.1', '2017-11-15 04:15:14', '2017-11-15 04:15:14'),
(309, NULL, 'global', NULL, '2017-11-25 05:02:29', '2017-11-25 05:02:29'),
(310, NULL, 'ip', '127.0.0.1', '2017-11-25 05:02:29', '2017-11-25 05:02:29'),
(311, 1, 'user', NULL, '2017-11-25 05:02:29', '2017-11-25 05:02:29'),
(312, NULL, 'global', NULL, '2017-11-25 21:57:16', '2017-11-25 21:57:16'),
(313, NULL, 'ip', '127.0.0.1', '2017-11-25 21:57:16', '2017-11-25 21:57:16'),
(314, 6, 'user', NULL, '2017-11-25 21:57:16', '2017-11-25 21:57:16'),
(315, NULL, 'global', NULL, '2017-11-25 21:57:22', '2017-11-25 21:57:22'),
(316, NULL, 'ip', '127.0.0.1', '2017-11-25 21:57:22', '2017-11-25 21:57:22'),
(317, 6, 'user', NULL, '2017-11-25 21:57:22', '2017-11-25 21:57:22'),
(318, NULL, 'global', NULL, '2017-11-26 20:07:31', '2017-11-26 20:07:31'),
(319, NULL, 'ip', '127.0.0.1', '2017-11-26 20:07:31', '2017-11-26 20:07:31'),
(320, 1, 'user', NULL, '2017-11-26 20:07:31', '2017-11-26 20:07:31'),
(321, NULL, 'global', NULL, '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(322, NULL, 'ip', '127.0.0.1', '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(323, 1, 'user', NULL, '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(324, NULL, 'global', NULL, '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(325, NULL, 'ip', '127.0.0.1', '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(326, 1, 'user', NULL, '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(327, NULL, 'global', NULL, '2017-11-30 08:03:16', '2017-11-30 08:03:16'),
(328, NULL, 'ip', '127.0.0.1', '2017-11-30 08:03:16', '2017-11-30 08:03:16'),
(329, 1, 'user', NULL, '2017-11-30 08:03:16', '2017-11-30 08:03:16'),
(330, NULL, 'global', NULL, '2017-12-03 07:41:47', '2017-12-03 07:41:47'),
(331, NULL, 'ip', '127.0.0.1', '2017-12-03 07:41:47', '2017-12-03 07:41:47'),
(332, 1, 'user', NULL, '2017-12-03 07:41:47', '2017-12-03 07:41:47'),
(333, NULL, 'global', NULL, '2017-12-03 11:49:24', '2017-12-03 11:49:24'),
(334, NULL, 'ip', '127.0.0.1', '2017-12-03 11:49:24', '2017-12-03 11:49:24'),
(335, NULL, 'global', NULL, '2017-12-03 11:49:31', '2017-12-03 11:49:31'),
(336, NULL, 'ip', '127.0.0.1', '2017-12-03 11:49:31', '2017-12-03 11:49:31'),
(337, NULL, 'global', NULL, '2017-12-03 11:49:49', '2017-12-03 11:49:49'),
(338, NULL, 'ip', '127.0.0.1', '2017-12-03 11:49:49', '2017-12-03 11:49:49'),
(339, NULL, 'global', NULL, '2017-12-03 11:50:32', '2017-12-03 11:50:32'),
(340, NULL, 'ip', '127.0.0.1', '2017-12-03 11:50:32', '2017-12-03 11:50:32'),
(341, NULL, 'global', NULL, '2017-12-03 11:54:18', '2017-12-03 11:54:18'),
(342, NULL, 'ip', '127.0.0.1', '2017-12-03 11:54:18', '2017-12-03 11:54:18'),
(343, NULL, 'global', NULL, '2017-12-04 11:12:12', '2017-12-04 11:12:12'),
(344, NULL, 'ip', '127.0.0.1', '2017-12-04 11:12:12', '2017-12-04 11:12:12'),
(345, 1, 'user', NULL, '2017-12-04 11:12:12', '2017-12-04 11:12:12'),
(346, NULL, 'global', NULL, '2017-12-05 09:04:13', '2017-12-05 09:04:13'),
(347, NULL, 'ip', '127.0.0.1', '2017-12-05 09:04:13', '2017-12-05 09:04:13'),
(348, 1, 'user', NULL, '2017-12-05 09:04:13', '2017-12-05 09:04:13'),
(349, NULL, 'global', NULL, '2017-12-08 11:51:32', '2017-12-08 11:51:32'),
(350, NULL, 'ip', '127.0.0.1', '2017-12-08 11:51:32', '2017-12-08 11:51:32'),
(351, 1, 'user', NULL, '2017-12-08 11:51:32', '2017-12-08 11:51:32'),
(352, NULL, 'global', NULL, '2017-12-08 11:51:37', '2017-12-08 11:51:37'),
(353, NULL, 'ip', '127.0.0.1', '2017-12-08 11:51:37', '2017-12-08 11:51:37'),
(354, 1, 'user', NULL, '2017-12-08 11:51:37', '2017-12-08 11:51:37'),
(355, NULL, 'global', NULL, '2017-12-13 11:11:12', '2017-12-13 11:11:12'),
(356, NULL, 'ip', '127.0.0.1', '2017-12-13 11:11:12', '2017-12-13 11:11:12'),
(357, 1, 'user', NULL, '2017-12-13 11:11:12', '2017-12-13 11:11:12'),
(358, NULL, 'global', NULL, '2017-12-13 11:11:19', '2017-12-13 11:11:19'),
(359, NULL, 'ip', '127.0.0.1', '2017-12-13 11:11:19', '2017-12-13 11:11:19'),
(360, 1, 'user', NULL, '2017-12-13 11:11:19', '2017-12-13 11:11:19'),
(361, NULL, 'global', NULL, '2017-12-13 11:11:21', '2017-12-13 11:11:21'),
(362, NULL, 'ip', '127.0.0.1', '2017-12-13 11:11:21', '2017-12-13 11:11:21'),
(363, 1, 'user', NULL, '2017-12-13 11:11:21', '2017-12-13 11:11:21'),
(364, NULL, 'global', NULL, '2017-12-13 19:46:17', '2017-12-13 19:46:17'),
(365, NULL, 'ip', '127.0.0.1', '2017-12-13 19:46:17', '2017-12-13 19:46:17'),
(366, 1, 'user', NULL, '2017-12-13 19:46:17', '2017-12-13 19:46:17'),
(367, NULL, 'global', NULL, '2017-12-13 19:46:22', '2017-12-13 19:46:22'),
(368, NULL, 'ip', '127.0.0.1', '2017-12-13 19:46:22', '2017-12-13 19:46:22'),
(369, 1, 'user', NULL, '2017-12-13 19:46:22', '2017-12-13 19:46:22'),
(370, NULL, 'global', NULL, '2017-12-16 00:21:37', '2017-12-16 00:21:37'),
(371, NULL, 'ip', '127.0.0.1', '2017-12-16 00:21:37', '2017-12-16 00:21:37'),
(372, 1, 'user', NULL, '2017-12-16 00:21:37', '2017-12-16 00:21:37'),
(373, NULL, 'global', NULL, '2017-12-17 18:07:51', '2017-12-17 18:07:51'),
(374, NULL, 'ip', '127.0.0.1', '2017-12-17 18:07:51', '2017-12-17 18:07:51'),
(375, 1, 'user', NULL, '2017-12-17 18:07:51', '2017-12-17 18:07:51'),
(376, NULL, 'global', NULL, '2017-12-29 02:09:21', '2017-12-29 02:09:21'),
(377, NULL, 'ip', '127.0.0.1', '2017-12-29 02:09:21', '2017-12-29 02:09:21'),
(378, 1, 'user', NULL, '2017-12-29 02:09:21', '2017-12-29 02:09:21'),
(379, NULL, 'global', NULL, '2017-12-29 02:09:27', '2017-12-29 02:09:27'),
(380, NULL, 'ip', '127.0.0.1', '2017-12-29 02:09:27', '2017-12-29 02:09:27'),
(381, 1, 'user', NULL, '2017-12-29 02:09:27', '2017-12-29 02:09:27'),
(382, NULL, 'global', NULL, '2017-12-29 05:40:34', '2017-12-29 05:40:34'),
(383, NULL, 'ip', '127.0.0.1', '2017-12-29 05:40:34', '2017-12-29 05:40:34'),
(384, 1, 'user', NULL, '2017-12-29 05:40:34', '2017-12-29 05:40:34'),
(385, NULL, 'global', NULL, '2017-12-29 05:40:39', '2017-12-29 05:40:39'),
(386, NULL, 'ip', '127.0.0.1', '2017-12-29 05:40:39', '2017-12-29 05:40:39'),
(387, 1, 'user', NULL, '2017-12-29 05:40:39', '2017-12-29 05:40:39'),
(388, NULL, 'global', NULL, '2018-01-01 19:20:37', '2018-01-01 19:20:37'),
(389, NULL, 'ip', '127.0.0.1', '2018-01-01 19:20:37', '2018-01-01 19:20:37'),
(390, 1, 'user', NULL, '2018-01-01 19:20:37', '2018-01-01 19:20:37'),
(391, NULL, 'global', NULL, '2018-01-05 05:03:06', '2018-01-05 05:03:06'),
(392, NULL, 'ip', '127.0.0.1', '2018-01-05 05:03:06', '2018-01-05 05:03:06'),
(393, 1, 'user', NULL, '2018-01-05 05:03:06', '2018-01-05 05:03:06'),
(394, NULL, 'global', NULL, '2018-01-07 02:06:01', '2018-01-07 02:06:01'),
(395, NULL, 'ip', '127.0.0.1', '2018-01-07 02:06:01', '2018-01-07 02:06:01'),
(396, NULL, 'global', NULL, '2018-01-08 23:12:58', '2018-01-08 23:12:58'),
(397, NULL, 'ip', '127.0.0.1', '2018-01-08 23:12:58', '2018-01-08 23:12:58'),
(398, NULL, 'global', NULL, '2018-01-08 23:13:07', '2018-01-08 23:13:07'),
(399, NULL, 'ip', '127.0.0.1', '2018-01-08 23:13:07', '2018-01-08 23:13:07'),
(400, NULL, 'global', NULL, '2018-01-08 23:13:09', '2018-01-08 23:13:09'),
(401, NULL, 'ip', '127.0.0.1', '2018-01-08 23:13:09', '2018-01-08 23:13:09'),
(402, NULL, 'global', NULL, '2018-01-15 01:13:23', '2018-01-15 01:13:23'),
(403, NULL, 'ip', '127.0.0.1', '2018-01-15 01:13:23', '2018-01-15 01:13:23'),
(404, NULL, 'global', NULL, '2018-01-15 11:12:12', '2018-01-15 11:12:12'),
(405, NULL, 'ip', '127.0.0.1', '2018-01-15 11:12:12', '2018-01-15 11:12:12'),
(406, NULL, 'global', NULL, '2018-01-18 09:25:07', '2018-01-18 09:25:07'),
(407, NULL, 'ip', '127.0.0.1', '2018-01-18 09:25:07', '2018-01-18 09:25:07'),
(408, 1, 'user', NULL, '2018-01-18 09:25:07', '2018-01-18 09:25:07'),
(409, NULL, 'global', NULL, '2018-01-18 21:48:18', '2018-01-18 21:48:18'),
(410, NULL, 'ip', '127.0.0.1', '2018-01-18 21:48:18', '2018-01-18 21:48:18'),
(411, 1, 'user', NULL, '2018-01-18 21:48:18', '2018-01-18 21:48:18'),
(412, NULL, 'global', NULL, '2018-01-19 00:25:45', '2018-01-19 00:25:45'),
(413, NULL, 'ip', '127.0.0.1', '2018-01-19 00:25:45', '2018-01-19 00:25:45'),
(414, 1, 'user', NULL, '2018-01-19 00:25:45', '2018-01-19 00:25:45'),
(415, NULL, 'global', NULL, '2018-01-26 01:05:07', '2018-01-26 01:05:07'),
(416, NULL, 'ip', '127.0.0.1', '2018-01-26 01:05:07', '2018-01-26 01:05:07'),
(417, 1, 'user', NULL, '2018-01-26 01:05:07', '2018-01-26 01:05:07'),
(418, NULL, 'global', NULL, '2018-01-26 01:43:54', '2018-01-26 01:43:54'),
(419, NULL, 'ip', '127.0.0.1', '2018-01-26 01:43:54', '2018-01-26 01:43:54'),
(420, 4, 'user', NULL, '2018-01-26 01:43:54', '2018-01-26 01:43:54'),
(421, NULL, 'global', NULL, '2018-01-26 01:44:01', '2018-01-26 01:44:01'),
(422, NULL, 'ip', '127.0.0.1', '2018-01-26 01:44:01', '2018-01-26 01:44:01'),
(423, 4, 'user', NULL, '2018-01-26 01:44:01', '2018-01-26 01:44:01'),
(424, NULL, 'global', NULL, '2018-01-26 01:59:32', '2018-01-26 01:59:32'),
(425, NULL, 'ip', '127.0.0.1', '2018-01-26 01:59:32', '2018-01-26 01:59:32'),
(426, 6, 'user', NULL, '2018-01-26 01:59:32', '2018-01-26 01:59:32'),
(427, NULL, 'global', NULL, '2018-01-26 02:01:55', '2018-01-26 02:01:55'),
(428, NULL, 'ip', '127.0.0.1', '2018-01-26 02:01:55', '2018-01-26 02:01:55'),
(429, 6, 'user', NULL, '2018-01-26 02:01:55', '2018-01-26 02:01:55'),
(430, NULL, 'global', NULL, '2018-01-26 02:02:14', '2018-01-26 02:02:14'),
(431, NULL, 'ip', '127.0.0.1', '2018-01-26 02:02:14', '2018-01-26 02:02:14'),
(432, 6, 'user', NULL, '2018-01-26 02:02:14', '2018-01-26 02:02:14'),
(433, NULL, 'global', NULL, '2018-01-26 02:30:24', '2018-01-26 02:30:24'),
(434, NULL, 'ip', '127.0.0.1', '2018-01-26 02:30:24', '2018-01-26 02:30:24'),
(435, 6, 'user', NULL, '2018-01-26 02:30:24', '2018-01-26 02:30:24'),
(436, NULL, 'global', NULL, '2018-01-26 02:37:37', '2018-01-26 02:37:37'),
(437, NULL, 'ip', '127.0.0.1', '2018-01-26 02:37:37', '2018-01-26 02:37:37'),
(438, 6, 'user', NULL, '2018-01-26 02:37:37', '2018-01-26 02:37:37'),
(439, NULL, 'global', NULL, '2018-01-26 03:16:56', '2018-01-26 03:16:56'),
(440, NULL, 'ip', '127.0.0.1', '2018-01-26 03:16:56', '2018-01-26 03:16:56'),
(441, 6, 'user', NULL, '2018-01-26 03:16:56', '2018-01-26 03:16:56'),
(442, NULL, 'global', NULL, '2018-01-26 03:35:32', '2018-01-26 03:35:32'),
(443, NULL, 'ip', '127.0.0.1', '2018-01-26 03:35:32', '2018-01-26 03:35:32'),
(444, 6, 'user', NULL, '2018-01-26 03:35:32', '2018-01-26 03:35:32'),
(445, NULL, 'global', NULL, '2018-01-28 09:40:43', '2018-01-28 09:40:43'),
(446, NULL, 'ip', '127.0.0.1', '2018-01-28 09:40:43', '2018-01-28 09:40:43'),
(447, 7, 'user', NULL, '2018-01-28 09:40:43', '2018-01-28 09:40:43'),
(448, NULL, 'global', NULL, '2018-01-29 18:33:51', '2018-01-29 18:33:51'),
(449, NULL, 'ip', '127.0.0.1', '2018-01-29 18:33:51', '2018-01-29 18:33:51'),
(450, 1, 'user', NULL, '2018-01-29 18:33:51', '2018-01-29 18:33:51'),
(451, NULL, 'global', NULL, '2018-01-31 00:07:37', '2018-01-31 00:07:37'),
(452, NULL, 'ip', '127.0.0.1', '2018-01-31 00:07:37', '2018-01-31 00:07:37'),
(453, 1, 'user', NULL, '2018-01-31 00:07:37', '2018-01-31 00:07:37'),
(454, NULL, 'global', NULL, '2018-01-31 00:07:43', '2018-01-31 00:07:43'),
(455, NULL, 'ip', '127.0.0.1', '2018-01-31 00:07:44', '2018-01-31 00:07:44'),
(456, 1, 'user', NULL, '2018-01-31 00:07:44', '2018-01-31 00:07:44'),
(457, NULL, 'global', NULL, '2018-01-31 10:50:07', '2018-01-31 10:50:07'),
(458, NULL, 'ip', '127.0.0.1', '2018-01-31 10:50:07', '2018-01-31 10:50:07'),
(459, 1, 'user', NULL, '2018-01-31 10:50:07', '2018-01-31 10:50:07'),
(460, NULL, 'global', NULL, '2018-01-31 20:44:30', '2018-01-31 20:44:30'),
(461, NULL, 'ip', '127.0.0.1', '2018-01-31 20:44:30', '2018-01-31 20:44:30'),
(462, 1, 'user', NULL, '2018-01-31 20:44:30', '2018-01-31 20:44:30'),
(463, NULL, 'global', NULL, '2018-02-01 01:50:34', '2018-02-01 01:50:34'),
(464, NULL, 'ip', '127.0.0.1', '2018-02-01 01:50:34', '2018-02-01 01:50:34'),
(465, 1, 'user', NULL, '2018-02-01 01:50:34', '2018-02-01 01:50:34'),
(466, NULL, 'global', NULL, '2018-02-01 02:10:55', '2018-02-01 02:10:55'),
(467, NULL, 'ip', '127.0.0.1', '2018-02-01 02:10:55', '2018-02-01 02:10:55'),
(468, 1, 'user', NULL, '2018-02-01 02:10:55', '2018-02-01 02:10:55'),
(469, NULL, 'global', NULL, '2018-02-01 02:28:57', '2018-02-01 02:28:57'),
(470, NULL, 'ip', '127.0.0.1', '2018-02-01 02:28:57', '2018-02-01 02:28:57'),
(471, 1, 'user', NULL, '2018-02-01 02:28:57', '2018-02-01 02:28:57'),
(472, NULL, 'global', NULL, '2018-02-01 02:54:48', '2018-02-01 02:54:48'),
(473, NULL, 'ip', '127.0.0.1', '2018-02-01 02:54:48', '2018-02-01 02:54:48'),
(474, 1, 'user', NULL, '2018-02-01 02:54:48', '2018-02-01 02:54:48'),
(475, NULL, 'global', NULL, '2018-02-01 02:56:25', '2018-02-01 02:56:25'),
(476, NULL, 'ip', '127.0.0.1', '2018-02-01 02:56:25', '2018-02-01 02:56:25'),
(477, 1, 'user', NULL, '2018-02-01 02:56:25', '2018-02-01 02:56:25'),
(478, NULL, 'global', NULL, '2018-02-02 19:05:12', '2018-02-02 19:05:12'),
(479, NULL, 'ip', '127.0.0.1', '2018-02-02 19:05:12', '2018-02-02 19:05:12'),
(480, 1, 'user', NULL, '2018-02-02 19:05:12', '2018-02-02 19:05:12'),
(481, NULL, 'global', NULL, '2018-02-04 06:13:43', '2018-02-04 06:13:43'),
(482, NULL, 'ip', '127.0.0.1', '2018-02-04 06:13:43', '2018-02-04 06:13:43'),
(483, 1, 'user', NULL, '2018-02-04 06:13:43', '2018-02-04 06:13:43'),
(484, NULL, 'global', NULL, '2018-02-04 06:32:59', '2018-02-04 06:32:59'),
(485, NULL, 'ip', '127.0.0.1', '2018-02-04 06:32:59', '2018-02-04 06:32:59'),
(486, NULL, 'global', NULL, '2018-02-04 06:33:40', '2018-02-04 06:33:40'),
(487, NULL, 'ip', '127.0.0.1', '2018-02-04 06:33:40', '2018-02-04 06:33:40'),
(488, 9, 'user', NULL, '2018-02-04 06:33:40', '2018-02-04 06:33:40'),
(489, NULL, 'global', NULL, '2018-02-04 08:07:49', '2018-02-04 08:07:49'),
(490, NULL, 'ip', '127.0.0.1', '2018-02-04 08:07:49', '2018-02-04 08:07:49'),
(491, 1, 'user', NULL, '2018-02-04 08:07:49', '2018-02-04 08:07:49'),
(492, NULL, 'global', NULL, '2018-02-05 03:16:48', '2018-02-05 03:16:48'),
(493, NULL, 'ip', '127.0.0.1', '2018-02-05 03:16:48', '2018-02-05 03:16:48'),
(494, 1, 'user', NULL, '2018-02-05 03:16:48', '2018-02-05 03:16:48'),
(495, NULL, 'global', NULL, '2018-02-05 20:05:07', '2018-02-05 20:05:07'),
(496, NULL, 'ip', '127.0.0.1', '2018-02-05 20:05:07', '2018-02-05 20:05:07'),
(497, 1, 'user', NULL, '2018-02-05 20:05:07', '2018-02-05 20:05:07'),
(498, NULL, 'global', NULL, '2018-02-06 01:01:38', '2018-02-06 01:01:38'),
(499, NULL, 'ip', '127.0.0.1', '2018-02-06 01:01:38', '2018-02-06 01:01:38'),
(500, 1, 'user', NULL, '2018-02-06 01:01:38', '2018-02-06 01:01:38'),
(501, NULL, 'global', NULL, '2018-02-06 21:31:19', '2018-02-06 21:31:19'),
(502, NULL, 'ip', '127.0.0.1', '2018-02-06 21:31:19', '2018-02-06 21:31:19'),
(503, 1, 'user', NULL, '2018-02-06 21:31:19', '2018-02-06 21:31:19'),
(504, NULL, 'global', NULL, '2018-02-07 03:29:51', '2018-02-07 03:29:51'),
(505, NULL, 'ip', '127.0.0.1', '2018-02-07 03:29:51', '2018-02-07 03:29:51'),
(506, 8, 'user', NULL, '2018-02-07 03:29:51', '2018-02-07 03:29:51'),
(507, NULL, 'global', NULL, '2018-02-07 21:17:30', '2018-02-07 21:17:30'),
(508, NULL, 'ip', '127.0.0.1', '2018-02-07 21:17:30', '2018-02-07 21:17:30'),
(509, 11, 'user', NULL, '2018-02-07 21:17:30', '2018-02-07 21:17:30'),
(510, NULL, 'global', NULL, '2018-02-08 01:52:59', '2018-02-08 01:52:59'),
(511, NULL, 'ip', '127.0.0.1', '2018-02-08 01:52:59', '2018-02-08 01:52:59'),
(512, 1, 'user', NULL, '2018-02-08 01:52:59', '2018-02-08 01:52:59'),
(513, NULL, 'global', NULL, '2018-02-27 10:23:13', '2018-02-27 10:23:13'),
(514, NULL, 'ip', '127.0.0.1', '2018-02-27 10:23:13', '2018-02-27 10:23:13'),
(515, 1, 'user', NULL, '2018-02-27 10:23:13', '2018-02-27 10:23:13'),
(516, NULL, 'global', NULL, '2018-02-27 10:23:20', '2018-02-27 10:23:20'),
(517, NULL, 'ip', '127.0.0.1', '2018-02-27 10:23:20', '2018-02-27 10:23:20'),
(518, 1, 'user', NULL, '2018-02-27 10:23:20', '2018-02-27 10:23:20'),
(519, NULL, 'global', NULL, '2018-02-27 10:23:27', '2018-02-27 10:23:27'),
(520, NULL, 'ip', '127.0.0.1', '2018-02-27 10:23:27', '2018-02-27 10:23:27'),
(521, 1, 'user', NULL, '2018-02-27 10:23:27', '2018-02-27 10:23:27'),
(522, NULL, 'global', NULL, '2018-02-27 10:23:35', '2018-02-27 10:23:35'),
(523, NULL, 'ip', '127.0.0.1', '2018-02-27 10:23:35', '2018-02-27 10:23:35'),
(524, 1, 'user', NULL, '2018-02-27 10:23:35', '2018-02-27 10:23:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `permissions`, `last_login`, `fullname`, `address`, `phone`, `image`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'diennk@dienkim.com', '$2y$10$U.H6.rf5/X4JpVnA/WyQwOD9a.dWtbQFWtp3wqxjJBu8w9BJg3Q9K', NULL, '2018-02-28 03:37:47', 'Nguyễn Kim Điền', NULL, NULL, 'nguyen-kim-dien.png', 6, 1, '2017-11-12 07:23:56', '2018-02-28 03:37:47'),
(6, 'helenangochong', 'helenangoc@dienkim.com', '$2y$10$/cSr2zKOI5RUAo9XD2K5DuVwB554IWn3k16RwF37pFSxYFouMOmbi', NULL, '2018-01-26 04:32:49', 'Hồ Thị Ngọc Hồng', '12 Tân Canh', '0988162755', NULL, 3, 0, '2018-01-26 01:57:35', '2018-02-04 08:08:20'),
(7, 'langong', 'thaithuonglangong@dienkim.com', '$2y$10$W38P0cEq8qVYSiXYAKQVCOKb7ZkN4t7uN1trgm38V2wSKjtacybxe', NULL, '2018-01-28 09:54:51', 'Thái Thượng Lãng Ông', '13 Tân Canh', '0988162774', NULL, 4, 0, '2018-01-28 09:40:59', '2018-02-04 08:08:20'),
(8, 'tiennv', 'tiennv@dienkim.com', '$2y$10$9sq3u.mDu/Bk1vvpv4sU7.Ior67wjHR5n1slgsv/sz63zBQxAfZ4K', NULL, '2018-02-23 01:16:10', 'Nguyễn Văn Tiến', '14 Tân Canh', '0988152782', NULL, 5, 0, '2018-02-05 20:06:26', '2018-02-23 01:16:10'),
(9, 'vinhlt', 'vinhht@dienkim.com', '$2y$10$ib1fvlTyvQLoRQcVt.Qrt.VAZtN3lPSMWHwpoqYwx5OM/4/vSUE9q', NULL, '2018-02-04 11:57:07', 'Huỳnh Thúc Vinh', '23 Bùi Quang Là', '0988162722', NULL, 1, 0, '2018-02-04 05:35:55', '2018-02-04 11:57:07'),
(10, 'phuongdh', 'phuongdh@dienkim.com', '$2y$10$5soi5omcKicGfF.Pvb0uF.a6c9aEckvbPgrg3Qkr0gcxpyo8j44QW', NULL, '2018-02-04 08:06:20', 'Đặng Hùng Phương', '26 Ngô Đức Kế', '0988222111', NULL, 2, NULL, '2018-02-04 08:06:20', '2018-02-04 08:08:20'),
(11, 'linhdm', 'linhdm@dienkim.com', '$2y$10$.TTBiXN9p83ZfEuYqaYDb.uTPXY4.fNMYBI1HOET0dK2lfzEUBq8C', NULL, '2018-02-07 21:24:07', 'Đỗ Mỹ Linh', '16 Bùi Quang Là', '0988162821', NULL, 1, 0, '2018-02-07 03:33:37', '2018-02-07 21:24:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_group_member`
--

DROP TABLE IF EXISTS `user_group_member`;
CREATE TABLE `user_group_member` (
  `id` bigint(20) NOT NULL,
  `group_member_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_group_member`
--

INSERT INTO `user_group_member` (`id`, `group_member_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 1, 1, '2018-01-26 04:05:58', '2018-01-26 04:05:58'),
(9, 4, 6, '2018-01-26 08:57:35', '2018-01-26 08:57:35'),
(10, 4, 7, '2018-01-28 16:36:54', '2018-01-28 16:36:54'),
(25, 3, 8, '2018-01-29 02:40:24', '2018-01-29 02:40:24'),
(27, 4, 10, '2018-02-04 15:06:20', '2018-02-04 15:06:20'),
(28, 3, 9, '2018-02-04 16:48:12', '2018-02-04 16:48:12'),
(29, 4, 11, '2018-02-07 10:33:37', '2018-02-07 10:33:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `video_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `video`
--

INSERT INTO `video` (`id`, `fullname`, `category_id`, `image`, `video_url`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Đi tham quan núi Bà Đen 2', 1, 'thuvienhinh-1.png', 'F5gQLpScOsI', 2, 1, '2018-01-09 11:01:55', '2018-01-09 11:49:30'),
(5, 'Đi tham quan núi Bà Đen', 1, 'thuvienhinh-2.png', 'BDBb1h-eLsY', 1, 1, '2018-01-09 11:04:06', '2018-01-09 11:49:08'),
(6, 'Đi tham quan núi Bà Đen 3', 1, 'thuvienhinh-3.png', 'rQt2EuoN6oo', 3, 1, '2018-01-09 11:04:29', '2018-01-09 11:49:42'),
(7, 'Đi tham quan núi Bà Đen 4', 1, 'thuvienhinh-4.png', 'jLzAqwCjPuU', 4, 1, '2018-01-09 11:04:54', '2018-01-09 11:49:49'),
(8, 'Đi tham quan núi Bà Đen 5', 1, 'thuvienhinh-5.png', 'koeu_AnZ0BQ', 5, 1, '2018-01-09 11:05:20', '2018-01-09 11:49:56'),
(9, 'Đi tham quan núi Bà Đen 6', 1, 'thuvienhinh-6.png', 'jM53ZU2MCzU', 6, 1, '2018-01-09 11:05:37', '2018-01-09 11:50:04'),
(10, 'Đi tham quan núi Bà Đen 7', 1, 'thuvienhinh-7.png', 'u7xIydku_Yw', 7, 1, '2018-01-09 11:05:53', '2018-01-09 11:50:11'),
(11, 'Đi tham quan núi Bà Đen 8', 1, 'thuvienhinh-8.png', 'yGvSEhQXu4g', 8, 1, '2018-01-09 11:06:08', '2018-01-09 11:50:20');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_article`
--
ALTER TABLE `category_article`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_banner`
--
ALTER TABLE `category_banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_param`
--
ALTER TABLE `category_param`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_video`
--
ALTER TABLE `category_video`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `group_member`
--
ALTER TABLE `group_member`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `group_privilege`
--
ALTER TABLE `group_privilege`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `module_item`
--
ALTER TABLE `module_item`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`);

--
-- Chỉ mục cho bảng `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `privilege`
--
ALTER TABLE `privilege`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_param`
--
ALTER TABLE `product_param`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `project_article`
--
ALTER TABLE `project_article`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `project_member`
--
ALTER TABLE `project_member`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- Chỉ mục cho bảng `setting_system`
--
ALTER TABLE `setting_system`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `supporter`
--
ALTER TABLE `supporter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `user_group_member`
--
ALTER TABLE `user_group_member`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `album`
--
ALTER TABLE `album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `article`
--
ALTER TABLE `article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `article_category`
--
ALTER TABLE `article_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `category_article`
--
ALTER TABLE `category_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `category_banner`
--
ALTER TABLE `category_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `category_param`
--
ALTER TABLE `category_param`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT cho bảng `category_video`
--
ALTER TABLE `category_video`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `district`
--
ALTER TABLE `district`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `group_member`
--
ALTER TABLE `group_member`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `group_privilege`
--
ALTER TABLE `group_privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3720;

--
-- AUTO_INCREMENT cho bảng `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `invoice_detail`
--
ALTER TABLE `invoice_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;

--
-- AUTO_INCREMENT cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `module_item`
--
ALTER TABLE `module_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=649;

--
-- AUTO_INCREMENT cho bảng `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `privilege`
--
ALTER TABLE `privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `product_param`
--
ALTER TABLE `product_param`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT cho bảng `project`
--
ALTER TABLE `project`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `project_article`
--
ALTER TABLE `project_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `project_member`
--
ALTER TABLE `project_member`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `province`
--
ALTER TABLE `province`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `setting_system`
--
ALTER TABLE `setting_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `supporter`
--
ALTER TABLE `supporter`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=525;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `user_group_member`
--
ALTER TABLE `user_group_member`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
