-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2020 at 08:20 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoes_vianshop1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `creationDate` datetime DEFAULT NULL,
  `updationDate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '123456', '2019-12-23 12:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `description`, `image`, `content`, `note`) VALUES
(2, 'Mùa dịch, giá căn hộ chung cư vẫn tăng nhẹ', 'Dù thị trường chịu ảnh hưởng bởi Covid-19, lượng giao dịch giảm mạnh, giá căn hộ chung cư tại Hà Nội, TP HCM vẫn tăng 1-3,5% trong quý I.', NULL, 'Dù thị trường chịu ảnh hưởng bởi Covid-19, lượng giao dịch giảm mạnh, giá căn hộ chung cư tại Hà Nội, TP HCM vẫn tăng 1-3,5% trong quý I.', NULL),
(3, 'Cưỡng chế giai đoạn 2 dự án 8B Lê Trực', 'Lực lượng cưỡng chế quận Ba Đình đã mở khóa cửa các căn hộ tầng 18 tòa 8B Lê Trực, kiểm đếm tài sản để di dời, bàn giao mặt bằng cho đơn vị phá dỡ.', NULL, 'Ngày 7/5, hàng trăm người cùng máy móc, thiết bị tham gia cưỡng chế tầng 17-18 dự án 8B Lê Trực (phường Điện Biên, quận Ba Đình).\r\n\r\nChính quyền quận cho rằng vì chủ đầu tư không hợp tác nên phải cưỡng chế mở khóa cửa các căn hộ tại tầng 18 công trình số 8B Lê Trực. Việc này có sự chứng kiến của đại diện Tòa án nhân dân, Viện Kiểm sát nhân dân quận, đại diện tổ dân phố thuộc địa bàn dân cư số 6, số 12 phường Điện Biên.', NULL),
(4, 'Sáng nay không thêm ca nhiễm nCoV', '6h ngày 8/5, Bộ Y tế không ghi nhận ca dương tính nCoV. Số ca nhiễm 288, trong đó 233 người khỏi bệnh, 55 người đang điều trị.', NULL, 'Như vậy 24 giờ qua thêm 17 ca nhiễm nCoV. Họ đều đi chung chuyến bay từ Các Tiểu vương quốc Arab Thống nhất về nước, cách ly tập trung ngay tại Bạc Liêu, không có nguy cơ lây nhiễm cộng đồng.\r\n\r\nTrong số các ca nhiễm, 148 ca \"xâm nhập\" được cách ly ngay sau khi nhập cảnh; 140 ca do lây nhiễm trong cộng đồng.\r\n\r\nKể từ ngày 16/4 đến nay là 22 ngày, Việt Nam chưa phát hiện thêm ca lây nhiễm trong cộng đồng.\r\n\r\n55 bệnh nhân đang điều trị tại các cơ sở y tế đa số sức khỏe ổn định. 14 bệnh nhân xét nghiệm âm tính lần một, 7 người âm tính lần hai.\r\n\r\n\"Bệnh nhân 91\" rất nguy kịch. Mẫu bệnh phẩm dịch tỵ hầu của bệnh nhân ngày 6/5 dương tính nCoV, trong khi mẫu máu và dịch rửa phế quản thì âm tính. Ngoài ra, men gan tăng, xét nghiệm tầm soát nhiễm trùng có xu hướng tăng, siêu âm cho thấy tràn khí màng phổi phải.\r\n\r\n\"Bệnh nhân 20\" chuyển từ nguy kịch sang trạng thái nặng, thở oxy không xâm nhập, hồi phục tốt.', NULL),
(5, 'Thủ tướng đề nghị chưa tăng lương cơ sở và lương hưu từ 1/7', 'Đề nghị QH xem xét, cân nhắc trước mắt chưa tăng mức lương cơ sở đối với cán bộ, công chức, viên chức, lực lượng vũ trang và lương hưu từ ngày 1/7 do ảnh hưởng của dịch Covid-19.', 'thu tuong nguyen xuan phuc.jpg', 'Đề nghị QH xem xét, cân nhắc trước mắt chưa tăng mức lương cơ sở đối với cán bộ, công chức, viên chức, lực lượng vũ trang và lương hưu từ ngày 1/7 do ảnh hưởng của dịch Covid-19.', NULL),
(6, 'Phó cục trưởng An ninh mạng làm Giám đốc Công an tỉnh Thanh Hóa', 'Đại tá Trần Phú Hà, Phó cục trưởng Cục An ninh mạng và phòng chống tội phạm công nghệ cao, Bộ Công an giữ chức vụ Giám đốc Công an tỉnh Thanh Hóa.', 'pho-cuc-truong-an-ninh-mang-lam-giam-doc-cong-an-tinh-thanh-hoa.jpg', 'Đại tá Trần Phú Hà, Phó cục trưởng Cục An ninh mạng và phòng chống tội phạm công nghệ cao, Bộ Công an giữ chức vụ Giám đốc Công an tỉnh Thanh Hóa.', NULL),
(7, 'Đề xuất nhập số CMND khi nạp thẻ: Chỉ áp dụng 1 lần với SIM sai thông tin', 'Chiều nay, 5/6, đại diện thanh tra Bộ TT&TT đã thông tin thêm với VietNamNet về việc phải nhập CMND khi nạp thẻ.', 'de-xuat-nhap-so-cmnd-khi-nap-the-chi-ap-dung-1-lan-voi-sim-sai-thong-tin-thue-bao.jpg', '\"Tại thời điểm thanh tra diện rộng, 5 doanh nghiệp viễn thông có khoảng 129,9 triệu thuê bao di động. Trong gần 130 triệu thuê bao này, có nhiều triệu thuê bao sai có thông tin không đúng - chẳng hạn dữ liệu trên hệ thống khác với thông tin trên giấy tờ tuỳ thân của chủ thuê bao; Sử dụng cùng một ảnh chụp để thực hiện giao kết hợp đồng theo mẫu, điều kiện giao dịch chung vào các thời điểm khác nhau; Khách hàng không trực tiếp đến điểm cung cấp dịch vụ viễn thông để chụp ảnh nhưng vẫn thực hiện giao kết hợp đồng bằng ảnh chụp từ CMND/CCCD\", vị này cho hay.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`) VALUES
(1, 'Giày Nam'),
(2, 'Giày Nữ'),
(3, 'Phụ Kiện');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `total` float NOT NULL,
  `date_order` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` text DEFAULT NULL,
  `payMent` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `total`, `date_order`, `status`, `payMent`, `user_id`) VALUES
(6, 511000, '2020-07-14 04:04:11', NULL, 'COD', 2);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `quantity`) VALUES
(6, 1, 1),
(6, 8, 1),
(6, 13, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `decription` text DEFAULT NULL,
  `price` float NOT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `image`, `decription`, `price`, `created`, `quantity`) VALUES
(1, 'Sandal nữ nhựa không thấm nước', 1, 'Nhua.jpg', ' ', 99000, '2019-12-23 17:00:00', 17),
(2, 'Sandal nữ quai chéo Latoma', 1, 'quai-cheo-Latoma.jpg', ' ', 168000, '2019-12-23 17:00:00', 16),
(3, 'Sandal nữ đế bằng da thật', 1, 'de-bang-da-that.jpg', ' ', 142000, '2019-12-23 17:00:00', 15),
(4, 'Sandal nữ vải DSY', 1, 'vai-DSY.jpg', ' ', 145000, '2019-12-23 17:00:00', 14),
(5, 'Sandal nữ NU824', 1, 'nu-824.jpg', ' ', 189000, '2019-12-23 17:00:00', 1),
(6, 'Sandal nữ MCV', 1, 'mwc-nusd.jpg', ' ', 111000, '2019-12-23 17:00:00', 3),
(7, 'Sandal nữ ưu thích', 1, 'uu-thich.jpg', ' ', 102000, '2019-12-23 17:00:00', 7),
(8, 'Giày búp bê GBB-0398 xám', 2, 'gbb-0398-xam.jpg', ' ', 112000, '2019-12-23 17:00:00', 7),
(9, 'Giày búp bê thời trang rẻ đẹp', 3, 'thoi-trang-re-ben.jpg', ' ', 59000, '2019-12-23 17:00:00', 1),
(10, 'Giày búp bê BBN01', 3, 'bbn01.jpg', ' ', 145000, '2019-12-23 17:00:00', 10),
(11, 'Giày búp bê đế vuông quai ngang', 1, 'de-vuong-quai-ngang.jpg', ' ', 111000, '2019-12-23 17:00:00', 15),
(12, 'Giày búp bê cao cấp Latoma', 3, 'cao-cap-Latoma.jpg', ' ', 160000, '2019-12-23 17:00:00', 14),
(13, 'Giày búp bê nơ nữ điệu đà', 2, 'no-nu-dieu-da.jpg', ' ', 150000, '2019-12-23 17:00:00', 5),
(14, 'Giày búp bê NINE WEST', 2, 'nine-west.jpg', ' ', 123000, '2019-12-23 17:00:00', 6),
(15, 'Giày búp bê panda cute', 1, 'panda.jpg', ' ', 90000, '2019-12-23 17:00:00', 7),
(16, 'Giày thể thao FINE trắng', 2, 'fine-trang.jpg', ' ', 150000, '2019-12-23 17:00:00', 17),
(17, 'Giày thể thao gót mèo', 2, 'got-meo.jpg', ' ', 132000, '2019-12-23 17:00:00', 1),
(18, 'Giày thể thao MWC trắng', 2, 'mwc-trang.jpg', ' ', 165000, '2019-12-23 17:00:00', 7),
(19, 'Giày thể thao SPORT trắng', 2, 'sport-trang.jpg', ' ', 123000, '2019-12-23 17:00:00', 5),
(20, 'Giày thể thao sneaker Passo', 2, 'giay-sneaker-Passo.jpg', ' ', 100000, '2019-12-23 17:00:00', 15),
(21, 'Giày thể thao Passo', 2, 'giay-Passo.jpg', ' ', 69000, '2019-12-23 17:00:00', 457),
(22, 'Giày thể thao VAHS', 2, 'giay-VAHS.jpg', ' ', 160000, '2019-12-23 17:00:00', 53),
(23, 'Giày thể thao LK11 hồng', 2, 'giay-the-thao-nu-Lk11-hong.jpg', ' ', 150000, '2019-12-23 17:00:00', 2),
(24, 'Giày cao gót quai ngang', 3, 'quai-ngang.jpg', ' ', 381000, '2019-12-23 17:00:00', 56),
(25, 'Giày cao gót đính đá vip', 3, 'dinh-da-vip.jpg', ' ', 286000, '2019-12-23 17:00:00', 57),
(26, 'Giày cao gót mũi nhọn đính đá lấp lánh', 3, 'mui-nhon-dinh-da-lap-lanh.jpg', ' ', 254000, '2019-12-23 17:00:00', 78),
(27, 'Giày cao gót thủy tinh lọ lem', 3, 'thuy-tinh.jpg', ' ', 199000, '2019-12-23 17:00:00', 3),
(28, 'Giày cao gót butterfly sang trọng', 3, 'butterfly-sang-trong.jpg', ' ', 59000, '2019-12-23 17:00:00', 1),
(29, 'Giày cao gót đế vuông', 3, 'de-vuong.jpg', ' ', 158000, '2019-12-23 17:00:00', 78),
(30, 'Giày cao gót cindydrella', 3, 'cindydrella.jpg', ' ', 186000, '2019-12-23 17:00:00', 566),
(31, 'Giày cao gót quai mảnh chữ', 3, 'quai-manh-chu.jpg', ' ', 386000, '2019-12-23 17:00:00', 17);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `email`, `address`, `phone`) VALUES
(1, 'Mai Thi My Van', 'van.mai', 'van123456', 'myvan.maits@gmail.com', '99 To Hien Thanh, Da Nang', '0377920586'),
(2, 'Kim Phong', 'kimphong1999', '123456', 's2kimphongs2@gmail.com', 'Phúc Th?', '0941067198');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id_wishlist` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id_wishlist`, `user_id`, `product_id`, `posting_date`) VALUES
(1, 0, 1, '2020-07-12 05:50:00'),
(2, 0, 8, '2020-07-12 05:50:08'),
(3, 0, 1, '2020-07-12 05:50:24'),
(4, 0, 2, '2020-07-12 05:50:26'),
(5, 0, 8, '2020-07-12 05:50:34'),
(6, 0, 3, '2020-07-12 06:45:40'),
(10, 2, 13, '2020-07-12 10:18:47'),
(13, 2, 6, '2020-07-12 18:17:27'),
(14, 2, 6, '2020-07-12 18:17:35'),
(15, 2, 13, '2020-07-12 18:17:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `products` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id_wishlist`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id_wishlist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
