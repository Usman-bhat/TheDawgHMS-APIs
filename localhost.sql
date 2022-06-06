-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 06, 2022 at 07:59 PM
-- Server version: 10.5.12-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id18984040_hmskgpsrinagar`
--
CREATE DATABASE IF NOT EXISTS `id18984040_hmskgpsrinagar` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id18984040_hmskgpsrinagar`;

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `s_no` int(11) NOT NULL,
  `s_rollno` varchar(12) NOT NULL,
  `s_name` varchar(50) NOT NULL,
  `s_parentage` varchar(50) NOT NULL,
  `s_phone` varchar(15) NOT NULL,
  `s_batch` varchar(6) NOT NULL,
  `s_branch` varchar(50) NOT NULL DEFAULT 'CSE',
  `s_pincode` varchar(8) NOT NULL,
  `s_p_phone` varchar(15) NOT NULL,
  `s_email` varchar(30) NOT NULL,
  `s_dob` date DEFAULT NULL,
  `s_address` text NOT NULL,
  `s_image` text NOT NULL DEFAULT 'noimg.jpg',
  `s_status` varchar(20) NOT NULL DEFAULT 'inactive',
  `s_hostal_details` varchar(15) NOT NULL DEFAULT 'NA',
  `s_password_hash` text NOT NULL,
  `s_approved` varchar(25) NOT NULL DEFAULT 'pending',
  `s_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transiction_log`
--

CREATE TABLE `transiction_log` (
  `student_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `transiction_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `transiction_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `transiction_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `transiction_amount` bigint(25) NOT NULL,
  `transiction_remarks` text COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `walle_table`
--

CREATE TABLE `walle_table` (
  `student_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `amount` bigint(25) NOT NULL,
  `remark` text COLLATE utf8_unicode_ci NOT NULL DEFAULT '\'none\''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`s_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_registration`
--
ALTER TABLE `student_registration`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
