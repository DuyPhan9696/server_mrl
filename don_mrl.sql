-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2022 at 07:14 PM
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
  `ngaytao` varchar(20) NOT NULL,
  `masinhvien` varchar(10) NOT NULL,
  `trangthai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `don_mrl`
--

INSERT INTO `don_mrl` (`madon`, `malop`, `ngaytao`, `masinhvien`, `trangthai`) VALUES
('34245823', '713484', '14-02-2022', '20172897', 'Đang xử lý'),
('34245854', '129308', '20-12-2021', '20172516', 'Chưa xử lý'),
('34245887', '129288', '11-12-2021', '20172897', 'Chưa xử lý'),
('34245890', '713576', '11-10-2021', '20172516', 'Đã xử lý'),
('34245897', '129303', '13-01-2022', '20172897', 'Đã xử lý'),
('34245898', '129278', '13-02-2022', '20172516', 'Chưa xử lý'),
('51059433', '713576', '-2007', '20174226', 'Chưa xử lý');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `don_mrl`
--
ALTER TABLE `don_mrl`
  ADD PRIMARY KEY (`madon`),
  ADD KEY `malop` (`malop`),
  ADD KEY `masinhvien` (`masinhvien`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `don_mrl`
--
ALTER TABLE `don_mrl`
  ADD CONSTRAINT `don_mrl_ibfk_1` FOREIGN KEY (`malop`) REFERENCES `lop` (`malop`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `don_mrl_ibfk_2` FOREIGN KEY (`masinhvien`) REFERENCES `sinhvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
