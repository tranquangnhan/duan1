-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 05, 2020 lúc 04:26 AM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thuexe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `id` int(12) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iddm` int(12) NOT NULL,
  `date` datetime DEFAULT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `tacgia` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tag` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`id`, `name`, `img`, `iddm`, `date`, `noidung`, `tacgia`, `tag`, `mota`, `public`) VALUES
(3, 'bảng giá mới nhất', 'blog1.webp', 1, '2020-10-18 11:35:05', 'bảng giá mới nhất', 'Quang Nhân', 'xedep', 'bảng giá mới nhất', 1),
(4, 'bảng giá mới nhất', 'blog2.webp', 1, '2020-10-19 04:00:50', '<p>a</p>\r\n\r\n<div class=\"eJOY__extension_root_class\" id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>\r\n', 'Quang Nhân', 'xedep', 'bảng giá mới nhất', 1),
(5, '<p>19&nbsp;đ&atilde; c&oacute; xe ri&ecirc;ng nh&agrave; YG Somi đ&atilde; tậu được si&ecirc;u xế Lamborghini 20 tỷ chẳng cần đắn đo!</p>\r\n', 'blog3.webp', 1, '2020-10-18 11:46:08', '<p>19&nbsp;đ&atilde; c&oacute; xe ri&ecirc;ng nh&agrave; YG Somi đ&atilde; tậu được si&ecirc;u xế Lamborghini 20 tỷ chẳng cần đắn đo!</p>\r\n', 'Quang Nhân', 'gaixinh', '<p>19&nbsp;đ&atilde; c&oacute; xe ri&ecirc;ng nh&agrave; YG Somi đ&atilde; tậu được si&ecirc;u xế Lamborghini 20 tỷ chẳng cần đắn đo!</p>\r\n', 1),
(6, '<p>Lak Sira, 22 tuổi, l&agrave; một doanh nh&acirc;n ở London, kiếm được 200.000 bảng Anh/năm nhờ thương mại điện tử. Anh đ&atilde; t&iacute;ch g&oacute;p suốt một thời gian d&agrave;i để mua được si&ecirc;u xe&nbsp;Lamborghini Gallardo trị gi&aacute; 125', 'blog4.webp', 1, '2020-10-18 11:54:11', '<p>Lak Sira, 22 tuổi, l&agrave; một doanh nh&acirc;n ở London, kiếm được 200.000 bảng Anh/năm nhờ thương mại điện tử. Anh đ&atilde; t&iacute;ch g&oacute;p suốt một thời gian d&agrave;i để mua được si&ecirc;u xe&nbsp;Lamborghini Gallardo trị gi&aacute; 125.000 bảng, đem mạ v&agrave;ng tốn th&ecirc;m 12.000 bảng. Mới đ&acirc;y, Lak c&ograve;n đem xe giao cho một gara ở London thực hiện g&oacute;i bảo dưỡng với gi&aacute; 10.000 bảng. Như vậy, tổng số tiền bỏ ra cho xế hộp c&oacute; thể l&ecirc;n đến 147.000 bảng, tương đương 4,5 tỷ đồng.</p>\r\n', 'Quang Nhân', 'xedep', '<p>Lak Sira, 22 tuổi, l&agrave; một doanh nh&acirc;n ở London, kiếm được 200.000 bảng Anh/năm nhờ thương mại điện tử. Anh đ&atilde; t&iacute;ch g&oacute;p suốt một thời gian d&agrave;i để mua được si&ecirc;u xe&nbsp;Lamborghini Gallardo trị gi&aacute; 125', 1),
(7, '<h1>Ngắm nh&igrave;n bức ảnh được thực hiện trong 2 năm, chụp chiếc Lamborghini 2 triệu USD bị th&aacute;o ra cả ngh&igrave;n mảnh</h1>\r\n\r\n<div class=\"eJOY__extension_root_class\" id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>\r\n', 'blog5.jpg', 1, '2020-10-18 11:56:29', '<h1>Ngắm nh&igrave;n bức ảnh được thực hiện trong 2 năm, chụp chiếc Lamborghini 2 triệu USD bị th&aacute;o ra cả ngh&igrave;n mảnh</h1>\r\n\r\n<div class=\"eJOY__extension_root_class\" id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>\r\n', 'Quang Nhân', 'xedep', '<h1>Ngắm nh&igrave;n bức ảnh được thực hiện trong 2 năm, chụp chiếc Lamborghini 2 triệu USD bị th&aacute;o ra cả ngh&igrave;n mảnh</h1>\r\n\r\n<div class=\\\"eJOY__extension_root_class\\\" id=\\\"eJOY__extension_root\\\" style=\\\"all:unset\\\">&nbsp;</div>\r\n', 1),
(8, 'bảng giá mới nhất', 'blog6.webp', 1, '2020-10-19 04:00:41', '<p>a</p>\r\n\r\n<div class=\"eJOY__extension_root_class\" id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>\r\n', 'Quang Nhân', 'xedep', 'bảng giá mới nhất', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(12) NOT NULL,
  `star` tinyint(1) NOT NULL DEFAULT 5,
  `iduser` int(12) NOT NULL,
  `idsp` int(12) DEFAULT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `star`, `iduser`, `idsp`, `noidung`, `trangthai`) VALUES
(1, 4, 2, 14, 'a', 1),
(2, 5, 2, 14, 'a', 1),
(3, 5, 2, 14, 'good đó e trai ơi\n', 1),
(4, 5, 2, 14, 'goood đó', 1),
(5, 4, 2, 14, 'đẹp à', 1),
(6, 1, 2, 14, '', 1),
(7, 5, 2, 14, '', 1),
(8, 5, 2, 14, '', 1),
(9, 5, 2, 19, 'good mà', 1),
(10, 5, 2, 15, 'Xe đẹp', 1),
(11, 5, 9, 16, 'gg', 1),
(12, 5, 9, 16, 'aa', 1),
(13, 5, 9, 16, 'trần đại quang', 1),
(19, 3, 9, 19, 'nhân đẹp trai', 1),
(20, 5, 2147483647, 16, 'gg', 1),
(21, 5, 2147483647, 16, 'âdasáââsd', 1),
(22, 4, 13, 16, 'Sản phẩm rất chất lượng, chúng tôi rất ưng ý về sản phẩm trên', 1),
(23, 5, 13, 16, 'Sản phẩm rất chất lượng, chúng tôi rất ưng ý về sản phẩm trên', 1),
(24, 5, 13, 16, 'thầy đẹp trai', 1),
(25, 5, 2147483647, 26, 'action', 1),
(26, 5, 2147483647, 26, 'nhân đẹp trai', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(12) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thutu` int(1) NOT NULL,
  `anhien` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`, `thutu`, `anhien`) VALUES
(3, 'isuze', 2, 1),
(8, 'mercedes', 3, 1),
(20, 'audi', 1, 1),
(21, 'lamborghini', 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dmbaiviet`
--

CREATE TABLE `dmbaiviet` (
  `id` int(12) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dmbaiviet`
--

INSERT INTO `dmbaiviet` (`id`, `name`) VALUES
(1, 'mercedes'),
(2, 'lamborghini');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(12) NOT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0,
  `pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kichhoat` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodienthoai` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thanhpho` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quocgia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `randomkey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id`, `user`, `role`, `pass`, `kichhoat`, `email`, `sodienthoai`, `diachi`, `thanhpho`, `quocgia`, `randomkey`) VALUES
(1, 'admin', 1, '111111', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'user', 0, '222222', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'user123', 0, '1', 0, 'nhantqps11719@fpt.edu.vn', NULL, NULL, NULL, NULL, '11f9e78e4899a78dedd439fc583b6693'),
(30, 'nhan112', 0, '1', 0, 'nhantqps11719@fpt.edu.vn', NULL, NULL, NULL, NULL, '2087b5f48a2adb0ddc00a34918ace5b4'),
(31, 'nhan', 0, '1', 0, 'nhantqps117191@fpt.edu.vn', NULL, NULL, NULL, NULL, '4133f94980475d366f17b117fdc34135'),
(32, 'nhan112', 0, '1', 0, 'tranquangnhan16066@gmail.com', NULL, NULL, NULL, NULL, '30cf2dddf89372cece51b60959c12320');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(12) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iddm` int(12) NOT NULL,
  `namsanxuat` date DEFAULT NULL,
  `gia` float(10,2) NOT NULL,
  `giamgia` float(10,2) NOT NULL DEFAULT 0.00,
  `nhienlieu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chongoi` int(5) DEFAULT 4,
  `maylanh` tinyint(1) DEFAULT 1,
  `bocungphanh` tinyint(1) DEFAULT 1,
  `trodien` tinyint(1) DEFAULT 1,
  `tuikhi` tinyint(1) DEFAULT 1,
  `daucd` tinyint(1) DEFAULT 1,
  `noibat` tinyint(1) DEFAULT 0,
  `luotxem` int(12) DEFAULT 0,
  `soluong` int(10) DEFAULT NULL,
  `video` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `anhien` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `slug`, `img`, `iddm`, `namsanxuat`, `gia`, `giamgia`, `nhienlieu`, `chongoi`, `maylanh`, `bocungphanh`, `trodien`, `tuikhi`, `daucd`, `noibat`, `luotxem`, `soluong`, `video`, `mota`, `anhien`) VALUES
(11, 'Audi A3 Convertible', 'audi-a3-convertible', '1.png', 20, '2020-10-14', 3.00, 10.00, 'Xăng', 5, 1, 1, 1, 1, 1, 1, 1000, 1, 'https://www.youtube.com/embed/dNZ7ERSAXCk', 'Audi A3 Convertible. &nbsp; &nbsp; &nbsp; &nbsp;', 1),
(12, 'Audi A3 Sedan', 'audi-a3-sedan', '2.png', 20, '2020-10-14', 50.00, 10.00, 'Xăng', 4, 1, 1, 1, 1, 1, 1, 1000, 1, 'https://www.youtube.com/embed/1CMsM3_f5EI', '&nbsp; &nbsp;Audi A3 Sedan.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n\r\n&nbsp;', 1),
(13, 'Audi A4 Sedan', 'audi-a4-sedan', '3.png', 20, '2020-10-14', 50.00, 15.00, 'Xăng', 7, 1, 1, 1, 1, 1, 1, 6000, 3, 'https://www.youtube.com/embed/fPoTCZopqjU', 'Audi A4 Sedan &nbsp; &nbsp; &nbsp; &nbsp;\r\n\r\n&nbsp;', 1),
(14, 'Audi A5 Convertible', 'audi-a5-convertible', '4.png', 3, '2020-10-14', 1.00, 15.00, 'Xăng', 7, 1, 1, 1, 1, 1, 1, 5000, 3, 'https://www.youtube.com/embed/KKVGawwGxm4', 'Audi A5 Convertible &nbsp; &nbsp; &nbsp; &nbsp;\r\n\r\n&nbsp;', 1),
(15, 'Audi A5 Coupe', 'audi-a5-coupe', '5.png', 3, '2020-10-07', 500.00, 17.00, 'Xăng', 4, 1, 1, 1, 1, 1, 1, 7000, 5, 'https://www.youtube.com/embed/JYWz2ZAgbpo', 'Audi A5 Coupe &nbsp; &nbsp; &nbsp; &nbsp;\r\n\r\n&nbsp;', 1),
(16, 'Audi A6 Sedan', 'audi-a6-sedan', '6.png', 20, '2020-10-14', 500.00, 7.00, 'Xăng', 4, 1, 1, 1, 1, 1, 1, 8000, 4, 'https://www.youtube.com/embed/hoo95UFh7Vs', 'Audi A6 Sedan &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n\r\n&nbsp;', 1),
(17, 'Lamborghini Urus', 'lamborghini-urus', '7.png', 21, '2020-10-14', 1.00, 10.00, 'Điện', 7, 1, 1, 1, 1, 1, 0, 56000, 1, 'https://www.youtube.com/embed/Xo1pEPoYi8Y', 'Lamborghini Urus &nbsp; &nbsp; &nbsp; &nbsp;\r\n\r\n&nbsp;', 1),
(18, 'Lamborghini Huracan', 'lamborghini-huracan', '8.png', 21, '2020-10-14', 3.00, 15.00, 'Xăng', 7, 1, 1, 1, 1, 1, 0, 60000, 3, 'https://www.youtube.com/embed/2rN5wjqwf1U', 'Lamborghini Huracan &nbsp; &nbsp; &nbsp;\r\n\r\n&nbsp;', 1),
(19, 'Lamborghini Aventador S', 'lamborghini-aventador-s', '9.png', 21, '2020-10-14', 568.00, 14.00, 'Xăng', 7, 1, 1, 1, 1, 1, 0, 1000, 1, 'https://www.youtube.com/embed/8j_Oef0mN80', 'Lamborghini Aventador S &nbsp; &nbsp; &nbsp;', 1),
(20, 'Lamborghini Aventador LP', 'lamborghini-aventador-lp', '10.png', 21, '2020-10-14', 500.00, 10.00, 'Dầu', 12, 1, 1, 1, 1, 1, 0, 1555, 4, 'https://www.youtube.com/embed/vEvBbNe3rqU', 'Lamborghini Aventador LP &nbsp; &nbsp; &nbsp;\r\n\r\n&nbsp;', 1),
(21, 'Lamborghini Huracan', 'lamborghini-huracan', '11.png', 21, '2020-10-14', 50.00, 14.00, 'Dầu', 7, 1, 1, 1, 1, 1, 0, 6000, 1, 'https://www.youtube.com/embed/2rN5wjqwf1U', 'Lamborghini&nbsp;Huracan &nbsp; &nbsp; &nbsp;\r\n\r\n&nbsp;', 1),
(22, 'Lamborghini Aventador SVJ', 'lamborghini-aventador-svj', '12.png', 21, '2020-10-14', 100.00, 12.00, 'Dầu', 7, 1, 1, 1, 1, 1, 0, 56000, 3, 'https://www.youtube.com/embed/AFXt7BLB0IM', 'Lamborghini Aventador SVJ &nbsp; &nbsp; &nbsp; &nbsp;\r\n\r\n&nbsp;', 1),
(25, 'Lamborghini huracan 2021', 'lamborghini-huracan-2021', '1.jpg', 8, '2020-10-07', 50.00, 12.00, 'Xăng', 5, 1, 1, 1, 1, 1, 1, 35555, 2, 'https://www.youtube.com/embed/KKVGawwGxm4', '&nbsp;Lamborghini Hurac&aacute;n 2021 &nbsp;', 1),
(26, 'Lamborghini Huracán 2022', 'lamborghini-huracan-2022', '2.jpg', 21, '2020-10-07', 21212.00, 12.00, 'Xăng', 5, 1, 1, 1, 1, 1, 1, 6000, 1, 'https://www.youtube.com/embed/1CMsM3_f5EI', '&nbsp;Lamborghini Hurac&aacute;n 2022\r\n\r\n&nbsp;', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_baiviet_dmbaiviet` (`iddm`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dmbaiviet`
--
ALTER TABLE `dmbaiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `dmbaiviet`
--
ALTER TABLE `dmbaiviet`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `fk_baiviet_dmbaiviet` FOREIGN KEY (`iddm`) REFERENCES `dmbaiviet` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
