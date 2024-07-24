-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th7 11, 2024 lúc 09:19 AM
-- Phiên bản máy phục vụ: 5.7.24
-- Phiên bản PHP: 8.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thuctap`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_icon` varchar(255) DEFAULT NULL,
  `category_type` enum('income','expense') NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `user_id`, `category_icon`, `category_type`, `created_at`, `updated_at`, `status`) VALUES
(58, 'Ăn uống', NULL, 'food', 'expense', '2024-07-09 14:59:55', '2024-07-09 14:59:55', 1),
(59, 'Bảo hiểm', NULL, 'shield-account', 'expense', '2024-07-09 14:59:55', '2024-07-09 14:59:55', 1),
(60, 'Các chi phí khác', NULL, 'cash-multiple', 'expense', '2024-07-09 14:59:55', '2024-07-09 14:59:55', 1),
(61, 'Đầu tư', NULL, 'chart-line', 'expense', '2024-07-09 14:59:55', '2024-07-09 14:59:55', 1),
(62, 'Di chuyển', NULL, 'car', 'expense', '2024-07-09 14:59:55', '2024-07-09 14:59:55', 1),
(63, 'Bảo dưỡng xe', NULL, 'car-wrench', 'expense', '2024-07-09 14:59:55', '2024-07-09 14:59:55', 1),
(64, 'Gia đình', NULL, 'home', 'expense', '2024-07-09 14:59:55', '2024-07-09 14:59:55', 1),
(65, 'Dịch vụ gia đình', NULL, 'account-group', 'expense', '2024-07-09 14:59:55', '2024-07-09 14:59:55', 1),
(66, 'Sửa & trang trí nhà', NULL, 'home', 'expense', '2024-07-09 14:59:55', '2024-07-09 14:59:55', 1),
(67, 'Lương', NULL, 'cash', 'income', '2024-07-09 15:02:36', '2024-07-09 15:02:36', 1),
(68, 'Đầu tư', NULL, 'chart-line', 'income', '2024-07-09 15:02:36', '2024-07-09 15:02:36', 1),
(69, 'Quỹ phúc lợi', NULL, 'account-heart', 'income', '2024-07-09 15:02:36', '2024-07-09 15:02:36', 1),
(70, 'Tiền thưởng', NULL, 'gift', 'income', '2024-07-09 15:02:36', '2024-07-09 15:02:36', 1),
(71, 'Thu nhập khác', NULL, 'currency-usd', 'income', '2024-07-09 15:02:36', '2024-07-09 15:02:36', 1),
(72, 'Tiền cho thuê', NULL, 'currency-usd', 'income', '2024-07-09 15:02:36', '2024-07-09 15:26:13', 1),
(73, 'Lãi suất', NULL, 'percent', 'income', '2024-07-09 15:02:36', '2024-07-09 15:02:36', 1),
(74, 'Ggg', 1, 'food-fork-drink', 'income', '2024-07-09 15:03:58', '2024-07-09 15:03:58', 1),
(76, 'Hihi', 1, 'coffee', 'expense', '2024-07-09 15:15:39', '2024-07-09 15:15:39', 1),
(77, 'Ca nhạc', 1, 'music', 'expense', '2024-07-09 15:21:27', '2024-07-09 15:21:27', 1),
(78, 'Đầu tư bất động sản', 1, 'trending-up', 'income', '2024-07-09 15:22:26', '2024-07-09 15:22:26', 1),
(79, 'Trông bé', 1, 'baby-carriage', 'expense', '2024-07-09 15:26:55', '2024-07-09 15:26:55', 1),
(80, 'Hhh', 1, 'home', 'expense', '2024-07-10 11:13:46', '2024-07-10 11:13:46', 1),
(81, 'Nhẫn', 1, 'ring', 'expense', '2024-07-10 14:02:45', '2024-07-10 14:02:45', 1),
(82, 'Xe bus', 11, 'bus-side', 'expense', '2024-07-10 14:13:09', '2024-07-10 14:13:09', 1),
(83, 'Chụp ảnh', 11, 'image', 'income', '2024-07-10 14:17:13', '2024-07-10 14:17:13', 1),
(84, 'Ăn cúp', 11, 'motorbike', 'income', '2024-07-10 15:37:56', '2024-07-10 15:37:56', 1),
(85, 'Ăn cơm', 12, 'food-fork-drink', 'expense', '2024-07-11 09:26:49', '2024-07-11 09:26:49', 1),
(86, 'Mua sắm', 13, 'cart', 'expense', '2024-07-11 09:41:11', '2024-07-11 09:41:11', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `transaction_amount` bigint(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `note` text NOT NULL,
  `description` text,
  `transaction_type` enum('income','expense') NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `user_id`, `transaction_amount`, `category_id`, `date`, `note`, `description`, `transaction_type`, `created_at`, `updated_at`, `status`) VALUES
(2, 1, 190000, 58, '2024-07-08 00:00:00', 'mua sắm', 'Tên cửa hàng: CÔNG TY INHH DỊCH VỤ TƯ VẤN THUÉ 247\nThời gian: 18/12/2018\nSản phẩm thu:\n    Tên sản phẩm: Tủ lạnh SANYO\n    Số lượng sản phẩm: 1\n    Đơn giá: 6.000.000\n    Giảm giá: 0\nTiền thuế GTGT: 600.000', 'income', '2024-07-10 09:05:31', '2024-07-10 09:05:31', 1),
(3, 11, 190000, 58, '2024-07-08 00:00:00', 'mua sắm', 'Tên cửa hàng: CÔNG TY INHH DỊCH VỤ TƯ VẤN THUÉ 247\nThời gian: 18/12/2018\nSản phẩm thu:\n    Tên sản phẩm: Tủ lạnh SANYO\n    Số lượng sản phẩm: 1\n    Đơn giá: 6.000.000\n    Giảm giá: 0\nTiền thuế GTGT: 600.000', 'income', '2024-07-10 09:05:39', '2024-07-10 09:05:39', 1),
(4, 11, 200000, 59, '2024-07-08 00:00:00', 'mua điện thoai', 'điện thoại rẻ quá mua để dành', 'income', '2024-07-10 09:07:17', '2024-07-10 09:07:17', 1),
(5, 11, 5000, 60, '2024-07-10 00:00:00', 'cúng cho anh tèo', 'quang tèo ghé chơi nhà', 'expense', '2024-07-10 09:07:43', '2024-07-10 15:36:53', 1),
(6, 1, 5000, 58, '2024-07-10 00:00:00', 'Mua bánh', 'Vvv', 'expense', '2024-07-10 09:11:01', '2024-07-10 09:11:01', 1),
(8, 1, 6600000, 66, '2018-12-18 00:00:00', 'Bán hàng qua điện thoại', 'Tên cửa hàng: CÔNG TY TNHH DỊCH VU TU VÁN THUÉ 247\nThời gian: 18/12/2018\nSản phẩm thu:\n    Tên sản phẩm: Tủ lạnh SANYO\n    Số lượng sản phẩm: 1\n    Đơn giá: 6.000.000\n    Giảm giá: 0\nTiền thuế GTGT: 600.000', 'expense', '2024-07-10 09:40:10', '2024-07-10 09:40:10', 1),
(9, 1, 300000, 59, '2024-07-10 00:00:00', 'Mua bảo hiểm', 'Abv', 'expense', '2024-07-10 09:45:47', '2024-07-10 09:45:47', 1),
(11, 11, 222202000, 60, '2024-07-10 00:00:00', 'bán nhà', 'điện thoại rẻ quá mua để dành', 'income', '2024-07-10 09:50:18', '2024-07-10 15:47:39', 0),
(12, 11, 222202000, 64, '2024-07-10 00:00:00', 'Tây ban nha thắng đậm', 'thắng độ bóng đá', 'income', '2024-07-10 09:58:31', '2024-07-10 15:44:13', 0),
(15, 11, 929202000, 65, '2024-07-10 00:00:00', 'tây ban nha vô địch', 'thắng độ bóng đá', 'income', '2024-07-10 11:28:26', '2024-07-10 15:45:46', 0),
(16, 11, 929202000, 65, '2024-07-10 00:00:00', 'tây ban nha vô địch', 'thắng độ bóng đá', 'income', '2024-07-10 11:29:22', '2024-07-10 15:45:40', 0),
(17, 11, 929202000, 65, '2024-07-10 00:00:00', 'tây ban nha vô địch', 'thắng độ bóng đá', 'income', '2024-07-10 11:31:13', '2024-07-10 15:45:51', 0),
(21, 11, 555555, 67, '2024-11-30 00:00:00', 'Lương cuối tháng', 'V', 'income', '2024-07-10 14:02:12', '2024-07-10 16:45:09', 1),
(24, 11, 30000, 82, '2024-07-10 00:00:00', 'Đi xe bus đến trường', 'Ngày ...', 'expense', '2024-07-10 14:13:55', '2024-07-10 15:30:15', 0),
(25, 11, 3000000, 83, '2024-07-10 00:00:00', 'Nhíp ảnh gia', '...', 'income', '2024-07-10 14:17:44', '2024-07-10 14:17:44', 1),
(26, 11, 2000000, 84, '2024-07-10 00:00:00', 'Ăn cúp của cu vinh', 'Ăn cúp đá pô', 'income', '2024-07-10 15:38:28', '2024-07-10 15:59:19', 0),
(27, 11, 2000000, 84, '2024-07-10 00:00:00', 'Ăn cúp của cu vinh', 'Ăn cúp đá pô', 'income', '2024-07-10 15:40:04', '2024-07-10 15:59:23', 0),
(28, 11, 2000000, 84, '2024-07-10 00:00:00', 'Ăn cúp của cu vinh', 'Ăn cúp đá pô', 'income', '2024-07-10 15:41:49', '2024-07-10 15:59:25', 0),
(29, 11, 1100000, 70, '2024-07-10 00:00:00', 'tây ban nha vô địch', 'thắng độ bóng đá', 'income', '2024-07-10 15:46:55', '2024-07-10 15:46:55', 1),
(30, 11, 1100000, 70, '2024-07-10 00:00:00', 'tây ban nha vô địch', 'thắng độ bóng đá', 'income', '2024-07-10 15:49:39', '2024-07-10 15:49:39', 1),
(31, 11, 1100000, 70, '2024-07-10 00:00:00', 'tây ban nha vô địch', 'thắng độ bóng đá', 'income', '2024-07-10 15:54:13', '2024-07-10 15:54:13', 1),
(32, 11, 1100000, 70, '2024-07-10 00:00:00', 'tây ban nha vô địch', 'thắng độ bóng đá', 'income', '2024-07-10 16:09:17', '2024-07-10 16:09:17', 1),
(33, 11, 1100000, 70, '2024-07-10 00:00:00', 'tây ban nha vô địch', 'thắng độ bóng đá', 'income', '2024-07-10 16:12:34', '2024-07-10 16:12:34', 1),
(34, 11, 200000, 58, '2024-07-11 00:00:00', 'Ăn bún đậu', 'Mmmm', 'expense', '2024-07-10 16:12:54', '2024-07-10 16:12:54', 1),
(35, 11, 1100000, 70, '2024-07-10 00:00:00', 'tây ban nha vô địch', 'thắng độ bóng đá', 'income', '2024-07-10 16:15:57', '2024-07-10 16:15:57', 1),
(36, 11, 1111100000, 70, '2024-07-10 00:00:00', 'tây ban nha vô địch', 'thắng độ bóng đá', 'expense', '2024-07-10 16:16:39', '2024-07-10 16:16:39', 1),
(37, 11, 10000000, 58, '2024-07-10 00:00:00', 'Tôm hùm', 'Bbbbb', 'expense', '2024-07-10 16:25:51', '2024-07-10 16:25:51', 1),
(38, 11, 10000000, 59, '2024-07-10 00:00:00', 'Bbbb', 'Mmmmm', 'expense', '2024-07-10 16:31:58', '2024-07-10 16:31:58', 1),
(39, 11, 10000001, 63, '2024-07-10 00:00:00', 'Hhb', 'Bbb', 'expense', '2024-07-10 16:37:32', '2024-07-10 16:37:32', 1),
(40, 11, 10000000, 63, '2024-07-10 00:00:00', 'Hhb', 'Bbb', 'expense', '2024-07-10 16:37:37', '2024-07-10 16:37:37', 1),
(41, 11, 10000000, 63, '2024-07-10 00:00:00', 'Hhb', 'Bbb', 'expense', '2024-07-10 16:37:39', '2024-07-10 16:37:39', 1),
(42, 11, 18880, 58, '2024-07-10 00:00:00', 'Bánh mì', 'Nnnn', 'expense', '2024-07-10 16:44:55', '2024-07-10 16:44:55', 1),
(43, 11, 11111111, 70, '2024-07-10 00:00:00', 'Đội tuyển Anh đưa tôi về bờ', 'thắng độ bóng đá', 'income', '2024-07-11 08:56:50', '2024-07-11 08:56:50', 1),
(44, 13, 6600000, 86, '2018-12-18 00:00:00', 'Bán hàng qua điện thoại', 'Tên cửa hàng: CÔNG TY TNHH DỊCH VU Tư VẤN THUẾ 247\nThời gian: 18/12/2018\nSản phẩm thu:\n    Tên sản phẩm: Tủ lạnh SANYO\n    Số lượng sản phẩm: 1\n    Đơn giá: 6.000.000\n    Giảm giá: 0\nTiền thuế GTGT: 600.000', 'expense', '2024-07-11 09:41:55', '2024-07-11 09:46:35', 1),
(45, 13, 17580, 58, '2024-07-02 00:00:00', 'mua chuối', 'Tên cửa hàng: BACH HOA XANH\nThời gian: 02/10/2024\nSản phẩm thu:\n    Tên sản phẩm: chuối già giống nam mỹ\n    Số lượng sản phẩm: 0,6\n    Đơn giá: 29.300\n    Giảm giá: 0\nTiền thuế GTGT: 0', 'expense', '2024-07-11 09:50:18', '2024-07-11 09:50:18', 1),
(46, 15, 3000000, 63, '2024-07-11 00:00:00', 'Ỵh', 'Mm', 'expense', '2024-07-11 09:59:04', '2024-07-11 09:59:04', 1),
(47, 15, 3000000, 63, '2024-07-11 00:00:00', 'Ỵh', 'Mm', 'expense', '2024-07-11 09:59:08', '2024-07-11 10:00:24', 0),
(48, 13, 10000000, 86, '2024-07-11 00:00:00', 'H', 'U', 'expense', '2024-07-11 10:06:58', '2024-07-11 10:06:58', 1),
(49, 13, 500000, 70, '2024-07-11 00:00:00', 'Thực tập tốt được thưởng', 'Anh trưởng phòng thưởng 500k', 'income', '2024-07-11 10:10:18', '2024-07-11 10:10:18', 1),
(50, 13, 356525, 86, '2024-07-11 00:00:00', 'Ghjv', 'ʕっ•ᴥ•ʔっ', 'expense', '2024-07-11 10:17:10', '2024-07-11 10:17:10', 1),
(51, 13, 1000009, 69, '2024-07-11 00:00:00', 'Loooo', 'Looooo', 'income', '2024-07-11 10:23:30', '2024-07-11 10:23:30', 1),
(52, 11, 11111111, 70, '2024-07-10 00:00:00', '1', '1', 'income', '2024-07-11 10:30:01', '2024-07-11 10:30:01', 1),
(53, 13, 888, 86, '2024-07-11 00:00:00', '', '', 'expense', '2024-07-11 10:31:46', '2024-07-11 10:31:46', 1),
(54, 11, 1, 70, '2024-07-10 00:00:00', '', '', 'income', '2024-07-11 10:31:48', '2024-07-11 10:31:48', 1),
(55, 13, 200000, 86, '2024-05-07 00:00:00', 'Hóa đơn thanh toán', 'Tên cửa hàng: BÁCH HÓA XANH\nThời gian: 07/05/2024\nSản phẩm thu:\n    Tên sản phẩm: sữa lothamilk có đường chai 880ml\n    Số lượng sản phẩm: 1\n    Đơn giá: 27.000\n    Giảm giá: 0\n    Tên sản phẩm: sữa lothamilk có đường chai 490ml/500ml\n    Số lượng sản phẩm: 3\n    Đơn giá: 14.250\n    Giảm giá: 0\n    Tên sản phẩm: sữa lothamilk có đường chai 490ml/500ml\n    Số lượng sản phẩm: 2\n    Đơn giá: 17.000\n    Giảm giá: 0\n    Tên sản phẩm: bánh karo tươi mai hoàng kim gói/1 (26gx6gói)\n    Số lượng sản phẩm: 1\n    Đơn giá: 19.500\n    Giảm giá: 0\n    Tên sản phẩm: gum fresh mint 1459/137.89/130.5g\n    Số lượng sản phẩm: 1\n    Đơn giá: 62.000\n    Giảm giá: 0\n    Tên sản phẩm: mì xào táo quân thập cẩm 85g\n    Số lượng sản phẩm: 3\n    Đơn giá: 6.800\n    Giảm giá: 0\n    Tên sản phẩm: nước ngọt sá xị chương dương lon sleek 330ml\n    Số lượng sản phẩm: 1\n    Đơn giá: không đủ thông tin\n    Giảm giá: 0\nTiền thuế GTGT: 0', 'expense', '2024-07-11 10:41:29', '2024-07-11 10:41:29', 1),
(56, 13, 200000, 86, '2024-05-19 00:00:00', 'Hóa đơn thanh toán', 'Tên cửa hàng: BÁCH HÓA XANH\nThời gian: 19/05/2024\nSản phẩm thu:\n    Tên sản phẩm: sữa lothamilk có đường chai 880ml\n    Số lượng sản phẩm: 1\n    Đơn giá: 27.000\n    Giảm giá: không đủ thông tin\n    Tên sản phẩm: sữa thanh trùng lothamilk có đường chai 490ml/500ml\n    Số lượng sản phẩm: 3\n    Đơn giá: 14.250\n    Giảm giá: không đủ thông tin\n    Tên sản phẩm: scu lothamilk có đường chai 490ml/500ml\n    Số lượng sản phẩm: 2\n    Đơn giá: 17.000\n    Giảm giá: không đủ thông tin\n    Tên sản phẩm: bánh karo tươi phô mai kim richy gói (26gx6gói)\n    Số lượng sản phẩm: 1\n    Đơn giá: 19.500\n    Giảm giá: không đủ thông tin\n    Tên sản phẩm: gum xylitol fresh mint 1459/137.89/130.5g\n    Số lượng sản phẩm: 1\n    Đơn giá: 62.000\n    Giảm giá: không đủ thông tin\n    Tên sản phẩm: mì xào táo quân thập cẩm 85g\n    Số lượng sản phẩm: 3\n    Đơn giá: 6.800\n    Giảm giá: không đủ thông tin\n    Tên sản phẩm: nước ngọt sá xị chương dương Ion sleek 330ml\n    Số lượng sản phẩm: 1\n    Đơn giá: không đủ thông tin\n    Giảm giá: không đủ thông tin\nTiền thuế GTGT: không đủ thông tin', 'expense', '2024-07-11 10:50:07', '2024-07-11 10:50:07', 1),
(57, 13, 20000, 59, '2024-07-12 00:00:00', '', '', 'expense', '2024-07-11 14:43:23', '2024-07-11 14:43:23', 1),
(58, 13, 5000000, 86, '2024-07-11 00:00:00', 'Uuuu', 'Ghhh', 'expense', '2024-07-11 16:00:54', '2024-07-11 16:01:05', 0),
(59, 13, 500000, 58, '2024-07-11 00:00:00', 'Ụu', 'Llkkk', 'expense', '2024-07-11 16:05:22', '2024-07-11 16:05:25', 0),
(60, 13, 55000000, 58, '2024-07-11 00:00:00', '', '', 'expense', '2024-07-11 16:06:06', '2024-07-11 16:06:06', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `amount` bigint(255) NOT NULL DEFAULT '0',
  `wallet` bigint(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`, `user_email`, `created_at`, `updated_at`, `status`, `amount`, `wallet`) VALUES
(1, 'thang', '2', '2', '2024-07-06 08:44:31', '2024-07-10 10:46:36', 1, 200000, 0),
(4, 'vinh', '12345', 'vinh@gmail.com', '2024-07-06 09:56:59', '2024-07-06 09:56:59', 1, 0, 0),
(5, 'Tgg', '123', 'Gghh@gmail.com', '2024-07-06 10:01:46', '2024-07-06 10:01:46', 1, 0, 0),
(9, 'Hh', '123', 'Vinh@gmail.com', '2024-07-06 10:37:29', '2024-07-06 10:37:29', 1, 0, 0),
(10, 'Hh', '123', 'Vinh2233@gmail.com', '2024-07-06 10:41:47', '2024-07-06 10:41:47', 1, 0, 0),
(11, '1', '1', '1', '2024-07-09 15:36:16', '2024-07-10 11:34:46', 1, 3203609445, 0),
(12, 'Nghĩa', '12345678', 'Nguyentrungnghia26112001@gmail.com', '2024-07-11 09:23:17', '2024-07-11 09:23:17', 1, 0, 0),
(13, '3', '3', '3', '2024-07-11 09:29:10', '2024-07-11 16:06:06', 1, -76394984, 0),
(14, 'T', '4', '4', '2024-07-11 09:34:10', '2024-07-11 09:34:10', 1, 0, 0),
(15, 'U', '6', '6', '2024-07-11 09:58:23', '2024-07-11 09:58:23', 1, 0, 0),
(16, 'Pmt', 'thang123', '21004171@st.vlute.edu.vn', '2024-07-11 14:51:50', '2024-07-11 15:06:41', 1, 400000, 400000);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Các ràng buộc cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
