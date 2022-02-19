-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2022 at 11:29 PM
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
-- Table structure for table `thoihandki`
--

CREATE TABLE `thoihandki` (
  `kihoc` varchar(6) NOT NULL,
  `hanmo` varchar(15) DEFAULT NULL,
  `handong` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thoihandki`
--

INSERT INTO `thoihandki` (`kihoc`, `hanmo`, `handong`) VALUES
('20211', '02-01-2022', '03-04-2022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `thoihandki`
--
ALTER TABLE `thoihandki`
  ADD PRIMARY KEY (`kihoc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
