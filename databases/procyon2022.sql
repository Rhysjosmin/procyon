-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2022 at 12:23 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `procyon2022`
--
CREATE DATABASE IF NOT EXISTS `procyon2022` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `procyon2022`;

-- --------------------------------------------------------

--
-- Table structure for table `crregistration`
--

DROP TABLE IF EXISTS `crregistration`;
CREATE TABLE `crregistration` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crregistration`
--

INSERT INTO `crregistration` (`id`, `username`, `password`) VALUES
(2, 'Reev Dsouza', 1914036),
(3, 'Yash Atish Kurade ', 2112086),
(4, 'Leon Menezes', 1814033),
(5, 'Veron Conceicao Dias ', 1912110),
(6, 'Kritha Rajan', 2011008),
(7, 'Keenan Q.V. C. Cardozo', 1812013),
(8, 'Aastik  Salaskar', 2111002),
(9, 'Mohmmed Irfan D', 1912027),
(10, 'Aadarsh Chodankar ', 2012001),
(11, 'Gul Ahmed Shaikh', 2021035),
(12, 'Aires Joe Sousa ', 2112003),
(13, 'Vadiraj Inamdar', 2014059),
(14, 'Kuldeep Naik ', 1812079);

-- --------------------------------------------------------

--
-- Table structure for table `deptregistrations`
--

DROP TABLE IF EXISTS `deptregistrations`;
CREATE TABLE `deptregistrations` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` int(7) NOT NULL,
  `category` varchar(20) NOT NULL DEFAULT 'class'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deptregistrations`
--

INSERT INTO `deptregistrations` (`id`, `username`, `password`, `category`) VALUES
(1, 'Ashish Humraskar', 1811023, 'department'),
(2, 'Leon Menezes', 1814033, 'department'),
(3, 'Keenan Q. V. C. Cardozo', 1812013, 'department'),
(4, 'Kuldeep Naik', 1812079, 'department'),
(5, 'Atish Naik Gaonkar', 1813036, 'department');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crregistration`
--
ALTER TABLE `crregistration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deptregistrations`
--
ALTER TABLE `deptregistrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crregistration`
--
ALTER TABLE `crregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `deptregistrations`
--
ALTER TABLE `deptregistrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
