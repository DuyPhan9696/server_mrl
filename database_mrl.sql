-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2022 at 07:04 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_mrl`
--

-- --------------------------------------------------------

--
-- Table structure for table `don_mrl`
--

CREATE TABLE `don_mrl` (
  `madon` varchar(15) NOT NULL,
  `malop` varchar(10) NOT NULL,
  `mahocphan` varchar(10) NOT NULL,
  `ngaytao` bigint(20) NOT NULL,
  `masinhvien` varchar(10) NOT NULL,
  `trangthai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `don_mrl`
--

INSERT INTO `don_mrl` (`madon`, `malop`, `mahocphan`, `ngaytao`, `masinhvien`, `trangthai`) VALUES
('34245823', '713484', 'ET4361', 1644854578, '20172897', 'Đang xử lý'),
('34245854', '129308', 'ET4550', 1640019600, '20172516', 'Chưa xử lý'),
('34245887', '129288', 'ET4245', 1639242000, '20172897', 'Chưa xử lý'),
('34245890', '713576', 'ET4260', 1633971600, '20172516', 'Đã xử lý'),
('34245896', '129278', 'ET4361', 1641920400, '20172516', 'Đang xử lý'),
('34245897', '129303', 'ET4260', 1642093200, '20172897', 'Đã xử lý'),
('34245898', '129278', 'ET4361', 1644771600, '20172516', 'Chưa xử lý');

-- --------------------------------------------------------

--
-- Table structure for table `giaovu`
--

CREATE TABLE `giaovu` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `giaovu`
--

INSERT INTO `giaovu` (`email`, `password`, `name`, `phone`) VALUES
('tung.vusong@hust.edu.vn', '123456', 'Vũ Song Tùng', '0976890789');

-- --------------------------------------------------------

--
-- Table structure for table `hocphan`
--

CREATE TABLE `hocphan` (
  `mahocphan` varchar(10) NOT NULL,
  `tenhocphan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hocphan`
--

INSERT INTO `hocphan` (`mahocphan`, `tenhocphan`) VALUES
('ET4060', 'Phân tích và thiết kế hướng đối tượng'),
('ET4245', 'Trí tuệ nhân tạo và ứng dụng'),
('ET4260', 'Đa phương tiện'),
('ET4361', 'Hệ thống nhúng và thiết kế giao tiếp nhúng'),
('ET4430', 'Lập trình nâng cao'),
('ET4550', 'An toàn bức xạ và an toàn điện trong y tế'),
('ET4710', 'Lập trình ứng dụng di động');

-- --------------------------------------------------------

--
-- Table structure for table `lop`
--

CREATE TABLE `lop` (
  `malop` varchar(10) NOT NULL,
  `loailop` varchar(10) NOT NULL,
  `mahocphan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lop`
--

INSERT INTO `lop` (`malop`, `loailop`, `mahocphan`) VALUES
('129278', 'LT+BT', 'ET4361'),
('129284', 'LT+BT', 'ET4060'),
('129288', 'LT+BT', 'ET4245'),
('129289', 'LT+BT', 'ET4430'),
('129303', 'LT+BT', 'ET4260'),
('129308', 'LT+BT', 'ET4550'),
('129311', 'LT+BT', 'ET4710'),
('713484', 'TN', 'ET4361'),
('713576', 'TN', 'ET4260');

-- --------------------------------------------------------

--
-- Table structure for table `sinhvien`
--

CREATE TABLE `sinhvien` (
  `id` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sinhvien`
--

INSERT INTO `sinhvien` (`id`, `name`, `class`, `password`, `email`) VALUES
('20172516', 'Phan Hà Duy', 'ĐTVT-10', '123456', 'duy.ph172516@sis.hust.edu.vn'),
('20172897', 'Dương Mạnh Tuấn', 'ĐTVT-01', '123654', 'tuan.dm172897@sis.hust.edu.vn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `don_mrl`
--
ALTER TABLE `don_mrl`
  ADD PRIMARY KEY (`madon`),
  ADD KEY `malop` (`malop`),
  ADD KEY `masinhvien` (`masinhvien`),
  ADD KEY `mahocphan` (`mahocphan`);

--
-- Indexes for table `giaovu`
--
ALTER TABLE `giaovu`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `hocphan`
--
ALTER TABLE `hocphan`
  ADD PRIMARY KEY (`mahocphan`);

--
-- Indexes for table `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`malop`),
  ADD KEY `mahocphan` (`mahocphan`);

--
-- Indexes for table `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `don_mrl`
--
ALTER TABLE `don_mrl`
  ADD CONSTRAINT `don_mrl_ibfk_1` FOREIGN KEY (`malop`) REFERENCES `lop` (`malop`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `don_mrl_ibfk_2` FOREIGN KEY (`masinhvien`) REFERENCES `sinhvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `don_mrl_ibfk_3` FOREIGN KEY (`mahocphan`) REFERENCES `hocphan` (`mahocphan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `FK_hopphan_lop` FOREIGN KEY (`mahocphan`) REFERENCES `hocphan` (`mahocphan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
