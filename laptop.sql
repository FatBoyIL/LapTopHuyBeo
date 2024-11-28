-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 15, 2024 at 04:21 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laptop`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` bigint NOT NULL AUTO_INCREMENT,
  `created_on` datetime(6) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sdt` varchar(255) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `created_on`, `diachi`, `email`, `name`, `password`, `sdt`, `updated_on`) VALUES
(1, '2023-11-08 10:16:03.000000', 'Số 1, Đường Nguyễn Trãi, Hà Nội', 'nguyenvana@gmail.com', 'Nguyễn Văn A', 'password123', '0987654321', '2023-11-08 10:16:03.000000'),
(2, '2023-11-08 10:16:03.000000', '23/5 Phạm Văn Đồng, TP. Hồ Chí Minh', 'tranthib@gmail.com', 'Trần Thị B', 'password456', '0123456789', '2023-11-08 10:16:03.000000'),
(3, '2023-11-08 10:16:03.000000', '56 Lê Lợi, Đà Nẵng', 'levanc@gmail.com', 'Lê Văn C', 'password789', '0987654321', '2023-11-08 10:16:03.000000');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` bigint NOT NULL AUTO_INCREMENT,
  `baohanh` int NOT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `gia` double NOT NULL,
  `hinhanh` varchar(255) DEFAULT NULL,
  `mota` varchar(255) DEFAULT NULL,
  `soluong` int NOT NULL,
  `tensanpham` varchar(255) DEFAULT NULL,
  `trangthai` bit(1) NOT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `cauhinh` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `baohanh`, `created_on`, `gia`, `hinhanh`, `mota`, `soluong`, `tensanpham`, `trangthai`, `updated_on`, `cauhinh`) VALUES
(1, 12, '2023-11-13 10:57:00.000000', 1000000, 'img.png', 'ASUS Vivobook 14/15 OLED giúp bạn hoàn thành mọi tác vụ một cách nhanh chóng ở bất cứ đâu, dù ở cơ quan, ở nhà hay khi đi ra ngoài. Bộ vi xử lý Intel® Core™ thế hệ thứ 13 cùng bộ nhớ RAM DDR4 lên đến 16GB, bộ nhớ SSD lên đến 1TB và công nghệ kết nối WiFi ', 100, 'LaptopAcer', b'1', '2023-11-13 10:57:00.000000', 'CPU AMD Ryzen™ 5 7640HS 4.3GHz up to 5.0GHz 16MB\r\nRAM 8GB (8×1) DDR5 5600MHz (2x SO-DIMM socket, up to 32GB SDRAM)\r\nỔ cứng 512GB PCIe NVMe SED SSD (Còn trống 1 khe SSD M.2 PCIe Gen 4)\r\nCard đồ họa NVIDIA® GeForce RTX™ 4050 6GB GDDR6'),
(2, 12, '2023-11-13 10:57:00.000000', 1000000, 'acer.png', 'NITRO 16 PHOENIX: PHIÊN BẢN KẾ NHIỆM CỦA GAMING NITRO 5\r\n\r\nLà phiên bản mới nhất của laptop Acer Nitro – dòng Laptop Gaming bán chạy số 1 thị trường Việt Nam trong các năm gần đây – Nitro 16 kế thừa và phát huy những đặc tính nổi trội nhất của những model', 100, 'LaptopAcer', b'1', '2023-11-13 10:57:00.000000', 'Laptop Dell Vostro 3430  với vẻ ngoài sang trọng, sở hữu những thông số kỹ thuật mạnh mẽ từ con chip Intel thế hệ 13 hoàn toàn mới, có thể chạy mượt những tác vụ học tập, văn phòng.\n\nCPU	Intel® Core™ i5-1335U (Bộ nhớ đệm 12M, lên đến 4,60 GHz)\nRam	8GB DDR'),
(3, 12, '2023-11-13 10:57:00.000000', 1000000, 'acer.png', 'Sự Lựa Chọn Hoàn Hảo Cho Cuộc Sống Hiện Đại\nBạn đang tìm kiếm một chiếc laptop có thể đáp ứng mọi nhu cầu từ công việc đến giải trí? Không cần nhìn đâu xa, ASUS Vivobook S 14 OLED S5406MA-PP136W là câu trả lời cho bạn. Với những tính năng độc đáo và công ', 100, 'LaptopAcer', b'1', '2023-11-13 10:57:00.000000', 'Dell đã trang bị cho chiếc Laptop Dell Vostro 3420 71003348 bộ vi xử lý thế hệ thứ 12 mới nhất, CPU Intel Core i5-1235U với 10 nhân (Trong đó có 2 nhân P-core và 8 nhân E-core) cùng 12 luồng. Đây là thế hệ CPU Intel mang đến những cải tiến vượt bậc từ số '),
(4, 12, '2023-11-15 14:09:15.000000', 1999000, 'product1.jpg', 'Laptop Gaming Acer Aspire 7 chính là dòng Laptop Gaming phổ thông hàng đầu trong phân khúc 15-20 triệu đồng. Thiết kế tinh tế, trung tính theo phong cách học tập, văn phòng nhưng Aspire 7 2023 sở hữu cấu hình mạnh với bộ vi xử lý Intel® Core™ thế hệ 12 và', 0, 'LapTop LeNovo', b'0', '2023-11-15 14:09:15.000000', 'Để đảm nhiệm mọi nhiệm vụ từ học tập đến giải trí, Laptop Dell này được trang bị vi xử lý Intel Core i3-1305U, có tốc độ cơ bản 2.4GHz và tối đa lên đến 4.50 GHz với bộ nhớ cache 10MB, cho phép máy xử lý nhanh chóng các tác vụ đa nhiệm và các ứng dụng đòi'),
(5, 12, '2023-11-15 14:09:15.000000', 1999000, 'product1.jpg', 'Laptop Gaming Acer Aspire 7 chính là dòng Laptop Gaming phổ thông hàng đầu trong phân khúc 15-20 triệu đồng. Thiết kế tinh tế, trung tính theo phong cách học tập, văn phòng nhưng Aspire 7 2023 sở hữu cấu hình mạnh với bộ vi xử lý Intel® Core™ thế hệ 12 và', 0, 'LapTop LeNovo', b'0', '2023-11-15 14:09:15.000000', 'Với CPU Intel Core i7-1355U lên đến 5.00GHz và RAM 16GB DDR4 , Laptop Dell i7 này có đủ sức mạnh để xử lý mọi tác vụ, từ công việc văn phòng đến chơi game và biên tập video. Ổ cứng SSD 512GB M.2 PCIe NVMe cung cấp không gian lưu trữ nhanh chóng và linh ho'),
(6, 12, '2023-11-15 14:09:15.000000', 1999000, 'product1.jpg', 'Acer Swift X 2021 là một máy tính xách tay phù hợp với ngân sách trong mức giá 20 – 30 triệu mang lại sức mạnh xử lí bên trong một khung máy laptop mỏng nhẹ. Acer Swift X không có vẻ ngoài thực sự hoàn hảo, nhưng nếu bạn chỉ cần một chiếc máy đủ mạnh mẽ đ', 0, 'LapTop LeNovo', b'0', '2023-11-15 14:09:15.000000', '\nLaptop Acer Aspire 7 A715-76G-59MW HCH (i5-12450H | 8GB | 512GB | GeForce RTX™ 2050 4GB | 15.6′ FHD 144Hz | Win 11)\n21.490.000 ₫ Original price was: 21.490.000 ₫.16.490.000 ₫Current price is: 16.490.000 ₫.\n\nKhuyến mãi\nBalo Gaming Acer SUV.2 trị giá 1.700'),
(7, 12, '2023-11-15 14:09:15.000000', 1999000, 'img.png', 'LapTop thông minh cao cấp', 0, 'LapTop LeNovo', b'0', '2023-11-15 14:09:15.000000', 'ASUS Vivobook 14/15 OLED mạnh mẽ, tích hợp nhiều tính năng với màn hình OLED rực rỡ, gam màu DCI-P3 đẳng cấp điện ảnh. Mọi thứ trở nên dễ dàng hơn nhờ những tiện ích thân thiện với người dùng bao gồm bản lề mở phẳng 180°, nắp che webcam vật lý và các phím');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
