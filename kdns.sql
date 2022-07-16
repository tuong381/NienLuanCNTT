-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 16, 2022 lúc 05:21 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `kdns`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id_AD` int(10) UNSIGNED NOT NULL,
  `HoTenAD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MatKhau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SoDT` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id_AD`, `HoTenAD`, `MatKhau`, `Email`, `SoDT`, `DiaChi`, `created_at`, `updated_at`) VALUES
(1, 'tuongAD', '202cb962ac59075b964b07152d234b70', 'tuongb1809317@student.ctu.edu.vn', '0349246232', 'Tra Vinh', NULL, NULL),
(2, 'tuongQTV', '7363a0d0604902af7b70b271a0b96480', 'tuong@123.com', '0349246232', 'Tra Vinh', NULL, NULL),
(5, 'tuong', '7363a0d0604902af7b70b271a0b96480', 'tuong@12345.com', '1223456789', 'Cần thơ', NULL, NULL),
(7, 'tuongQTV', '202cb962ac59075b964b07152d234b70', 'quanrtrivien@gmail.com', '0349246235', 'Cần thơ', NULL, NULL),
(8, 'admin', '202cb962ac59075b964b07152d234b70', 'admin123@gmail.com', '0349246232', 'Trà Vinh', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id_admin_roles` int(10) UNSIGNED NOT NULL,
  `admin_id_AD` int(11) UNSIGNED NOT NULL,
  `roles_id_Roles` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_roles`
--

INSERT INTO `admin_roles` (`id_admin_roles`, `admin_id_AD`, `roles_id_Roles`, `created_at`, `updated_at`) VALUES
(51, 5, 2, NULL, NULL),
(55, 1, 1, NULL, NULL),
(58, 2, 2, NULL, NULL),
(59, 7, 2, NULL, NULL),
(60, 8, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `id_BaiViet` int(10) UNSIGNED NOT NULL,
  `id_DanhMucBaiViet` int(11) UNSIGNED NOT NULL,
  `TenBaiViet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoiDungBaiViet` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `HinhAnh_BaiViet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`id_BaiViet`, `id_DanhMucBaiViet`, `TenBaiViet`, `NoiDungBaiViet`, `HinhAnh_BaiViet`, `created_at`, `updated_at`) VALUES
(1, 3, 'Hướng dẫn làm món Gà sốt chua ngọt tẩm mè', '<h2>Nguy&ecirc;n liệu l&agrave;m G&agrave; sốt chua ngọt</h2>\r\n\r\n<p>&nbsp;Phi l&ecirc; g&agrave;&nbsp;<small>400 g</small></p>\r\n\r\n<p>&nbsp;H&agrave;nh t&acirc;y&nbsp;<small>150 g</small>&nbsp;</p>\r\n\r\n<p>Trứng g&agrave;&nbsp;<small>2 quả</small>&nbsp;</p>\r\n\r\n<p>C&agrave; chua&nbsp;<small>200 g</small></p>\r\n\r\n<p>&nbsp;Dầu h&agrave;o&nbsp;<small>1.5 muỗng</small></p>\r\n\r\n<p><strong>Gia vị:</strong>&nbsp;hạt n&ecirc;m, ti&ecirc;u, dầu ăn, đường</p>\r\n\r\n<h2>C&aacute;ch chế biến G&agrave; sốt chua ngọt</h2>\r\n\r\n<ul>\r\n	<li><em><strong>1 Sơ chế g&agrave; v&agrave; ướp g&agrave;</strong></em>\r\n\r\n	<p>Thịt g&agrave; phi l&ecirc; đem rửa sạch, cho v&agrave;o m&aacute;y xay xay nhuyễn.</p>\r\n\r\n	<p>H&agrave;nh t&acirc;y b&oacute;c vỏ, l&agrave;m sạch rồi cắt hạt lựu. 2 quả trứng g&agrave; t&aacute;ch ra, lấy l&ograve;ng đỏ.</p>\r\n\r\n	<p>Cho thịt đ&atilde; xay v&agrave;o t&ocirc; lớn, th&ecirc;m 150g h&agrave;nh t&acirc;y đ&atilde; xắt hạt lựu ở tr&ecirc;n, 2 l&ograve;ng đỏ trứng g&agrave;, 10g bột khoai t&acirc;y.</p>\r\n\r\n	<p>N&ecirc;m th&ecirc;m 1 muỗng c&agrave; ph&ecirc; hạt n&ecirc;m, 1/2 muỗng c&agrave; ph&ecirc; ti&ecirc;u cho vừa ăn. Bạn c&oacute; thể tăng giảm gia vị cho hợp khẩu vị gia đ&igrave;nh.</p>\r\n\r\n	<p>Sau đ&oacute;, bạn trộn đều c&aacute;c nguy&ecirc;n liệu lại với nhau, tiếp đến, bạn d&ugrave;ng muỗng quết thịt theo một chiều để tạo độ dai cho hỗn hợp thịt.</p>\r\n\r\n	<p><strong>Mẹo nhỏ:</strong>&nbsp;Nếu c&oacute; thời gian, bạn n&ecirc;n ướp thịt khoảng 30 ph&uacute;t cho thịt thấm gia vị, thịt sẽ ngon hơn.</p>\r\n\r\n	<p><img alt=\"Bước 1 Sơ chế gà và ướp gà Gà sốt chua ngọt\" src=\"https://cdn.tgdd.vn/2020/06/CookRecipe/GalleryStep/so-che-ga-va-uop-ga.jpg\" /></p>\r\n	</li>\r\n	<li><strong><em>2 Sơ chế c&aacute;c nguy&ecirc;n liệu kh&aacute;c</em></strong>\r\n	<p>C&agrave; chua l&agrave;m sạch, bỏ hạt, cắt hạt lựu.</p>\r\n\r\n	<p>H&agrave;nh l&aacute; l&agrave;m sạch, cắt nhỏ.</p>\r\n\r\n	<p><img alt=\"Bước 2 Sơ chế các nguyên liệu khác Gà sốt chua ngọt\" src=\"https://cdn.tgdd.vn/2020/06/CookRecipe/GalleryStep/so-che-cac-nguyen-lieu-khac-78.jpg\" /></p>\r\n	</li>\r\n	<li><em><strong>3 Vo vi&ecirc;n thịt g&agrave;</strong></em>\r\n	<p>Bạn đeo bao tay v&agrave;o v&agrave; vo hỗn hợp thịt g&agrave; đ&atilde; quết th&agrave;nh những vi&ecirc;n tr&ograve;n vừa ăn.</p>\r\n\r\n	<p>Bắc chảo l&ecirc;n bếp, cho khoảng 1 muỗng canh dầu ăn v&agrave;o chảo, bật bếp lửa nhỏ, đợi dầu s&ocirc;i lăn tăn th&igrave; nhẹ tay thả từ từ từng vi&ecirc;n g&agrave; v&agrave;o chi&ecirc;n cho v&agrave;ng đều c&aacute;c mặt.</p>\r\n\r\n	<p><strong>Mẹo nhỏ:</strong>&nbsp;Khi nặn thịt g&agrave;, bạn thoa &iacute;t dầu ăn l&ecirc;n tay để chống d&iacute;nh nh&eacute;. Khi vo vi&ecirc;n bạn n&ecirc;n vo th&agrave;nh c&aacute;c vi&ecirc;n nhỏ vừa ăn v&agrave; đều nhau, thịt chi&ecirc;n sẽ ch&iacute;n đều. Bạn chi&ecirc;n g&agrave; với lửa nhỏ để g&agrave; ch&iacute;n đều, kh&ocirc;ng bị ch&aacute;y hay c&ograve;n sống b&ecirc;n trong nh&eacute;!</p>\r\n\r\n	<p><img alt=\"Bước 3 Vo viên thịt gà Gà sốt chua ngọt\" src=\"https://cdn.tgdd.vn/2020/06/CookRecipe/GalleryStep/vo-vien-thit-ga-2.jpg\" /></p>\r\n	</li>\r\n	<li><strong><em>4 L&agrave;m g&agrave; sốt chua ngọt</em></strong>\r\n	<p>Bạn bắc một chảo sạch l&ecirc;n bếp, bật lửa vừa, cho một &iacute;t dầu ăn v&agrave;o chảo, cho c&agrave; chua đ&atilde; cắt hạt lựu v&agrave;o x&agrave;o, đảo đều tay khoảng 2 ph&uacute;t, cho th&ecirc;m v&agrave;o chảo 50 ml nước lọc.</p>\r\n\r\n	<p>N&ecirc;m th&ecirc;m 1 muỗng hạt n&ecirc;m, 1,5 muỗng c&agrave; ph&ecirc; đường, 1,5 muỗng canh dầu h&agrave;o v&agrave;o cho vừa ăn.</p>\r\n\r\n	<p>Đảo đều tay trong lửa vừa cho tới khi nước sốt sệt lại th&igrave; cho g&agrave; vi&ecirc;n đ&atilde; chi&ecirc;n v&agrave;ng v&agrave;o, đảo đều tay, đun th&ecirc;m 2 ph&uacute;t nữa th&igrave; tắt bếp, cho th&ecirc;m h&agrave;nh l&aacute; đ&atilde; xắt nhỏ v&agrave;o cho thơm.</p>\r\n\r\n	<p><strong>Mẹo nhỏ:</strong>&nbsp;Nếu bạn muốn nước sốt sệt hơn, bạn c&oacute; thể pha một ch&uacute;t bột năng với nước lọc rồi cho v&agrave;o chảo, vừa nấu vừa khuấy đều cho nước sốt s&aacute;nh sệt lại.</p>\r\n\r\n	<p><img alt=\"Bước 4 Làm gà sốt chua ngọt Gà sốt chua ngọt\" src=\"https://cdn.tgdd.vn/2020/06/CookRecipe/GalleryStep/lam-ga-sot-chua-ngot-2.jpg\" /></p>\r\n	</li>\r\n	<li><em><strong>5 Th&agrave;nh phẩm</strong></em>\r\n	<p>G&agrave; sốt chua ngọt thơm ngon với vị đậm đ&agrave; của g&agrave; vi&ecirc;n, vị chua nhẹ của c&agrave; chua, thơm thơm vị h&agrave;nh t&acirc;y thật hấp dẫn đ&uacute;ng kh&ocirc;ng n&agrave;o! Bạn c&oacute; thể d&ugrave;ng với một &iacute;t cơm trắng nữa sẽ rất ngon miệng đấy!</p>\r\n\r\n	<p><img alt=\"Bước 5 Thành phẩm Gà sốt chua ngọt\" src=\"https://cdn.tgdd.vn/2020/06/CookRecipe/GalleryStep/thanh-pham-190.jpg\" /></p>\r\n	</li>\r\n</ul>', 'ga sop chua.jpg', '2021-12-07 14:00:11', NULL),
(4, 2, 'Bánh canh chả cá - món ăn dân dã đặc sản Nha Trang', '<h2>&nbsp;</h2>\r\n\r\n<p>C&aacute;ch nấu b&aacute;nh canh Nha Trang kh&ocirc;ng qu&aacute; kh&oacute;. Nếu bạn chưa c&oacute; dịp đến Nha Trang để thử th&igrave; c&oacute; thể tham khảo c&aacute;ch nấu b&aacute;nh canh bột lọc chả c&aacute; tại nh&agrave; để thưởng thức v&agrave; chi&ecirc;u đ&atilde;i người th&acirc;n, bạn b&egrave;. Giờ th&igrave; c&ugrave;ng v&agrave;o bếp trổ t&agrave;i nấu m&oacute;n<em><strong>&nbsp;</strong></em><strong><a href=\"https://vinpearl.com/vi/tong-hop-dac-san-nha-trang-ngon-ba-chay-nhat-dinh-phai-thu-va-mua-ve-lam-qua\">đặc sản Nha Trang</a></strong>&nbsp;n&agrave;y nh&eacute;!</p>\r\n\r\n<p><strong>&nbsp; &nbsp; &nbsp;Bước 1:&nbsp;</strong>Chuẩn bị nguy&ecirc;n liệu</p>\r\n\r\n<p>Để nấu m&oacute;n ăn b&aacute;nh canh chả c&aacute; Nha Trang, bạn cần chuẩn bị c&aacute;c nguy&ecirc;n liệu sau:</p>\r\n\r\n<p><strong>Nguy&ecirc;n liệu l&agrave;m sợi b&aacute;nh canh:</strong></p>\r\n\r\n<ul>\r\n	<li>Bột năng: 200g</li>\r\n	<li>Bột m&igrave;: 50g</li>\r\n	<li>Bột gạo: 250g</li>\r\n</ul>\r\n\r\n<p><strong>Lưu &yacute;:&nbsp;</strong>Nếu kh&ocirc;ng c&oacute; thời gian, bạn c&oacute; thể mua sợi b&aacute;nh canh l&agrave;m sẵn.</p>\r\n\r\n<p><strong>Nguy&ecirc;n liệu l&agrave;m chả c&aacute; v&agrave; nấu nước d&ugrave;ng:&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>C&aacute; th&aacute;c l&aacute;c: 500g</li>\r\n	<li>Xương ống: 1 kg</li>\r\n	<li>C&agrave; chua: 4 quả</li>\r\n	<li>Củ cải trắng: 3 củ</li>\r\n	<li>C&agrave; rốt: 2 củ</li>\r\n	<li>Rau m&ugrave;i, th&igrave; l&agrave;, h&agrave;nh l&aacute;, h&agrave;nh kh&ocirc;</li>\r\n	<li>Gia vị gồm dầu ăn, nước mắm, ti&ecirc;u, muối, bột ngọt v&agrave; m&agrave;u dầu điều</li>\r\n</ul>\r\n\r\n<p><img alt=\"bánh canh chả cá\" src=\"https://statics.vinpearl.com/banh-canh-cha-ca-3_1628839155.jpg\" /></p>\r\n\r\n<p><em>C&aacute; th&aacute;c l&aacute;c sau khi rửa sạch, bạn lọc lấy phần thịt c&aacute; để l&agrave;m chả (Ảnh: Sưu tầm)</em></p>\r\n\r\n<p><strong>&nbsp; &nbsp; &nbsp;Bước 2:</strong>&nbsp;C&aacute;c bước nấu b&aacute;nh canh chả c&aacute;</p>\r\n\r\n<p><strong>Hầm xương l&agrave;m nước d&ugrave;ng:&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Bạn d&ugrave;ng 1kg xương ống heo để hầm l&agrave;m nước d&ugrave;ng gi&uacute;p nước d&ugrave;ng ngọt thanh.</li>\r\n	<li>Xương ống heo mua về bạn rửa sạch, sau đ&oacute; đem ng&acirc;m nước muối khoảng 3 &ndash; 5 ph&uacute;t rồi vớt để r&aacute;o. Sau đ&oacute;, bạn cho xương v&agrave;o nồi, đổ ngập nước rồi đun s&ocirc;i. Khi nước vừa s&ocirc;i tới, bạn vớt xương ra, đổ nước đi. Bước n&agrave;y gi&uacute;p xương sạch hơn. Sau đ&oacute; đổ lại xương v&agrave;o nồi, đổ nước lọc v&agrave;o v&agrave; hầm trong khoảng 30 &ndash; 40 ph&uacute;t. Khi hầm, nhớ vớt bọt để nồi nước d&ugrave;ng được trong.&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"bánh canh chả cá\" src=\"https://statics.vinpearl.com/banh-canh-cha-ca-4_1628839186.jpg\" /><em>Nước hầm từ xương heo gi&uacute;p nước d&ugrave;ng ngọt thanh, đậm đ&agrave; (Ảnh: B&aacute;o Người đưa tin)</em></p>\r\n\r\n<p><strong>Tiến h&agrave;nh sơ chế c&aacute;c nguy&ecirc;n liệu:&nbsp;</strong></p>\r\n\r\n<p>Trong khi chờ hầm nước d&ugrave;ng, ch&uacute;ng ta tiến h&agrave;nh sơ chế qua c&aacute;c nguy&ecirc;n liệu kh&aacute;c:</p>\r\n\r\n<ul>\r\n	<li>C&agrave; chua rửa sạch, cắt bỏ phần đầu, sau đ&oacute; th&aacute;i m&uacute;i cau.</li>\r\n	<li>H&agrave;nh kh&ocirc; b&oacute;c bỏ, xay hoặc băm nhỏ.&nbsp;</li>\r\n	<li>Rau m&ugrave;i, h&agrave;nh l&aacute;, th&igrave; l&agrave; đem rửa sạch, sau đ&oacute; th&aacute;i nhỏ.</li>\r\n</ul>\r\n\r\n<p><strong>Tiến h&agrave;nh l&agrave;m sợi b&aacute;nh canh:&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Bạn c&oacute; thể mua sợi b&aacute;nh canh l&agrave;m sẵn tại c&aacute;c si&ecirc;u thị, chợ để tiết kiệm thời gian.</li>\r\n	<li>Để l&agrave;m sợi b&aacute;nh canh, bạn cho nguy&ecirc;n liệu đ&atilde; chuẩn bị bao gồm: bột gạo, bột năng v&agrave; bột m&igrave; v&agrave;o một chiếc &acirc;u, trộn đều. Nhớ th&ecirc;m một muỗng dầu ăn, nửa muỗng muối. Cho khoảng 500ml nước v&agrave;o từ từ rồi tiến h&agrave;nh nh&agrave;o bột. Nh&agrave;o cho đến khi bột tạo th&agrave;nh một khối đặc dẻo.</li>\r\n	<li>Sau khi nhồi bột xong, bạn chia nhỏ lượng bột rồi cho l&ecirc;n thớt. Tiếp theo, d&ugrave;ng c&aacute;n d&agrave;n đều bột rồi d&ugrave;ng dao xắt nhỏ th&agrave;nh sợi vừa ăn.</li>\r\n</ul>\r\n\r\n<p><img alt=\"bánh canh chả cá\" src=\"https://statics.vinpearl.com/banh-canh-cha-ca-5_1628839208.jpg\" /><em>Nếu kh&ocirc;ng c&oacute; m&aacute;y &eacute;p sợi, bạn cho bột l&ecirc;n thớt, d&agrave;n đều v&agrave; cắt th&agrave;nh từng sợi (Ảnh: sưu tầm)</em></p>\r\n\r\n<ul>\r\n	<li>Nấu một nồi nước s&ocirc;i, cho một &iacute;t dầu ăn v&agrave;o nồi nước rồi cho sợi b&aacute;nh canh v&agrave;o luộc. Luộc sợi b&aacute;nh canh trong khoảng 2 &ndash; 3 ph&uacute;t, khi thấy sợi b&aacute;nh chuyển sang m&agrave;u trong l&agrave; được. Vớt sợi b&aacute;nh canh ra rồi trần qua với nước lạnh l&agrave; xong.</li>\r\n</ul>\r\n\r\n<p><strong>C&ocirc;ng thức l&agrave;m chả c&aacute;:</strong></p>\r\n\r\n<ul>\r\n	<li>C&aacute; th&aacute;c l&aacute;c sau khi rửa sạch, bạn đem lọc lấy phần thịt. Băm nhỏ thịt c&aacute; rồi đem đi xay nhuyễn. Bạn ướp v&agrave;o phần thịt c&aacute; xay nhuyễn 1 muỗng c&agrave; ph&ecirc; muối, nửa muỗng c&agrave; ph&ecirc; ti&ecirc;u, nửa th&igrave;a đường, 1 th&igrave;a bột năng. Sau đ&oacute; d&ugrave;ng mu&ocirc;i quết để chả c&aacute; được dẻo v&agrave; mịn.&nbsp;</li>\r\n	<li>Bạn &eacute;p chả c&aacute; th&agrave;nh h&igrave;nh chữ nhật c&oacute; độ d&agrave;y vừa phải khoảng 1,5cm rồi đem chi&ecirc;n. Chi&ecirc;n chả c&aacute; với hỗn hợp dầu ăn v&agrave; dầu hạt điều để chả c&aacute; c&oacute; m&agrave;u đẹp mắt. Sau đ&oacute; cắt th&agrave;nh miếng vừa ăn.</li>\r\n</ul>\r\n\r\n<p><strong>Tạo nước m&agrave;u cho m&oacute;n ăn:</strong></p>\r\n\r\n<ul>\r\n	<li>Cho dầu v&agrave;o chảo đun n&oacute;ng l&ecirc;n rồi cho h&agrave;nh kh&ocirc; băm v&agrave;o phi thơm. Cho phần c&agrave; chua th&aacute;i m&uacute;i cau v&agrave;o chảo đảo đều, d&ugrave;ng mui dằm để c&agrave; chua l&ecirc;n m&agrave;u đẹp. Sau đ&oacute; cho v&agrave;o nồi nước hầm xương.</li>\r\n</ul>\r\n\r\n<p><img alt=\"bánh canh chả cá\" src=\"https://statics.vinpearl.com/banh-canh-cha-ca-6_1628839234.jpg\" /><em>C&agrave; chua sẽ gi&uacute;p cho m&agrave;u m&oacute;n ăn c&oacute; m&agrave;u đỏ đẹp mắt (Ảnh: Vinmec)</em></p>\r\n\r\n<p><strong>Ho&agrave;n th&agrave;nh, thưởng thức:</strong></p>\r\n\r\n<ul>\r\n	<li>N&ecirc;m nếm nồi nước d&ugrave;ng cho vừa ăn. Bạn xếp b&aacute;nh canh ra b&aacute;t, cho chả c&aacute; l&ecirc;n tr&ecirc;n. Rắc th&ecirc;m ch&uacute;t th&igrave; l&agrave;, rau m&ugrave;i v&agrave; h&agrave;nh l&aacute;, sau đ&oacute; chan nước d&ugrave;ng v&agrave;o b&aacute;t. Vậy l&agrave; bạn đ&atilde; c&oacute; được t&ocirc; b&aacute;nh canh chả c&aacute; thơm ngon. Để m&oacute;n b&aacute;nh canh chả c&aacute; th&aacute;c l&aacute;c ngon hơn th&igrave; bạn nhớ chuẩn bị một ch&eacute;n nước mắm ớt xanh.&nbsp;</li>\r\n	<li>Ngo&agrave;i ra, nhiều người c&ograve;n thắc mắc b&aacute;nh canh chả c&aacute; ăn với rau g&igrave;? Rau ăn k&egrave;m b&aacute;nh canh chả c&aacute; bạn c&oacute; thể d&ugrave;ng c&aacute;c loại rau sống như x&agrave; l&aacute;ch, rau muống chẻ, ng&ograve; r&iacute;,... t&ugrave;y v&agrave;o sở th&iacute;ch của từng người.</li>\r\n</ul>', 'bánh canh chả cá.jpg', '2021-12-07 14:09:52', NULL),
(5, 3, 'Cách nấu món đậu hũ Tứ Xuyên thơm ngon, đậm đà hương vị Trung Hoa', '<p><strong>Nguy&ecirc;n liệu:</strong></p>\r\n\r\n<p>- Thịt heo xay 150 gram.</p>\r\n\r\n<p>- Đậu hũ non 200g.</p>\r\n\r\n<p>- H&agrave;nh l&aacute; 10g.</p>\r\n\r\n<p>- Gừng 1 muỗng canh.</p>\r\n\r\n<p>- Sa tế 1 muỗng canh.</p>\r\n\r\n<p>- Dầu h&agrave;o 1 muỗng canh.</p>\r\n\r\n<p>- Tỏi 1 muỗng c&agrave; ph&ecirc;.</p>\r\n\r\n<p>- Dầu m&egrave; 1 muỗng canh.</p>\r\n\r\n<p>- Nước tương 1 muỗng canh.</p>\r\n\r\n<p>- Ớt bột 2 muỗng canh.</p>\r\n\r\n<p><strong>C&aacute;ch l&agrave;m:</strong></p>\r\n\r\n<p>- Rửa sạch thịt với nước, cho thịt r&aacute;o nước rồi mới tiến h&agrave;nh băm thịt.</p>\r\n\r\n<p><img alt=\"dau hu tu xuyen 1\" src=\"https://static.tintuc.com.vn/images/ver3/2021/10/19/1634612017956-1634611688725-dau-hu-tu-xuyen-1.jpg\" /></p>\r\n\r\n<p>- Đem đậu hũ rửa sơ với nước sạch, d&ugrave;ng giấy ăn để lau kh&ocirc; nước b&ecirc;n ngo&agrave;i đậu hũ. Sau đ&oacute; cắt đậu th&agrave;nh từng khối vu&ocirc;ng nhỏ sao cho vừa ăn. H&agrave;nh l&aacute; bỏ phần đầu rồi cắt th&agrave;nh từng khoanh nhỏ.</p>\r\n\r\n<p><img alt=\"dau hu tu xuyen 2\" src=\"https://static.tintuc.com.vn/images/ver3/2021/10/19/1634612017965-1634611688789-dau-hu-tu-xuyen-2.jpg\" /></p>\r\n\r\n<p>- Bắc chảo l&ecirc;n bếp c&ugrave;ng với 1 muỗng canh dầu ăn, cho lần lượt tỏi băm, gừng v&agrave;o phi thơm, sau đ&oacute; bạn cho ớt bột, sa tế, dầu h&agrave;o, dầu m&egrave; v&agrave;o đảo đều.</p>\r\n\r\n<p><img alt=\"dau hu tu xuyen 3\" src=\"https://static.tintuc.com.vn/images/ver3/2021/10/19/1634612017973-1634611688830-dau-hu-tu-xuyen-3.jpg\" /></p>\r\n\r\n<p>- Khi tất cả đ&atilde; thơm, bạn cho thịt băm, 1 muỗng canh nước tương v&agrave;o v&agrave; đảo đều cho đến khi thịt bắt đầu săn lại.</p>\r\n\r\n<p><img alt=\"dau hu tu xuyen 4\" src=\"https://static.tintuc.com.vn/images/ver3/2021/10/19/1634612017982-1634611688880-dau-hu-tu-xuyen-4.jpg\" /></p>\r\n\r\n<p>- X&agrave;o khoảng 3-5 ph&uacute;t cho thịt ch&iacute;n dần th&igrave; bạn th&ecirc;m 200 ml nước lọc đợi s&ocirc;i v&agrave; cho đậu hũ v&agrave;o v&agrave; d&ugrave;ng muỗng hoặc mu&ocirc;i đảo thật nhẹ tay v&agrave; nấu lửa nhỏ trong 10 ph&uacute;t. M&oacute;n đậu hũ n&agrave;y bạn ăn ngay khi c&ograve;n n&oacute;ng v&agrave; c&oacute; thể ăn k&egrave;m với cơm trắng hoặc ăn ri&ecirc;ng đều rất ngon.</p>\r\n\r\n<p><img alt=\"dau hu tu xuyen 5\" src=\"https://static.tintuc.com.vn/images/ver3/2021/10/19/1634612017991-1634611688942-dau-hu-tu-xuyen-5.jpg\" /></p>\r\n\r\n<p>Ch&uacute;c bạn ngon miệng!</p>', 'đậu hủ tứ xuyên.jpg', '2021-12-07 14:21:45', NULL),
(6, 3, 'Hướng dẫn nấu món cá hồi sốt cam “chuẩn không cần chỉnh” tại nhà', '<h2>&nbsp;</h2>\r\n\r\n<p><img alt=\"ca-hoi-sot-cam-ivivu-3\" src=\"https://cdn3.ivivu.com/2020/04/ca-hoi-sot-cam-ivivu-3.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<p><strong>Chuẩn bị nguy&ecirc;n liệu:</strong></p>\r\n\r\n<p>&ndash; 300gr c&aacute; hồi</p>\r\n\r\n<p>&ndash; 1 quả cam tươi</p>\r\n\r\n<p>&ndash; 10gr bơ</p>\r\n\r\n<p>&ndash; Tỏi</p>\r\n\r\n<p>&ndash; Gia vị: hạt n&ecirc;m, muối, đường</p>\r\n\r\n<p><img alt=\"ca-hoi-sot-cam-ivivu-1\" src=\"https://cdn3.ivivu.com/2020/04/ca-hoi-sot-cam-ivivu-1.jpg\" style=\"height:488px; width:650px\" /></p>\r\n\r\n<p><strong>Hướng dẫn c&aacute;ch l&agrave;m:</strong></p>\r\n\r\n<p>&ndash; Bước 1: Rửa sạch c&aacute; hồi, để r&aacute;o. Ướp c&aacute; hồi c&ugrave;ng hạt n&ecirc;m, ti&ecirc;u trong v&ograve;ng 15 ph&uacute;t</p>\r\n\r\n<p>Cam vắt lấy nước cốt.</p>\r\n\r\n<p>&ndash; Bước 2: L&agrave;m n&oacute;ng chảo rồi cho bơ v&agrave;o, bơ tan rồi cho c&aacute; v&agrave;o &aacute;p chảo. Sau 1 ph&uacute;t bạn lật c&aacute; để &aacute;p chảo tiếp mặt c&aacute; c&ograve;n lại c&ograve;n lại. C&aacute; ch&iacute;n đặt ra đĩa.</p>\r\n\r\n<p>&ndash; Bước 3: Tiếp tục cho chảo l&ecirc;n bếp, cho tỏi phi thơm v&agrave;ng th&igrave; vớt ra đặt v&agrave;o đĩa c&aacute;. Đổ nước cam v&agrave;o một chiếc nồi nhỏ, th&ecirc;m đường, hạt n&ecirc;m, muối khuấy tan v&agrave; đun cho đến khi hỗn hợp hơi đặc lại.</p>\r\n\r\n<p>Lấy sốt vừa đun rưới l&ecirc;n c&aacute;, trang tr&iacute; c&ugrave;ng v&agrave;i l&aacute;t cam tươi, c&oacute; thể ăn k&egrave;m khoai t&acirc;y chi&ecirc;n hay măng t&acirc;y nếu th&iacute;ch.</p>\r\n\r\n<p><img alt=\"ca-hoi-sot-cam-ivivu-2\" src=\"https://cdn3.ivivu.com/2020/04/ca-hoi-sot-cam-ivivu-2.jpg\" style=\"height:511px; width:512px\" /></p>\r\n\r\n<p>&nbsp;</p>', 'cá hồi sốp cam.jpg', '2021-12-07 14:23:59', NULL),
(7, 2, 'Cách nấu canh chua cá lóc chuẩn vị miền Tây', '<p>Canh chua nấu theo kiểu miền T&acirc;y thường l&agrave; m&oacute;n canh chua c&aacute; l&oacute;c. C&aacute; l&oacute;c thịt chắc, mềm v&agrave; thơm, kết hợp với nước canh thanh m&aacute;t chua ngọt, hứa hẹn sẽ l&agrave; m&oacute;n ăn l&agrave;m hấp dẫn th&ecirc;m bữa cơm gia đ&igrave;nh bạn. M&oacute;n canh chua thường rất dễ ăn v&agrave; đưa cơm, nhất l&agrave; trong những ng&agrave;y thời tiết n&oacute;ng bức.</p>\r\n\r\n<p>C&aacute;ch nấu canh chua c&aacute; l&oacute;c miền T&acirc;y rất đơn giản v&agrave; tương tự như canh chua c&aacute; l&oacute;c kiểu miền Nam, tuy nhi&ecirc;n việc gia giảm gia vị v&agrave; c&aacute;ch ướp c&aacute; c&oacute; phần kh&aacute;c biệt, tạo n&ecirc;n hương vị đậm đ&agrave; đặc trưng. Dưới đ&acirc;y l&agrave; chi tiết c&aacute;ch nấu canh chua c&aacute; l&oacute;c, bạn c&ugrave;ng theo d&otilde;i nh&eacute;.</p>\r\n\r\n<p><img alt=\"Cách nấu canh chua cá lóc chuẩn vị miền Tây\" src=\"https://icdn.one/upload/2020/11/13/20201113063327-81ef11ed.jpg\" /></p>\r\n\r\n<p><strong>Nguy&ecirc;n liệu</strong></p>\r\n\r\n<ul>\r\n	<li>350 gam c&aacute; l&oacute;c</li>\r\n	<li>2 quả c&agrave; chua</li>\r\n	<li>&frac14; quả dứa</li>\r\n	<li>1 c&acirc;y dọc m&ugrave;ng</li>\r\n	<li>200 gam đậu bắp</li>\r\n	<li>Ng&ograve; gai, ng&ograve; om, gi&aacute; đỗ</li>\r\n	<li>2 quả ớt sừng đỏ</li>\r\n	<li>30 gam me</li>\r\n	<li>Tỏi băm, h&agrave;nh t&iacute;m phi</li>\r\n	<li>Gia vị: đường, muối, hạt n&ecirc;m, nước mắm, bột ngọt, dầu ăn</li>\r\n</ul>\r\n\r\n<p><strong>C&aacute;ch l&agrave;m</strong></p>\r\n\r\n<p>C&aacute; l&oacute;c sau khi mua về th&igrave; rửa sạch với nước, ch&agrave; c&aacute; với một &iacute;t muối để loại bỏ m&ugrave;i tanh của c&aacute;, sau đ&oacute; cắt th&agrave;nh từng kh&uacute;c nhỏ.</p>\r\n\r\n<p>Đậu bắp cắt bỏ phần đầu v&agrave; phần đu&ocirc;i, rửa sạch lại với nước rồi cắt th&agrave;nh từng miếng vừa ăn.</p>\r\n\r\n<p>Rửa sạch c&agrave; chua dưới v&ograve;i nước, sau đ&oacute; cắt m&uacute;i cau. Dứa cắt bỏ phần l&otilde;i, rồi cắt th&agrave;nh từng l&aacute;t mỏng.</p>\r\n\r\n<p>Tước bỏ lớp vỏ b&ecirc;n ngo&agrave;i bạc h&agrave;, rửa sạch l&agrave;m với nước, cắt th&agrave;nh từng miếng x&eacute;o vừa ăn.</p>\r\n\r\n<p>Ng&ograve; gai, ng&ograve; om, ớt v&agrave; gi&aacute; rửa sạch, với ng&ograve; gai v&agrave; ng&ograve; &ocirc;m th&igrave; đem đi cắt nhỏ. Ớt th&igrave; cắt l&aacute;t x&eacute;o.</p>\r\n\r\n<p>Cho me v&agrave;o trong một c&aacute;i ch&eacute;n với một &iacute;t nước n&oacute;ng, ng&acirc;m đến khi me mềm th&igrave; d&ugrave;ng muỗng dầm ra, lọc lấy nước cốt me.</p>\r\n\r\n<p><img alt=\"\" src=\"https://icdn.one/upload/2020/11/13/20201113063327-fd0272f1.jpg\" /></p>\r\n\r\n<p>Cho c&aacute; v&agrave;o t&ocirc; c&ugrave;ng với một &iacute;t hạt n&ecirc;m v&agrave; bột ngọt, sau đ&oacute; trộn đều để c&aacute;c nguy&ecirc;n liệu thấm v&agrave;o c&aacute;, rồi ướp trong 10 ph&uacute;t.</p>\r\n\r\n<p><img alt=\"\" src=\"https://icdn.one/upload/2020/11/13/20201113063328-2a8d1e16.jpg\" /></p>\r\n\r\n<p>Bắc một c&aacute;i nồi l&ecirc;n bếp, sau đ&oacute; cho v&agrave;o 1 muỗng canh dầu ăn v&agrave; tỏi v&agrave;o, phi l&ecirc;n cho v&agrave;ng thơm, rồi cho c&aacute; v&agrave;o đảo đều trong nồi để c&aacute; săn lại v&agrave; thơm hơn.</p>\r\n\r\n<p>Cho nước v&agrave;o trong nồi c&ugrave;ng với nước cốt me (lượng nước cho v&agrave;o đủ để nấu một t&ocirc; canh nha), rồi nấu ở lửa vừa trong 5 ph&uacute;t.</p>\r\n\r\n<p>Tiếp đ&oacute; cho thơm v&agrave; c&agrave; chua v&agrave;o, n&ecirc;m nếm canh với gia vị cho vừa ăn, sau 2 ph&uacute;t th&igrave; cho bạc h&agrave; v&agrave; đậu bắp v&agrave;o, nấu đến khi c&aacute;c nguy&ecirc;n liệu ch&iacute;n mềm th&igrave; tắt bếp, rồi mới cho gi&aacute; v&agrave;o.</p>', 'canh chua cá lóc.jpg', '2021-12-07 14:31:18', NULL),
(8, 12, 'Cách làm món thạch nhãn dừa thanh ngọt, thơm mát cho cả nhà thưởng thức!', '<h2>Nguy&ecirc;n liệu l&agrave;m Rau c&acirc;u dừa sợi</h2>\r\n\r\n<p>&nbsp;Nước dừa tươi&nbsp;<small>500 ml</small><em>(hoặc 2 tr&aacute;i dừa tươi)</em></p>\r\n\r\n<p>&nbsp;Cơm dừa non&nbsp;<small>1 ch&eacute;n</small><em>(ch&eacute;n ăn cơm)</em></p>\r\n\r\n<p>&nbsp;Bột rau c&acirc;u dẻo&nbsp;<small>1 g&oacute;i</small><em>(12gr)</em>&nbsp;</p>\r\n\r\n<p>Đường&nbsp;<small>100 gr</small>&nbsp;</p>\r\n\r\n<p>Nước lọc&nbsp;<small>200 ml</small></p>\r\n\r\n<h2>C&aacute;ch chọn mua dừa tươi ngon</h2>\r\n\r\n<ul>\r\n	<li>Để chọn mua dừa tươi ngon, đầu ti&ecirc;n bạn n&ecirc;n chọn những quả c&oacute; k&iacute;ch cỡ vừa phải, phần vỏ c&oacute; m&agrave;u xanh tươi, cuống c&ograve;n xanh v&agrave; dẻo.</li>\r\n	<li>Đối với dừa tươi, non th&igrave; khi lắc nhẹ ch&uacute;ng ta c&oacute; thể nghe thấy tiếng nước b&ecirc;n trong rất r&otilde;. B&ecirc;n cạnh đ&oacute;, bạn n&ecirc;n ưu ti&ecirc;n chọn mua những quả c&ograve;n nguy&ecirc;n ch&ugrave;m, chưa bị gọt vỏ để tr&aacute;nh mua phải dừa tẩm h&oacute;a chất nh&eacute;!</li>\r\n	<li>Kh&ocirc;ng n&ecirc;n chọn mua những quả c&oacute; vỏ ngo&agrave;i m&agrave;u v&agrave;ng n&acirc;u v&agrave; cuống kh&ocirc; v&igrave; đ&acirc;y l&agrave; dấu hiệu dừa đ&atilde; để l&acirc;u, dừa gi&agrave;.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Nguyên liệu món ăn rau câu dừa sợi\" src=\"https://cdn.tgdd.vn/2021/10/CookRecipe/CookUtensilandNotes/rau-cau-dua-soi-note-1200x676.jpg\" style=\"height:676px; width:1200px\" /></p>\r\n\r\n<h2><strong>C&aacute;ch chế biến Rau c&acirc;u dừa sợi</strong></h2>\r\n\r\n<ul>\r\n	<li><em><strong>1 Sơ chế dừa tươi</strong></em>\r\n\r\n	<p>Nếu sử dụng dừa tr&aacute;i th&igrave; đầu ti&ecirc;n bạn sẽ chặt đầu tr&aacute;i dừa v&agrave; chế nước ra&nbsp;<a href=\"https://www.dienmayxanh.com/noi\" target=\"_blank\">nồi</a>. Tiếp đ&oacute;, bổ đ&ocirc;i tr&aacute;i dừa rồi d&ugrave;ng&nbsp;<a href=\"https://www.dienmayxanh.com/muong\" target=\"_blank\">muỗng</a>&nbsp;nạo lấy cơm dừa rồi d&ugrave;ng&nbsp;<a href=\"https://www.dienmayxanh.com/dao-lam-bep\" target=\"_blank\">dao</a>&nbsp;cắt sợi nhỏ vừa ăn.</p>\r\n\r\n	<p><img alt=\"Bước 1 Sơ chế dừa tươi Rau câu dừa sợi\" src=\"https://cdn.tgdd.vn/2021/10/CookRecipe/GalleryStep/so-che-dua-tuoi-1.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 1 Sơ chế dừa tươi Rau câu dừa sợi\" src=\"https://cdn.tgdd.vn/2021/10/CookRecipe/GalleryStep/so-che-dua-tuoi.jpg\" /></p>\r\n	</li>\r\n	<li><em><strong>2 Nấu rau c&acirc;u dừa sợi</strong></em>\r\n	<p>Cho v&agrave;o nồi nước dừa tươi th&ecirc;m 200ml nước lọc, 100gr đường c&ugrave;ng với 1 g&oacute;i&nbsp;<a href=\"https://www.dienmayxanh.com/vao-bep/bot-rau-cau-lam-tu-gi-cach-phan-biet-bot-rau-cau-deo-va-bot-06242\" target=\"_blank\">bột rau c&acirc;u</a>&nbsp;(12gr) rồi d&ugrave;ng&nbsp;<a href=\"https://www.dienmayxanh.com/va-san\" target=\"_blank\">v&aacute;</a>&nbsp;khuấy đều đến khi đường tan hết. T&ugrave;y v&agrave;o khẩu vị m&agrave; bạn c&oacute; thể gia giảm lượng đường cho ph&ugrave; hợp nh&eacute;!</p>\r\n\r\n	<p>Tiếp đ&oacute;, bắc nồi l&ecirc;n&nbsp;<a href=\"https://www.dienmayxanh.com/bep-ga\" target=\"_blank\">bếp</a>&nbsp;nấu s&ocirc;i với lửa vừa. Trong l&uacute;c nấu th&igrave; thường xuy&ecirc;n khuấy đều tay để bột rau c&acirc;u tan hết v&agrave; tr&aacute;nh hỗn hợp sệt lại.</p>\r\n\r\n	<p>Sau khi nấu được khoảng 10 ph&uacute;t th&igrave; thấy hỗn hợp rau c&acirc;u s&ocirc;i, l&uacute;c n&agrave;y d&ugrave;ng v&aacute; vớt bỏ phần bọt nổi l&ecirc;n tr&ecirc;n để rau c&acirc;u được trong hơn v&agrave; kh&ocirc;ng bị rỗ.</p>\r\n\r\n	<p>Cuối c&ugrave;ng, cho to&agrave;n bộ phần dừa non đ&atilde; cắt sợi v&agrave;o nồi nấu th&ecirc;m khoảng 1 ph&uacute;t th&igrave; tắt bếp.</p>\r\n\r\n	<p><img alt=\"Bước 2 Nấu rau câu dừa sợi Rau câu dừa sợi\" src=\"https://cdn.tgdd.vn/2021/10/CookRecipe/GalleryStep/nau-rau-cau-dua-soi-2.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 2 Nấu rau câu dừa sợi Rau câu dừa sợi\" src=\"https://cdn.tgdd.vn/2021/10/CookRecipe/GalleryStep/nau-rau-cau-dua-soi.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 2 Nấu rau câu dừa sợi Rau câu dừa sợi\" src=\"https://cdn.tgdd.vn/2021/10/CookRecipe/GalleryStep/nau-rau-cau-dua-soi-3.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 2 Nấu rau câu dừa sợi Rau câu dừa sợi\" src=\"https://cdn.tgdd.vn/2021/10/CookRecipe/GalleryStep/nau-rau-cau-dua-soi-1.jpg\" /></p>\r\n	</li>\r\n	<li><strong><em>3 Cho rau c&acirc;u ra khu&ocirc;n</em></strong>\r\n	<p>Trong l&uacute;c hỗn hợp rau c&acirc;u c&ograve;n n&oacute;ng th&igrave; m&uacute;c rau c&acirc;u ra khu&ocirc;n hoặc&nbsp;<a href=\"https://www.dienmayxanh.com/chen-bat\" target=\"_blank\">ch&eacute;n</a>&nbsp;đ&atilde; chuẩn bị sẵn. Đợi tầm 15 - 20 ph&uacute;t để rau c&acirc;u nguội bớt rồi cho v&agrave;o ngăn m&aacute;t&nbsp;<a href=\"https://www.dienmayxanh.com/tu-lanh\" target=\"_blank\">tủ lạnh</a>&nbsp;để từ 1 - 2 tiếng.</p>\r\n\r\n	<p><img alt=\"Bước 3 Cho rau câu ra khuôn Rau câu dừa sợi\" src=\"https://cdn.tgdd.vn/2021/10/CookRecipe/GalleryStep/cho-rau-cau-ra-khuon-1.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 3 Cho rau câu ra khuôn Rau câu dừa sợi\" src=\"https://cdn.tgdd.vn/2021/10/CookRecipe/GalleryStep/cho-rau-cau-ra-khuon.jpg\" /></p>\r\n	</li>\r\n	<li><em><strong>4 Th&agrave;nh phẩm</strong></em>\r\n	<p>Khi d&ugrave;ng bạn c&oacute; thể cắt rau c&acirc;u th&agrave;nh c&aacute;c miếng vừa ăn l&agrave; c&oacute; thể thưởng thức rồi đ&oacute;.</p>\r\n\r\n	<p>Rau c&acirc;u dừa sợi c&oacute; hương vị thơm ngon thanh m&aacute;t từ nước dừa tươi trộn lẫn với từng sợi dừa mềm b&eacute;o. Bạn c&oacute; thể d&ugrave;ng như một m&oacute;n ăn vặt hoặc d&ugrave;ng để tr&aacute;ng miệng sau mỗi bữa ăn đều hợp đ&oacute; nha!</p>\r\n\r\n	<p><img alt=\"Bước 4 Thành phẩm Rau câu dừa sợi\" src=\"https://cdn.tgdd.vn/2021/10/CookRecipe/GalleryStep/thanh-pham-1965.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 4 Thành phẩm Rau câu dừa sợi\" src=\"https://cdn.tgdd.vn/2021/10/CookRecipe/GalleryStep/thanh-pham-1964.jpg\" /></p>\r\n	</li>\r\n</ul>', 'rau câu dừa.jpg', '2021-12-08 02:33:05', NULL),
(9, 3, 'Cải thảo cuộn cá sốt dầu hào ngon ngọt, thanh đạm', '<p><strong>Nguy&ecirc;n liệu:</strong></p>\r\n\r\n<p>- Cải thảo: 8 l&aacute;</p>\r\n\r\n<p>- C&aacute; th&aacute;c l&aacute;c: 200 gr</p>\r\n\r\n<p>- Thịt nạc băm: 100 gr</p>\r\n\r\n<p>- H&agrave;nh l&aacute;</p>\r\n\r\n<p>- Ớt sừng băm</p>\r\n\r\n<p>- Tỏi phi sẵn</p>\r\n\r\n<p>- Bột bắp</p>\r\n\r\n<p>- Gia vị: Muối, nước mắm, bột ngọt</p>\r\n\r\n<p><strong>C&aacute;ch chế biến:</strong></p>\r\n\r\n<p><img alt=\"Cải thảo cuộn cá sốt dầu hào ngon ngọt, thanh đạm - 3\" src=\"https://cdn.24h.com.vn/upload/4-2021/images/2021-12-06//1638751275-de7c869ae5323b2e46420f6bad3cf045-width936height624.jpg\" style=\"width:660px\" /></p>\r\n\r\n<p>- Cải thảo rửa sạch, cắt l&agrave;m đ&ocirc;i. Chuẩn bị một nồi hoặc chảo nước chần, th&ecirc;m v&agrave;o 1 muỗng c&agrave; ph&ecirc; muối, sau đ&oacute; cho phần cải cứng v&agrave;o luộc đến khi cải trong lại, tiếp tục cho phần l&aacute; v&agrave;o đến khi s&ocirc;i lại th&igrave; lấy ra. H&agrave;nh l&aacute; rửa sạch, chia l&agrave;m 2 phần, phần &iacute;t hơn th&aacute;i nhỏ, phần c&ograve;n lại chần qua nước n&oacute;ng.</p>\r\n\r\n<p>- Trộn c&aacute; v&agrave;o thịt rồi ướp v&agrave;o 1 muỗng hạt n&ecirc;m, 1 muỗng nước mắm, 1/2 muỗng bột ngọt, h&agrave;nh l&aacute; th&aacute;i nhỏ, tỏi phi, &iacute;t ớt băm v&agrave; ti&ecirc;u xay. Trộn đều, ướp c&aacute;c nguy&ecirc;n liệu trong 15 ph&uacute;t.</p>\r\n\r\n<p><img alt=\"Cải thảo cuộn cá sốt dầu hào ngon ngọt, thanh đạm - 4\" src=\"https://cdn.24h.com.vn/upload/4-2021/images/2021-12-06/1638751275-87bc7185f01118d494e8f6f2405c17ac-width391height287.jpg\" style=\"width:660px\" /></p>\r\n\r\n<p>- Đặt phần nh&acirc;n v&agrave;o l&aacute; cải thảo rồi cuộn lại, d&ugrave;ng cọng h&agrave;nh l&aacute; đ&atilde; chần để buộc cố định v&agrave; tăng độ thẩm mỹ. Xếp từng cuốn v&agrave;o đĩa đem hấp 20 ph&uacute;t.</p>\r\n\r\n<p><img alt=\"Cải thảo cuộn cá sốt dầu hào ngon ngọt, thanh đạm - 5\" src=\"https://cdn.24h.com.vn/upload/4-2021/images/2021-12-06//1638751276-3e7d916d65401c797537c364809e2321-width800height584.jpg\" style=\"width:660px\" /></p>\r\n\r\n<p>- Sau khi hấp ch&iacute;n, lấy phần nước hấp của cải cho v&agrave;o chảo với 1 muỗng dầu h&agrave;o, đun s&ocirc;i v&agrave; th&ecirc;m bột bắp pha lo&atilde;ng v&agrave;o khuấy đều để tạo độ s&aacute;nh.</p>\r\n\r\n<p>- B&agrave;y từng cuốn cải ra đĩa, rưới th&ecirc;m sốt. Khi ăn chấm c&ugrave;ng nước tương.</p>\r\n\r\n<p><strong>Th&agrave;nh phẩm:</strong></p>\r\n\r\n<p>M&oacute;n cải thảo cuộn c&aacute; th&aacute;c l&aacute;c sốt dầu h&agrave;o với cải ch&iacute;n mềm, phần nh&acirc;n dai ngọt c&ugrave;ng nước sốt h&agrave;i h&ograve;a, ăn kh&ocirc;ng hay ăn k&egrave;m với cơm n&oacute;ng đều ngon tuyệt.</p>', 'cải thảo cuộn cá sốt.jpg', '2021-12-08 02:39:31', NULL),
(10, 2, 'Cách nấu canh trứng nấm thơm ngon, bổ dưỡng cực đơn giản cho gia đình', '<h2><strong>Nguy&ecirc;n liệu l&agrave;m Canh trứng nấm</strong></h2>\r\n\r\n<p>&nbsp;Trứng g&agrave;&nbsp;<small>2 quả</small></p>\r\n\r\n<p>&nbsp;Nấm mỡ&nbsp;<small>60 gr</small>&nbsp;</p>\r\n\r\n<p>C&agrave; chua cỡ lớn&nbsp;<small>1 quả</small><em>(khoảng 150gr)</em>&nbsp;</p>\r\n\r\n<p>H&agrave;nh t&acirc;y nhỏ&nbsp;<small>1/2 củ</small><em>(khoảng 40gr)</em>&nbsp;</p>\r\n\r\n<p>H&agrave;nh l&aacute;&nbsp;<small>2 nh&aacute;nh</small>&nbsp;</p>\r\n\r\n<p>Dầu ăn&nbsp;<small>1 muỗng canh</small></p>\r\n\r\n<p>&nbsp;Gia vị th&ocirc;ng dụng&nbsp;<small>1 &iacute;t</small><em>(bột ngọt/ muối/ hạt n&ecirc;m)</em></p>\r\n\r\n<h2><strong>C&aacute;ch chọn mua nguy&ecirc;n liệu tươi ngon</strong></h2>\r\n\r\n<p><strong>C&aacute;ch chọn mua trứng g&agrave; tươi ngon</strong></p>\r\n\r\n<ul>\r\n	<li>D&ugrave;ng tay kiểm tra vỏ quả trứng, nếu thấy vỏ c&agrave;ng l&aacute;ng, mịn th&igrave; l&agrave; trứng đ&atilde; để l&acirc;u. Trứng tươi ngon, vừa thu hoạch sẽ c&oacute; lớp vỏ nh&aacute;m, hơi sần s&ugrave;i.</li>\r\n	<li>Bạn cầm l&ecirc;n lắc nhẹ quả trứng, nếu kh&ocirc;ng c&oacute; tiếng động th&igrave; l&agrave; trứng ngon, nếu trứng c&agrave;ng k&ecirc;u to th&igrave; l&agrave; trứng đ&atilde; để l&acirc;u, sắp hỏng.</li>\r\n	<li>Tr&aacute;nh mua những quả trứng c&oacute; m&ugrave;i h&ocirc;i thối, tr&ecirc;n vỏ trứng c&oacute; xuất hiện những vết nứt, thậm ch&iacute; chảy chất lỏng b&ecirc;n trong ra ngo&agrave;i.</li>\r\n</ul>\r\n\r\n<p><strong>C&aacute;ch chọn mua nấm mỡ tươi ngon</strong></p>\r\n\r\n<ul>\r\n	<li>Nấm mỡ ngon c&oacute; m&agrave;u trắng, ch&acirc;n nấm ngắn, mũ nấm tr&ograve;n, cầm l&ecirc;n c&oacute; cảm gi&aacute;c chắc tay.</li>\r\n	<li>Chọn mua nấm mỡ được thu hoạch trong v&ograve;ng 24 giờ để đảm bảo độ tươi ngon.</li>\r\n	<li>Kh&ocirc;ng mua nấm đ&atilde; bị ngả sang m&agrave;u th&acirc;m đen, c&oacute; c&aacute;c vết đốm lạ, nấm mềm nhũn hoặc c&oacute; m&ugrave;i h&ocirc;i bất thường.</li>\r\n</ul>\r\n\r\n<p><strong>C&aacute;ch chọn mua c&agrave; chua tươi ngon</strong></p>\r\n\r\n<ul>\r\n	<li>N&ecirc;n chọn quả c&oacute; m&agrave;u đỏ tươi, phần vỏ căng b&oacute;ng, l&aacute;ng mịn v&agrave; thơm m&ugrave;i thơm tự nhi&ecirc;n của c&agrave; chua.</li>\r\n	<li>Ưu ti&ecirc;n mua quả c&oacute; phần cuống c&ograve;n tươi xanh, d&iacute;nh chặt v&agrave;o phần th&acirc;n quả c&agrave; chua.</li>\r\n	<li>Kh&ocirc;ng n&ecirc;n chọn những quả đ&atilde; bị dập n&aacute;t, trầy xước hoặc bề mặt lốm đốm đen bất thường nh&eacute;!</li>\r\n</ul>\r\n\r\n<p><img alt=\"Nguyên liệu món ăn canh trứng nấm\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/CookUtensilandNotes/canh-trung-nam-note-800x450.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<h2><strong>C&aacute;ch chế biến Canh trứng nấm</strong></h2>\r\n\r\n<ul>\r\n	<li><em><strong>1 Sơ chế c&aacute;c nguy&ecirc;n liệu</strong></em>\r\n\r\n	<p>Nấm mỡ rửa sạch, th&aacute;i l&aacute;t c&oacute; độ d&agrave;y khoảng nửa l&oacute;ng tay.</p>\r\n\r\n	<p>C&agrave; chua rửa sạch, bỏ cuống, th&aacute;i hạt lựu.</p>\r\n\r\n	<p>H&agrave;nh t&acirc;y b&oacute;c vỏ, rửa sạch, th&aacute;i l&aacute;t mỏng.</p>\r\n\r\n	<p>H&agrave;nh l&aacute; cắt bỏ rễ, rửa sạch, th&aacute;i nhỏ.</p>\r\n\r\n	<p>Đập 2 quả trứng cho v&agrave;o&nbsp;<a href=\"https://www.dienmayxanh.com/chen-bat-chen-com\" target=\"_blank\">ch&eacute;n</a>, d&ugrave;ng&nbsp;<a href=\"https://www.dienmayxanh.com/dua\" target=\"_blank\">đũa</a>&nbsp;đ&aacute;nh đều cho tan.</p>\r\n\r\n	<p><img alt=\"Bước 1 Sơ chế các nguyên liệu Canh trứng nấm\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/tp-2.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 1 Sơ chế các nguyên liệu Canh trứng nấm\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/tp(1).jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 1 Sơ chế các nguyên liệu Canh trứng nấm\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/tp(2)-1.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 1 Sơ chế các nguyên liệu Canh trứng nấm\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/tp(3).jpg\" /></p>\r\n	</li>\r\n	<li><em><strong>2 Nấu canh trứng nấm mỡ</strong></em>\r\n	<p>Đặt&nbsp;<a href=\"https://www.dienmayxanh.com/noi\" target=\"_blank\">nồi</a>&nbsp;l&ecirc;n&nbsp;<a href=\"https://www.dienmayxanh.com/bep-ga\" target=\"_blank\">bếp</a>, cho 1&nbsp;<a href=\"https://www.dienmayxanh.com/muong?g=muong-canh\" target=\"_blank\">muỗng canh</a>&nbsp;dầu ăn v&agrave;o. Dầu n&oacute;ng th&igrave; cho h&agrave;nh t&acirc;y th&aacute;i l&aacute;t trước đ&oacute; v&agrave;o phi thơm tr&ecirc;n lửa lớn khoảng 1 ph&uacute;t.</p>\r\n\r\n	<p>Tiếp đến cho c&agrave; chua th&aacute;i hạt lựu v&agrave;o x&agrave;o trong 1 ph&uacute;t, rồi cho nấm mỡ th&aacute;i l&aacute;t c&ugrave;ng c&aacute;c gia vị gồm 1/2 muỗng canh bột ngọt, 1/2 muỗng canh hạt n&ecirc;m, 1/2 muỗng canh muối v&agrave;o x&agrave;o khoảng 30 gi&acirc;y th&igrave; cho th&ecirc;m 500ml nước lọc v&agrave;o. Đậy nắp v&agrave; đun s&ocirc;i.</p>\r\n\r\n	<p>Khi canh s&ocirc;i th&igrave; hạ lửa nhỏ đun th&ecirc;m 3 ph&uacute;t mở nắp nồi. Cho từ từ trứng đ&aacute;nh tan trước đ&oacute; v&agrave;o, vừa cho vừa d&ugrave;ng đũa khuấy theo 1 chiều đến khi cho hết trứng v&agrave;o th&igrave; dừng (tr&aacute;nh khuấy nhiều lần khiến trứng n&aacute;t kh&oacute; đ&oacute;ng th&agrave;nh mảng như gạch cua sẽ kh&ocirc;ng đẹp).</p>\r\n\r\n	<p>Kh&ocirc;ng đậy nắp, giữ mức lửa nhỏ đến khi canh s&ocirc;i th&igrave; cho h&agrave;nh l&aacute; v&agrave;o v&agrave; v&agrave; n&ecirc;m nếm lại cho vừa ăn rồi tắt bếp.</p>\r\n\r\n	<p>M&uacute;c canh ra t&ocirc; v&agrave; ăn với cơm n&oacute;ng.</p>\r\n\r\n	<p><img alt=\"Bước 2 Nấu canh trứng nấm mỡ Canh trứng nấm\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/tp(4).jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 2 Nấu canh trứng nấm mỡ Canh trứng nấm\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/tp(5).jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 2 Nấu canh trứng nấm mỡ Canh trứng nấm\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/tp(6).jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 2 Nấu canh trứng nấm mỡ Canh trứng nấm\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/tp(7).jpg\" /></p>\r\n	</li>\r\n	<li><strong><em>3 Th&agrave;nh phẩm</em></strong>\r\n	<p>T&ocirc; canh trứng nấm n&oacute;ng hổi, m&agrave;u sắc đẹp mắt, nấm gi&ograve;n mọng nước, nước s&uacute;p đậm đ&agrave; sẽ l&agrave; m&oacute;n canh ngon cho cả gia đ&igrave;nh trong những ng&agrave;y lạnh.</p>\r\n\r\n	<p>H&atilde;y v&agrave;o nếp nấu thử ngay cho gia đ&igrave;nh bạn nh&eacute;!</p>\r\n\r\n	<p><img alt=\"Bước 3 Thành phẩm Canh trứng nấm\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/tp(9).jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 3 Thành phẩm Canh trứng nấm\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/tp(8).jpg\" /></p>\r\n	</li>\r\n</ul>', 'canh trứng.jpg', '2021-12-08 02:45:31', NULL),
(11, 2, 'Cách làm đuôi heo hầm măng tươi với rau củ thơm ngon bổ dưỡng', '<h2><strong>Nguy&ecirc;n liệu l&agrave;m Đu&ocirc;i heo hầm măng tươi</strong></h2>\r\n\r\n<p>&nbsp;Đu&ocirc;i heo&nbsp;<small>1 kg</small></p>\r\n\r\n<p>&nbsp;Măng tươi&nbsp;<small>300 gr</small></p>\r\n\r\n<p>&nbsp;C&agrave; rốt&nbsp;<small>1/2 củ</small></p>\r\n\r\n<p>&nbsp;Củ cải trắng&nbsp;<small>1/2 củ</small></p>\r\n\r\n<p>&nbsp;Su su&nbsp;<small>1 củ</small>&nbsp;</p>\r\n\r\n<p>Nấm rơm&nbsp;<small>100 gr</small><em>(c&oacute; thể c&oacute; hoặc kh&ocirc;ng)</em></p>\r\n\r\n<p>&nbsp;H&agrave;nh l&aacute;&nbsp;<small>3 nh&aacute;nh</small>&nbsp;</p>\r\n\r\n<p>Ng&ograve; r&iacute;&nbsp;<small>1 nh&aacute;nh</small>&nbsp;</p>\r\n\r\n<p>Gia vị th&ocirc;ng dụng&nbsp;<small>1 &iacute;t</small><em>(muối/ bột ngọt/ hạt n&ecirc;m/ ti&ecirc;u xay)</em></p>\r\n\r\n<h2><strong>C&aacute;ch chọn mua nguy&ecirc;n liệu tươi ngon</strong></h2>\r\n\r\n<p><strong>C&aacute;ch chọn mua măng tươi an to&agrave;n</strong></p>\r\n\r\n<ul>\r\n	<li>Đối với măng chưa lột bẹ bạn n&ecirc;n chọn những b&uacute;p măng to, tr&ograve;n đều, c&oacute; bẹ măng b&ecirc;n ngo&agrave;i m&agrave;u đen, nhiều l&ocirc;ng cứng b&ecirc;n ngo&agrave;i.</li>\r\n	<li>Đối với măng đ&atilde; được lột bẹ sẵn bạn n&ecirc;n chọn những củ măng c&oacute; h&igrave;nh th&ocirc;, c&aacute;c đốt măng c&aacute;ch đều nhau.</li>\r\n	<li>Quan s&aacute;t bằng mắt thường nếu thấy măng c&oacute; vỏ mỏng, gi&ograve;n, nhiều nước th&igrave; n&ecirc;n chọn mua, v&igrave; khi nấu măng n&agrave;y sẽ c&oacute; m&ugrave;i thơm chua nhẹ đặc trưng.</li>\r\n	<li>Kh&ocirc;ng n&ecirc;n chọn mua măng c&oacute; m&agrave;u sắc qu&aacute; trắng hoặc v&agrave;ng n&acirc;u, ngửi thấy c&oacute; m&ugrave;i kh&oacute; chịu hay bị mềm nhũn.</li>\r\n</ul>\r\n\r\n<p><strong>C&aacute;ch chọn mua đu&ocirc;i heo ngon, chất lượng</strong></p>\r\n\r\n<ul>\r\n	<li>Bạn n&ecirc;n chọn mua đu&ocirc;i heo c&oacute; k&iacute;ch cỡ vừa phải, kh&ocirc;ng qu&aacute; to hay qu&aacute; nhỏ, c&oacute; da nhẵn, m&agrave;u sắc tươi s&aacute;ng v&agrave; m&ugrave;i đặc trưng của thịt heo.</li>\r\n	<li>Ngo&agrave;i ra, n&ecirc;n chọn những đu&ocirc;i heo c&oacute; thịt nạc nhiều v&agrave; &iacute;t mỡ khi nấu sẽ ngon hơn, khi ăn sẽ đỡ ngấy hơn.</li>\r\n	<li>Để chọn mua được đu&ocirc;i heo ngon v&agrave; chất lượng nhất bạn n&ecirc;n đi chợ v&agrave;o buổi s&aacute;ng sớm.</li>\r\n	<li>Kh&ocirc;ng n&ecirc;n chọn mua những đu&ocirc;i qu&aacute; nhỏ v&igrave; c&oacute; thể đ&oacute; l&agrave; của heo con bị dịch bệnh, ăn sẽ kh&ocirc;ng đảm bảo an to&agrave;n cho sức khỏe.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Nguyên liệu món ăn đuôi heo hầm măng tươi\" src=\"https://cdn.tgdd.vn/2021/10/content/hnl2-800x450.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<h2><strong>C&aacute;ch chế biến Đu&ocirc;i heo hầm măng tươi</strong></h2>\r\n\r\n<ul>\r\n	<li><em><strong>1 Sơ chế đu&ocirc;i heo</strong></em>\r\n\r\n	<p>Đu&ocirc;i heo mua về bạn rửa sạch với nước muối, cạo sạch l&ocirc;ng heo c&ograve;n s&oacute;t lại. Sau đ&oacute; chần sơ với nước s&ocirc;i khoảng 5 ph&uacute;t, rồi d&ugrave;ng&nbsp;<a href=\"https://www.dienmayxanh.com/dao-lam-bep\" target=\"_blank\">dao</a>&nbsp;cắt th&agrave;nh khoanh d&agrave;y khoảng 2 l&oacute;ng tay.</p>\r\n	<strong>Mẹo sơ chế đu&ocirc;i heo sạch sẽ nhanh ch&oacute;ng:</strong>\r\n\r\n	<ul>\r\n		<li><strong>Ch&agrave; x&aacute;t với muối:</strong>&nbsp;Đu&ocirc;i heo sau khi mua về, rửa sơ với nước, sau đ&oacute; d&ugrave;ng muối ch&agrave; x&aacute;t l&ecirc;n bề mặt da heo để l&agrave;m sạch v&agrave; loại bỏ m&ugrave;i h&ocirc;i. Rửa lại với nước nhiều lần cho sạch.</li>\r\n		<li><strong>Rửa với chanh:</strong>&nbsp;Bạn c&oacute; thể sử dụng rượu trắng, gừng, muối hoặc chanh ch&agrave; x&aacute;t l&ecirc;n đu&ocirc;i heo, sau đ&oacute; giữ nguy&ecirc;n khoảng 5 - 10 ph&uacute;t, rồi rửa lại với nước sạch.</li>\r\n		<li><strong>Rửa với gừng:</strong>&nbsp;Bạn ng&acirc;m đu&ocirc;i heo đ&atilde; rửa sạch v&agrave;o hỗn hợp gừng v&agrave; rượu khoảng 3 ph&uacute;t, sau đ&oacute; vớt ra rửa sạch lại với nước.</li>\r\n	</ul>\r\n\r\n	<p><img alt=\"Bước 1 Sơ chế đuôi heo Đuôi heo hầm măng tươi\" src=\"https://cdn.tgdd.vn/2021/10/CookRecipe/GalleryStep/so-che-duoi-heo.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 1 Sơ chế đuôi heo Đuôi heo hầm măng tươi\" src=\"https://cdn.tgdd.vn/2021/10/CookRecipe/GalleryStep/so-che-duoi-heo-1.jpg\" /></p>\r\n	</li>\r\n	<li><em><strong>2 Sơ chế măng v&agrave; rau củ</strong></em>\r\n	<p>Măng mua về bạn loại bỏ phần gi&agrave;, chỉ lấy phần măng non, c&oacute; thể cắt th&agrave;nh c&aacute;c miếng d&agrave;y khoảng 1/3 l&oacute;ng tay hay tỉa hoa cho m&oacute;n ăn hấp dẫn hơn.</p>\r\n\r\n	<p>Sau đ&oacute; ng&acirc;m măng trong nước muối pha lo&atilde;ng khoảng 10 ph&uacute;t rồi luộc sơ khoảng 5 ph&uacute;t với lửa vừa, vớt ra rửa sạch v&agrave; để r&aacute;o.</p>\r\n\r\n	<p>C&agrave; rốt, su su v&agrave; củ cải trắng gọt vỏ, rửa sạch rồi cắt kh&uacute;c d&agrave;y khoảng 1/3 l&oacute;ng tay.</p>\r\n\r\n	<p>Nấm rơm bỏ rễ, sau đ&oacute; ng&acirc;m với nước muối pha lo&atilde;ng khoảng 5 ph&uacute;t, rửa sạch, cắt l&agrave;m đ&ocirc;i. H&agrave;nh l&aacute; v&agrave; ng&ograve; r&iacute; bạn bỏ rễ, rửa sạch rồi cắt nhỏ.</p>\r\n\r\n	<p><img alt=\"Bước 2 Sơ chế măng và rau củ Đuôi heo hầm măng tươi\" src=\"https://cdn.tgdd.vn/2021/10/CookRecipe/GalleryStep/so-che-mang-va-rau-cu-1.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 2 Sơ chế măng và rau củ Đuôi heo hầm măng tươi\" src=\"https://cdn.tgdd.vn/2021/10/CookRecipe/GalleryStep/so-che-mang-va-rau-cu.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 2 Sơ chế măng và rau củ Đuôi heo hầm măng tươi\" src=\"https://cdn.tgdd.vn/2021/10/CookRecipe/GalleryStep/so-che-mang-va-rau-cu-2.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 2 Sơ chế măng và rau củ Đuôi heo hầm măng tươi\" src=\"https://cdn.tgdd.vn/2021/10/CookRecipe/GalleryStep/so-che-mang-va-rau-cu-7.jpg\" /></p>\r\n	</li>\r\n	<li><em><strong>3 Nấu đu&ocirc;i heo hầm măng</strong></em>\r\n	<p>Bắc&nbsp;<a href=\"https://www.dienmayxanh.com/noi\" target=\"_blank\">nồi</a>&nbsp;l&ecirc;n&nbsp;<a href=\"https://www.dienmayxanh.com/bep-gas\" target=\"_blank\">bếp</a>, cho v&agrave;o 1 l&iacute;t nước lọc c&ugrave;ng với 1/2 muỗng c&agrave; ph&ecirc; muối, đun ở lửa lớn chờ nước s&ocirc;i rồi cho hết số đu&ocirc;i heo đ&atilde; sơ chế v&agrave;o, đun đến khi nước s&ocirc;i mạnh th&igrave; tiếp tục nấu khoảng 15 ph&uacute;t đến khi thấy đu&ocirc;i heo ch&iacute;n.</p>\r\n\r\n	<p>Tiếp theo, lần lượt cho nấm rơm, măng tươi, c&agrave; rốt v&agrave; củ cải trắng v&agrave;o đun th&ecirc;m khoảng 5 ph&uacute;t tr&ecirc;n lửa vừa. Sau đ&oacute; n&ecirc;m nếm với 1 muỗng canh hạt n&ecirc;m, 1 muỗng c&agrave; ph&ecirc; muối v&agrave; 1 muỗng c&agrave; ph&ecirc; bột ngọt.</p>\r\n\r\n	<p>Khuấy cho tan gia vị đều rồi n&ecirc;m nếm lại cho vừa ăn. Cuối c&ugrave;ng, cho hết số su su v&agrave;o v&agrave; nấu th&ecirc;m 3 ph&uacute;t nữa, tắt bếp v&agrave; cho h&agrave;nh l&aacute; cắt nhỏ với ti&ecirc;u xay v&agrave;o.</p>\r\n\r\n	<p><strong>M&aacute;ch nhỏ:</strong>&nbsp;Để nước canh trong hơn th&igrave; bạn n&ecirc;n vớt bỏ bọt trong nước canh suốt qu&aacute; tr&igrave;nh hầm canh nh&eacute;!</p>\r\n\r\n	<p><img alt=\"Bước 3 Nấu đuôi heo hầm măng Đuôi heo hầm măng tươi\" src=\"https://cdn.tgdd.vn/2021/10/CookRecipe/GalleryStep/nau-duoi-heo-ham-mang-5.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 3 Nấu đuôi heo hầm măng Đuôi heo hầm măng tươi\" src=\"https://cdn.tgdd.vn/2021/10/CookRecipe/GalleryStep/nau-duoi-heo-ham-mang-4.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 3 Nấu đuôi heo hầm măng Đuôi heo hầm măng tươi\" src=\"https://cdn.tgdd.vn/2021/10/CookRecipe/GalleryStep/nau-duoi-heo-ham-mang-7.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 3 Nấu đuôi heo hầm măng Đuôi heo hầm măng tươi\" src=\"https://cdn.tgdd.vn/2021/10/CookRecipe/GalleryStep/nau-duoi-heo-ham-mang-6.jpg\" /></p>\r\n	</li>\r\n	<li><em><strong>4 Th&agrave;nh phẩm</strong></em>\r\n	<p>Đu&ocirc;i heo hầm măng tươi với rau củ thơm lừng n&oacute;ng hổi, m&oacute;n ăn trở n&ecirc;n phong ph&uacute; v&agrave; nước d&ugrave;ng cũng ngon ngọt hơn hẳn bởi rau củ nấu k&egrave;m. Bạn cũng c&oacute; thể chỉ nấu với măng tươi th&ocirc;i nếu th&iacute;ch nh&eacute;!</p>\r\n\r\n	<p>M&oacute;n ăn n&agrave;y khi ăn k&egrave;m với cơm n&oacute;ng l&agrave; tuyệt vời hay đơn giản l&agrave; l&agrave;m m&oacute;n s&uacute;p để bồi bổ cũng v&ocirc; c&ugrave;ng hợp vị, v&agrave;o bếp thực hi&ecirc;n ngay th&ocirc;i n&agrave;o!</p>\r\n	Nếu y&ecirc;u th&iacute;ch m&oacute;n canh thơm ngon n&agrave;y th&igrave; h&atilde;y click xem b&agrave;i viết dưới đ&acirc;y. C&ugrave;ng l&agrave; m&oacute;n đu&ocirc;i heo hầm măng nhưng với c&aacute;ch l&agrave;m kh&aacute;c.\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p><img alt=\"Bước 4 Thành phẩm Đuôi heo hầm măng tươi\" src=\"https://cdn.tgdd.vn/2021/10/CookRecipe/GalleryStep/thanh-pham-1186.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 4 Thành phẩm Đuôi heo hầm măng tươi\" src=\"https://cdn.tgdd.vn/2021/10/CookRecipe/GalleryStep/thanh-pham-1187.jpg\" /></p>\r\n	</li>\r\n</ul>', 'đuôi heo hầm măng.jpg', '2021-12-08 03:04:45', NULL);
INSERT INTO `baiviet` (`id_BaiViet`, `id_DanhMucBaiViet`, `TenBaiViet`, `NoiDungBaiViet`, `HinhAnh_BaiViet`, `created_at`, `updated_at`) VALUES
(12, 11, 'Cách nấu chè khoai lang tím ngon mát, cực đơn giản tại nhà', '<h2><strong>Nguy&ecirc;n liệu l&agrave;m Ch&egrave; khoai lang t&iacute;m sương s&aacute;o</strong></h2>\r\n\r\n<p>&nbsp;Khoai lang t&iacute;m&nbsp;<small>200 gr</small>&nbsp;</p>\r\n\r\n<p>Sương s&aacute;o l&agrave;m sẵn&nbsp;<small>100 gr</small></p>\r\n\r\n<p>&nbsp;Bột năng&nbsp;<small>150 gr</small>&nbsp;Bơ&nbsp;<small>20 gr</small>&nbsp;</p>\r\n\r\n<p>Sữa đặc&nbsp;<small>70 gr</small>&nbsp;Sữa tươi kh&ocirc;ng đường&nbsp;<small>200 ml</small></p>\r\n\r\n<p>&nbsp;Nước cốt dừa&nbsp;<small>150 ml</small>&nbsp;L&aacute; dứa&nbsp;<small>1 &iacute;t</small>&nbsp;</p>\r\n\r\n<p>Nước n&oacute;ng&nbsp;<small>160 ml</small>&nbsp;</p>\r\n\r\n<p>Muối&nbsp;<small>1/4 muỗng c&agrave; ph&ecirc;</small></p>\r\n\r\n<h2><strong>H&igrave;nh nguy&ecirc;n liệu</strong></h2>\r\n\r\n<p><img alt=\"Nguyên liệu món ăn chè khoai lang tím\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/CookUtensilandNotes/che-khoai-lang-tim-suong-sao-note-1200x676.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<h2><strong>C&aacute;ch chế biến Ch&egrave; khoai lang t&iacute;m sương s&aacute;o</strong></h2>\r\n\r\n<ul>\r\n	<li><em><strong>1 Sơ chế nguy&ecirc;n liệu</strong></em>\r\n\r\n	<p>Khoai t&iacute;m bạn gọt bỏ vỏ rồi rửa sạch cắt th&agrave;nh những miếng cỡ vừa. L&aacute; dứa bạn rửa rồi để r&aacute;o.</p>\r\n\r\n	<p><img alt=\"Bước 1 Sơ chế nguyên liệu Chè khoai lang tím sương sáo\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/1.1.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 1 Sơ chế nguyên liệu Chè khoai lang tím sương sáo\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/1.2.jpg\" /></p>\r\n	</li>\r\n	<li><em><strong>2 Hấp khoai lang</strong></em>\r\n	<p>Khoai lang bạn cho v&agrave;o xửng hấp rồi hấp c&aacute;ch thủy trong khoảng 30 ph&uacute;t cho khoai được ch&iacute;n mềm.</p>\r\n\r\n	<p><img alt=\"Bước 2 Hấp khoai lang Chè khoai lang tím sương sáo\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/hap-khoai-lang.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 2 Hấp khoai lang Chè khoai lang tím sương sáo\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/hap-khoai-lang-1.jpg\" /></p>\r\n	</li>\r\n	<li><em><strong>3 L&agrave;m phần khoai vi&ecirc;n bột</strong></em>\r\n	<p>Sau khi khoai ch&iacute;n th&igrave; bạn cho v&agrave;o&nbsp;<a href=\"https://www.dienmayxanh.com/may-xay-sinh-to\" target=\"_blank\">m&aacute;y xay sinh tố</a>&nbsp;để xay nhuyễn. Tiếp theo bạn chia khoai ra 2 phần bằng nhau.</p>\r\n\r\n	<p>Phần khoai đầu ti&ecirc;n bạn cho v&agrave;o&nbsp;<a href=\"https://www.dienmayxanh.com/chao-chong-dinh\" target=\"_blank\">chảo</a>&nbsp;c&ugrave;ng với 20 gr bơ rồi đảo đều tr&ecirc;n lửa nhỏ khoảng 3 ph&uacute;t rồi bạn tiếp tục cho 20 gr sữa đặc v&agrave;o rồi tiếp tục đảo cho đến khi nh&acirc;n kh&ocirc; r&aacute;o.</p>\r\n\r\n	<p>Bạn đợi cho đến khi bột nguội th&igrave; vo bột th&agrave;nh những vi&ecirc;n tr&ograve;n đều nhau c&oacute; trọng lượng khoảng 7 gr.</p>\r\n\r\n	<p>Tiếp theo, bạn cho 100 gr bột năng v&agrave;o&nbsp;<a href=\"https://www.dienmayxanh.com/chen-bat-to-canh\" target=\"_blank\">t&ocirc;</a>, rồi th&ecirc;m khoảng 80 ml nước n&oacute;ng. Bạn d&ugrave;ng tay nh&agrave;o thật đều khoảng 5 ph&uacute;t cho đến khi bột dẻo mịn.</p>\r\n\r\n	<p>Kế tiếp, bạn chia bột năng th&agrave;nh những phần khoảng 10 gr, rồi bạn cho vi&ecirc;n khoai t&iacute;m v&agrave;o giữa để l&agrave;m nh&acirc;n v&agrave; bọc phần bột năng b&ecirc;n ngo&agrave;i. Bạn thực hiện cho đến hết phần bột năng v&agrave; khoai t&iacute;m.</p>\r\n\r\n	<p><img alt=\"Bước 3 Làm phần khoai viên bột Chè khoai lang tím sương sáo\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/lam-phan-khoai-vien-bot-1.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 3 Làm phần khoai viên bột Chè khoai lang tím sương sáo\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/lam-phan-khoai-vien-bot-2.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 3 Làm phần khoai viên bột Chè khoai lang tím sương sáo\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/lam-phan-khoai-vien-bot-3.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 3 Làm phần khoai viên bột Chè khoai lang tím sương sáo\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/lam-phan-khoai-vien-bot-4.jpg\" /></p>\r\n	</li>\r\n	<li><em><strong>4 L&agrave;m phần khoai lang vi&ecirc;n dẻo</strong></em>\r\n	<p>Cho phần khoai lang c&ograve;n lại v&agrave;o t&ocirc; kh&aacute;c c&ugrave;ng với 50 gr bột năng rồi trộn đều. Tiếp theo, th&ecirc;m từ từ khoảng 60 - 80 ml nước n&oacute;ng v&agrave;o t&ocirc;.</p>\r\n\r\n	<p>Bạn d&ugrave;ng tay để nh&agrave;o bột khoảng 5 ph&uacute;t cho thật dẻo mịn. Kế đến, bạn lăn bột tr&ecirc;n&nbsp;<a href=\"https://www.dienmayxanh.com/thot\" target=\"_blank\">thớt</a>&nbsp;th&agrave;nh một sợi d&agrave;i.</p>\r\n\r\n	<p>Tiếp theo, d&ugrave;ng&nbsp;<a href=\"https://www.dienmayxanh.com/dao-lam-bep\" target=\"_blank\">dao</a>&nbsp;cắt bột th&agrave;nh những vi&ecirc;n nhỏ vừa ăn.</p>\r\n\r\n	<p><img alt=\"Bước 4 Làm phần khoai lang viên dẻo Chè khoai lang tím sương sáo\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/lam-phan-khoai-lang-vien-deo.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 4 Làm phần khoai lang viên dẻo Chè khoai lang tím sương sáo\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/lam-phan-khoai-lang-vien-deo-1.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 4 Làm phần khoai lang viên dẻo Chè khoai lang tím sương sáo\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/lam-phan-khoai-lang-vien-deo-2.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 4 Làm phần khoai lang viên dẻo Chè khoai lang tím sương sáo\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/lam-phan-khoai-lang-vien-deo-3.jpg\" /></p>\r\n	</li>\r\n	<li><em><strong>5 Nấu nước cốt dừa với sữa</strong></em>\r\n	<p>Đầu ti&ecirc;n, bạn đặt&nbsp;<a href=\"https://www.dienmayxanh.com/noi\" target=\"_blank\">nồi</a>&nbsp;l&ecirc;n bếp rồi cho 200 ml sữa tươi kh&ocirc;ng đường, 150 ml nước cốt dừa, 50 gr sữa đặc, 1/4&nbsp;<a href=\"https://www.dienmayxanh.com/muong\" target=\"_blank\">muỗng</a>&nbsp;c&agrave; ph&ecirc; muối v&agrave; l&aacute; dứa v&agrave;o nồi, khuấy đều.</p>\r\n\r\n	<p>Bạn nấu hỗn hợp nước cốt dừa tr&ecirc;n lửa vừa cho đến khi s&ocirc;i khoảng 2 ph&uacute;t th&igrave; bạn tắt&nbsp;<a href=\"https://www.dienmayxanh.com/bep-ga\" target=\"_blank\">bếp</a>.</p>\r\n\r\n	<p><img alt=\"Bước 5 Nấu nước cốt dừa với sữa Chè khoai lang tím sương sáo\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/nau-nuoc-cot-dua-voi-sua.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 5 Nấu nước cốt dừa với sữa Chè khoai lang tím sương sáo\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/nau-nuoc-cot-dua-voi-sua-1.jpg\" /></p>\r\n	</li>\r\n	<li><em><strong>6 Luộc vi&ecirc;n khoai bột v&agrave; vi&ecirc;n khoai dẻo</strong></em>\r\n	<p>Bạn cho nồi c&oacute; chứa khoảng 1 l&iacute;t nước l&ecirc;n bếp, sau đ&oacute; bạn cho phần khoai bột v&agrave;o nồi. Nấu tr&ecirc;n lửa lớn cho đến nước s&ocirc;i v&agrave; vi&ecirc;n khoai nổi l&ecirc;n th&igrave; bạn hạ nhỏ lửa, luộc th&ecirc;m khoảng 10 ph&uacute;t.</p>\r\n\r\n	<p>Đặt 1 c&aacute;i nồi kh&aacute;c l&ecirc;n bếp rồi cho lần lượt 1 l&iacute;t nước. Nấu cho đến khi nước s&ocirc;i th&igrave; bạn cho khoai dẻo v&agrave;o nồi. Bạn luộc tr&ecirc;n lửa nhỏ trong khoảng 7 - 10 ph&uacute;t cho đến khi bột nổi l&ecirc;n l&agrave; được.</p>\r\n\r\n	<p><img alt=\"Bước 6 Luộc viên khoai bột và viên khoai dẻo Chè khoai lang tím sương sáo\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/luoc-vien-khoai-bot-va-vien-khoai-deo.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 6 Luộc viên khoai bột và viên khoai dẻo Chè khoai lang tím sương sáo\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/luoc-vien-khoai-bot-va-vien-khoai-deo-1.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 6 Luộc viên khoai bột và viên khoai dẻo Chè khoai lang tím sương sáo\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/luoc-vien-khoai-bot-va-vien-khoai-deo-2.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 6 Luộc viên khoai bột và viên khoai dẻo Chè khoai lang tím sương sáo\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/luoc-vien-khoai-bot-va-vien-khoai-deo-3.jpg\" /></p>\r\n	</li>\r\n	<li><em><strong>7 Th&agrave;nh phẩm</strong></em>\r\n	<p>Bạn lần lượt cho khoai dẻo, khoai bột, sương s&aacute;o, nước cốt dừa v&agrave;o&nbsp;<a href=\"https://www.dienmayxanh.com/chen-bat-chen-com\" target=\"_blank\">ch&eacute;n</a>&nbsp;(ch&eacute;n ăn cơm) v&agrave; th&ecirc;m một &iacute;t đ&aacute; nữa nếu bạn th&iacute;ch ăn lạnh l&agrave; ho&agrave;n th&agrave;nh rồi.</p>\r\n\r\n	<p>Khi ăn bạn sẽ cảm nhận được vi&ecirc;n khoai dẻo v&agrave; khoai bột cực ngon, dẻo c&ugrave;ng với sương s&aacute;o v&agrave; nước cốt sữa dừa sẽ l&agrave;m cho m&oacute;n ch&egrave; th&ecirc;m phần ngon hơn rất nhiều.</p>\r\n\r\n	<p><img alt=\"Bước 7 Thành phẩm Chè khoai lang tím sương sáo\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/thanh-pham-919.jpg\" /></p>\r\n	</li>\r\n</ul>', 'chè khoai lang.jpg', '2021-12-08 03:09:21', NULL),
(13, 12, 'Cách làm kem chuối mít thơm ngon đơn giản ngay tại nhà', '<h2><strong>Nguy&ecirc;n liệu l&agrave;m Kem chuối m&iacute;t</strong></h2>\r\n\r\n<p>&nbsp;Chuối ch&iacute;n&nbsp;<small>10 quả</small><em>(khoảng 1 nải)</em>&nbsp;</p>\r\n\r\n<p>M&iacute;t&nbsp;<small>300 gr</small>&nbsp;</p>\r\n\r\n<p>Sữa chua c&oacute; đường&nbsp;<small>200 gr</small><em>(2 hộp)</em></p>\r\n\r\n<p>&nbsp;Sữa tươi c&oacute; đường&nbsp;<small>220 ml</small>&nbsp;</p>\r\n\r\n<p>Nước cốt dừa&nbsp;<small>400 ml</small>&nbsp;Sữa đặc&nbsp;<small>150 ml</small>&nbsp;</p>\r\n\r\n<p>Đậu phộng rang&nbsp;<small>20 gr</small>&nbsp;</p>\r\n\r\n<p>Cơm dừa nạo sợi&nbsp;<small>50 gr</small>&nbsp;</p>\r\n\r\n<p>Đường&nbsp;<small>50 gr</small></p>\r\n\r\n<h2><strong>C&aacute;ch chọn mua nguy&ecirc;n liệu tươi ngon</strong></h2>\r\n\r\n<p><strong>C&aacute;ch chọn mua m&iacute;t ch&iacute;n ngon kh&ocirc;ng ng&acirc;m h&oacute;a chất</strong></p>\r\n\r\n<ul>\r\n	<li>M&iacute;t ch&iacute;n ngon th&ocirc;ng thường l&agrave; những tr&aacute;i m&iacute;t c&oacute; tr&ograve;n, thon đều từ đầu đến đ&aacute;y quả, kh&ocirc;ng qu&aacute; gồ ghề hay lồi l&otilde;m qu&aacute; nhiều.</li>\r\n	<li>M&iacute;t ch&iacute;n vỏ sẽ chuyển m&agrave;u xanh &uacute;a ngả n&acirc;u hoặc n&acirc;u nhạt, c&oacute; phần cuống lớn, gai mắt nở to, tỏa m&ugrave;i thơm lừng đặc trưng.</li>\r\n	<li>M&iacute;t kh&ocirc;ng ng&acirc;m h&oacute;a chất khi bổ ra thường sẽ c&oacute; mủ tiết ra kh&aacute; &iacute;t, tr&aacute;i lại nếu thấy mủ qu&aacute; nhiều tức đ&oacute; l&agrave; m&iacute;t đ&atilde; được ng&acirc;m h&oacute;a chất.</li>\r\n	<li>N&ecirc;n hạn chế mua m&iacute;t kh&ocirc;ng tỏa ra m&ugrave;i thơm đặc trưng của m&iacute;t bởi đ&oacute; c&oacute; thể l&agrave; m&iacute;t đ&atilde; được ti&ecirc;m thuốc, đặc biệt nếu m&iacute;t c&oacute; gai nhọn v&agrave; nằm san s&aacute;t nhau tức m&iacute;t vẫn chưa đạt độ ch&iacute;n cần thiết.</li>\r\n</ul>\r\n\r\n<p><strong>C&aacute;ch chọn mua chuối ch&iacute;n ngon</strong></p>\r\n\r\n<ul>\r\n	<li>Chuối ch&iacute;n ngon l&agrave; những quả c&oacute; lớp vỏ b&ecirc;n ngo&agrave;i m&agrave;u v&agrave;ng tươi s&aacute;ng, c&oacute; thể xen lẫn c&aacute;c quả m&agrave;u xanh bởi đ&oacute; đa phần l&agrave; chuối ch&iacute;n tự nhi&ecirc;n.</li>\r\n	<li>Lớp vỏ b&ecirc;n ngo&agrave;i c&oacute; thể xuất hiện c&aacute;c đốm th&acirc;m đen li ti, d&ugrave;ng tay ấn v&agrave;o thấy chuối c&oacute; độ mềm vừa phải, kh&ocirc;ng qu&aacute; mềm nhũn.</li>\r\n	<li>N&ecirc;n hạn chế mua chuối c&oacute; cuống g&atilde;y rụng, t&aacute;ch rời khỏi cuống, thậm ch&iacute; c&ograve;n bị dập n&aacute;t qu&aacute; nhiều bởi đ&oacute; l&agrave; chuối đ&atilde; để qu&aacute; l&acirc;u.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Nguyên liệu món ăn kem chuối mít\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/CookUtensilandNotes/kem-chuoi-mit-note-1200x676.jpg\" style=\"height:676px; width:1200px\" /></p>\r\n\r\n<h2><strong>C&aacute;ch chế biến Kem chuối m&iacute;t</strong></h2>\r\n\r\n<ul>\r\n	<li><strong><em>1 Nấu hỗn hợp sữa</em></strong>\r\n\r\n	<p>Trước hết, bạn lấy nồi rồi cho 400ml&nbsp;<a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-nuoc-cot-dua-sanh-min-thom-ngon-don-gian-tai-nha-01773\" target=\"_blank\">nước cốt dừa</a>, 150ml&nbsp;<a href=\"https://www.dienmayxanh.com/vao-bep/cach-lam-sua-dac-tai-nha-thom-beo-don-gian-an-toan-03872\" target=\"_blank\">sữa đặc</a>, 50gr đường v&agrave; 220ml sữa tươi c&oacute; đường v&agrave;o, bắc l&ecirc;n bếp tiến h&agrave;nh nấu với lửa nhỏ khoảng 5 - 7 ph&uacute;t.</p>\r\n\r\n	<p>D&ugrave;ng muỗng khuấy đều nhẹ nh&agrave;ng theo 1 chiều nhất định, đến khi tất cả nguy&ecirc;n liệu đ&atilde; được h&ograve;a tan v&agrave; hỗn hợp đ&atilde; ấm th&igrave; bạn tắt bếp, để nguội 5 ph&uacute;t.</p>\r\n\r\n	<p><img alt=\"Bước 1 Nấu hỗn hợp sữa Kem chuối mít\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/nau-hon-hop-sua.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 1 Nấu hỗn hợp sữa Kem chuối mít\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/nau-hon-hop-sua-3.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 1 Nấu hỗn hợp sữa Kem chuối mít\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/nau-hon-hop-sua-1.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 1 Nấu hỗn hợp sữa Kem chuối mít\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/nau-hon-hop-sua-2.jpg\" /></p>\r\n	</li>\r\n	<li><strong><em>2 Sơ chế m&iacute;t v&agrave; chuối</em></strong>\r\n	<p>Với 300gr m&iacute;t mua về bạn t&aacute;ch bỏ hạt, d&ugrave;ng dao cắt m&iacute;t th&agrave;nh c&aacute;c sợi vừa ăn.</p>\r\n\r\n	<p>Chuối bạn lột vỏ, bỏ hết xơ chuối rồi cắt l&aacute;t mỏng theo chiều dọc, với 1 quả bạn c&oacute; thể cắt th&agrave;nh 3 - 4 l&aacute;t t&ugrave;y sở th&iacute;ch.</p>\r\n\r\n	<p><img alt=\"Bước 2 Sơ chế mít và chuối Kem chuối mít\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/so-che-mit-va-chuoi-2.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 2 Sơ chế mít và chuối Kem chuối mít\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/so-che-mit-va-chuoi.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 2 Sơ chế mít và chuối Kem chuối mít\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/so-che-mit-va-chuoi-3.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 2 Sơ chế mít và chuối Kem chuối mít\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/so-che-mit-va-chuoi-1.jpg\" /></p>\r\n	</li>\r\n	<li><strong><em>3 Trộn hỗn hợp m&iacute;t xay với sữa</em></strong>\r\n	<p>Bạn lần lượt cho v&agrave;o m&aacute;y xay sinh tố khoảng 1 tr&aacute;i chuối, 3 m&uacute;i m&iacute;t đ&atilde; cắt v&agrave; 2 hộp sữa chua c&oacute; đường v&agrave;o, tiến h&agrave;nh xay nhuyễn ở mức vừa trong v&ograve;ng 2 - 3 ph&uacute;t.</p>\r\n\r\n	<p>Sau đ&oacute;, bạn cho hỗn hợp vừa xay v&agrave;o nồi hỗn hợp sữa ban đầu, d&ugrave;ng muỗng khuấy đều nhẹ nh&agrave;ng để cho c&aacute;c nguy&ecirc;n liệu được h&ograve;a quyện v&agrave;o nhau.</p>\r\n\r\n	<p><img alt=\"Bước 3 Trộn hỗn hợp mít xay với sữa Kem chuối mít\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/tron-hon-hop-mit-xay-voi-sua.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 3 Trộn hỗn hợp mít xay với sữa Kem chuối mít\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/tron-hon-hop-mit-xay-voi-sua-2.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 3 Trộn hỗn hợp mít xay với sữa Kem chuối mít\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/tron-hon-hop-mit-xay-voi-sua-1.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 3 Trộn hỗn hợp mít xay với sữa Kem chuối mít\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/tron-hon-hop-mit-xay-voi-sua-3.jpg\" /></p>\r\n	</li>\r\n	<li><strong><em>4 Đổ khu&ocirc;n kem v&agrave; l&agrave;m đ&ocirc;ng</em></strong>\r\n	<p>Chuẩn bị nguy&ecirc;n liệu xong, bạn lấy hộp đựng thực phẩm rồi lần lượt xếp đều v&agrave;o hộp 1 &iacute;t dừa nạo sợi, m&iacute;t, chuối, tiếp đ&oacute; đổ phần hỗn hợp sữa vừa trộn v&agrave;o khoảng 1/3 hộp.</p>\r\n\r\n	<p>Sau đ&oacute;, bạn tiếp tục xếp th&ecirc;m dừa nạo sợi, m&iacute;t v&agrave; chuối v&agrave;o rồi đổ th&ecirc;m 1 lượng hỗn hợp sữa tương tự như lớp trước. Bạn thực hiện như vậy cho đến khi đầy hộp v&agrave; hết ho&agrave;n to&agrave;n c&aacute;c nguy&ecirc;n liệu.</p>\r\n\r\n	<p>Cuối c&ugrave;ng, bạn rải đều l&ecirc;n tr&ecirc;n bề mặt 1 &iacute;t đậu phộng rang, dừa nạo sợi, đậy nắp lại v&agrave; đặt ở ngăn đ&ocirc;ng&nbsp;<a href=\"https://www.dienmayxanh.com/tu-lanh\" target=\"_blank\">tủ lạnh</a>&nbsp;khoảng 8 - 10 tiếng.</p>\r\n\r\n	<p>Thấy kem đ&atilde; trở n&ecirc;n đ&ocirc;ng cứng ho&agrave;n to&agrave;n th&igrave; bạn lấy ra khỏi hộp, d&ugrave;ng dao cắt th&agrave;nh từng kh&uacute;c vừa ăn, rồi cho ra dĩa thưởng thức th&ocirc;i nh&eacute;!</p>\r\n\r\n	<p><img alt=\"Bước 4 Đổ khuôn kem và làm đông Kem chuối mít\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/do-khuon-kem-va-lam-dong.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 4 Đổ khuôn kem và làm đông Kem chuối mít\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/do-khuon-kem-va-lam-dong-1.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 4 Đổ khuôn kem và làm đông Kem chuối mít\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/do-khuon-kem-va-lam-dong-2.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 4 Đổ khuôn kem và làm đông Kem chuối mít\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/do-khuon-kem-va-lam-dong-3.jpg\" /></p>\r\n	</li>\r\n	<li><em><strong>5 Th&agrave;nh phẩm</strong></em>\r\n	<p>Kem chuối m&iacute;t với hương thơm thoang thoảng hấp dẫn, c&ugrave;ng sự kết hợp hương vị tuyệt vời của c&aacute;c nguy&ecirc;n liệu đ&atilde; l&agrave;m n&ecirc;n m&oacute;n kem qu&aacute; đỗi tuyệt vời.</p>\r\n\r\n	<p>Kem m&aacute;t lạnh, c&oacute; vị ngọt kh&ocirc;ng qu&aacute; gắt, beo b&eacute;o dịu nhẹ xen lẫn từ chuối mềm mềm, m&iacute;t dai gi&ograve;n v&agrave; nước cốt dừa s&aacute;nh đặc, điểm th&ecirc;m vị b&ugrave;i b&ugrave;i từ dừa nạo v&agrave; đậu phộng rang nhai th&iacute;ch miệng th&igrave; sao c&oacute; thể chối từ m&oacute;n kem n&agrave;y đ&uacute;ng kh&ocirc;ng n&agrave;o?</p>\r\n\r\n	<p><img alt=\"Bước 5 Thành phẩm Kem chuối mít\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/thanh-pham-983.jpg\" /></p>\r\n\r\n	<p><img alt=\"Bước 5 Thành phẩm Kem chuối mít\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/GalleryStep/thanh-pham-982.jpg\" /></p>\r\n	</li>\r\n</ul>', 'kem chuối.jpg', '2021-12-08 05:26:23', NULL),
(14, 3, '1Cách làm mực xào sa tế thơm ngon, hấp dẫn cho những ngày mưa se lạnh', '<h2>Nguy&ecirc;n liệu l&agrave;m Mực x&agrave;o sa tế<small>Cho 3 người</small></h2>\r\n\r\n<p>&nbsp;Mực&nbsp;<small>3 con</small>&nbsp;</p>\r\n\r\n<p>Tỏi&nbsp;<small>10 gr</small>&nbsp;</p>\r\n\r\n<p>Sả&nbsp;<small>10 gr</small>&nbsp;</p>\r\n\r\n<p>Nước mắm&nbsp;<small>3 muỗng canh</small>&nbsp;</p>\r\n\r\n<p>Đường&nbsp;<small>1 muỗng canh</small>&nbsp;</p>\r\n\r\n<p>Hạt n&ecirc;m&nbsp;<small>1/2 muỗng canh</small></p>\r\n\r\n<h2>C&aacute;ch chọn mua mực tươi ngon</h2>\r\n\r\n<ul>\r\n	<li>Chọn mua những con mực c&oacute; m&agrave;u sắc s&aacute;ng b&oacute;ng, phần th&acirc;n mực m&agrave;u trắng sữa, c&aacute;c đốm n&acirc;u sẽ c&oacute; m&agrave;u n&acirc;u đậm.</li>\r\n	<li>Khi chạm tay v&agrave;o th&acirc;n mực, nếu mực tươi th&igrave; th&acirc;n sẽ săn chắc v&agrave; c&oacute; độ đ&agrave;n hồi cao, ấn v&agrave;o th&igrave; mực sẽ nhanh ch&oacute;ng trở lại trạng th&aacute;i ban đầu, kh&ocirc;ng để lại vết l&otilde;m.</li>\r\n	<li>Quan s&aacute;t m&agrave;u mắt của mực, mực tươi th&igrave; m&agrave;u mắt trong veo, kh&ocirc;ng bị lồi ra ngo&agrave;i, c&oacute; thể thấy r&otilde; con ngươi v&agrave; kh&ocirc;ng bị chảy dịch v&agrave;ng.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Nguyên liệu món ăn mực xào sa tế\" src=\"https://cdn.tgdd.vn/2021/11/CookRecipe/CookUtensilandNotes/muc-xao-sa-te-note-1200x676.jpg\" style=\"height:676px; width:1200px\" /></p>\r\n\r\n<h2><strong>C&aacute;ch chế biến Mực x&agrave;o sa tế</strong></h2>\r\n\r\n<ul>\r\n	<li><strong><em>1 Sơ chế mực</em></strong>\r\n\r\n	<p>Rửa sạch mực v&agrave; d&ugrave;ng dao cắt tr&ecirc;n th&acirc;n mực những đường ch&eacute;o cho đẹp.</p>\r\n\r\n	<p><img alt=\"Bước 1 Sơ chế mực Mực xào sa tế\" src=\"https://cdn.tgdd.vn/Files/2015/02/18/611458/1.jpg\" /></p>\r\n	</li>\r\n	<li><strong><em>2 X&agrave;o mực</em></strong>\r\n	<p>Đặt chảo l&ecirc;n bếp v&agrave; rang kh&ocirc; mực. Băm tỏi v&agrave; sả rồi cho ch&uacute;ng v&agrave;o chảo để phi với dầu ăn.</p>\r\n\r\n	<p>Chờ đến khi dậy m&ugrave;i thơm th&igrave; cho tiếp sa tế v&agrave;o. Tiếp đến, bạn cho mực v&agrave;o x&agrave;o với lửa to v&agrave; đảo đều tay.</p>\r\n\r\n	<p>Bạn tiến h&agrave;nh x&agrave;o đến khi thấy mực săn lại th&igrave; n&ecirc;m 3 th&igrave;a nước mắm, một muỗng đường, nửa th&igrave;a hạt n&ecirc;m. Sau đ&oacute;, bạn vặn nhỏ lửa lại v&agrave; x&agrave;o tiếp trong 2 ph&uacute;t nữa rồi tắt bếp.</p>\r\n\r\n	<p><img alt=\"Bước 2 Xào mực Mực xào sa tế\" src=\"https://cdn.tgdd.vn/Files/2015/02/18/611458/cach-lam-muc-xao-sa-te-hinh-3.jpg\" /></p>\r\n	</li>\r\n	<li><strong><em>3 Th&agrave;nh phẩm</em></strong>\r\n	<p>Mực x&agrave;o sa tế cay cay, gi&ograve;n dai lại đậm đ&agrave; hương vị. Bạn c&oacute; thể ăn k&egrave;m với ch&eacute;n cơm trắng sẽ c&agrave;ng hấp dẫn hơn đấy nh&eacute;!</p>\r\n\r\n	<p><img alt=\"Bước 3 Thành phẩm Mực xào sa tế\" src=\"https://cdn.tgdd.vn/Files/2015/02/18/611458/huong-dan-cach-lam-muc-xao-sa-te-dung-trong-nhung-ngay-lanh-cuoi-nam.jpg\" /></p>\r\n	</li>\r\n</ul>', 'mực xào.jpg', '2021-12-14 11:59:29', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id_CTHD` int(10) UNSIGNED NOT NULL,
  `id_HD` int(11) UNSIGNED NOT NULL,
  `id_SanPham` int(11) UNSIGNED NOT NULL,
  `TenSanPham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SoLuongMua` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id_CTHD`, `id_HD`, `id_SanPham`, `TenSanPham`, `Gia`, `SoLuongMua`, `created_at`, `updated_at`) VALUES
(32, 26, 4, 'Thịt nạt đùi heo hữu cơ 400g', '84000', 2, NULL, NULL),
(33, 26, 9, 'vd 2', '300003', 1, NULL, NULL),
(34, 27, 1, 'Rau dền đỏ 1kg', '30000', 2, NULL, NULL),
(35, 28, 8, 'ca 3', '30000', 2, NULL, NULL),
(36, 28, 7, 'ca chua', '10000', 2, NULL, NULL),
(37, 28, 4, 'Thịt nạt đùi heo hữu cơ 400g', '84000', 1, NULL, NULL),
(38, 30, 8, 'ca 3', '30000', 1, NULL, NULL),
(39, 31, 1, 'Rau dền đỏ 1kg', '30000', 10, NULL, NULL),
(40, 32, 5, 'Cam xoàn túi 1kg', '35000', 1, NULL, NULL),
(41, 33, 17, 'Đọt Su su (Gói 250g)', '22000', 3, NULL, NULL),
(42, 34, 8, 'Cá saba đông lạnh túi 400g', '28000', 1, NULL, NULL),
(43, 35, 17, 'Đọt Su su (Gói 250g)', '22000', 1, NULL, NULL),
(44, 36, 13, 'Muối tiêu chanh Tinh Nguyên hũ 45g', '7500', 1, NULL, NULL),
(45, 37, 1, 'Rau dền đỏ 1kg', '30000', 4, NULL, NULL),
(46, 38, 5, 'Cam xoàn túi 1kg', '35000', 1, NULL, NULL),
(47, 39, 17, 'Đọt Su su (Gói 250g)', '22000', 1, NULL, NULL),
(48, 41, 17, 'Đọt Su su (Gói 250g)', '22000', 1, NULL, NULL),
(49, 46, 4, 'Thịt nạt đùi heo hữu cơ 400g', '84000', 1, NULL, NULL),
(50, 49, 17, 'Đọt Su su (Gói 250g)', '22000', 1, NULL, NULL),
(51, 50, 11, 'Socola Ferrero hộp 375g', '360000', 1, NULL, NULL),
(52, 50, 8, 'Cá saba đông lạnh túi 400g', '28000', 1, NULL, NULL),
(53, 50, 17, 'Đọt Su su (Gói 250g)', '22000', 1, NULL, NULL),
(54, 50, 1, 'Rau dền đỏ 1kg', '30000', 1, NULL, NULL),
(55, 51, 9, 'Chuối già giống Nam Mỹ túi 1kg', '27000', 1, NULL, NULL),
(56, 51, 7, 'Hộp 10 trứng gà tươi', '29000', 1, NULL, NULL),
(57, 52, 11, 'Socola Ferrero hộp 375g', '360000', 3, NULL, NULL),
(58, 52, 17, 'Đọt Su su (Gói 250g)', '22000', 2, NULL, NULL),
(59, 53, 11, 'Socola Ferrero hộp 375g', '360000', 1, NULL, NULL),
(60, 53, 5, 'Cam xoàn túi 1kg', '35000', 1, NULL, NULL),
(61, 54, 11, 'Socola Ferrero hộp 375g', '360000', 1, NULL, NULL),
(62, 55, 13, 'Muối tiêu chanh Tinh Nguyên hũ 45g', '7500', 1, NULL, NULL),
(63, 55, 8, 'Cá saba đông lạnh túi 400g', '28000', 1, NULL, NULL),
(64, 56, 17, 'Đọt Su su (Gói 250g)', '22000', 1, NULL, NULL),
(65, 57, 17, 'Đọt Su su (Gói 250g)', '22000', 1, NULL, NULL),
(66, 57, 13, 'Muối tiêu chanh Tinh Nguyên hũ 45g', '7500', 1, NULL, NULL),
(67, 57, 9, 'Chuối già giống Nam Mỹ túi 1kg', '27000', 1, NULL, NULL),
(68, 58, 26, 'Ớt chuông đỏ túi 300g (1-2 quả)', '24000', 3, NULL, NULL),
(69, 58, 33, 'Xốt Sriracha đỏ Guyumi chai 200g', '16000', 1, NULL, NULL),
(70, 60, 34, 'Mắm ruốc Huế Sông Hương hũ 200g', '31000', 1, NULL, NULL),
(71, 60, 33, 'Xốt Sriracha đỏ Guyumi chai 200g', '16000', 1, NULL, NULL),
(72, 61, 35, 'Cánh gà khay 500g (3-5 cánh)', '50000', 1, NULL, NULL),
(73, 62, 4, 'Thịt nạt đùi heo hữu cơ 400g', '84000', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmucbaiviet`
--

CREATE TABLE `danhmucbaiviet` (
  `id_DanhMucBaiViet` int(10) UNSIGNED NOT NULL,
  `TenDanhMucBaiViet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmucbaiviet`
--

INSERT INTO `danhmucbaiviet` (`id_DanhMucBaiViet`, `TenDanhMucBaiViet`, `created_at`, `updated_at`) VALUES
(2, 'Món canh', NULL, NULL),
(3, 'Món mặn', NULL, NULL),
(4, 'Món xào', NULL, NULL),
(11, 'Món chè', NULL, NULL),
(12, 'Tráng miệng', NULL, NULL),
(13, 'Ăn vặt1', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmucsanpham`
--

CREATE TABLE `danhmucsanpham` (
  `id_DanhMuc` int(10) UNSIGNED NOT NULL,
  `TenDanhMuc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MoTa` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `HinhAnh_DanhMuc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmucsanpham`
--

INSERT INTO `danhmucsanpham` (`id_DanhMuc`, `TenDanhMuc`, `MoTa`, `HinhAnh_DanhMuc`) VALUES
(2, 'Rau Củ', 'Cung cấp các sản phẩm tươi ngon, đảm bảo an toàn thực phẩm, bao gồm các loại rau như  rau ăn củ, rau ăn quả và rau ăn lá', 'category9.jpg'),
(3, 'Thịt & Trứng', 'Cung cấp các loại trứng như gà, vịt, ngỗng... và nhiều loại thịt khác nhau như cá,  heo, bò, trâu, vịt ...', 'category4.jpg'),
(4, 'Cá & Hải Sản', 'Gồm các loại sản phẩm như cá, cua, ốc sò, tôm, mực .....', 'category3.jpg'),
(5, 'Trái Cây', 'Cung cấp nhiều loại trái cây tươi ngon như cam, bưởi, quýt, nho, dâu tây ....', 'category_traicay.jpg'),
(7, 'Bánh Kẹo', 'cung cấp đầy đủ các loại bánh cho người tiêu dùng', 'category15.jpg'),
(8, 'Gia Vị', 'bao gồm nhiều loại gia vị khác nhau, đa dạng', 'category_giavi.jpg'),
(17, 'Đồ Uống', 'cung cấp nhiều loại thức uống đa dạng, phong phú', 'đồ uống.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dathang`
--

CREATE TABLE `dathang` (
  `id_DH` int(10) UNSIGNED NOT NULL,
  `TenDatHang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email_DH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChi_DH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SoDienThoai_DH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GhiChu_DH` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dathang`
--

INSERT INTO `dathang` (`id_DH`, `TenDatHang`, `Email_DH`, `DiaChi_DH`, `SoDienThoai_DH`, `GhiChu_DH`, `created_at`, `updated_at`) VALUES
(43, 'lam tuong', 'lamtuongnguyen@gmail.com', 'truong tho, cau ngang, tra vinh', '0339153198', 'sgge', NULL, NULL),
(44, 'q', 'lamtuongnguyen@gmail.com', 'truong tho, cau ngang, tra vinh', '63784', 'dgdhh', NULL, NULL),
(45, 'li', 'lam@gmail.com', 'tra vinh', '63784', 'grgerh', NULL, NULL),
(46, 'lam tuong', 'lamtuongnguyen@gmail.com', 'truong tho, cau ngang, tra vinh', '0339153198', 'sadw', NULL, NULL),
(47, 'lam tuong', 'lamtuongnguyen@gmail.com', 'truong tho, cau ngang, tra vinh', '63784', 'dffe', NULL, NULL),
(48, 'e', 'lam@gmail.com', 'truong tho, cau ngang, tra vinh', '63784', 'ftrry', NULL, NULL),
(49, 'e', 'lam@gmail.com', 'truong tho, cau ngang, tra vinh', '63784', 'ftrry', NULL, NULL),
(50, 'w', 'lamtuongnguyen@gmail.com', 'truong tho, cau ngang, tra vinh', '0339153198', 'dfgg', NULL, NULL),
(51, 'w', 'lamtuongnguyen@gmail.com', 'truong tho, cau ngang, tra vinh', '0339153198', 'dfgg', NULL, NULL),
(52, 'w', 'lamtuongnguyen@gmail.com', 'truong tho, cau ngang, tra vinh', '0339153198', 'dfgg', NULL, NULL),
(53, 'w', 'lamtuongnguyen@gmail.com', 'truong tho, cau ngang, tra vinh', '0339153198', 'dfgg', NULL, NULL),
(54, 'lam tuong', 'lamtuongnguyen@gmail.com', 'truong tho, cau ngang, tra vinh', '0339153198', 'ege', NULL, NULL),
(55, 'lam', 'lamtuongnguyen@gmail.com', 'truong tho, cau ngang, tra vinh', '0339153198', 'giao dung mau', NULL, NULL),
(56, '12w', 'lamtuongnguyen@gmail.com', 'truong tho, cau ngang, tra vinh', '0339153198', 'àgrgr', NULL, NULL),
(57, 'sdf', 'lamtuongnguyen@gmail.com', 'tra vinh', '0339153198', 'dsfvd', NULL, NULL),
(58, 'lam tuong', 'lamtuongnguyen@gmail.com', 'truong tho, cau ngang, tra vinh', '0339153198', 'vsfg', NULL, NULL),
(59, 'lam tuong', 'lamtuongnguyen@gmail.com', 'truong tho, cau ngang, tra vinh', '0339153198', 'ádeg', NULL, NULL),
(60, 'li', 'lamtuongnguyen@gmail.com', 'truong tho, cau ngang, tra vinh', '0339153198', 'asdff', NULL, NULL),
(61, 'lan', 'lam@gmail.com', 'tra vinh', '0349246232', 'cfdfef', NULL, NULL),
(62, 'lam tuong nguyen', 'lamtuongnguyen@gmail.com', 'truong tho, cau ngang, tra vinh', '0339153198', 'ừgh', NULL, NULL),
(63, 'lam tuong nguyen', 'lamtuongnguyen@gmail.com', 'truong tho, cau ngang, tra vinh', '0339153198', 'ừgh', NULL, NULL),
(65, 'li', 'lamtuongnguyen@gmail.com', 'truong tho, cau ngang, tra vinh', '339153200', NULL, NULL, NULL),
(66, 'li', 'lamtuongnguyen@gmail.com', 'truong tho, cau ngang, tra vinh', '339153200', NULL, NULL, NULL),
(67, 'li', 'lamtuongnguyen@gmail.com', 'truong tho, cau ngang, tra vinh', '339153200', 'egrh', NULL, NULL),
(68, 'li', 'lamtuongnguyen@gmail.com', 'truong tho, cau ngang, tra vinh', '339153200', NULL, NULL, NULL),
(69, 'li', 'lamtuongnguyen@gmail.com', 'truong tho, cau ngang, tra vinh', '339153200', NULL, NULL, NULL),
(70, 'lam tuong', 'lamtuongnguyen@gmail.com', 'tra vinh', '0339153198', NULL, NULL, NULL),
(71, 'lam tuong', 'lamtuongnguyen@gmail.com', 'tra vinh', '0339153198', NULL, NULL, NULL),
(72, 'lam tuong', 'lamtuongnguyen@gmail.com', 'tra vinh', '0339153198', NULL, NULL, NULL),
(73, 'Thuy', 'lamtuongnguyen@gmail.com', 'truong tho, cau ngang, tra vinh', '0339153198', NULL, NULL, NULL),
(74, 'lam tuong', 'lamtuongnguyen@gmail.com', 'tra vinh', '0349246232', NULL, NULL, NULL),
(75, 'li', 'lamtuongnguyen@gmail.com', 'truong tho, cau ngang, tra vinh', '12532636', NULL, NULL, NULL),
(76, 'Tuong', 'lam@gmail.com', 'truong tho, cau ngang, tra vinh', '0349246232', NULL, NULL, NULL),
(77, 'lam tuong', 'tuongb1809317@student.ctu.edu.vn', 'truong tho, cau ngang, tra vinh', '0339153198', NULL, NULL, NULL),
(78, 'Lam Tuong Nguyen 76', 'lamtuongnguyen76@gmail.com', 'truong tho, cau ngang, tra vinh', '0339153198', NULL, NULL, NULL),
(79, 'tu', 'lamtuongnguyen76@gmail.com', 'truong tho, cau ngang, tra vinh', '0339153198', NULL, NULL, NULL),
(80, 'thuy', 'lamtuongnguyen76@gmail.com', 'truong tho, cau ngang, tra vinh', '0339153198', NULL, NULL, NULL),
(81, 'lam tuong', 'lamtuongnguyen76@gmail.com', 'truong tho, cau ngang, tra vinh', '0339153198', NULL, NULL, NULL),
(82, 'lam tuong', 'lamtuongnguyen76@gmail.com', 'truong tho, cau ngang, tra vinh', '0339153198', NULL, NULL, NULL),
(83, 'Lam Tường', 'lamtuongnguyen76@gmail.com', 'truong tho, cau ngang, tra vinh', '0349246232', NULL, NULL, NULL),
(84, 'li', 'lam@gmail.com', 'truong tho, cau ngang, tra vinh', '0339153198', NULL, NULL, NULL),
(85, 'lam tuong', 'lam@gmail.com', 'truong tho, cau ngang, tra vinh', '0339153198', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id_HD` int(10) UNSIGNED NOT NULL,
  `id_KH` int(11) UNSIGNED NOT NULL,
  `id_TT` int(11) UNSIGNED NOT NULL,
  `id_DH` int(11) UNSIGNED NOT NULL,
  `TongHoaDon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TrangThaiHoaDon` int(30) NOT NULL,
  `LyDoHuyDon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ngay_DH` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id_HD`, `id_KH`, `id_TT`, `id_DH`, `TongHoaDon`, `TrangThaiHoaDon`, `LyDoHuyDon`, `Ngay_DH`, `created_at`, `updated_at`) VALUES
(32, 3, 43, 55, '35,000', 2, NULL, '0', '2021-10-22 06:02:47', NULL),
(33, 3, 44, 56, '66,000', 1, NULL, '0', '2021-10-22 06:31:45', NULL),
(34, 3, 45, 57, '28,000', 2, NULL, '0', '2021-10-22 06:33:50', NULL),
(46, 3, 57, 69, '84,000', 3, 'không mua nua', '08-12-2021', '2021-10-08 05:03:44', NULL),
(50, 9, 61, 73, '440,000', 1, NULL, '10-12-2021', '2021-12-10 06:35:09', NULL),
(51, 9, 62, 74, '56,000', 2, NULL, '10-12-2021', '2021-12-10 06:44:36', NULL),
(52, 9, 63, 75, '1,124,000', 1, NULL, '10-12-2021', '2021-12-10 06:46:19', NULL),
(53, 9, 64, 76, '395,000', 2, NULL, '11-12-2021', '2021-12-10 19:51:10', NULL),
(54, 9, 65, 77, '360,000', 2, NULL, '11-12-2021', '2021-12-10 21:30:11', NULL),
(55, 11, 66, 78, '35,500', 4, NULL, '11-12-2021', '2021-12-11 07:06:37', NULL),
(56, 9, 67, 79, '22,000', 2, NULL, '12-12-2021', '2021-12-11 20:57:02', NULL),
(57, 11, 68, 80, '56,500', 2, NULL, '12-12-2021', '2021-12-12 07:15:03', NULL),
(58, 9, 69, 81, '88,000', 2, NULL, '14-12-2021', '2021-12-13 21:37:49', NULL),
(60, 9, 71, 83, '47,000', 3, 'khong mua', '14-12-2021', '2021-12-13 21:41:27', NULL),
(61, 9, 72, 84, '50,000', 1, NULL, '10-06-2022', '2022-06-10 07:16:35', NULL),
(62, 9, 73, 85, '84,000', 1, NULL, '16-07-2022', '2022-07-15 19:16:45', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id_KH` int(10) UNSIGNED NOT NULL,
  `HoTenKH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email_KH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MatKhau_KH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SoDienThoai_KH` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id_KH`, `HoTenKH`, `Email_KH`, `MatKhau_KH`, `SoDienThoai_KH`, `created_at`, `updated_at`) VALUES
(3, 'Nguyen Thi Lam Tuong', 'lamtuongb1809317@student.ctu.edu.vn', '202cb962ac59075b964b07152d234b70', '0349246232', NULL, NULL),
(5, 'lam tuong', 'tuong@gmail.com', '202cb962ac59075b964b07152d234b70', '0339153198', NULL, NULL),
(8, 'a', 'a1irg12334@gmail.com', '202cb962ac59075b964b07152d234b70', '1445', NULL, NULL),
(9, 'tuong lam', 'tuongb1809317@student.ctu.edu.vn', '202cb962ac59075b964b07152d234b70', '123456789', NULL, NULL),
(10, 'lan', 'a@gmail', 'd81f9c1be2e08964bf9f24b15f0e4900', '0349246239', NULL, NULL),
(11, 'Tuong nguyen', 'lamtuongnguyen76@gmail.com', '202cb962ac59075b964b07152d234b70', '0349246239', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_07_124354_create_admin_table', 1),
(6, '2021_09_09_140549_create__danh_muc_san_pham', 2),
(7, '2021_09_09_142636_create__danh_muc_san_pham', 3),
(8, '2021_09_11_071405_create__san_pham', 4),
(9, '2021_09_14_084311_create__san_pham', 5),
(10, '2021_09_14_085453_create__san_pham', 6),
(11, '2021_09_14_091004_create__danh_muc_san_pham', 7),
(12, '2021_09_14_123125_create__danh_muc_san_pham', 8),
(13, '2021_09_14_124921_create__san_pham', 9),
(14, '2021_09_29_142550_create__khach_hang', 10),
(15, '2021_09_30_032540_create__dat_hang', 11),
(16, '2021_09_30_034037_create__khach_hang', 12),
(17, '2021_09_30_143632_create__dat_hang', 13),
(18, '2021_10_05_092729_create__thanh_toan', 14),
(19, '2021_10_05_093522_create__hoa_don', 15),
(20, '2021_10_05_094242_create__chi_tiet_hoa_don', 16),
(21, '2021_10_17_131546_create__bai_viet', 17),
(22, '2021_10_20_045621_create__thu_vien_hinh_anh', 18),
(23, '2021_10_24_041011_create__danh_muc_bai_viet', 19),
(24, '2021_11_04_144948_create_roles_table', 20),
(25, '2021_11_06_084530_create_admin_roles_table', 21),
(26, '2021_12_07_145717_create__bai_viet', 22);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id_Roles` int(10) UNSIGNED NOT NULL,
  `TenRoles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id_Roles`, `TenRoles`, `created_at`, `updated_at`) VALUES
(1, 'Nhân viên', NULL, NULL),
(2, 'Quản trị viên', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id_SanPham` int(10) UNSIGNED NOT NULL,
  `id_DanhMuc` int(11) UNSIGNED NOT NULL,
  `TenSanPham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MoTaSanPham` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SoLuong_SP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SoLuong_SPDaBan` int(11) NOT NULL,
  `HinhAnh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id_SanPham`, `id_DanhMuc`, `TenSanPham`, `MoTaSanPham`, `Gia`, `SoLuong_SP`, `SoLuong_SPDaBan`, `HinhAnh`, `created_at`, `updated_at`) VALUES
(1, 2, 'Rau dền đỏ 1kg', 'Rau dền đỏ là một loại thực vật họ Dền, có hoa, rau dền còn có tên gọi khác là rau dền canh, rau dền tía hay rau giền. Rau dền đỏ có cả thân, lá và ngon đều có màu đỏ, các lá to bằng khoảng 2 đầu ngón tay. Rau dền đỏ khi luộc lên nước rau sẽ có màu đỏ tươi nhìn rất bắt mắt. rau dền đỏ chứa nhiều vitamin, khoáng chất và chất đạm có tác dụng giúp cơ thể thanh nhiệt, giải độc mát gan....', '30000', '-3', 16, 'sp_rauden.jpg', NULL, NULL),
(4, 3, 'Thịt nạt đùi heo hữu cơ 400g', 'Nạc đùi heo là phần thịt đùi đã loại bỏ mỡ và da.T hịt nạt đùi heo cung cấp các chất dinh dưỡng như  protein, lipit, các khoáng chất quan trọng cho cơ thể, nguồn axit amin dồi dào. Việc sử dụng thực phẩm này không chỉ giúp bổ sung dưỡng chất, cung cấp năng lượng cho cơ thể mà còn có thể hỗ trợ tái tạo cơ bắp, cải thiện khả năng miễn dịch hiệu quả', '84000', '12', 3, 'nac-dui-heo_1.jpg', NULL, NULL),
(5, 5, 'Cam xoàn túi 1kg', '<h2>Th&ocirc;ng tin sản phẩm</h2>\r\n\r\n<p>Được trồng nhiều v&agrave; l&acirc;u đời ở một số tỉnh Đồng bằng s&ocirc;ng Cửu Long. Ăn cam xo&agrave;n thường xuy&ecirc;n gi&uacute;p tăng cường hệ miễn dịch, thể lực v&agrave; cải thiện sự trắng mịn cho l&agrave;n da. Cam kết b&aacute;n đ&uacute;ng khối lượng v&agrave; chất lượng, bao b&igrave; k&iacute;n đ&aacute;o, sạch sẽ, vệ sinh</p>\r\n\r\n<p>Cam l&agrave; một loại tr&aacute;i c&acirc;y&nbsp;ngon v&agrave; được nhiều người y&ecirc;u th&iacute;ch. Cam th&igrave; c&oacute; rất nhiều giống loại như l&agrave;: cam s&agrave;nh, cam canh, cam khe m&acirc;y H&agrave; Tĩnh,... th&igrave; cam xo&agrave;n&nbsp;của miền t&acirc;y l&agrave; loại tr&aacute;i c&acirc;y đặc sản&nbsp;được y&ecirc;u th&iacute;ch nhất, bởi độ thơm ngon v&agrave; ngọt nhất, k&iacute;ch thước vị gi&aacute;c.</p>\r\n\r\n<p><img alt=\"Cam xoàn túi 1kg 1\" src=\"https://cdn.tgdd.vn/Products/Images/8788/223422/bhx/cam-xoan-tui-1kg-202011111013593698.jpg\" /></p>\r\n\r\n<p>Cam xo&agrave;n c&oacute; xuất từ từ c&aacute;c tỉnh miền T&acirc;y Nam Bộ như: Tiền Giang, An Giang, Vĩnh Long, Bến Tre,... Cam xo&agrave;n c&oacute; tr&aacute;i kh&aacute; to, khoảng 200 - 300g một quả, cam xo&agrave;n c&oacute; h&igrave;nh tr&ograve;n, da mỏng v&agrave; ng&atilde; v&agrave;ng khi ch&iacute;n,&nbsp;ăn c&oacute; vị ngọt đậm, thanh m&aacute;t v&agrave; rất thơm.</p>\r\n\r\n<p><strong>T&aacute;c&nbsp;dụng của cam xo&agrave;n</strong></p>\r\n\r\n<p>Cam xo&agrave;n chứa nhiều chất dinh dưỡng, gồm: nước, protid, glucid, acid hữu cơ, cellulose, calcium, sắt, caroten, vitamin C,....&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra, khi ăn cam xo&agrave;n c&ograve;n c&oacute; t&aacute;c dụng tốt&nbsp; cho cơ thể&nbsp;như: chống oxy ho&aacute;, tăng cường sức đề kh&aacute;ng cho cơ thể, giảm stress, hỗ trợ giảm c&acirc;n, tốt cho phụ nữ mang thai v&agrave; trẻ nhỏ, giảm độc lợi tiểu,...</p>\r\n\r\n<p><img alt=\"Cam xoàn túi 1kg 4\" src=\"https://cdn.tgdd.vn/Products/Images/8788/223422/bhx/cam-xoan-tui-1kg-202011111014007317.jpg\" /></p>\r\n\r\n<p><strong>C&aacute;ch sử dụng cam xo&agrave;n</strong></p>\r\n\r\n<p>Cam xo&agrave;n sẽ ngon nhất l&agrave; lột vỏ rồi ăn ngay, c&aacute;ch ăn n&agrave;y sẽ giữ lại to&agrave;n bộ chất dinh dưỡng c&oacute; trong cam. Cam xo&agrave;n rất &iacute;t nước, nếu bạn d&ugrave;ng cam xo&agrave;n l&agrave;m nước &eacute;p th&igrave; thật l&agrave; l&atilde;ng ph&iacute; đấy.<br />\r\n<strong>Lưu &yacute;:&nbsp;</strong>Sản phẩm nhận được c&oacute; thể kh&aacute;c với h&igrave;nh ảnh về m&agrave;u sắc v&agrave; số lượng nhưng vẫn đảm bảo về mặt khối lượng v&agrave; chất lượng.</p>', '35000', '44', 6, 'camxoan.jpg', NULL, NULL),
(7, 3, 'Hộp 10 trứng gà tươi', '<p><strong>Th&ocirc;ng tin sản phẩm</strong></p>\r\n\r\n<p>Hộp 10 trứng g&agrave; tươi&nbsp;của Happy Egg được đ&oacute;ng g&oacute;i v&agrave; bảo quản theo những ti&ecirc;u chuẩn nghi&ecirc;m ngặt về vệ sinh v&agrave; an to&agrave;n thực phẩm, đảm bảo về chất lượng của thực phẩm. Trứng g&agrave; to tr&ograve;n, đều.&nbsp;Trứng g&agrave; th&igrave; bạn c&oacute; thể luộc ch&iacute;n chế biến th&agrave;nh một số m&oacute;n ăn kh&aacute;c như: thịt kho trứng, cơm chi&ecirc;n trứng,...</p>\r\n\r\n<ul>\r\n	<li>Thương hiệu :&nbsp; &nbsp;Happy Egg</li>\r\n	<li>Loại sản phẩm :&nbsp; &nbsp; Trứng g&agrave; tươi</li>\r\n	<li>Số trứng :&nbsp; &nbsp;10 trứng</li>\r\n	<li>Nơi sản xuất&nbsp; :&nbsp; &nbsp;Việt Nam</li>\r\n	<li>Bảo quản&nbsp; :&nbsp; Bảo quản nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t</li>\r\n	<li>Hạn sử dụng&nbsp; :&nbsp; 10 ng&agrave;y kể từ ng&agrave;y đ&oacute;ng g&oacute;i ở nhiệt độ 30 - 35 độ C. 30 ng&agrave;y ở nhiệt độ 7 - 10 độ C</li>\r\n</ul>\r\n\r\n<p>Trứng g&agrave; l&agrave; một loại thực phẩm chứa nhiều chất dinh dưỡng, cung cấp lượng đạm cao, cung cấp chất b&eacute;o v&agrave; vitamin, kho&aacute;ng chất. Trứng g&agrave; được sản xuất ở trang trại sạch, chất lượng, n&ecirc;n kh&aacute;ch h&agrave;ng c&oacute; thể y&ecirc;n t&acirc;m về sản phẩm.<br />\r\n<img alt=\"Hộp 10 trứng gà tươi QLEgg 4\" src=\"https://cdn.tgdd.vn/Products/Images/8783/228775/bhx/hop-10-trung-ga-tuoi-qlegg-202011040900368775.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn sử dụng</strong></p>\r\n\r\n<p>Trứng g&agrave;&nbsp; th&igrave; bạn c&oacute; thể luộc ch&iacute;n rồi thưởng thức hoặc c&oacute; thể chế biến th&agrave;nh một số m&oacute;n ăn kh&aacute;c như: thịt kho trứng, cơm chi&ecirc;n trứng, khổ qua x&agrave;o trứng, m&igrave; trứng chi&ecirc;n, lạp xưởng chi&ecirc;n trứng, trứng quậy, ....&nbsp;</p>\r\n\r\n<p><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>Sản phẩm n&ecirc;n được bảo quản ở ngăn m&aacute;t của tủ lạnh để c&oacute; thể bảo quản l&acirc;u hơn.&nbsp;<br />\r\nKh&ocirc;ng n&ecirc;n sử dụng trứng khi qu&aacute; hạn, hạn sử dụng c&oacute; thể xem tr&ecirc;n bao b&igrave;.<br />\r\nTrứng hư sẽ c&oacute; những đặc điểm sau: Trứng c&oacute; m&agrave;u đen, m&ugrave;i kh&oacute; ngửi.<br />\r\n<strong>Lưu &yacute;:</strong>&nbsp;Sản phẩm nhận được c&oacute; thể kh&aacute;c với h&igrave;nh ảnh về m&agrave;u sắc v&agrave; số lượng nhưng vẫn đảm bảo về mặt khối lượng v&agrave; chất lượng.</p>', '29000', '199', 3, 'trung ga tuoi.jpg', NULL, NULL),
(8, 4, 'Cá saba đông lạnh túi 400g', '<p><strong>Th&ocirc;ng tin sản phẩm</strong></p>\r\n\r\n<p>C&aacute; saba với đặc t&iacute;nh &iacute;t xương khi chế biến thịt sẽ c&oacute; vị ngọt thơm v&agrave; ăn rất ngon,&nbsp;dễ d&agrave;ng d&ugrave;ng l&agrave;m nguy&ecirc;n liệu chế biến c&aacute;c m&oacute;n ngon v&agrave; chứa nhiều chất dinh dưỡng.&nbsp;C&aacute; saba đ&ocirc;ng lạnh&nbsp;gi&uacute;p bảo quản l&acirc;u hơn m&agrave; thịt c&aacute; vẫn chắc, kh&ocirc;ng bở m&agrave; vẫn giữ nguy&ecirc;n vị đậm đ&agrave;.</p>\r\n\r\n<p><strong>C&aacute; saba</strong>&nbsp;(c&aacute; sapa)&nbsp;l&agrave; một lo&agrave;i&nbsp;<a href=\"https://www.bachhoaxanh.com/ca-tom-muc-ech\" target=\"_blank\">c</a>&aacute;&nbsp;nổi tiếng c&oacute; nguồn gốc từ Nhật Bản, c&oacute; m&agrave;u trắng, nhiều nạc v&agrave; &iacute;t mỡ, t<strong>hịt c&aacute; d&agrave;y, &iacute;t xương khi chế biến thịt sẽ c&oacute; vị ngọt thơm v&agrave; ăn rất ngon. C&aacute; saba đ&ocirc;ng lạnh</strong>&nbsp;được lấy từ những con c&aacute; tươi, c&ograve;n sống, thịt săn chắc, l&agrave;m lạnh nhanh v&agrave; trữ đ&ocirc;ng ở -18 độ C, điều n&agrave;y gi&uacute;p cho thịt c&aacute; vẫn giữ nguy&ecirc;n độ tươi ngay khi r&atilde; đ&ocirc;ng sử dụng. C&aacute; đ&ocirc;ng lạnh&nbsp;c&oacute; thể bảo quản trong thời gian d&agrave;i m&agrave; vẫn đảm bảo hương vị cũng như gi&aacute; trị dinh dưỡng,&nbsp;th&iacute;ch hợp với nhu cầu sử của c&aacute;c b&agrave; nội trợ cho nhiều lần sử dụng.&nbsp;<br />\r\n<img src=\"https://cdn.tgdd.vn/Products/Images//8782/249000/bhx/files/1.jpg\" /></p>\r\n\r\n<p><strong>Ưu điểm v&agrave; nhược điểm của c&aacute;&nbsp;tươi đ&ocirc;ng lạnh</strong></p>\r\n\r\n<p><strong>Ưu điểm:&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>C&aacute; được lạnh nhanh ở nhiệt độ - 40 độ C, trữ đ&ocirc;ng ở -18 độ C đảm bảo được h&agrave;m lượng dinh dưỡng trong c&aacute;</li>\r\n	<li>C&oacute; thể bảo quản l&acirc;u m&agrave; kh&ocirc;ng mất di dưỡng chất, tiện lợi khi sử dụng</li>\r\n	<li>Mỗi loại được đ&oacute;ng g&oacute;i ri&ecirc;ng,&nbsp;đảm bảo vi khuẩn kh&ocirc;ng c&oacute; khả năng x&acirc;m nhập</li>\r\n</ul>\r\n\r\n<p><strong>Nhược điểm</strong></p>\r\n\r\n<ul>\r\n	<li>C&aacute; bị thiếu vị ngọt đậm đ&agrave; so với c&aacute; tươi</li>\r\n	<li>Qu&aacute; tr&igrave;nh r&atilde; đ&ocirc;ng l&agrave;m mất đi 1 phần Vitamin tan trong nước.</li>\r\n	<li>Khi r&atilde; đ&ocirc;ng kh&ocirc;ng đ&uacute;ng c&aacute;ch cũng l&agrave;m hao hụt dinh dưỡng trong c&aacute;</li>\r\n</ul>\r\n\r\n<p><strong>Lưu &yacute; khi sử dụng c&aacute; đ&ocirc;ng lạnh</strong></p>\r\n\r\n<ul>\r\n	<li>R&atilde; đ&ocirc;ng c&aacute; bằng c&aacute;ch đặt c&aacute; v&agrave;o ngăn m&aacute;t tủ lạnh trước 1 ng&agrave;y, tr&aacute;nh ng&acirc;m c&aacute; trực tiếp trong nước.</li>\r\n	<li>Để thịt c&aacute; nhanh r&atilde; đ&ocirc;ng, bạn n&ecirc;n để nguy&ecirc;n bao b&igrave; v&agrave; ng&acirc;m v&agrave;o nước lạnh, kh&ocirc;ng r&atilde; đ&ocirc;ng c&aacute; trong nước n&oacute;ng.</li>\r\n	<li>C&aacute; đ&atilde; r&atilde; đ&ocirc;ng kh&ocirc;ng cho lại v&agrave;o ngăn đ&aacute; tủ lạnh, l&uacute;c n&agrave;y c&aacute; sẽ kh&ocirc;ng đảm bảo được độ ngon cũng như chất lượng. Bạn n&ecirc;n nấu hết v&agrave; nếu ăn kh&ocirc;ng hết th&igrave; bảo quản c&aacute; đ&atilde; nấu ch&iacute;n trong tủ lạnh v&agrave; d&ugrave;ng hết sau 1 ng&agrave;y.</li>\r\n</ul>\r\n\r\n<p><strong>M&oacute;n ngon với c&aacute;c saba</strong></p>\r\n\r\n<ul>\r\n	<li>C&aacute; saba kho tộ</li>\r\n	<li>C&aacute; saba &aacute;p chảo</li>\r\n	<li>C&aacute; saba sốt c&agrave; chua</li>\r\n	<li>C&aacute; saba kho măng</li>\r\n</ul>\r\n\r\n<p><strong>Lưu &yacute;:&nbsp;</strong>Sản phẩm nhận được c&oacute; thể kh&aacute;c với h&igrave;nh ảnh về m&agrave;u sắc v&agrave; số lượng nhưng vẫn đảm bảo về mặt khối lượng v&agrave; chất lượng.</p>', '28000', '16', 38, 'ca-saba-saba-fish.jpg', NULL, NULL),
(9, 5, 'Chuối già giống Nam Mỹ túi 1kg', '<p><strong>Th&ocirc;ng tin sản phẩm</strong></p>\r\n\r\n<p>Loại chuối được nhiều kh&aacute;ch h&agrave;ng ưa chuộng.&nbsp;Chuối chứa nhiều chất dinh dưỡng như kali, chất xơ, vitamin,... n&ecirc;n chuối c&oacute; t&aacute;c dụng tốt cho sức khoẻ như&nbsp;hỗ trợ giảm c&acirc;n, hỗ trợ sức khoẻ tim mạch, cải thiện sức khoẻ của thận,...Cam kết đ&uacute;ng khối lượng, bao b&igrave; k&iacute;n đ&aacute;o, an to&agrave;n v&agrave; bảo đảm hợp vệ sinh.<br />\r\n<img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images//8788/222842/bhx/files/sa.jpg\" /><br />\r\nLoại chuối&nbsp;n&agrave;y chứa nhiều chất dinh dưỡng như kali, chất xơ, vitamin,... n&ecirc;n chuối c&oacute; t&aacute;c dụng tốt cho sức khỏe như: hỗ trợ giảm c&acirc;n, hỗ trợ sức khoẻ tim mạch, cải thiện sức khoẻ của thận,... B&ecirc;n cạnh đ&oacute;, vỏ chuối c&ograve;n c&oacute; t&aacute;c dụng l&agrave;m đẹp được nhiều chị em phụ nữ &aacute;p dụng<br />\r\n<img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images//8788/222842/bhx/files/z.jpg\" /><br />\r\nNgo&agrave;i những lợi &iacute;ch tr&ecirc;n chuối c&ograve;n được d&ugrave;ng để chế biến th&agrave;nh nhiều m&oacute;n ăn hấp dẫn kh&aacute;c nhau như: b&aacute;nh chuuois , ch&egrave; chuối,....<br />\r\n<strong>Lưu &yacute;:</strong>&nbsp;Sản phẩm nhận được c&oacute; thể kh&aacute;c với h&igrave;nh ảnh về m&agrave;u sắc v&agrave; số lượng nhưng vẫn đảm bảo về mặt khối lượng v&agrave; chất lượng.</p>', '27000', '74', 7, 'chuoi gia nam my.jpg', NULL, NULL),
(11, 7, 'Socola Ferrero hộp 375g', '<p><strong>Th&ocirc;ng tin sản phẩm</strong></p>\r\n\r\n<p>Với lớp socola cao cấp, chất lượng v&agrave; ngọt thanh. Socola Ferrero Rocher hộp 375g vị đậm đ&agrave; từ ca cao nguy&ecirc;n chất v&agrave; kem sữa b&eacute;o ngậy. Kẹo socola Ferrero gi&uacute;p bạn c&oacute; những gi&acirc;y ph&uacute;t thư th&aacute;i v&agrave; tận hưởng từng vị socola say đắm đến từ &Yacute;</p>\r\n\r\n<ul>\r\n	<li>Loại :&nbsp; Socola</li>\r\n	<li>Số lượng&nbsp; :&nbsp; 30 vi&ecirc;n x 12.5g</li>\r\n	<li>Khối lượng tổng&nbsp; :&nbsp; 375g</li>\r\n	<li>Th&agrave;nh phần :&nbsp; Socola sữa 30% (đường, bơ, ca cao, bột ca cao, sữa bột gầy, chất b&eacute;o sữa dạng khan, chất nhũ ho&aacute;, chất tạo xốp, hương liệu giống tự nhi&ecirc;n, hạt phỉ 28.5%, muối,...</li>\r\n	<li>Lưu &yacute; :&nbsp; Chứa c&aacute;c loại hạt, sữa v&agrave; đậu n&agrave;nh</li>\r\n	<li>Bảo quản :&nbsp; Để nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp</li>\r\n	<li>Thương hiệu :&nbsp; Ferrero Rocher ()</li>\r\n	<li>Nơi sản xuất :&nbsp; &Yacute;</li>\r\n</ul>\r\n\r\n<p>Socola l&agrave; một trong những m&oacute;n ăn vặt được y&ecirc;u th&iacute;ch từ trẻ em đến người lớn. Kẹo ngọt thanh c&ugrave;ng với lớp socola thơm, ngon h&ograve;a quyện với nhau l&agrave;m ch&uacute;ng ta say đắm.</p>\r\n\r\n<p><img alt=\"Socola Ferrero hộp 375g 1\" src=\"https://cdn.tgdd.vn/Products/Images/6597/233236/bhx/socola-ferrero-rocher-hop-375g-202101021641550566.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p>Sản phẩm được đ&oacute;ng g&oacute;i th&agrave;nh hộp, trong hộp gồm nhiều vi&ecirc;n socola được bọc v&agrave; đ&oacute;ng g&oacute;i kĩ c&agrave;ng gi&uacute;p qu&aacute; tr&igrave;nh sử dụng v&agrave; bảo quản được dễ d&agrave;ng hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"Socola Kem Hạt Dẻ Ferrero Rocher Đức – 1 Hộp 200g/16 Viên | DHStore | Tiki\" src=\"https://salt.tikicdn.com/ts/product/7b/1f/8b/8dc19c7e536384b57f06b126097aa843.jpg\" style=\"height:400px; width:400px\" /><br />\r\n<br />\r\nSản phẩm v&ocirc; c&ugrave;ng thơm ngon, ph&ugrave; hợp cho mọi lứa tuổi c&oacute; thể thỏa sức ăn uống. C&oacute; thể mua về sử dụng hoặc l&agrave;m qu&aacute; v&ocirc; c&ugrave;ng &yacute; nghĩa nh&eacute;.</p>', '360000', '19', 13, 'Socola Ferrero1.jpg', NULL, NULL),
(13, 8, 'Muối tiêu chanh Tinh Nguyên hũ 45g', '<p><strong>Th&ocirc;ng tin sản phẩm</strong></p>\r\n\r\n<ul>\r\n	<li>Loại muối :&nbsp; Muối ti&ecirc;u chanh</li>\r\n	<li>Khối lượng :&nbsp; 45g</li>\r\n	<li>Th&agrave;nh phần :&nbsp; Muối, ti&ecirc;u, chanh tươi, l&aacute; chanh, bột chanh, tỏi, bột ngọt, c&agrave; rốt</li>\r\n	<li>C&aacute;ch d&ugrave;ng :&nbsp; Chấm hải sản, c&aacute;c m&oacute;n ăn</li>\r\n	<li>C&aacute;ch bảo quản :&nbsp; Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t v&agrave; tr&aacute;nh &aacute;nh nắng trực tiếp. Đậy k&iacute;n nắp sau khi sử dụng</li>\r\n	<li>Thương hiệu :&nbsp; Tinh Nguy&ecirc;n (Việt Nam)</li>\r\n	<li>Nơi sản xuất : Việt Nam</li>\r\n</ul>\r\n\r\n<p><img alt=\"Muối tiêu chanh Tinh Nguyên hũ 45g 4\" src=\"https://cdn.tgdd.vn/Products/Images/2803/87937/bhx/muoi-tieu-chanh-tinh-nguyen-hu-45g-160-4-org.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p>Muối tinh nguy&ecirc;n đem đến cho qu&yacute; kh&aacute;ch h&agrave;ng sản phẩm&nbsp;<a href=\"https://www.bachhoaxanh.com/muoi-an/muoi-tieu-chanh-tinh-nguyen-hu-45g-160\" target=\"_blank\">m</a>uối ti&ecirc;u chanh tinh nguy&ecirc;n 45g&nbsp;c&oacute; thể chấm với hầu hết c&aacute;c m&oacute;n luộc, hấp, chi&ecirc;n. Với c&ocirc;ng thức pha chế đặc biệt v&agrave; những gia vị tự nhi&ecirc;n như ti&ecirc;u, chanh, muối, đ&acirc;y được xem l&agrave; m&oacute;n gia vị trong gian bếp của mọi nh&agrave;.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '7500', '63', 37, 'muoi tieu chanh.jpg', NULL, NULL),
(17, 2, 'Đọt Su su (Gói 250g)', '<h3><em><strong>Th&ocirc;ng tin chung</strong></em></h3>\r\n\r\n<p>Quy c&aacute;ch: G&oacute;i 250g</p>\r\n\r\n<p>Giống rau: &Ocirc;n đới.</p>\r\n\r\n<p>V&ugrave;ng trồng: Đ&agrave; Lạt.</p>\r\n\r\n<p>Đạt ti&ecirc;u chuẩn: VietGap &ndash; Canh t&aacute;c hữu cơ.</p>\r\n\r\n<h3><em><strong>Gi&aacute; trị dinh dưỡng</strong></em></h3>\r\n\r\n<p>Đọt su su l&agrave; một trong những loại rau phổ biến nhất tại Đ&agrave; Lạt. N&oacute; được đ&aacute;nh gi&aacute; l&agrave; loại rau gi&agrave;u chất xơ, kẽm, vitamin B c&ugrave;ng c&aacute;c chất chống oxy h&oacute;a, lo&atilde;ng xương. Đọt su su cũng l&agrave; một thực phẩm gi&uacute;p mang lại những c&ocirc;ng dụng tuyệt vời cho sức khỏe của bạn. Cụ thể l&agrave;:</p>\r\n\r\n<ul>\r\n	<li>Đọt su su tốt cho tim mạch.</li>\r\n	<li>Hỗ trợ ngăn ngừa ung thư.</li>\r\n	<li>Tốt cho tuyến gi&aacute;p.</li>\r\n	<li>Gi&uacute;p xương chắc khỏe.</li>\r\n	<li>C&ocirc;ng dụng l&agrave;m đẹp da.</li>\r\n</ul>\r\n\r\n<p>Đọt su su cũng l&agrave; loại rau quen thuộc v&agrave; nhiều người nội trợ y&ecirc;u th&iacute;ch nhất hiện nay.</p>\r\n\r\n<h3><em><strong>An to&agrave;n sức khỏe với ti&ecirc;u chuẩn 6 KH&Ocirc;NG của Bio Ngon</strong></em></h3>\r\n\r\n<p>Đọt su su được trồng theo ti&ecirc;u chuẩn 6 KH&Ocirc;NG của Bio Ngon gồm:</p>\r\n\r\n<ul>\r\n	<li>Kh&ocirc;ng h&oacute;a chất k&iacute;ch th&iacute;ch tăng trưởng.</li>\r\n	<li>Kh&ocirc;ng h&oacute;a chất diệt c&ocirc;n tr&ugrave;ng, s&acirc;u hại.</li>\r\n	<li>Kh&ocirc;ng h&oacute;a chất diệt cỏ.</li>\r\n	<li>Kh&ocirc;ng h&oacute;a chất bảo quản.</li>\r\n	<li>Kh&ocirc;ng h&oacute;a chất chống &uacute;ng.</li>\r\n	<li>Kh&ocirc;ng ph&acirc;n b&oacute;n h&oacute;a học.</li>\r\n</ul>\r\n\r\n<h3><em><strong>C&aacute;ch bảo quản v&agrave; gợi &yacute; chế biến</strong></em></h3>\r\n\r\n<p>Mua đọt su su của Bio Ngon, bạn nhớ bảo quản trong ngăn m&aacute;t của tủ lạnh trước trong thời gian trước khi chế biến nh&eacute;.</p>\r\n\r\n<p>Hiện nay, đọt su su chủ yếu được kết hợp với những nguy&ecirc;n liệu kh&aacute;c để tạo ra những m&oacute;n ăn bắt mắt, thơm ngon v&agrave; hấp dẫn:</p>\r\n\r\n<ul>\r\n	<li>Đọt su su x&agrave;o thịt b&ograve;.</li>\r\n	<li>Đọt su su x&agrave;o tỏi.</li>\r\n	<li>Đọt su su x&agrave;o mề g&agrave;.</li>\r\n	<li>Đọt su su x&agrave;o tỏi v&agrave; t&oacute;p mỡ.</li>\r\n</ul>\r\n\r\n<p>Mua ngay h&ocirc;m nay để nhận được những ưu đ&atilde;i mới nhất từ Bio Ngon nh&eacute;!</p>', '22000', '48', 16, 'dot su su.jpg', NULL, NULL),
(26, 2, 'Ớt chuông đỏ túi 300g (1-2 quả)', '<h2>Th&ocirc;ng tin sản phẩm</h2>\r\n\r\n<p>Ớt chu&ocirc;ng đỏ c&oacute; k&iacute;ch thước to v&agrave; c&oacute; nhiều m&agrave;u sắc kh&aacute;c nhau như: xanh, v&agrave;ng, đỏ... Ớt chu&ocirc;ng đỏ n&agrave;y kh&ocirc;ng c&oacute; vị cay gắt như c&aacute;c loại ớt th&ocirc;ng thường kh&aacute;c m&agrave; c&oacute; vị gi&ograve;n n&ecirc;n th&iacute;ch hợp cho c&aacute;c m&oacute;n x&agrave;o, ăn sống. Loại ớt n&agrave;y c&ograve;n chứa nhiều kho&aacute;ng chất v&agrave; vitamin tốt cho cơ thể.<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Ớt chu&ocirc;ng</strong>&nbsp;l&agrave; giống ớt c&oacute; quả to, phần thịt d&agrave;y v&agrave; gi&ograve;n xốp. Đặc biệt, ớt chu&ocirc;ng l&agrave; loại rau củ&nbsp;c&oacute; sự đa dạng về m&agrave;u sắc (gồm xanh, v&agrave;ng, cam, đỏ v&agrave; đen) cũng như hương vị v&agrave; độ cay nồng kh&aacute;c nhau.Ớt chu&ocirc;ng xanh<strong>&nbsp;c&oacute; hương vị hăng</strong>&nbsp;kh&aacute; đặc trưng, trong khi đ&oacute;&nbsp;<strong>ớt m&agrave;u đỏ v&agrave; v&agrave;ng thường c&oacute; vị ngọt</strong>&nbsp;hơn. &Oacute;t chu&ocirc;ng đỏ&nbsp;được sử dụng để l&agrave;m dầu thơm v&agrave; tương ớt khi bạn muốn giảm bớt vị cay.&nbsp;<br />\r\n<img alt=\"Ớt chuông đỏ túi 300g (1-2 quả) 0\" src=\"https://cdn.tgdd.vn/Products/Images/8785/233908/bhx/ot-chuong-do-tui-300g-202101271558515994.jpg\" /></p>\r\n\r\n<h2><strong>GI&Aacute; TRỊ DINH DƯỠNG</strong></h2>\r\n\r\n<p><strong>- Ớt chu&ocirc;ng</strong>&nbsp;c&oacute; 92% l&agrave; nước, c&ograve;n lại l&agrave; c&aacute;c&nbsp;chất dinh dưỡng&nbsp;như&nbsp;<strong>Carb, Protein, Chất b&eacute;o</strong>&nbsp;c&ugrave;ng c&aacute;c kho&aacute;ng chất v&agrave; vitamin như:&nbsp;<strong>Vitamin A, C, K1</strong>,&nbsp;<strong>Folate</strong>&nbsp;v&agrave;<strong>&nbsp;Kali</strong>&nbsp;c&ugrave;ng nhiều&nbsp;<strong>chất chống oxy h&oacute;a</strong>&nbsp;kh&aacute;c.<br />\r\n- Với h&agrave;m lượng&nbsp;<strong>vitamin A</strong>&nbsp;dồi d&agrave;o c&ugrave;ng&nbsp;<strong>Lutein&nbsp;</strong>v&agrave;&nbsp;<strong>Zeaxanthin</strong>, ớt chu&ocirc;ng hỗ trợ&nbsp;gi&uacute;p&nbsp;<strong>bảo vệ v&otilde;ng mạc</strong>&nbsp;khỏi c&aacute;c t&aacute;c động oxy h&oacute;a, tr&aacute;nh khỏi c&aacute;c bệnh&nbsp;<strong>tho&aacute;i h&oacute;a v&otilde;ng mạc</strong>,&nbsp;<strong>tho&aacute;i h&oacute;a điểm v&agrave;ng</strong>.<br />\r\n-&nbsp;Ngo&agrave;i ra&nbsp;ớt chu&ocirc;ng sinh nhiệt v&agrave; l&agrave;m tăng tỷ lệ trao đổi chất, gi&uacute;p đốt ch&aacute;y calo,&nbsp;<strong>hỗ trợ giảm c&acirc;n</strong>. C&aacute;c&nbsp;<strong>vitamin A, C, K&nbsp;</strong>c&ugrave;ng h&agrave;m lượng<strong>&nbsp;lưu huỳnh&nbsp;</strong>c&oacute; trong ớt chu&ocirc;ng hỗ trợ&nbsp;<strong>hệ thống miễn dịch</strong>, bảo vệ tế b&agrave;o khỏi qu&aacute; tr&igrave;nh oxy ho&aacute;, tăng cường khả năng hấp thụ v&agrave; bổ sung chất sắt,&nbsp;<strong>ngăn ngừa ung thư</strong>.<br />\r\nVới h&agrave;m lượng gi&aacute; trị dinh dưỡng cao, ớt chu&ocirc;ng mang đến rất nhiều lợi &iacute;ch cho sức khỏe<br />\r\n<img alt=\"Ớt chuông đỏ túi 300g (1-2 quả) 1\" src=\"https://cdn.tgdd.vn/Products/Images/8785/233908/bhx/ot-chuong-do-tui-300g-202101271558527181.jpg\" /></p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p><strong>Lưu &yacute;:&nbsp;</strong>Sản phẩm nhận được c&oacute; thể kh&aacute;c với h&igrave;nh ảnh về m&agrave;u sắc v&agrave; số lượng nhưng vẫn đảm bảo về mặt khối lượng v&agrave; chất lượng.</p>', '24000', '47', 3, 'ot chuong.jpg', NULL, NULL),
(27, 3, 'Ba chỉ bò Úc đông lạnh Thảo Tiến Foods khay 300g', '<h2>Th&ocirc;ng tin sản phẩm</h2>\r\n\r\n<p>&nbsp;Thịt b&ograve; &Uacute;c Thảo Ti&ecirc;n Foods l&agrave; loại thịt b&ograve; đ&ocirc;ng lạnh&nbsp;được th&aacute;i bằng m&aacute;y tự động trong m&ocirc;i trường lạnh, tạo n&ecirc;n những khoanh thịt đỏ hồng. Ba chỉ b&ograve; &Uacute;c đ&ocirc;ng lạnh Thảo Ti&ecirc;n Foods khay 300gl&agrave; phần thịt b&ograve; nằm ở bụng, c&oacute; lớp nạc mỡ&nbsp;xen kẽ nhau, tạo n&ecirc;n độ mềm ngọt, thơm ngậy nhưng kh&ocirc;ng ngấy.</p>\r\n\r\n<ul>\r\n	<li>C&aacute;ch d&ugrave;ng : Nấu ch&iacute;n trước khi d&ugrave;ng. Kh&ocirc;ng t&aacute;i cấp đ&ocirc;ng sau khi đ&atilde; r&atilde; đ&ocirc;ng</li>\r\n	<li>Th&agrave;nh phần : Thịt b&ograve; &Uacute;c 100% nhập khẩu từ &Uacute;c</li>\r\n	<li>Nhiệt độ bảo quản : -18 độ C hoặc ngăn đ&aacute; tủ lạnh</li>\r\n	<li>Khối lượng : 300g</li>\r\n	<li>Thương hiệu : Thảo Ti&ecirc;n Foods (Việt Nam)</li>\r\n	<li>Nơi sản xuất : Việt Nam</li>\r\n</ul>\r\n\r\n<p><img alt=\"Ba chỉ bò Úc đông lạnh Thảo Tiến Foods khay 300g 0\" src=\"https://cdn.tgdd.vn/Products/Images//7172/213864/bhx/files/1.png\" /><br />\r\nBa chỉ b&ograve; l&agrave; phần thịt ở tảng h&ocirc;ng, c&oacute; cấu tr&uacute;c thịt xen giữa xương sườn với c&aacute;c đường v&acirc;n mỡ cẩm thạch đẹp mắt, tạo độ mềm ngậy thơm ngon.</p>\r\n\r\n<p><img alt=\"Ba chỉ bò Úc đông lạnh Thảo Tiến Foods khay 300g 1\" src=\"https://cdn.tgdd.vn/Products/Images//7172/213845/bhx/files/beef-cuts(1).jpg\" /></p>\r\n\r\n<p>Kh&aacute;c với thịt b&ograve; ở Việt Nam, ba chỉ b&ograve; &Uacute;c&nbsp;c&oacute; tỷ lệ thịt nạc v&agrave; mỡ đồng đều, mềm v&agrave; thơm ngậy. So với b&ograve;&nbsp;Mỹ, thịt ba rọi &Uacute;c &iacute;t mỡ v&agrave; chắc thịt hơn, th&iacute;ch hợp với người kh&ocirc;ng th&iacute;ch thịt qu&aacute; nhiều mỡ.</p>\r\n\r\n<p><img alt=\"Ba chỉ bò Úc đông lạnh Thảo Tiến Foods khay 300g 2\" src=\"https://cdn.tgdd.vn/Products/Images//7172/213864/bhx/files/2.png\" /><br />\r\nBa chỉ b&ograve; &Uacute;c Mỹ Thảo Ti&ecirc;n Foods được th&aacute;i bằng m&aacute;y trong m&ocirc;i trường lạnh, tạo n&ecirc;n những l&aacute;t thịt với độ mỏng l&yacute; tưởng. Thịt ba chỉ rất dễ nấu, c&oacute; thể l&agrave;m c&aacute;c m&oacute;n từ đơn giản đến cầu kỳ, m&agrave; m&oacute;n n&agrave;o cũng ngon.</p>\r\n\r\n<p><img alt=\"Ba chỉ bò Úc đông lạnh Thảo Tiến Foods khay 300g 3\" src=\"https://cdn.tgdd.vn/Products/Images//7172/213845/bhx/files/bachibouc.gif\" /></p>\r\n\r\n<p>Ba chỉ b&ograve; &Uacute;c được sử dụng phổ biến nhất trong m&oacute;n nướng. Lớp mỡ dắt ở giữa gi&uacute;p cho miếng thịt ba chỉ b&eacute;o ngậy, thơm hơn v&agrave; kh&ocirc;ng bị kh&ocirc;,&nbsp;chấm c&ugrave;ng nước chấm&nbsp;đậm đ&agrave;, t&ocirc;n l&ecirc;n vị ngọt tự nhi&ecirc;n trong từng thớ thịt.<br />\r\n<img alt=\"Ba chỉ bò Úc đông lạnh Thảo Tiến Foods khay 300g 4\" src=\"https://cdn.tgdd.vn/Products/Images//7172/213845/bhx/files/bachi.gif\" /><br />\r\nNếu kh&ocirc;ng th&iacute;ch c&aacute;c m&oacute;n nướng dầu mỡ, bạn c&oacute; thể d&ugrave;ng ba chỉ b&ograve; &Uacute;c để nh&uacute;ng lẩu. Vị thịt b&eacute;o ngậy, thơm lừng của miếng thịt vừa ch&iacute;n tới, từng miếng tan trong miệng xen&nbsp;lẫn vị chua cay thanh nhẹ của nước d&ugrave;ng sẽ khiến bạn kh&ocirc;ng thể ngừng đũa.</p>', '82000', '100', 0, 'ba chi bo.jpg', NULL, NULL),
(28, 4, 'Tôm thẻ ướp sẵn khay 180g', '<h2>Th&ocirc;ng tin sản phẩm</h2>\r\n\r\n<p>T&ocirc;m thẻ khay 180g l&agrave; một nguy&ecirc;n liệu v&ocirc; c&ugrave;ng tiện dụng, kh&ocirc;ng thể thiếu trong căn bếp của c&aacute;c chị em. Với phần thịt t&ocirc;m thẻ dai ngon, ngọt thanh nhờ thịt t&ocirc;m tươi, ướp với c&aacute;c gia vị vừa miệng, chỉ cần mua về l&agrave; c&oacute; thể sử dụng nấu nướng ngay như canh bầu t&ocirc;m, t&ocirc;m x&agrave;o rau củ,... thơm ngon cho cả nh&agrave;</p>\r\n\r\n<p><strong>T&ocirc;m thẻ ốp sẵn</strong>&nbsp;l&agrave;&nbsp;một m&oacute;n ăn rất được nhiều người ưa th&iacute;ch, c&oacute; kh&aacute; nhiều loại t&ocirc;m kh&aacute;c nhau như: t&ocirc;m thẻch&acirc;n trắng,&nbsp;t&ocirc;m thẻ&nbsp;ch&acirc;n đỏ,&nbsp;t&ocirc;m thẻ&nbsp;bạc. Loại t&ocirc;m&nbsp;<strong>chứa rất nhiều nguồn năng lượng, dưỡng chất</strong>&nbsp;cần thiết cho cơ thể con người bao gồm: Protein, chất b&eacute;o, Kali, Vitamin B12, vitamin A, D, canxi,... Với gi&aacute; trị dinh dưỡng vượt trội rất&nbsp;<strong>hữu &iacute;ch cho qu&aacute; tr&igrave;nh ph&aacute;t triển thể chất, n&atilde;o bộ ở trẻ em</strong>. Đồng thời, tăng cường sức đề kh&aacute;ng cho người cao tuổi.&nbsp;</p>\r\n\r\n<h2><img alt=\"Tôm thẻ ướp sẵn khay 180g 1\" src=\"https://cdn.tgdd.vn/Products/Images/8780/238856/bhx/tom-the-uop-san-vi-180g-202105081608164469.jpg\" /></h2>\r\n\r\n<h2><strong>HƯỚNG DẪN BẢO QUẢN</strong></h2>\r\n\r\n<p>Bảo quản trong 4 ng&agrave;y kể từ ng&agrave;y đ&oacute;ng g&oacute;i (nhiệt độ từ 2 - 5 độ C)<br />\r\n<strong>Lưu &yacute;:&nbsp;</strong>Sản phẩm nhận được c&oacute; thể kh&aacute;c với h&igrave;nh ảnh về m&agrave;u sắc v&agrave; số lượng nhưng vẫn đảm bảo về mặt khối lượng v&agrave; chất lượng.</p>', '50000', '200', 0, 'tôm thẻ.jpg', NULL, NULL),
(29, 4, 'Mực ghim nhập khẩu đông lạnh túi 300g (9-11 con)', '<h2>Th&ocirc;ng tin sản phẩm</h2>\r\n\r\n<p>Mực ghim l&agrave; loại mực th&acirc;n d&agrave;i, cuộn tr&ograve;n như c&acirc;y ghim, vừa gi&agrave;u chất dinh dưỡng v&agrave; thơm ngon đậm vị. Mực ghim nhập khẩu đ&ocirc;ng lạnh vẫn giữ được độ săn chắc, gi&uacute;p bảo quản l&acirc;u hơn, mang đến vị đậm đ&agrave; cho m&oacute;n ăn</p>\r\n\r\n<p><strong>Mực ghim</strong>&nbsp;l&agrave; loại hải sản&nbsp;rất gi&agrave;u vitamin B1, B2 v&agrave; c&aacute;c Vitamin kh&aacute;c, b&ecirc;n cạnh đ&oacute; c&ograve;n dồi d&agrave;o sắt, kẽm, đạm, canxi&hellip;Mực gim đ&ocirc;ng lạnh nhập khẩu&nbsp;<strong>từ Indonesia</strong>&nbsp;được chế biến từ những con mực  tươi ngon, gi&ograve;n ngọt, thịt săn chắc c&oacute; chứa một &iacute;t trứng mực, được l&agrave;m lạnh nhanh v&agrave; trữ đ&ocirc;ng ở -18 độ C, điều n&agrave;y gi&uacute;p cho mực vẫn giữ nguy&ecirc;n độ tươi ngay khi r&atilde; đ&ocirc;ng sử dụng. Mực đ&ocirc;ng lạnh c&oacute; thể bảo quản trong thời gian d&agrave;i m&agrave; vẫn đảm bảo hương vị cũng như gi&aacute; trị dinh dưỡng,&nbsp;th&iacute;ch hợp với nhu cầu của c&aacute;c b&agrave; nội trợ cho nhiều lần sử dụng.&nbsp;<br />\r\n<img src=\"https://cdn.tgdd.vn/Products/Images//8782/248984/bhx/files/4.jpg\" /></p>\r\n\r\n<h2><strong>Ưu điểm v&agrave; nhược điểm của mực&nbsp;đ&ocirc;ng lạnh</strong></h2>\r\n\r\n<h3><strong>Ưu điểm</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Mực&nbsp;được lạnh nhanh ở nhiệt độ - 40 độ C, trữ đ&ocirc;ng ở -18 độ C đảm bảo được h&agrave;m lượng dinh dưỡng trong mực</p>\r\n	</li>\r\n	<li>\r\n	<p>C&oacute; thể bảo quản l&acirc;u m&agrave; kh&ocirc;ng mất đi dưỡng chất, tiện lợi khi sử dụng</p>\r\n	</li>\r\n	<li>\r\n	<p>Mực c&oacute; độ gi&ograve;n ngọt, c&oacute; trứng b&ecirc;n trong. Ngo&agrave;i ra, mực ghim nhập khẩu Indonesia c&oacute; m&agrave;u mực tự nhi&ecirc;n, kh&ocirc;ng đ&aacute;nh nước l&agrave;m con mực nở ra n&ecirc;n giữ được hương vị nguy&ecirc;n bản của mực tươi</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>Nhược điểm</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Tốn thời gian r&atilde; đ&ocirc;ng hơn so với mực tươi</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>Lưu &yacute; khi sử dụng mực đ&ocirc;ng lạnh</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>R&atilde; đ&ocirc;ng mực&nbsp;bằng c&aacute;ch đặt mực&nbsp;v&agrave;o ngăn m&aacute;t tủ lạnh trước 1 ng&agrave;y, tr&aacute;nh ng&acirc;m mực trực tiếp trong nước.</p>\r\n	</li>\r\n	<li>\r\n	<p>Để thịt mực&nbsp;nhanh r&atilde; đ&ocirc;ng, bạn n&ecirc;n để nguy&ecirc;n bao b&igrave; v&agrave; ng&acirc;m v&agrave;o nước lạnh, kh&ocirc;ng r&atilde; đ&ocirc;ng mực&nbsp;trong nước n&oacute;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Mực&nbsp;đ&atilde; r&atilde; đ&ocirc;ng kh&ocirc;ng cho lại v&agrave;o ngăn đ&aacute; tủ lạnh, l&uacute;c n&agrave;y mực&nbsp;sẽ kh&ocirc;ng đảm bảo được độ ngon cũng như chất lượng. Bạn n&ecirc;n nấu hết v&agrave; nếu ăn kh&ocirc;ng hết th&igrave; bảo quản mực&nbsp;đ&atilde; nấu ch&iacute;n trong tủ lạnh v&agrave; d&ugrave;ng hết sau 1 ng&agrave;y.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>Lưu &yacute;:</strong>&nbsp;Sản phẩm nhận được c&oacute; thể kh&aacute;c với h&igrave;nh ảnh về m&agrave;u sắc v&agrave; số lượng nhưng vẫn đảm bảo về mặt khối lượng v&agrave; chất lượng.</p>', '60000', '200', 0, 'mục gim.jpg', NULL, NULL),
(30, 5, 'Việt quất hộp 125g', '<h2>Th&ocirc;ng tin sản phẩm</h2>\r\n\r\n<p>Việt quất hộp 125g l&agrave; một loại tr&aacute;i c&acirc;y được rất nhiều người th&iacute;ch bởi v&igrave; chứa h&agrave;m lượng chất dinh dưỡng dồi d&agrave;o tốt cho sức khoẻ. Việt quất khi ăn sẽ c&oacute; vị thơm ngon, chua chua ngọt ngọt dễ ăn</p>\r\n\r\n<p><strong>Việt quất&nbsp;</strong>(hay c&ograve;n gọi l&agrave;&nbsp;<strong>Blueberry</strong>) l&agrave; một loại tr&aacute;i c&acirc;y nhập khẩu&nbsp;kh&ocirc;ng c&ograve;n qu&aacute; xa lạ đối với người ti&ecirc;u d&ugrave;ng Việt Nam. Đ&acirc;y kh&ocirc;ng chỉ l&agrave; loại&nbsp;<a href=\"https://www.bachhoaxanh.com/trai-cay-tuoi-ngon\" target=\"_blank\">tr&aacute;i c&acirc;y</a>&nbsp;c&oacute; m&agrave;u sắc bắt mắt m&agrave; c&ograve;n chứa nhiều chất dinh dưỡng c&ugrave;ng c&ocirc;ng dụng tốt cho sức khoẻ.&nbsp;<br />\r\nViệt quất th&igrave;&nbsp;<strong>quả kh&aacute; tr&ograve;n trịa, vỏ mỏng v&agrave; trơn mịn.</strong>&nbsp;Đường k&iacute;nh trung b&igrave;nh&nbsp;<strong>dao động tầm 2 &ndash; 3 cm</strong>, một đầu c&oacute; cuống v&agrave; một đầu c&oacute; phần đ&agrave;i quả. Quả thường&nbsp;<strong>c&oacute; m&agrave;u xanh sẫm gần như m&agrave;u mực</strong>, một v&agrave;i giống th&igrave; sẽ c&oacute;&nbsp;<strong>m&agrave;u đen hoặc đỏ</strong>. Việt quất mang&nbsp;<strong>vị ngọt thơm, khi mới ăn c&oacute; thể thấy hơi ch&aacute;t</strong>&nbsp;nhưng sau quen rồi lại thấy rất hấp dẫn.<br />\r\n<img alt=\"Việt quất hộp 125g 0\" src=\"https://phunuvietnam.mediacdn.vn/zoom/700_438/179072216278405120/2020/6/10/avatar1591751052830-15917510543181924977525.jpg\" /></p>\r\n\r\n<h2><strong>LỢI &Iacute;CH CỦA QUẢ VIỆT QUẤT</strong></h2>\r\n\r\n<p><strong>- Th&agrave;nh phần chủ yếu của ch&uacute;ng l&agrave; 84% nước, 14% Cacbohydrat c&ugrave;ng nhiều kho&aacute;ng chất</strong>&nbsp;thiết yếu kh&aacute;c như:&nbsp;Carotene,&nbsp; Anthocyanin, vitamin (A, C, K), Kali, Natri&nbsp;Canxi, Magie, Photpho, Sắt,... Đặc biệt, lượng calo trong loại quả n&agrave;y th&igrave; rất thấp. V&igrave; thế, việt quất c&oacute; thể&nbsp;<strong>hạn chế nhiễm tr&ugrave;ng đường tiết niệu</strong>, hỗ trợ sức khỏe&nbsp;<strong>tim mạch</strong>, giảm vi&ecirc;m, l&agrave;m chậm qu&aacute; tr&igrave;nh&nbsp;<strong>giảm thị lực</strong>,&nbsp;<strong>giảm mỡ bụng, tốt cho da &ndash; t&oacute;c, ngăn ngừa t&aacute;o b&oacute;n, cải thiện hệ ti&ecirc;u h&oacute;a,...<br />\r\n- Ngo&agrave;i ra,&nbsp;</strong>loại quả n&agrave;y c&oacute; khả năng&nbsp;<strong>cải thiện tr&iacute; nhớ</strong>&nbsp;kh&aacute; hiệu quả&nbsp;<strong>nhờ v&agrave;o chất chống oxy h&oacute;a c&ugrave;ng Anthocyanin &ndash; hợp chất chống vi&ecirc;m</strong>&nbsp;được t&igrave;m thấy trong loại quả n&agrave;y.<br />\r\nMặc d&ugrave; việt quất mang đến nhiều c&ocirc;ng dụng tốt cho sức khoẻ nhưng&nbsp;ăn nhiều việt quất sẽ mang đến những t&aacute;c dụng phụ như:&nbsp;đầy hơi, ti&ecirc;u chảy, đau bụng,&nbsp;ph&aacute;t ban da, ngất xỉu, chảy m&aacute;u,...<br />\r\n<img alt=\"Việt quất hộp 125g 1\" src=\"https://cdn.tgdd.vn/Products/Images//8788/233834/bhx/files/12%20copy.jpg\" /></p>\r\n\r\n<h2><strong>C&Aacute;CH SỬ DỤNG VIỆT QUẤT</strong></h2>\r\n\r\n<p>Việt quất c&oacute; thể ăn trực tiếp như c&aacute;c loại tr&aacute;i c&acirc;y kh&aacute;c, hoặc cũng c&oacute; thể chế biến th&agrave;nh c&aacute;c m&oacute;n b&aacute;nh ngọt.<br />\r\n<strong>Lưu &yacute;:</strong>&nbsp;Sản phẩm nhận được c&oacute; thể kh&aacute;c với h&igrave;nh ảnh về m&agrave;u sắc v&agrave; số lượng nhưng vẫn đảm bảo về mặt khối lượng v&agrave; chất lượng.</p>', '149000', '300', 0, 'viêt quất.jpg', NULL, NULL),
(31, 7, 'Bánh quy phô mai Nissin Sagu Keju gói 110g', '<h2>Th&ocirc;ng tin sản phẩm</h2>\r\n\r\n<p>B&aacute;nh quy ph&ocirc; mai c&oacute; vị mằn mặn của ph&ocirc; mai&nbsp;kết hợp với vị b&eacute;o b&eacute;o của bơ c&ugrave;ng với lớp vỏ b&aacute;nh gi&ograve;n tan v&agrave; kh&ocirc;ng qu&aacute; ngọt, th&iacute;ch hợp với khẩu vị của nhiều người, đặc biệt l&agrave; trẻ em.&nbsp;B&aacute;nh quy ph&ocirc; mai Nissin Sagu Keju g&oacute;i 110g&nbsp;kh&ocirc;ng chỉ mang đến cho người d&ugrave;ng những điều mới lạ m&agrave; c&ograve;n cung cấp nguồn nă...</p>\r\n\r\n<ul>\r\n	<li>Loại&nbsp;\r\n	<p>B&aacute;nh quy ph&ocirc; mai</p>\r\n	</li>\r\n	<li>Khối lượng&nbsp;\r\n	<p>110g</p>\r\n	</li>\r\n	<li>Năng lượng&nbsp;\r\n	<p>150kcal/30g</p>\r\n	</li>\r\n	<li>Th&agrave;nh phần&nbsp;\r\n	<p>Bột cao lương, đường, chất b&eacute;o thực vật, trứng, bột b&aacute;ng, ph&ocirc; mai cheddar, bột sữa nguy&ecirc;n kem, muối, hương vani tổng hợp</p>\r\n	</li>\r\n	<li>Bảo quản&nbsp;\r\n	<p>Để nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp</p>\r\n	</li>\r\n	<li>Thương hiệu&nbsp;\r\n	<p>Nissin (Indonesia)</p>\r\n	</li>\r\n	<li>Nơi sản xuất&nbsp;\r\n	<p>Indonesia</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>B&aacute;nh quy ph&ocirc; mai Nissin Sagu Keju&nbsp;l&agrave; sản phẩm b&aacute;nh quy mới lạ đến từ thương hiệu b&aacute;nh Nissin<br />\r\n<img alt=\"Bánh quy phô mai Nissin Sagu Keju gói 110g 0\" src=\"https://cdn.tgdd.vn/Products/Images//3357/216801/bhx/files/2.jpg\" /></p>\r\n\r\n<h2>Nhập khẩu trực tiếp từ Indonesia</h2>\r\n\r\n<p>C&aacute;c d&ograve;ng sản phẩm b&aacute;nh quy Nissin đều được&nbsp;<strong>nhập khẩu trực tiếp từ Indonesia</strong>, đạt ti&ecirc;u chuẩn chất lượng cao v&agrave; được sản xuất dựa tr&ecirc;n quy tr&igrave;nh c&ocirc;ng nghệ ti&ecirc;n tiến, hiện đại.&nbsp;</p>\r\n\r\n<h2>K&iacute;ch th&iacute;ch với vị ph&ocirc; mai mặn</h2>\r\n\r\n<p>B&aacute;nh quy ph&ocirc; mai c&oacute;&nbsp;<strong>vị mằn mặn của ph&ocirc; mai&nbsp;kết hợp với vị b&eacute;o b&eacute;o của bơ</strong>&nbsp;c&ugrave;ng với lớp<strong>&nbsp;vỏ b&aacute;nh gi&ograve;n tan</strong>&nbsp;v&agrave;&nbsp;<strong>kh&ocirc;ng qu&aacute; ngọt,</strong>&nbsp;th&iacute;ch hợp với khẩu vị của nhiều người, đặc biệt l&agrave; trẻ em.&nbsp;<br />\r\n<img alt=\"Bánh quy phô mai Nissin Sagu Keju gói 110g 1\" src=\"https://cdn.tgdd.vn/Products/Images//3357/216801/bhx/files/banh-quy-pho-mai-nissin-sagu-keju-goi-110g-201912201419429687.jpg\" /><br />\r\nC&aacute;c loại b&aacute;nh từ Nissin kh&ocirc;ng chỉ mang đến cho người d&ugrave;ng những điều mới lạ m&agrave; c&ograve;n cung cấp nguồn năng lượng dồi d&agrave;o. Sản phẩm c&oacute; thể được&nbsp;<strong>d&ugrave;ng như bữa ăn s&aacute;ng, ăn xế</strong>&nbsp;khi kết hợp với sữa tươi, hoặc nh&acirc;m nhi c&ugrave;ng tr&agrave; n&oacute;ng.</p>', '26000', '400', 0, 'bánh quy.jpg', NULL, NULL),
(32, 7, 'Kẹo xí muội Play More hũ 22g', '<h2>Th&ocirc;ng tin sản phẩm</h2>\r\n\r\n<p>Với vị the m&aacute;t nhẹ nh&agrave;ng v&agrave; t&aacute;c dụng đẩy l&ugrave;i m&ugrave;i h&ocirc;i miệng kh&oacute; chịu hiệu quả. Kẹo x&iacute; muội Play More hũ 22g&nbsp;c&oacute; vị chua chua mặn mặn đặc trưng k&egrave;m theo đ&oacute; l&agrave; vị the m&aacute;t nhẹ nh&agrave;ng từ tinh chất bạc h&agrave;, gi&uacute;p bạn c&oacute; được hơi thở thơm m&aacute;t, sảng kho&aacute;i, giảm h&ocirc;i miệng v&agrave; c&oacute; t&aacute;c dụng giảm ho.</p>\r\n\r\n<ul>\r\n	<li>Loại kẹo : Kẹo x&iacute; muội</li>\r\n	<li>Ưu điểm : Vị x&iacute; muội chua ngọt k&iacute;ch th&iacute;ch vị gi&aacute;c, cho hơi thở thơm m&aacute;t, ngọt ng&agrave;o.</li>\r\n	<li>Khối lượng : 22g</li>\r\n	<li>Số lượng : 44 vi&ecirc;n</li>\r\n	<li>Th&agrave;nh phần : Đường glucose 74.15%, bột x&iacute; muội c&ocirc; đặc 12.16%, đường trắng 10%, chất điều chỉnh độ acid (INS296) 3%, chất chống đ&ocirc;ng v&oacute;n (INS470iii) 0.4%, vitamin C 0.2%, chất tạo ngọt (INS955) 0.08%, muối 0.01%</li>\r\n	<li>Ph&ugrave; hợp : Kẹo play more d&ugrave;ng cho người lớn v&agrave; trẻ từ 4 tuổi trở l&ecirc;n.</li>\r\n	<li>C&aacute;ch d&ugrave;ng : D&ugrave;ng ăn trực tiếp.</li>\r\n	<li>Thương hiệu : Play More (Th&aacute;i Lan)</li>\r\n	<li>Nơi sản xuất : Trung Quốc</li>\r\n</ul>\r\n\r\n<p><strong>Kẹo x&iacute; muội Play More</strong>&nbsp;c&oacute; vị chua chua mặn mặn đặc trưng k&egrave;m theo đ&oacute; l&agrave; vị the m&aacute;t nhẹ nh&agrave;ng từ tinh chất bạc h&agrave;, gi&uacute;p bạn c&oacute; được hơi thở thơm m&aacute;t, sảng kho&aacute;i, giảm h&ocirc;i miệng v&agrave; c&oacute; t&aacute;c dụng t&iacute;ch cực nếu bạn đang vị ho hoặc đau họng.</p>\r\n\r\n<p>Loại <strong>kẹo ngậm&nbsp;</strong>n&agrave;y c&ograve;n bổ sung th&ecirc;m vitamin C, ph&ugrave; hợp với khẩu vị của trẻ nhỏ lẫn người lớn.</p>\r\n\r\n<p><img alt=\"Kẹo xí muội Play More hũ 22g 0\" src=\"https://cdn.tgdd.vn/Products/Images//2687/203631/bhx/files/muoi2%20copy%20(1).jpg\" /></p>\r\n\r\n<h2>Kẹo x&iacute; muội thơm ngon&nbsp;phi&ecirc;n bản mới</h2>\r\n\r\n<p>Trước đ&acirc;y&nbsp;Play More đ&atilde; từng tung ra thị trường loại kẹo x&iacute; muội với bao b&igrave; m&agrave;u n&acirc;u nhạt lạ mắt, loại kẹo n&agrave;y được đ&oacute;n nhận kh&aacute; t&iacute;ch cực thế nhưng nhiều người lại cảm thấy vị x&iacute; muội của n&oacute; qu&aacute; đậm n&ecirc;n Play More đ&atilde; cho dừng sản xuất loại kẹo n&agrave;y.</p>\r\n\r\n<p><img alt=\"Kẹo xí muội Play More hũ 22g 1\" src=\"https://cdn.tgdd.vn/Products/Images//2687/203631/bhx/files/muoi1%20copy%20(1).jpg\" /></p>\r\n\r\n<p>Một thời gian sau đ&oacute;, Play More lại tiếp tục tr&igrave;nh l&agrave;ng loại kẹo x&iacute; muội ho&agrave;n to&agrave;n mới, với bao b&igrave; m&agrave;u hồng nhạt si&ecirc;u &quot;cute&quot; v&agrave; hương vị x&iacute; muội b&ecirc;n trong cũng được đ&aacute;nh gi&aacute; l&agrave; nhạt đi hẳn v&agrave; thơm hơn phi&ecirc;n bản cũ.</p>\r\n\r\n<p>Về cơ bản th&igrave; kẹo x&iacute; muội Play More kh&ocirc;ng kh&aacute;c&nbsp;kẹo dưa hấu &agrave; mấy, n&oacute; cũng c&oacute; vị the m&aacute;t nhẹ nh&agrave;ng v&agrave; t&aacute;c dụng đẩy l&ugrave;i m&ugrave;i h&ocirc;i miệng kh&oacute; chịu hiệu quả, chỉ l&agrave; vị của n&oacute; chua chua, mằn mặn đặc biệt hơn th&ocirc;i.</p>\r\n\r\n<p><img alt=\"Kẹo xí muội Play More hũ 22g 2\" src=\"https://cdn.tgdd.vn/Products/Images//2687/203631/bhx/files/muoi5%20copy%20(2).jpg\" /></p>\r\n\r\n<h2>C&ocirc;ng dụng của kẹo x&iacute; muội</h2>\r\n\r\n<p>X&iacute; muội c&oacute;&nbsp;<strong>t&aacute;c dụng l&agrave;m giảm ho, giảm cảm gi&aacute;c đau họng</strong>&nbsp;v&agrave; gi&uacute;p lấy lại vị gi&aacute;c của bạn hiệu quả. Kẹo x&iacute; muội Play More ngo&agrave;i khả năng l&agrave;m thơm miệng, c&ograve;n c&oacute; c&oacute; thể gi&uacute;p bạn giảm cảm gi&aacute;c kh&oacute; chịu do đau họng tạo th&agrave;nh.</p>\r\n\r\n<p>Sử dụng kẹo x&iacute; muội Play More sẽ gi&uacute;p bạn c&oacute; được&nbsp;<strong>hơi thở thơm m&aacute;t, sảng kho&aacute;i</strong>&nbsp;v&agrave; tinh thần tươi trẻ, khoẻ khoắn mỗi ng&agrave;y.</p>\r\n\r\n<p><img alt=\"Kẹo xí muội Play More hũ 22g 3\" src=\"https://cdn.tgdd.vn/Products/Images//2687/203631/bhx/files/muoi3%20copy1%20(1).jpg\" /></p>', '30000', '500', 0, 'keo xí muội.jpg', NULL, NULL),
(33, 8, 'Xốt Sriracha đỏ Guyumi chai 200g', '<h2>Th&ocirc;ng tin sản phẩm</h2>\r\n\r\n<p>L&agrave; sản phẩm nước chấm&nbsp;với c&aacute;c nguy&ecirc;n liệu đước chọn lọc một c&aacute;ch nghiệm ngặt của thương hiệu&nbsp;Guyumi&nbsp;<a href=\"https://www.bachhoaxanh.com/sot-nuoc-cham/xot-sriracha-do-guyumi-chai-200g\" target=\"_blank\">.</a>&nbsp;Xốt Sriracha đỏ Guyumi chai 200g&nbsp;với 65% ớt tươi tự nhi&ecirc;n mang lại một hương vị cay nồng th&iacute;ch hợp cho sử dụng với c&aacute;c m&oacute;n như phở, kh&ocirc; mực.</p>\r\n\r\n<ul>\r\n	<li><strong><em>Năng lượng : </em></strong>127kcal</li>\r\n	<li><strong><em>Th&agrave;nh phần </em></strong>: Ớt, đường, tỏi, giấm, nước, chất điều vị, chất ổn định, chất điều chỉnh độ acid</li>\r\n	<li><em><strong>C&aacute;ch d&ugrave;ng :</strong></em> Ngon tuyệt đỉnh với b&uacute;n, phở hoặc d&ugrave;ng để chấm với c&aacute;c m&oacute;n được chế biến từ thịt hoặc hải sản</li>\r\n	<li>C&aacute;ch bảo quản : Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng mặt trời chiếu trực tiếp. Đậy k&iacute;n v&agrave; giữ lạnh sau khi d&ugrave;ng</li>\r\n	<li><strong><em>Nơi sản xuất </em></strong>:&nbsp; Việt Nam</li>\r\n	<li><em><strong>Thương hiệu :</strong></em> Guyumi (Việt Nam)</li>\r\n</ul>\r\n\r\n<p><img alt=\"Xốt Sriracha đỏ Guyumi chai 200g 1\" src=\"https://cdn.tgdd.vn/Products/Images/7779/233034/bhx/xot-sriracha-do-guyumi-chai-200g-202101091735407363.jpg\" style=\"height:300px; width:400px\" /></p>', '16000', '399', 1, 'xốt.jpg', NULL, NULL),
(34, 8, 'Mắm ruốc Huế Sông Hương hũ 200g', '<h2>Th&ocirc;ng tin sản phẩm</h2>\r\n\r\n<p>Mắm ruốc Huế l&agrave; một trong những mắm truyền thống của người miền Trung Việt Nam.&nbsp;Mắm ruốc Huế S&ocirc;ng Hương hũ 200g&nbsp;&nbsp;được l&agrave;m từ c&aacute;c nguy&ecirc;n liệu tự nhi&ecirc;n mang lại m&ugrave;i vị thơm ngon nhất,&nbsp;d&ugrave;ng để ăn k&egrave;m hoặc sử dụng l&agrave;m gia vị nấu cho nhiều m&oacute;n ăn hấp dẫn đến từ S&ocirc;ng Hương</p>\r\n\r\n<ul>\r\n	<li><strong><em>Khối lượng</em></strong> : 200g</li>\r\n	<li><em><strong>Th&agrave;nh phần</strong></em> : Con ruốc 75%, muối</li>\r\n	<li><strong><em>C&aacute;ch d&ugrave;ng</em></strong> : D&ugrave;ng để nấu b&uacute;n b&ograve; Huế, n&ecirc;m canh rau, thịt x&agrave;o, hoặc pha tỏi ớt để chấm thịt luộc.</li>\r\n	<li><em><strong>Bảo quản </strong></em>: Để nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp</li>\r\n	<li><em><strong>Thương hiệu :</strong></em> S&ocirc;ng Hương (Việt Nam)</li>\r\n	<li><em><strong>Nơi sản xuất </strong></em>: Việt Nam</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Mắm ruốc Huế Sông Hương hũ 200g 2\" src=\"https://cdn.tgdd.vn/Products/Images/8280/91762/bhx/mam-ruoc-hue-hu-200g-2-org.jpg\" style=\"height:300px; width:400px\" /></p>', '31000', '400', 0, 'mắm ruốc.jpg', NULL, NULL),
(35, 3, 'Cánh gà khay 500g (3-5 cánh)', '<h2>Th&ocirc;ng tin sản phẩm</h2>\r\n\r\n<p>C&aacute;nh g&agrave; CP đạt c&aacute;c ti&ecirc;u chuẩn về an to&agrave;n thực phẩm, đảm bảo về chất lượng, độ tươi v&agrave; ngon, xuất xứ r&otilde; r&agrave;ng.. Th&iacute;ch hợp để nấu m&oacute;n c&aacute;nh g&agrave; chi&ecirc;n nước mắm, g&agrave; r&aacute;n, c&aacute;nh g&agrave; kho,...&nbsp;C&oacute; thể d&ugrave;ng điện thoại qu&eacute;t code QR tr&ecirc;n sản phẩm để kiểm tra nguồn g&oacute;c.</p>\r\n\r\n<ul>\r\n	<li>Thương hiệu&nbsp;\r\n	<p>C.P</p>\r\n	</li>\r\n	<li>Loại sản phẩm&nbsp;\r\n	<p>C&aacute;nh g&agrave;</p>\r\n	</li>\r\n	<li>Nơi sản xuất&nbsp;\r\n	<p>Việt Nam</p>\r\n	</li>\r\n	<li>Hướng dẫn sử dụng&nbsp;\r\n	<p>Nấu ch&iacute;n trước khi sử dụng</p>\r\n	</li>\r\n	<li>Bảo quản&nbsp;\r\n	<p>Thời hạn sử dụng 4 ng&agrave;y kể từ ng&agrave;y sản xuất, bảo quản ở nhiệt độ 0 - 4 độ C</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>C&aacute;nh g&agrave; l&agrave; một trong những phần thịt ngon nhất từ thịt g&agrave;. Thịt g&agrave; CP được sản xuất từ hệ thống được kiểm so&aacute;t chặt chẽ theo nguy&ecirc;n tắc chuỗi kh&eacute;p k&iacute;n &ldquo;Thức ăn chăn nu&ocirc;i - Trang trại chăn nu&ocirc;i &ndash; Nh&agrave; m&aacute;y chế biến thực phẩm&rdquo;.&nbsp;<br />\r\n<br />\r\n<img alt=\"Cánh gà khay 500g (3-5 cánh) 0\" src=\"https://cdn.tgdd.vn/Products/Images/8790/226870/bhx/canh-ga-khay-500g-202009290928295942.jpg\" /></p>\r\n\r\n<h2>Thịt g&agrave;&nbsp;CP đạt c&aacute;c ti&ecirc;u chuẩn về an to&agrave;n thực phẩm:</h2>\r\n\r\n<p>-&nbsp;GMP<br />\r\n- HACCP<br />\r\n- ISO 22000<br />\r\n- ISO 9001<br />\r\n- ISO 14001</p>\r\n\r\n<h2>Thịt g&agrave;&nbsp;CP cam kết</h2>\r\n\r\n<p>- Kh&ocirc;ng chất tăng trọng.<br />\r\n- Hệ thống chăn nu&ocirc;i kh&eacute;p k&iacute;n.<br />\r\n- Sử dụng thức ăn chất lượng cao.<br />\r\n- Truy xuất được nguồn gốc.</p>\r\n\r\n<h2>Hướng dẫn truy xuất nguồn gốc</h2>\r\n\r\n<p>Tr&ecirc;n mỗi sản phẩm thịt g&agrave; của CP đều c&oacute; 2 m&atilde; QR để kh&aacute;ch h&agrave;ng c&oacute; thể truy xuất nguồn gốc thịt.<br />\r\n<strong>Bước 1:</strong>&nbsp;Mở camera tr&ecirc;n điện thoại v&agrave; qu&eacute;t m&atilde; QR v&agrave; nhấn v&agrave;o tr&igrave;nh duyệt hiện ra tr&ecirc;n m&agrave;n h&igrave;nh để xem th&ocirc;ng tin.<br />\r\n<img alt=\"Cánh gà khay 500g (3-5 cánh) 2\" src=\"https://cdn.tgdd.vn/Products/Images//8790/226870/bhx/files/ma%cc%83%20qr.jpg\" /><br />\r\n<strong>Bước 2:</strong>&nbsp;Xem th&ocirc;ng tin sản phẩm bao gồm: cơ sở chế biến, trại giống, trại chăn nu&ocirc;i.<br />\r\n<img alt=\"Cánh gà khay 500g (3-5 cánh) 3\" src=\"https://cdn.tgdd.vn/Products/Images//8790/226870/bhx/files/Untitled-4.jpg\" /></p>\r\n\r\n<h2><br />\r\n<strong>Lưu &yacute;:</strong>&nbsp;Sản phẩm nhận được c&oacute; thể kh&aacute;c với h&igrave;nh ảnh về m&agrave;u sắc v&agrave; số lượng nhưng vẫn đảm bảo về mặt khối lượng v&agrave; chất lượng.</h2>', '50000', '100', 0, 'cánh gà.jpg', NULL, NULL),
(36, 2, 'Cà chua túi 1Kg1', '<p>c&agrave; tươi ngon</p>', '20000', '50', 0, '35.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhtoan`
--

CREATE TABLE `thanhtoan` (
  `id_TT` int(10) UNSIGNED NOT NULL,
  `PhuongThucThanhToan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TinhTrangThanhToan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thanhtoan`
--

INSERT INTO `thanhtoan` (`id_TT`, `PhuongThucThanhToan`, `TinhTrangThanhToan`, `created_at`, `updated_at`) VALUES
(32, 'Chuyển khoản ngân hàng', 'Đang chờ xử lí', NULL, NULL),
(33, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(34, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(35, 'Chuyển khoản ngân hàng', 'Đang chờ xử lí', NULL, NULL),
(36, 'Chuyển khoản ngân hàng', 'Đang chờ xử lí', NULL, NULL),
(37, 'Chuyển khoản ngân hàng', 'Đang chờ xử lí', NULL, NULL),
(38, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(39, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(40, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(41, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(42, 'Chuyển khoản ngân hàng', 'Đang chờ xử lí', NULL, NULL),
(43, 'Chuyển khoản ngân hàng', 'Đang chờ xử lí', NULL, NULL),
(44, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(45, 'Chuyển khoản ngân hàng', 'Đang chờ xử lí', NULL, NULL),
(46, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(47, 'Chuyển khoản ngân hàng', 'Đang chờ xử lí', NULL, NULL),
(48, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(49, 'Chuyển khoản ngân hàng', 'Đang chờ xử lí', NULL, NULL),
(50, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(51, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(52, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(53, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(54, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(55, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(56, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(57, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(58, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(59, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(60, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(61, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(62, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(63, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(64, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(65, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(66, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(67, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(68, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(69, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(70, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(71, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(72, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL),
(73, 'Thanh toán khi nhận hàng', 'Đang chờ xử lí', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuvienhinhanh`
--

CREATE TABLE `thuvienhinhanh` (
  `id_HinhAnh` int(10) UNSIGNED NOT NULL,
  `id_SanPham` int(11) UNSIGNED NOT NULL,
  `FileHinhAnh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thuvienhinhanh`
--

INSERT INTO `thuvienhinhanh` (`id_HinhAnh`, `id_SanPham`, `FileHinhAnh`, `created_at`, `updated_at`) VALUES
(9, 4, 'product-18.jpg', NULL, NULL),
(10, 4, 'product-19.jpg', NULL, NULL),
(17, 17, 'dot su su 2.png', NULL, NULL),
(18, 17, 'dot su su.jpg', NULL, NULL),
(19, 1, 'rau den do 2.jpg', NULL, NULL),
(20, 1, 'rau den do 3.jpg', NULL, NULL),
(21, 1, 'sp_rauden.jpg', NULL, NULL),
(23, 7, 'trung ga tuoi 1.jpg', NULL, NULL),
(24, 7, 'trung ga tuoi 2.jpg', NULL, NULL),
(25, 7, 'trung ga tuoi.jpg', NULL, NULL),
(26, 8, 'ca-saba-saba-fish.jpg', NULL, NULL),
(27, 8, 'ca saba1.jpg', NULL, NULL),
(28, 8, 'ca saba2.jpg', NULL, NULL),
(29, 5, 'camxoan.jpg', NULL, NULL),
(30, 5, 'camxoan1.jpg', NULL, NULL),
(31, 5, 'camxoan2.jpg', NULL, NULL),
(33, 5, 'camxoan3.jpg', NULL, NULL),
(34, 13, 'muoi tieu chanh.jpg', NULL, NULL),
(35, 13, 'muoi tieu chanh1.jpg', NULL, NULL),
(36, 13, 'muoi tieu chanh2.jpg', NULL, NULL),
(41, 26, 'ot chuong1.jpg', NULL, NULL),
(42, 26, 'ot chuong.jpg', NULL, NULL),
(43, 26, 'ot chuong2.jpg', NULL, NULL),
(44, 28, 'tôm thẻ.jpg', NULL, NULL),
(45, 28, 'tôm thẻ 1.jpg', NULL, NULL),
(46, 28, 'tôm thẻ 2.jpg', NULL, NULL),
(47, 29, 'mục gim.jpg', NULL, NULL),
(48, 29, 'muc gim 1.jpg', NULL, NULL),
(49, 29, 'muc gim 2.jpg', NULL, NULL),
(50, 30, 'viêt quất.jpg', NULL, NULL),
(51, 30, 'việt quất 1.jpg', NULL, NULL),
(52, 30, 'viet quất 2.jpg', NULL, NULL),
(53, 31, 'bánh quy.jpg', NULL, NULL),
(54, 31, 'bánh quy 1.jpg', NULL, NULL),
(55, 31, 'bánh quy 2.jpg', NULL, NULL),
(56, 32, 'keo xí muội 1.jpg', NULL, NULL),
(57, 32, 'kẹo xí muội 2.jpg', NULL, NULL),
(58, 32, 'keo xí muội.jpg', NULL, NULL),
(59, 33, 'xốt.jpg', NULL, NULL),
(60, 33, 'xốt 1.jpg', NULL, NULL),
(61, 33, 'xốt 2.jpg', NULL, NULL),
(62, 35, 'cánh gà.jpg', NULL, NULL),
(63, 35, 'cánh gà 1.jpg', NULL, NULL),
(64, 35, 'cánh gà 2.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id_KH` int(10) UNSIGNED NOT NULL,
  `HoTenKH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `MatKhau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_AD`);

--
-- Chỉ mục cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id_admin_roles`),
  ADD KEY `admin_id_AD` (`admin_id_AD`,`roles_id_Roles`),
  ADD KEY `roles_id_Roles` (`roles_id_Roles`);

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id_BaiViet`),
  ADD KEY `id_DanhMucBaiViet` (`id_DanhMucBaiViet`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id_CTHD`),
  ADD KEY `id_HD` (`id_HD`,`id_SanPham`),
  ADD KEY `id_SanPham` (`id_SanPham`);

--
-- Chỉ mục cho bảng `danhmucbaiviet`
--
ALTER TABLE `danhmucbaiviet`
  ADD PRIMARY KEY (`id_DanhMucBaiViet`);

--
-- Chỉ mục cho bảng `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
  ADD PRIMARY KEY (`id_DanhMuc`);

--
-- Chỉ mục cho bảng `dathang`
--
ALTER TABLE `dathang`
  ADD PRIMARY KEY (`id_DH`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id_HD`),
  ADD KEY `id_KH` (`id_KH`,`id_TT`,`id_DH`),
  ADD KEY `hoadon_ibfk_3` (`id_DH`),
  ADD KEY `hoadon_ibfk_4` (`id_TT`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id_KH`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_Roles`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_SanPham`),
  ADD KEY `id_DanhMuc` (`id_DanhMuc`),
  ADD KEY `id_DanhMuc_2` (`id_DanhMuc`);

--
-- Chỉ mục cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD PRIMARY KEY (`id_TT`);

--
-- Chỉ mục cho bảng `thuvienhinhanh`
--
ALTER TABLE `thuvienhinhanh`
  ADD PRIMARY KEY (`id_HinhAnh`),
  ADD KEY `id_SanPham` (`id_SanPham`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_KH`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id_AD` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id_admin_roles` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `id_BaiViet` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id_CTHD` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `danhmucbaiviet`
--
ALTER TABLE `danhmucbaiviet`
  MODIFY `id_DanhMucBaiViet` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
  MODIFY `id_DanhMuc` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `dathang`
--
ALTER TABLE `dathang`
  MODIFY `id_DH` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id_HD` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id_KH` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id_Roles` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_SanPham` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  MODIFY `id_TT` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `thuvienhinhanh`
--
ALTER TABLE `thuvienhinhanh`
  MODIFY `id_HinhAnh` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id_KH` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_ibfk_1` FOREIGN KEY (`admin_id_AD`) REFERENCES `admin` (`id_AD`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `admin_roles_ibfk_2` FOREIGN KEY (`roles_id_Roles`) REFERENCES `roles` (`id_Roles`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `baiviet_ibfk_1` FOREIGN KEY (`id_DanhMucBaiViet`) REFERENCES `danhmucbaiviet` (`id_DanhMucBaiViet`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`id_SanPham`) REFERENCES `sanpham` (`id_SanPham`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`id_DanhMuc`) REFERENCES `danhmucsanpham` (`id_DanhMuc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `thuvienhinhanh`
--
ALTER TABLE `thuvienhinhanh`
  ADD CONSTRAINT `thuvienhinhanh_ibfk_1` FOREIGN KEY (`id_SanPham`) REFERENCES `sanpham` (`id_SanPham`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
