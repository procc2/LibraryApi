-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 11, 2019 lúc 01:53 PM
-- Phiên bản máy phục vụ: 10.1.32-MariaDB
-- Phiên bản PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thuviendt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anpham`
--

CREATE TABLE `anpham` (
  `id_ap` int(11) UNSIGNED NOT NULL,
  `id_dm` int(11) NOT NULL,
  `ten_ap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `anh_ap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia_ap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_NXB` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thong_tin_phu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinh_trang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_muon` date NOT NULL,
  `ngay_tra` date NOT NULL,
  `dac_biet` int(11) NOT NULL,
  `chi_tiet_ap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `anpham`
--

INSERT INTO `anpham` (`id_ap`, `id_dm`, `ten_ap`, `anh_ap`, `gia_ap`, `ten_NXB`, `thong_tin_phu`, `tinh_trang`, `ngay_muon`, `ngay_tra`, `dac_biet`, `chi_tiet_ap`) VALUES
(1, 1, 'Tiếng anh', 'tienganh.jpg', '15000', 'Giáo Dục', 'Sách tiếng anh dành cho sinh vien', 'Còn sách', '2018-01-01', '2018-02-01', 0, 'Đây là sách tiếng anh dành cho sinh viên.'),
(2, 1, 'Toán cao cấp', 'toancaocap.jpg', '15000', 'Kim đồng', 'Sách toán cao cấp dành cho sinh vien', 'Còn sách', '2018-01-01', '2018-02-01', 1, 'Đây là sách toán cao cấp dành cho sinh viên.'),
(3, 1, 'Vật lý', 'vatly.jpg', '15000', 'Thanh niên', 'Sách vật lý dành cho sinh vien', 'Còn sách', '2018-01-01', '2018-02-01', 0, 'Đây là sách vật lýdành cho sinh viên.'),
(4, 1, 'Lập trình căn bản', 'laptrinhcanban.jpg', '15000', 'Giáo Dục', 'Sách lập trình dành cho sinh vien', 'Còn sách', '2018-01-01', '2018-02-01', 1, 'Đây là sách lập trình dành cho sinh viên.'),
(5, 1, 'Lập trình java', 'laptrinhjava.jpg', '15000', 'Tri thức', 'Sách lập trình java dành cho sinh vien', 'Còn sách', '2018-01-01', '2018-02-01', 1, 'Đây là sách lập trình dành cho sinh viên.'),
(6, 2, 'Mỹ thuật', 'mythuat.jpg', '15000', 'Mỹ thuật', 'Sách Mỹ thuật dành cho sinh vien', 'Còn sách', '2018-01-01', '2018-02-01', 0, 'Đây là sách mỹ thuật dành cho sinh viên.'),
(7, 2, 'Luận án', 'liluan.jpg', '15000', 'Giáo Dục', 'Luận án dành cho sinh vien', 'Còn sách', '2018-01-01', '2018-02-01', 1, 'Đây là tài liệu luận án dành cho sinh viên.'),
(9, 2, 'Kỹ năng mềm', 'kinangmem.jpg', '15000', 'Khoa học xã hội', 'Sách kỹ năng dành cho sinh vien', 'Còn sách', '2018-01-01', '2018-02-01', 0, 'Đây là sách kỹ năng dành cho sinh viên.'),
(10, 2, 'Giáo án', 'giaotrinh.jpg', '15000', 'Giáo Dục', 'Giáo án dành cho giảng viên', 'Còn sách', '2018-01-01', '2018-02-01', 0, 'Đây là giáo án dành cho giảng viên.'),
(11, 2, 'Luật', 'luat.jpg', '15000', 'Tư pháp', 'Sách luật dành cho sinh vien', 'Còn sách', '2018-01-01', '2018-02-01', 1, 'Đây là sách luật dành cho sinh viên.'),
(12, 4, 'Kĩ năng mềm', 'kinangmem.jpg', '15000', 'Giáo Dục', 'Sách tiếng anh dành cho sinh vien', 'Còn sách', '2018-01-01', '2018-02-01', 1, 'Đây là sách tiếng anh dành cho sinh viên.'),
(13, 5, 'Điện tử viễn thông', 'dtvt.png\r\n', '15000', 'Giáo Dục', 'Sách điện tử viễn thông dành cho sinh vien', 'Còn sách', '2018-01-01', '2018-02-01', 0, 'Đây là sách tiếng anh dành cho sinh viên.'),
(14, 6, 'Tiếng anh', 'tienganh.jpg', '15000', 'Giáo Dục', 'Sách tiếng anh dành cho sinh vien', 'Còn sách', '2018-01-01', '2018-02-01', 0, 'Đây là sách tiếng anh dành cho sinh viên.'),
(15, 7, 'Y tế', 'yte.jpg', '15000', 'Giáo Dục', 'Sách y tế dành cho sinh vien', 'Còn sách', '2018-01-01', '2018-02-01', 0, 'Đây là sách tiếng anh dành cho sinh viên.'),
(16, 8, 'Truyện cười', 'truyencuoi.jpg', '15000', 'Giáo Dục', 'Truyện cười dành cho sinh vien', 'Còn sách', '2018-01-01', '2018-02-01', 0, 'Đây là sách tiếng anh dành cho sinh viên.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blanpham`
--

CREATE TABLE `blanpham` (
  `id_bl` int(10) NOT NULL,
  `id_ap` int(10) NOT NULL,
  `ten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dien_thoai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `binhluan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_gio` datetime NOT NULL,
  `trang_thai_bl` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `blanpham`
--

INSERT INTO `blanpham` (`id_bl`, `id_ap`, `ten`, `dien_thoai`, `binhluan`, `ngay_gio`, `trang_thai_bl`) VALUES
(1, 5, 'Nguyễn Văn A', '1234567890', 'aaaaaa', '2018-10-24 12:08:24', 0),
(2, 11, 'Nguyen van C', '111111111111', 'Sách rất đặc sắc', '2018-10-26 09:04:56', 0),
(3, 12, 'Nguyễn văn D', '222222222222222', 'Tác phẩm rất hay', '2018-10-26 12:31:51', 0),
(4, 12, 'nguyen van p', '111111111111', 'tac pham rat hay', '2018-10-27 04:03:02', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachapdamua`
--

CREATE TABLE `danhsachapdamua` (
  `id_ap` int(10) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sachdatmua` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhsachapdamua`
--

INSERT INTO `danhsachapdamua` (`id_ap`, `email`, `sachdatmua`) VALUES
(2, 'thanhduc15997@gmail.com', 'Toán cao cấp'),
(3, 'thanhduc15997@gmail.com', 'vật lý'),
(4, 'thanhduc15997@gmail.com', 'tiếng anh'),
(5, 'thanhduc15997@gmail.com', 'Lập trình căn bản'),
(6, 'thanhduc15997@gmail.com', 'Mỹ thuật'),
(7, 'thanhduc15997@gmail.com', 'Luận án'),
(1, 'thanhduc15997@gmai.com', 'Tiếng anh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dmanpham`
--

CREATE TABLE `dmanpham` (
  `id_dm` int(10) NOT NULL,
  `ten_dm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dmanpham`
--

INSERT INTO `dmanpham` (`id_dm`, `ten_dm`) VALUES
(1, 'Giáo dục'),
(2, 'Luận Văn -Báo cáo'),
(4, 'Kỹ năng mềm'),
(5, 'Điện tử - Viễn thông'),
(6, 'Ngoại ngữ'),
(7, 'Y tế - Sức khỏe'),
(8, 'Tài liệu phổ thông'),
(9, 'Khoa học Tự nhiên'),
(10, 'điện tử');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `online_now`
--

CREATE TABLE `online_now` (
  `session` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `online_now`
--

INSERT INTO `online_now` (`session`, `time`) VALUES
('4ccj10rn80vtnfj4emrvfqjq71', 1554872550);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien`
--

CREATE TABLE `thanhvien` (
  `id_thanhvien` int(10) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quyen_truy_cap` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thanhvien`
--

INSERT INTO `thanhvien` (`id_thanhvien`, `email`, `mat_khau`, `quyen_truy_cap`) VALUES
(1, 'admin@gmail.com', 'admin', 2),
(2, 'admin1@gmail.com', 'admin1', 1),
(3, 'admin2@gmail.com', 'admin2', 1),
(4, 'admin3@gmail.com', 'admin3', 0),
(6, 'thanhduc15997@gmail.com', 'admin', 2),
(7, 'adminn@gmail.com', 'admin', 1),
(8, 'admin9@gmail.com', 'admin', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anpham`
--
ALTER TABLE `anpham`
  ADD PRIMARY KEY (`id_ap`),
  ADD KEY `id_dm` (`id_dm`);

--
-- Chỉ mục cho bảng `blanpham`
--
ALTER TABLE `blanpham`
  ADD PRIMARY KEY (`id_bl`);

--
-- Chỉ mục cho bảng `dmanpham`
--
ALTER TABLE `dmanpham`
  ADD PRIMARY KEY (`id_dm`);

--
-- Chỉ mục cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`id_thanhvien`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `anpham`
--
ALTER TABLE `anpham`
  MODIFY `id_ap` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `blanpham`
--
ALTER TABLE `blanpham`
  MODIFY `id_bl` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `dmanpham`
--
ALTER TABLE `dmanpham`
  MODIFY `id_dm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `id_thanhvien` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
