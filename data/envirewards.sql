-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2024 at 06:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `envirewards`
--

-- --------------------------------------------------------

--
-- Table structure for table `store_info`
--

CREATE TABLE `store_info` (
  `Store_ID` varchar(20) NOT NULL,
  `Store_Name` varchar(20) DEFAULT NULL,
  `Voucher_ID` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `email` varchar(50) NOT NULL,
  `user_pass` varchar(30) DEFAULT NULL,
  `tokens` int(225) DEFAULT NULL,
  `user_type` enum('Admin','endUser','employee') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voucher_values`
--

CREATE TABLE `voucher_values` (
  `Voucher_ID` int(10) NOT NULL,
  `Voucher_Val` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `store_info`
--
ALTER TABLE `store_info`
  ADD PRIMARY KEY (`Store_ID`),
  ADD KEY `Voucher_ID` (`Voucher_ID`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `voucher_values`
--
ALTER TABLE `voucher_values`
  ADD PRIMARY KEY (`Voucher_ID`),
  ADD UNIQUE KEY `Voucher_Val` (`Voucher_Val`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `store_info`
--
ALTER TABLE `store_info`
  ADD CONSTRAINT `store_info_ibfk_1` FOREIGN KEY (`Voucher_ID`) REFERENCES `voucher_values` (`Voucher_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
