-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th3 29, 2018 lúc 06:48 PM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `WebsiteTinTuc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitin`
--

CREATE TABLE `loaitin` (
  `idLoaiTin` int(11) NOT NULL,
  `idTheLoai` int(11) DEFAULT NULL,
  `ten` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `tenkhongdau` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `loaitin`
--

INSERT INTO `loaitin` (`idLoaiTin`, `idTheLoai`, `ten`, `tenkhongdau`, `create_at`, `update_at`) VALUES
(1, 1, 'Giáo dục', 'Giao-Duc', '2018-03-29 04:09:35', '0000-00-00 00:00:00'),
(2, 1, 'Nhịp điệu trẻ', 'Nhip-Dieu-Tre', '2018-03-29 04:09:35', '0000-00-00 00:00:00'),
(3, 1, 'Du lịch', 'Du-Lich', '2018-03-29 04:10:52', '0000-00-00 00:00:00'),
(4, 1, 'Du Học', 'Du-Hoc', '2018-03-29 04:10:52', '0000-00-00 00:00:00'),
(5, 2, 'Cuộc sống đó đây', 'Cuoc-Song-Do-Day', '2018-03-29 04:13:37', '0000-00-00 00:00:00'),
(6, 2, 'Ảnh', 'Anh', '2018-03-29 04:13:37', '0000-00-00 00:00:00'),
(7, 2, 'Người Việt 5 Châu', 'Nguoi-Viet-5-Chau', '2018-03-29 04:15:11', '0000-00-00 00:00:00'),
(8, 2, 'Phân tích', 'Phan-Tich', '2018-03-29 04:15:11', '0000-00-00 00:00:00'),
(9, 3, 'Chứng khoán', 'Chung-Khoan', '2018-03-29 04:16:12', '0000-00-00 00:00:00'),
(10, 3, 'Bất động sản', 'Bat-dong-san', '2018-03-29 04:16:12', '0000-00-00 00:00:00'),
(11, 3, 'Doanh nhân', 'Doanh-Nhan', '2018-03-29 04:17:14', '0000-00-00 00:00:00'),
(12, 3, 'Quốc Tế', 'Quoc-Te', '2018-03-29 04:17:14', '0000-00-00 00:00:00'),
(13, 3, 'Mua sắm', 'Mua-Sam', '2018-03-29 04:18:20', '0000-00-00 00:00:00'),
(14, 3, 'Doanh Nghiệp Viết', 'Doanh-Nghiep-Viet', '2018-03-29 04:18:20', '0000-00-00 00:00:00'),
(15, 4, 'Hoa Hậu', 'Hoa-Hau', '2018-03-29 04:19:50', '0000-00-00 00:00:00'),
(16, 4, 'Nghệ Sỹ', 'Nghe-Sy', '2018-03-29 04:19:50', '0000-00-00 00:00:00'),
(17, 4, 'Âm Nhạc', 'Am-Nhac', '2018-03-29 04:20:52', '0000-00-00 00:00:00'),
(18, 4, 'Thời Trang', 'Thoi-Trang', '2018-03-29 04:20:52', '0000-00-00 00:00:00'),
(19, 4, 'Điện Ảnh', 'Dien-Anh', '2018-03-29 04:21:48', '0000-00-00 00:00:00'),
(20, 4, 'Mỹ Thuật', 'My-Thuat', '2018-03-29 04:21:48', '0000-00-00 00:00:00'),
(21, 5, 'Thể Thao', 'The-Thao', '2018-03-29 04:22:25', '0000-00-00 00:00:00'),
(22, 5, 'Văn Hoá', 'Van-Hoa', '2018-03-29 04:22:25', '0000-00-00 00:00:00'),
(23, 5, 'Chân Dung', 'Chan-Dung', '2018-03-29 04:23:17', '0000-00-00 00:00:00'),
(24, 5, 'Ảnh ', 'Anh', '2018-03-29 04:23:17', '0000-00-00 00:00:00'),
(25, 6, 'Hình Sự', 'Hinh-Su', '2018-03-29 04:23:53', '0000-00-00 00:00:00'),
(26, 6, 'Kí Sự', 'Ki-Su', '2018-03-29 04:25:24', '0000-00-00 00:00:00'),
(27, 6, 'Tư Vấn', 'Tu-Van', '2018-03-29 04:25:24', '0000-00-00 00:00:00'),
(28, 7, 'Gia đình', 'Gia-Dinh', '2018-03-29 04:30:22', '0000-00-00 00:00:00'),
(29, 7, 'Sức khoẻ', 'Suc-Khoe', '2018-03-29 04:30:22', '0000-00-00 00:00:00'),
(30, 7, 'Ẩm Thực', 'Am-Thuc', '2018-03-29 04:31:29', '0000-00-00 00:00:00'),
(31, 7, 'Làm Đẹp', 'Lam-Dep', '2018-03-29 04:31:29', '0000-00-00 00:00:00'),
(32, 7, 'Cửa Sổ Blog', 'Cua-So-Blog', '2018-03-29 04:34:47', '0000-00-00 00:00:00'),
(33, 8, 'Môi Trường', 'Moi-Truong', '2018-03-29 04:34:47', '0000-00-00 00:00:00'),
(34, 8, 'Thiên Nhiên', 'Thien-Nhien', '2018-03-29 04:35:50', '0000-00-00 00:00:00'),
(35, 8, 'Ảnh', 'Anh', '2018-03-29 04:35:50', '0000-00-00 00:00:00'),
(36, 8, 'Công Nghệ Mới', 'Cong-Nghe-Moi', '2018-03-29 04:37:30', '0000-00-00 00:00:00'),
(37, 9, 'Sản Phẩm Mới', 'San-Pham-Moi', '2018-03-29 04:37:30', '0000-00-00 00:00:00'),
(38, 9, 'Kinh Nghiệm', 'Kinh-Nghiem', '2018-03-29 04:38:45', '0000-00-00 00:00:00'),
(39, 9, 'Giải Trí', 'Giai-Tri', '2018-03-29 04:38:45', '0000-00-00 00:00:00'),
(40, 9, 'Hacker & Virus', 'Hacker---Virus', '2018-03-29 04:39:32', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `idSlide` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `hinh` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `idTheLoai` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `tenkhongdau` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`idTheLoai`, `ten`, `tenkhongdau`, `create_at`, `update_at`) VALUES
(1, 'Xã hội', 'Xa-Hoi', '2018-03-29 03:54:32', '0000-00-00 00:00:00'),
(2, 'Thế giới', 'The-Gioi', '2018-03-29 03:55:04', '0000-00-00 00:00:00'),
(3, 'Kinh doanh', 'Kinh-Doanh', '2018-03-29 03:55:25', '0000-00-00 00:00:00'),
(4, 'Văn hoá', 'Van-Hoa', '2018-03-29 03:56:06', '0000-00-00 00:00:00'),
(5, 'Thể thao', 'The-Thao', '2018-03-29 03:56:06', '0000-00-00 00:00:00'),
(6, 'Pháp Luật', 'Phap-Luat', '2018-03-29 03:57:34', '0000-00-00 00:00:00'),
(7, 'Đời Sống', 'Doi-Song', '2018-03-29 03:57:34', '0000-00-00 00:00:00'),
(8, 'Khoa Học', 'Khoa-Hoc', '2018-03-29 03:58:14', '0000-00-00 00:00:00'),
(9, 'Vi Tính', 'Vi-Tinh', '2018-03-29 03:58:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `idTinTuc` int(11) NOT NULL,
  `tieude` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `tieudekhongdau` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `tomtat` text COLLATE utf8_vietnamese_ci,
  `noidung` longtext COLLATE utf8_vietnamese_ci,
  `hinh` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `noibat` int(11) DEFAULT NULL,
  `soluotxem` int(11) DEFAULT NULL,
  `idLoaiTin` int(11) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`idUser`, `name`, `email`, `password`, `create_at`, `update_at`) VALUES
(1, 'Nguyễn Việt Hùng', 'hungnv@wru.vn', '123456', '2018-03-29 03:20:12', '0000-00-00 00:00:00'),
(2, 'Lý Tuấn Linh', 'linhlt52@wru.vn', '654321', '2018-03-29 03:20:56', '0000-00-00 00:00:00'),
(3, 'Đào Đức Anh', 'anhdd52@wru.vn', '321654', '2018-03-29 03:21:54', '0000-00-00 00:00:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `loaitin`
--
ALTER TABLE `loaitin`
  ADD PRIMARY KEY (`idLoaiTin`),
  ADD KEY `idTheLoai` (`idTheLoai`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`idSlide`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`idTheLoai`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`idTinTuc`),
  ADD KEY `idLoaiTin` (`idLoaiTin`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `loaitin`
--
ALTER TABLE `loaitin`
  ADD CONSTRAINT `loaitin_ibfk_1` FOREIGN KEY (`idTheLoai`) REFERENCES `theloai` (`idTheLoai`);

--
-- Các ràng buộc cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `tintuc_ibfk_1` FOREIGN KEY (`idLoaiTin`) REFERENCES `loaitin` (`idLoaiTin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
