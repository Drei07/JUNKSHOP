-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2022 at 03:33 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fisheryapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `userId` int(145) NOT NULL,
  `adminFirst_Name` varchar(145) DEFAULT NULL,
  `adminMiddle_Name` varchar(145) DEFAULT NULL,
  `adminLast_Name` varchar(145) DEFAULT NULL,
  `adminEmail` varchar(145) DEFAULT NULL,
  `adminPassword` varchar(145) DEFAULT NULL,
  `adminStatus` enum('Y','N') DEFAULT 'N',
  `tokencode` varchar(145) DEFAULT NULL,
  `adminProfile` varchar(1145) NOT NULL DEFAULT 'profile.png',
  `account_status` enum('active','disabled') DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`userId`, `adminFirst_Name`, `adminMiddle_Name`, `adminLast_Name`, `adminEmail`, `adminPassword`, `adminStatus`, `tokencode`, `adminProfile`, `account_status`, `created_at`, `updated_at`) VALUES
(1, 'JOSE', 'DATU', 'SANTOS', 'chopshop750@gmail.com', '42f749ade7f9e195bf475f37a44cafcb', 'Y', '3067c59bc37c21de6bae68a65e2c9b72', 'user.png', 'active', '2022-07-07 05:19:44', '2022-10-23 13:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE `email_config` (
  `Id` int(145) NOT NULL,
  `email` varchar(145) DEFAULT NULL,
  `password` varchar(145) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`Id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'chopshop750@gmail.com', 'wwqbnajmlfunobrw', '2022-07-08 04:41:51', '2022-10-23 13:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `google_recaptcha_api`
--

CREATE TABLE `google_recaptcha_api` (
  `Id` int(11) NOT NULL,
  `site_key` varchar(145) DEFAULT NULL,
  `site_secret_key` varchar(145) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `google_recaptcha_api`
--

INSERT INTO `google_recaptcha_api` (`Id`, `site_key`, `site_secret_key`, `created_at`, `updated_at`) VALUES
(1, '6LfeHlkdAAAAABiHm93II8UuYYtIs8WFhSIiWQ-B', '6LfeHlkdAAAAAA3NYvNccc_FqzGi2Y6wiGGCOG1s', '2022-07-08 04:29:37', '2022-07-12 07:14:01');

-- --------------------------------------------------------

--
-- Table structure for table `superadmin`
--

CREATE TABLE `superadmin` (
  `superadminId` int(145) NOT NULL,
  `name` varchar(145) DEFAULT NULL,
  `email` varchar(145) DEFAULT NULL,
  `password` varchar(145) DEFAULT NULL,
  `tokencode` varchar(145) DEFAULT NULL,
  `profile` varchar(1145) NOT NULL DEFAULT 'profile.png',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `superadmin`
--

INSERT INTO `superadmin` (`superadminId`, `name`, `email`, `password`, `tokencode`, `profile`, `created_at`, `updated_at`) VALUES
(1, 'JUAN, DATU', 'chopshop750@gmail.com', '42f749ade7f9e195bf475f37a44cafcb', '9e5a0cb44c4b0aa56e6bf74e3cda4d24', 'green-profile.png', '2022-07-03 00:09:13', '2022-10-23 13:15:05');

-- --------------------------------------------------------

--
-- Table structure for table `system_config`
--

CREATE TABLE `system_config` (
  `Id` int(14) NOT NULL,
  `system_name` varchar(145) DEFAULT NULL,
  `system_number` varchar(145) DEFAULT NULL,
  `system_email` varchar(145) DEFAULT NULL,
  `copy_right` varchar(145) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_config`
--

INSERT INTO `system_config` (`Id`, `system_name`, `system_number`, `system_email`, `copy_right`, `created_at`, `updated_at`) VALUES
(1, 'ChopShop', '9776621929', 'chopshop750@gmail.com', 'Copyright 2022 ChopShop. All right reserved', '2022-07-08 12:38:28', '2022-10-23 13:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `system_logo`
--

CREATE TABLE `system_logo` (
  `Id` int(145) NOT NULL,
  `logo` varchar(1145) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_logo`
--

INSERT INTO `system_logo` (`Id`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'logo.jpg', '2022-07-08 08:11:27', '2022-10-23 06:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `tb_logs`
--

CREATE TABLE `tb_logs` (
  `activityId` int(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `email` varchar(145) NOT NULL,
  `activity` varchar(145) NOT NULL,
  `date` varchar(145) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_logs`
--

INSERT INTO `tb_logs` (`activityId`, `user`, `email`, `activity`, `date`) VALUES
(1, 'User-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-15 11:27:04 AM'),
(2, 'Superadmin-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-15 11:27:25 AM'),
(3, 'Superadmin-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-15 12:50:00 PM'),
(4, 'Admin-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-15 01:01:45 PM'),
(5, 'User-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-15 01:01:56 PM'),
(6, 'Superadmin-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-15 01:03:06 PM'),
(7, 'Superadmin-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-15 01:04:59 PM'),
(8, 'Admin-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-15 01:05:38 PM'),
(9, 'User-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-15 01:06:28 PM'),
(10, 'Superadmin-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-15 01:06:37 PM'),
(11, 'Admin-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-15 02:40:10 PM'),
(12, 'User-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-16 11:06:28 AM'),
(13, 'Admin-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-16 11:06:34 AM'),
(14, 'Superadmin-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-16 11:06:44 AM'),
(15, 'Admin-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-16 06:52:18 PM'),
(16, 'Admin-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-16 06:53:46 PM'),
(17, 'Admin-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-16 06:55:26 PM'),
(18, 'Admin-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-16 06:57:08 PM'),
(19, 'Admin-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-16 06:58:52 PM'),
(20, 'User-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-16 08:08:48 PM'),
(21, 'User-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-23 09:05:34 AM'),
(22, 'Admin-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-23 09:25:23 AM'),
(23, 'Superadmin-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-23 09:29:49 AM'),
(24, 'Admin-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-23 02:18:19 PM'),
(25, 'Admin-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-23 02:25:43 PM'),
(26, 'Admin-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-23 02:26:12 PM'),
(27, 'Admin-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-23 02:26:34 PM'),
(28, 'Admin-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-23 05:56:12 PM'),
(29, 'Superadmin-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-23 06:07:26 PM'),
(30, 'Admin-fisheryapp092922@gmail.com', 'fisheryapp092922@gmail.com', 'Has successfully signed in', '2022-10-23 09:01:36 PM'),
(31, 'Admin-chopshop750@gmail.com', 'chopshop750@gmail.com', 'Has successfully signed in', '2022-10-23 09:31:52 PM');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(255) NOT NULL,
  `type_of_customer` varchar(145) DEFAULT NULL,
  `userFirst_Name` varchar(145) DEFAULT NULL,
  `userMiddle_Name` varchar(145) DEFAULT NULL,
  `userLast_Name` varchar(145) DEFAULT NULL,
  `userPhone_Number` varchar(145) DEFAULT NULL,
  `userEmail` varchar(145) DEFAULT NULL,
  `userPassword` varchar(145) DEFAULT NULL,
  `userStatus` enum('Y','N') DEFAULT 'N',
  `tokencode` varchar(145) DEFAULT NULL,
  `userProfile` varchar(1145) NOT NULL DEFAULT 'profile.png',
  `uniqueID` varchar(145) DEFAULT NULL,
  `account_status` enum('active','disabled') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `type_of_customer`, `userFirst_Name`, `userMiddle_Name`, `userLast_Name`, `userPhone_Number`, `userEmail`, `userPassword`, `userStatus`, `tokencode`, `userProfile`, `uniqueID`, `account_status`, `created_at`, `updated_at`) VALUES
(197, '1', 'JOSE', 'DATU', 'SANTOS', '9776621929', 'chopshop750@gmail.com', '42f749ade7f9e195bf475f37a44cafcb', 'Y', '031c7fdda5d95db88e25b112b16e9d72', 'green-profile.png', '68414511', 'active', '2022-07-05 11:39:33', '2022-10-23 13:31:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `google_recaptcha_api`
--
ALTER TABLE `google_recaptcha_api`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `superadmin`
--
ALTER TABLE `superadmin`
  ADD PRIMARY KEY (`superadminId`);

--
-- Indexes for table `system_config`
--
ALTER TABLE `system_config`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `system_logo`
--
ALTER TABLE `system_logo`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tb_logs`
--
ALTER TABLE `tb_logs`
  ADD PRIMARY KEY (`activityId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `userId` int(145) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `email_config`
--
ALTER TABLE `email_config`
  MODIFY `Id` int(145) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `google_recaptcha_api`
--
ALTER TABLE `google_recaptcha_api`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `superadmin`
--
ALTER TABLE `superadmin`
  MODIFY `superadminId` int(145) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `system_config`
--
ALTER TABLE `system_config`
  MODIFY `Id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_logo`
--
ALTER TABLE `system_logo`
  MODIFY `Id` int(145) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_logs`
--
ALTER TABLE `tb_logs`
  MODIFY `activityId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
