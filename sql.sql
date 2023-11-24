-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 05, 2023 lúc 09:41 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ecomex`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chiphi`
--

CREATE TABLE `chiphi` (
  `id` int(11) NOT NULL,
  `time` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chiphi`
--

INSERT INTO `chiphi` (`id`, `time`, `price`, `content`) VALUES
(2, '2023:08:27 23:44:31', 1000, '1'),
(3, '2023/09/02', 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `daily_order`
--

CREATE TABLE `daily_order` (
  `id` int(11) NOT NULL,
  `time` varchar(255) NOT NULL,
  `all_order` int(11) NOT NULL,
  `new_order` int(11) NOT NULL,
  `label_order` int(11) NOT NULL,
  `transporting_order` int(11) NOT NULL,
  `ship_order` int(11) NOT NULL,
  `done_order` int(11) NOT NULL,
  `return_order` int(11) NOT NULL,
  `cancel_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `daily_order`
--

INSERT INTO `daily_order` (`id`, `time`, `all_order`, `new_order`, `label_order`, `transporting_order`, `ship_order`, `done_order`, `return_order`, `cancel_order`) VALUES
(1, '2023/08/22', 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2023/08/25', 3, 0, 0, 0, 0, 1, 1, 1),
(3, '2023/08/26', 1, 0, 0, 0, 1, 0, 0, 0),
(4, '2023/08/27', 6, 5, 1, 0, 0, 0, 0, 0),
(5, '2023/08/28', 0, 0, 0, 0, 0, 0, 0, 0),
(6, '2023/08/30', 2, 2, 0, 0, 0, 0, 0, 0),
(7, '2023/08/31', 0, 0, 0, 0, 0, 0, 0, 0),
(8, '2023/09/01', 0, 0, 0, 0, 0, 0, 0, 0),
(9, '2023/09/02', 0, 0, 0, 0, 0, 0, 0, 0),
(10, '2023/09/03', 0, 0, 0, 0, 0, 0, 0, 0),
(11, '2023/09/04', 1, 0, 0, 0, 0, 0, 0, 0),
(12, '2023/09/05', 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `recipient` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_read` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `messages`
--

INSERT INTO `messages` (`id`, `sender`, `recipient`, `message`, `created_at`, `is_read`) VALUES
(1, 'ADMIN', 'Nam', 'Hello', '2023-09-02 22:42:17', 1),
(2, 'Nam', 'ADMIN', 'Ơi', '2023-09-02 22:42:25', 1),
(3, 'Nam', 'ADMIN', 'Ano', '2023-09-02 22:42:31', 1),
(4, 'Nam', 'ADMIN', 'aa', '2023-09-02 22:45:54', 1),
(5, 'Nam', 'ADMIN', '123456', '2023-09-02 22:45:59', 1),
(6, 'Nam', 'ADMIN', '1', '2023-09-02 22:49:03', 1),
(7, 'Nam', 'ADMIN', 'ALo', '2023-09-03 07:49:15', 1),
(8, 'Nam', 'ADMIN', '1', '2023-09-03 07:54:38', 1),
(9, 'Nam', 'ADMIN', 'Ê', '2023-09-03 07:58:55', 1),
(10, 'ADMIN', 'ADMIN', 'Ơi', '2023-09-03 07:59:06', 1),
(11, 'ADMIN', 'Nam', 'Ơi', '2023-09-03 07:59:16', 1),
(12, 'Nam', 'ADMIN', ',', '2023-09-03 08:04:37', 1),
(13, 'ADMIN', 'Nam', '.', '2023-09-03 08:04:56', 1),
(14, 'Nam', 'ADMIN', 'Ê', '2023-09-03 08:12:54', 1),
(15, 'Nam', 'ADMIN', 'e', '2023-09-03 08:16:55', 1),
(16, 'Nam', 'ADMIN', '1', '2023-09-03 08:21:46', 1),
(17, 'Nam', 'ADMIN', '1', '2023-09-03 08:22:14', 1),
(18, 'Nam', 'ADMIN', 'Alo', '2023-09-03 08:31:17', 1),
(19, 'Nam', 'ADMIN', '1', '2023-09-03 08:33:30', 1),
(20, 'Nam', 'ADMIN', '1', '2023-09-03 08:36:39', 1),
(21, 'Nam', 'ADMIN', 'q', '2023-09-03 10:27:56', 1),
(22, 'Nam', 'ADMIN', '3', '2023-09-03 10:28:22', 1),
(23, 'ADMIN', 'ADMIN', '111', '2023-09-03 10:54:11', 1),
(24, 'ADMIN', 'ADMIN', '123', '2023-09-03 11:02:19', 1),
(25, 'Manh Ecomex', 'ADMIN', '1', '2023-09-03 11:05:33', 1),
(26, 'Manh Ecomex', 'ADMIN', '1', '2023-09-03 11:05:42', 1),
(27, 'Manh Ecomex', 'ADMIN', '1', '2023-09-03 11:05:49', 1),
(28, 'Manh Ecomex', 'ADMIN', '2', '2023-09-03 11:15:24', 1),
(29, 'Manh Ecomex', 'ADMIN', '3', '2023-09-03 11:15:30', 1),
(30, 'Manh Ecomex', 'ADMIN', '4', '2023-09-03 11:15:35', 1),
(31, 'Manh Ecomex', 'ADMIN', '2', '2023-09-03 11:20:14', 1),
(32, 'Manh Ecomex', 'ADMIN', '3', '2023-09-03 11:21:31', 1),
(33, 'Trang Vi', 'ADMIN', '5', '2023-09-03 11:21:42', 1),
(34, 'Manh Ecomex', 'ADMIN', '1', '2023-09-03 11:22:26', 1),
(35, 'Manh Ecomex', 'ADMIN', '1', '2023-09-03 11:22:59', 1),
(36, 'Trang Vi', 'ADMIN', '2', '2023-09-03 11:23:43', 1),
(37, 'Manh Ecomex', 'ADMIN', '2', '2023-09-03 12:56:15', 1),
(38, 'ADMIN', 'Manh Ecomex', '2', '2023-09-03 12:58:42', 1),
(39, 'Nam', 'ADMIN', 'Alo', '2023-09-03 13:09:58', 1),
(40, 'ADMIN', 'Nam', 'Ola', '2023-09-03 13:10:09', 1),
(41, 'ADMIN', 'Nam', 'Alo', '2023-09-03 13:10:17', 1),
(42, 'ADMIN', 'Nam', '1', '2023-09-03 13:11:10', 1),
(43, 'ADMIN', 'Manh Ecomex', '222', '2023-09-03 13:14:01', 1),
(44, 'ADMIN', 'Nam', '1', '2023-09-03 13:14:07', 1),
(45, 'ADMIN', 'Nam', '2', '2023-09-03 13:14:24', 1),
(46, 'ADMIN', 'Quang Anh', '1', '2023-09-03 13:24:16', 1),
(47, 'ADMIN', 'Nam', '2', '2023-09-03 13:24:21', 1),
(48, 'Quang Anh', 'ADMIN', '2', '2023-09-03 19:48:01', 1),
(49, 'ADMIN', 'Quang Anh', '3', '2023-09-03 19:48:11', 1),
(50, 'Quang Anh', 'ADMIN', '4', '2023-09-03 19:48:18', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oder`
--

CREATE TABLE `oder` (
  `idOrder` varchar(255) NOT NULL,
  `name_user` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `delivery_time` varchar(255) NOT NULL,
  `ship_time` varchar(255) NOT NULL,
  `time_dukien` int(11) NOT NULL,
  `name_creater` varchar(255) NOT NULL,
  `name_consignee` varchar(255) NOT NULL,
  `address_consignee` varchar(255) NOT NULL,
  `phone_consignee` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `name_product` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `length` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `weight` float NOT NULL,
  `dim` float NOT NULL,
  `fee` int(11) NOT NULL,
  `disscount` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `tracking_number` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `payment` varchar(255) NOT NULL,
  `trangthai` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oder`
--

INSERT INTO `oder` (`idOrder`, `name_user`, `time`, `delivery_time`, `ship_time`, `time_dukien`, `name_creater`, `name_consignee`, `address_consignee`, `phone_consignee`, `country`, `state`, `city`, `zipcode`, `name_product`, `quantity`, `service`, `length`, `width`, `height`, `weight`, `dim`, `fee`, `disscount`, `price`, `tracking_number`, `status`, `payment`, `trangthai`, `id`) VALUES
('230827112032', 'Mạnh Oliver', '2023-08-27 23:20:32', '', '1693154024', 2629746, 'ADMIN', 'Người nhận', '2', '2', '2', '2', '2', '2', '2', '2', 'Epacket-USA', 2, 2, 2, 2, 2, 0, 0, 150000, '', 1, '0', 8, 1),
('2309040537540', 'Nam', '2023/09/04 17:37:54', '', '1693154024', 123456789, 'Nam', '1', '2', '', '6', '4', '3', '5', '', '7', '', 0, 0, 0, 0, 0, 0, 0, 0, '', 1, '1', 8, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pdf_data`
--

CREATE TABLE `pdf_data` (
  `id` int(50) NOT NULL,
  `idOrder` varchar(255) NOT NULL,
  `filename` varchar(300) NOT NULL,
  `time` varchar(255) NOT NULL,
  `name_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `time` varchar(255) NOT NULL,
  `doanh_thu` int(11) NOT NULL,
  `chi_phi` int(11) NOT NULL,
  `loi_nhuan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `report`
--

INSERT INTO `report` (`id`, `time`, `doanh_thu`, `chi_phi`, `loi_nhuan`) VALUES
(1, '2023:07:22', 10000, 5000, 5000),
(2, '2023:08:25', 15000, 7000, 8000),
(3, '2023:10:26', 99000, 15000, 84000),
(4, '2023:09:27', 10000, 3000, 7000),
(5, '2023:11:27', 50000, 30000, 20000),
(6, '2023:08:27', 0, 1000, -1000),
(7, '2023:08:28', 0, 0, 0),
(8, '2023:08:30', 0, 0, 0),
(9, '2023:08:31', 0, 0, 0),
(10, '2023:09:01', 0, 0, 0),
(11, '2023:09:02', 0, 0, 0),
(12, '2023:09:03', 0, 0, 0),
(13, '2023:09:04', 0, 0, 0),
(14, '2023:09:05', 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `weight_from` float NOT NULL,
  `weight_to` float NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`id`, `name`, `weight_from`, `weight_to`, `price`) VALUES
(51, 'Epacket', 0, 51, 150000),
(52, 'Epacket-USA', 0, 1000, 150000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongbao`
--

CREATE TABLE `thongbao` (
  `id` int(11) NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `noidung` varchar(10000) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quyen` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thongbao`
--

INSERT INTO `thongbao` (`id`, `tieude`, `time`, `noidung`, `image`, `quyen`) VALUES
(1, 'Thông báo về bão', '2023:09:02 15:44:22', 'Bão số 3 Saola sáng nay đã đi vùng biển tỉnh Quảng Đông, Trung Quốc. Tuy không ảnh hưởng trực tiếp đến đất liền nước ta, nhưng tàu thuyền trên biển cần đề phòng sóng to, gió lớn.\r\nTrưa nay (2/9), Trung tâm dự báo khí tượng thủy văn quốc gia cập nhật tình hình bão số 3 (bão Saola). Cụ thể, đến 10h sáng, vị trí tâm bão ở vào khoảng 21,6 độ Vĩ Bắc; 112,2 độ Kinh Đông, trên vùng biển phía Tây Nam tỉnh Quảng Đông (Trung Quốc).\r\n\r\nSức gió mạnh nhất vùng gần tâm bão giảm còn cấp 11 (103-117km/h), giật cấp 13, di chuyển theo hướng Tây, tốc độ 10 km/h. ', '../../uploads/0.jpg', 2),
(46, '2', '2023:09:05 00:13:48', '2', '../../uploads/0.jpg', 2),
(48, '2', '2023:09:05 04:44:02', '2', '../../uploads/thv.jpg', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `password` varchar(30) NOT NULL,
  `phone` varchar(20) CHARACTER SET utf16 NOT NULL,
  `email` varchar(255) CHARACTER SET utf32 NOT NULL,
  `quyen` int(10) NOT NULL,
  `name_creater` varchar(255) NOT NULL,
  `hint` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `avatar`, `password`, `phone`, `email`, `quyen`, `name_creater`, `hint`) VALUES
(1, 'admin', 'ADMIN', '../../uploads/1.jpg', '123456', '0334079644', 'maccthienndii@gmail.com', 1, '', ''),
(40, 'khach', 'Nam', '../../uploads/0.jpg', '123456', '1', '1', 3, 'Hà Ecomex', ''),
(41, 'nhanvien', 'Manh Ecomex', '../../uploads/0.jpg', '123456', '1', '1', 2, '', ''),
(42, 'nhanvien2', 'Quang Anh', '../../uploads/0.jpg', '123456', '0334079644', '1', 4, '', ''),
(43, 'trangvi', 'Trang Vi', '../../uploads/0.jpg', '123456', '1', '1', 3, 'Manh', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vnpay`
--

CREATE TABLE `vnpay` (
  `id` int(11) NOT NULL,
  `name_user` varchar(255) NOT NULL,
  `idBill` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `vnp_bankcode` varchar(50) NOT NULL,
  `vnp_banktranno` varchar(100) NOT NULL,
  `vnp_cardtype` varchar(100) NOT NULL,
  `vnp_transactionno` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chiphi`
--
ALTER TABLE `chiphi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `daily_order`
--
ALTER TABLE `daily_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oder`
--
ALTER TABLE `oder`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pdf_data`
--
ALTER TABLE `pdf_data`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vnpay`
--
ALTER TABLE `vnpay`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idBill` (`idBill`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chiphi`
--
ALTER TABLE `chiphi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `daily_order`
--
ALTER TABLE `daily_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `oder`
--
ALTER TABLE `oder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `pdf_data`
--
ALTER TABLE `pdf_data`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `vnpay`
--
ALTER TABLE `vnpay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
