-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2020 at 12:22 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '123456', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(8, 'Gynecologist/Obstetrician', 11, 11, 1000, '2020-01-11', '1:15 PM', '2020-01-11 07:42:38', 1, 1, NULL),
(9, 'Test', 13, 8, 2000, '2020-01-11', '1:30 PM', '2020-01-11 07:47:14', 1, 1, NULL),
(10, 'Test', 14, 8, 2000, '2020-01-11', '3:00 PM', '2020-01-11 07:51:01', 1, 1, NULL),
(11, 'Test', 14, 8, 2000, '2020-01-11', '3:00 PM', '2020-01-11 08:00:21', 1, 1, NULL),
(12, 'Test', 18, 8, 10000, '2020-01-11', '4:00 PM', '2020-01-11 10:20:13', 1, 1, NULL),
(13, 'Test', 18, 8, 10000, '2020-01-11', '4:00 PM', '2020-01-11 10:22:05', 1, 1, NULL),
(14, 'criminal', 0, 14, 0, '2020-01-27', '4:15 PM', '2020-01-11 12:06:18', 1, 1, NULL),
(15, 'criminal', 0, 14, 0, '2020-01-27', '4:15 PM', '2020-01-11 12:10:40', 1, 1, NULL),
(16, 'criminal', 0, 14, 0, '2020-01-27', '4:15 PM', '2020-01-11 12:12:45', 1, 1, NULL),
(17, 'corporate', 26, 15, 10000, '2020-01-09', '10:15 PM', '2020-01-11 12:13:23', 1, 1, NULL),
(18, 'corporate', 26, 14, 10000, '2020-01-30', '6:00 PM', '2020-01-11 12:23:22', 1, 1, NULL),
(19, 'criminal', 34, 14, 1000, '2020-01-23', '6:00 PM', '2020-01-11 12:23:59', 1, 1, NULL),
(20, 'criminal', 34, 16, 1000, '2020-01-31', '6:00 PM', '2020-01-11 12:26:49', 1, 1, NULL),
(21, 'labour', 37, 16, 8000, '2020-03-04', '6:00 PM', '2020-01-11 12:27:19', 1, 1, NULL),
(22, 'Real Estate', 31, 17, 4000, '2020-12-23', '6:00 PM', '2020-01-11 12:29:30', 1, 1, NULL),
(23, 'Intellectual Property', 33, 18, 5000, '2020-01-27', '6:15 PM', '2020-01-11 12:31:44', 1, 1, NULL),
(24, 'Mergers', 41, 19, 9000, '2020-04-08', '6:15 PM', '2020-01-11 12:34:07', 1, 1, NULL),
(25, 'corporate', 26, 20, 10000, '2020-01-24', '8:45 PM', '2020-01-11 13:06:55', 1, 1, NULL),
(26, 'criminal', 43, 38, 5000, '2020-01-12', '5:00 PM', '2020-01-12 11:24:25', 1, 1, NULL),
(27, 'criminal', 48, 36, 5000, '2020-01-12', '6:00 PM', '2020-01-12 12:31:03', 1, 1, NULL),
(28, 'civil', 49, 36, 10000, '2020-01-12', '6:15 PM', '2020-01-12 12:34:27', 1, 1, NULL),
(29, 'criminal', 42, 36, 2000, '2020-01-31', '12:45 AM', '2020-01-12 19:04:32', 1, 1, NULL),
(30, 'criminal', 34, 39, 1000, '2020-01-23', '8:45 AM', '2020-01-13 03:07:44', 1, 1, NULL),
(31, 'criminal', 34, 39, 1000, '2020-01-23', '8:45 AM', '2020-01-13 03:08:23', 1, 1, NULL),
(32, 'criminal', 34, 39, 1000, '2020-01-23', '8:45 AM', '2020-01-13 03:08:35', 1, 1, NULL),
(33, 'Real Estate', 31, 15, 4000, '2020-01-15', '', '2020-01-13 03:19:43', 1, 1, NULL),
(34, 'criminal', 59, 15, 5000, '2020-01-15', '', '2020-01-13 03:42:01', 0, 1, '2020-01-13 03:49:18'),
(35, 'criminal', 59, 15, 5000, '2020-01-14', '', '2020-01-13 03:43:39', 1, 0, '2020-01-13 03:54:03'),
(36, 'Patent', 38, 15, 6500, '2020-01-23', NULL, '2020-01-13 03:44:16', 1, 1, NULL),
(37, 'Media', 32, 15, 7000, '2020-01-13', NULL, '2020-01-13 04:14:16', 1, 1, NULL),
(38, 'Media', 32, 15, 7000, '2020-01-13', NULL, '2020-01-13 04:14:57', 1, 1, NULL),
(39, 'criminal', 63, 36, 10000, '', '3:15 PM', '2020-01-13 05:01:01', 1, 1, '2020-01-13 09:53:23'),
(40, 'criminal', 63, 42, 10000, '2020-01-30', NULL, '2020-01-13 09:36:10', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `LawyerCity` varchar(50) NOT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `LawyerCity`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(32, 'Media', 'Shabista Idrisi', '', 'Kurla', '7000', 9876543215, 'afshaidrisi13511@gmail.com', '26d04a24a76550713c95677c55a9dd6c', '2020-01-11 11:23:14', NULL),
(33, 'Intellectual Property', 'Shubham katke', '', 'Andheri', '5000', 9393939393, 'shubhamkatke19@gmail.com', '3b6beb51e76816e632a40d440eab0097', '2020-01-11 11:24:32', NULL),
(34, 'criminal', 'Pathan', '', 'Mumbai', '1000', 9876543218, 'pathan@gmail.com', 'd6ee73e510ea99bb92be29dc977ed96f', '2020-01-11 12:08:52', NULL),
(35, 'civil', 'manan', '', 'Patna', '2000', 9922992299, 'manan@gmail.com', '8870ba40611e8853c5dd7263e3ff9b8d', '2020-01-11 12:22:34', NULL),
(36, 'Tax', 'Romil', '', 'Shivshankar', '3000', 9494949494, 'shivshankarsahu495@gmail.com', 'fcb16ce75c1c76dbbfe08d4468a16035', '2020-01-11 12:24:52', NULL),
(38, 'Patent', 'Tushar', '', 'Mumbai', '6500', 9876543789, 'tushar@gmail.com', 'df7c905d9ffebe7cda405cf1c82a3add', '2020-01-11 12:27:04', NULL),
(59, 'criminal', 'Jashraj Patel', '', 'Bhaki Park', '5000', 0, 'jashrajkp@gmail.com', '8f5ced0c3b09d82a3f8677632d39570b', '2020-01-13 03:40:37', NULL),
(60, 'corporate', 'Tanishk Shah', '', 'Marine Lines', '5000', 0, 'tanishkshah12345@gmail.com', 'cd77144d5454e421111aea3764856f25', '2020-01-13 03:54:50', NULL),
(63, 'criminal', 'Sushant Yelurkar', ',,near chandivali farm road,,400072 ', '', '10000', 0, 'yelurkarsushant@gmail.com', '298b552c163916216cc4891aa79ffa7d', '2020-01-13 04:33:07', NULL),
(64, 'criminal', 'test', '', '13/b/505 Gurukrupa H.S.G soc,Sangharsh nagar Chandivali,Farm road Andheri (East)', '10000', 0, 'yelurkarsushant1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2020-01-17 08:15:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(27, 14, 'ajitjena@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 07:50:20', NULL, 1),
(28, 14, 'ajitjena@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 08:01:02', NULL, 1),
(29, 14, 'ajitjena@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 08:37:15', NULL, 1),
(30, 14, 'ajitjena@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 08:37:59', NULL, 1),
(31, 14, 'ajitjena@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 09:55:37', NULL, 1),
(32, NULL, 'jashraj@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 10:16:16', NULL, 0),
(33, NULL, 'jashra', 0x3a3a3100000000000000000000000000, '2020-01-11 10:16:29', NULL, 0),
(34, NULL, 'jashraj1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 10:17:59', NULL, 0),
(35, NULL, 'jashraaj1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 10:18:20', NULL, 0),
(36, 18, 'tanishk@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 10:19:12', NULL, 1),
(37, 29, '1lmpgd78m0y@fakemailgenerator.net', 0x3a3a3100000000000000000000000000, '2020-01-11 11:20:28', '11-01-2020 04:50:50 PM', 1),
(38, NULL, 'tanishkshah@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 11:26:24', NULL, 0),
(39, 26, 'tanishkshah@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 11:26:35', NULL, 1),
(40, NULL, 'ajitjena123456@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 11:36:25', NULL, 0),
(41, 26, 'tanishkshah@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 11:36:38', '11-01-2020 05:35:52 PM', 1),
(42, 26, 'tanishkshah@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 12:06:50', '11-01-2020 05:41:13 PM', 1),
(43, 34, 'pathan@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 12:09:24', '11-01-2020 05:40:19 PM', 1),
(44, 26, 'tanishkshah@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 12:13:45', '11-01-2020 05:45:09 PM', 1),
(45, NULL, 'ajitjena123456@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 12:15:34', NULL, 0),
(46, NULL, 'tanishkshah@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 12:21:07', NULL, 0),
(47, 26, 'tanishkshah@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 12:21:18', '11-01-2020 05:51:35 PM', 1),
(48, 42, 'aji@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 13:05:18', '11-01-2020 06:37:27 PM', 1),
(49, 26, 'tanishkshah@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 13:08:10', NULL, 1),
(50, 43, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 11:21:16', '12-01-2020 04:51:28 PM', 1),
(51, 43, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 11:24:55', NULL, 1),
(52, 43, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 11:24:57', NULL, 1),
(53, 43, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 12:30:26', '12-01-2020 06:00:43 PM', 1),
(54, NULL, 'tanishkshah', 0x3a3a3100000000000000000000000000, '2020-01-12 12:31:32', NULL, 0),
(55, 49, 'ajitjena12345@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 12:33:37', '12-01-2020 06:03:55 PM', 1),
(56, 49, 'ajitjena12345@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 12:34:41', '12-01-2020 06:17:31 PM', 1),
(57, NULL, 'tanishkshah12345@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 12:49:02', NULL, 0),
(58, NULL, 'ajitjena@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 12:49:17', NULL, 0),
(59, 49, 'ajitjena12345@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 12:50:09', '12-01-2020 06:40:36 PM', 1),
(60, NULL, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 19:21:43', NULL, 0),
(61, 51, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 19:22:36', '13-01-2020 12:52:47 AM', 1),
(62, NULL, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 19:23:20', NULL, 0),
(63, NULL, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 19:23:33', NULL, 0),
(64, NULL, 'yelurkarsushant2gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 19:40:58', NULL, 0),
(65, 52, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 19:41:14', '13-01-2020 01:26:18 AM', 1),
(66, NULL, 'aji@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 03:12:17', NULL, 0),
(67, 31, 'jashrajkp@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 03:12:54', '13-01-2020 08:55:26 AM', 1),
(68, 57, 'jashrajkp@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 03:25:46', '13-01-2020 09:03:02 AM', 1),
(69, 59, 'jashrajkp@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 03:41:09', '13-01-2020 09:24:46 AM', 1),
(70, NULL, 'tanishkshah@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 03:52:50', NULL, 0),
(71, NULL, 'tanishkshah@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 03:53:08', NULL, 0),
(72, NULL, 'shabista idrisi', 0x3a3a3100000000000000000000000000, '2020-01-13 03:54:48', NULL, 0),
(73, NULL, 'afshaidrisi13155@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 03:55:59', NULL, 0),
(74, NULL, 'afshaidrisi13155@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 03:56:28', NULL, 0),
(75, NULL, 'tanishkshah@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 04:05:13', NULL, 0),
(76, 60, 'tanishkshah12345@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 04:05:47', NULL, 1),
(77, 60, 'tanishkshah12345@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 04:06:15', '13-01-2020 09:38:54 AM', 1),
(78, 60, 'tanishkshah12345@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 04:12:23', '13-01-2020 09:47:17 AM', 1),
(79, NULL, 'afshaidrisi131@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 04:16:47', NULL, 0),
(80, NULL, 'tanishkshah@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 04:26:26', NULL, 0),
(81, 60, 'tanishkshah12345@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 04:27:34', NULL, 1),
(82, 60, 'tanishkshah12345@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 04:27:48', '13-01-2020 10:00:14 AM', 1),
(83, 63, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 04:54:03', '13-01-2020 10:36:09 AM', 1),
(84, 63, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 05:06:19', NULL, 1),
(85, 63, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 08:48:53', NULL, 1),
(86, 63, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-14 01:59:01', NULL, 1),
(87, 63, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-14 01:59:20', NULL, 1),
(88, 63, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-14 01:59:21', NULL, 1),
(89, 63, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-14 01:59:21', NULL, 1),
(90, 63, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-14 01:59:21', NULL, 1),
(91, 63, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-14 01:59:21', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(13, 'civil', '2020-01-11 10:55:24', NULL),
(14, 'Tax', '2020-01-11 10:55:36', NULL),
(15, 'criminal', '2020-01-11 10:55:48', NULL),
(16, 'corporate', '2020-01-11 10:56:23', NULL),
(17, 'International', '2020-01-11 10:56:34', NULL),
(18, 'labour', '2020-01-11 10:56:43', NULL),
(19, 'Real Estate', '2020-01-11 10:56:58', NULL),
(20, 'Patent', '2020-01-11 10:57:31', NULL),
(21, 'Media', '2020-01-11 10:57:44', NULL),
(22, 'Competition Law', '2020-01-11 10:58:02', NULL),
(23, 'Intellectual Property', '2020-01-11 10:58:19', NULL),
(24, 'Mergers', '2020-01-11 10:58:58', NULL),
(25, 'Corporate', '2020-01-13 04:01:51', NULL),
(26, 'Corporate', '2020-01-13 04:02:32', NULL),
(27, 'civil', '2020-01-13 04:02:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'test user', 'test@gmail.com', 2523523522523523, ' This is sample text for the test.', '2019-06-29 19:03:08', 'Test Admin Remark', '2019-06-30 12:55:23', 1),
(2, 'Anuj kumar', 'phpgurukulofficial@gmail.com', 1111111111111111, ' This is sample text for testing.  This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing.', '2019-06-30 13:06:50', NULL, NULL, NULL),
(3, 'fdsfsdf', 'fsdfsd@ghashhgs.com', 3264826346, 'sample text   sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  ', '2019-11-10 18:53:48', 'vfdsfgfd', '2019-11-10 18:54:04', 1),
(4, 'Sushant Erappa Yelurkar', 'yelurkarsushant@gmail.com', 9594236104, ' hii bro', '2020-01-12 13:23:51', 'how are you bro', '2020-01-12 13:25:00', 1),
(5, 'Sushant Erappa Yelurkar', 'yelurkarsushant@gmail.com', 9594236104, ' zz', '2020-01-12 13:30:26', 'x sa s', '2020-01-12 15:13:20', 1),
(6, 'Sushant Erappa Yelurkar', 'yelurkarsushant@gmail.com', 9594236104, ' feafaafawe', '2020-01-12 13:32:48', 'sxasxsxsxA', '2020-01-12 15:12:07', 1),
(7, 'Sushant Erappa Yelurkar', 'yelurkarsushant@gmail.com', 9594236104, ' wdwqd', '2020-01-12 13:33:41', 'ascascascsa', '2020-01-12 15:11:41', 1),
(8, 'Sushant Erappa Yelurkar', 'yelurkarsushant@gmail.com', 9594236104, ' sacSXsa', '2020-01-12 13:34:27', 'wgfwegwregew', '2020-01-12 15:11:09', 1),
(9, 'Sushant Erappa Yelurkar', 'yelurkarsushant@gmail.com', 9594236104, ' swdwd', '2020-01-12 13:35:01', 'scascsac', '2020-01-12 15:10:54', 1),
(10, 'Sushant Erappa Yelurkar', 'yelurkarsushant@gmail.com', 9594236104, ' sxsxs', '2020-01-12 13:39:41', 'scsacsacascascsa', '2020-01-12 14:58:53', 1),
(11, 'Sushant Erappa Yelurkar', 'yelurkarsushant@gmail.com', 9594236104, ' eewd', '2020-01-12 13:43:08', 'asddxwS', '2020-01-12 14:54:38', 1),
(12, 'Sushant Erappa Yelurkar', 'yelurkarsushant@gmail.com', 9594236104, ' ascasxXASX', '2020-01-12 13:44:09', 'vsdvasdvawrfvdscvasdrfdcsdf', '2020-01-12 14:52:06', 1),
(13, 'Sushant Erappa Yelurkar', 'yelurkarsushant@gmail.com', 9594236104, ' xdqwxqwx', '2020-01-12 13:44:49', 'hii ajit kaisa hea \r\nkuch changes hea to bil dea bhai', '2020-01-12 14:50:27', 1),
(14, 'Sushant Erappa Yelurkar', 'yelurkarsushant@gmail.com', 9594236104, ' wdqwdqwd', '2020-01-12 13:47:19', 'sushant', '2020-01-12 14:29:20', 1),
(15, 'Sushant Erappa Yelurkar', 'yelurkarsushant@gmail.com', 9594236104, ' wdqwdqwd', '2020-01-12 13:47:44', 'hii babay', '2020-01-12 14:01:43', 1),
(16, 'Sushant Erappa yelurkar423434234', 'yelurkarsushant@gmail.com', 9594236104, ' XSXsxcAX', '2020-01-12 16:41:47', 'afqwdqwdxwq', '2020-01-12 16:47:29', 1),
(17, 'Sushant Erappa yelurkar423434234', 'yelurkarsushant@gmail.com', 9594236104, ' acAXaxawqdAXQWDaxAXwdq', '2020-01-12 16:47:57', 'qwxwxqwxqwasx', '2020-01-12 17:01:28', 1),
(18, 'Sushant Erappa yelurkar423434234', 'yelurkarsushant@gmail.com', 9594236104, ' wAQCXQWXwad', '2020-01-12 16:48:09', 'SXsxAXAxa', '2020-01-12 16:53:08', 1),
(19, 'Sushant Erappa yelurkar423434234', 'yelurkarsushant@gmail.com', 9594236104, ' 213124325464374568769', '2020-01-12 16:48:22', 'fasascasca', '2020-01-12 16:49:36', 1),
(20, 'Sushant Erappa yelurkar423434234', 'yelurkarsushant@gmail.com', 9594236104, ' SCSCSC', '2020-01-12 16:54:30', 'sdcadscsac', '2020-01-12 17:00:38', 1),
(21, 'Sushant Erappa yelurkar423434234', 'yelurkarsushant@gmail.com', 9594236104, ' wdw', '2020-01-12 17:09:24', 'ascasascx', '2020-01-12 18:19:30', 1),
(22, 'Sushant Erappa yelurkar423434234', 'yelurkarsushant@gmail.com', 9594236104, ' wdwd', '2020-01-12 17:09:35', 'asdascsa', '2020-01-12 17:59:38', 1),
(23, 'Sushant Erappa yelurkar', 'yelurkarsushant@gmail.com', 9594236104, ' SxSXA', '2020-01-12 18:22:46', 'sxsax', '2020-01-12 18:55:07', 1),
(24, 'Sushant Erappa yelurkar', 'yelurkarsushant@gmail.com', 9594236104, ' axasx', '2020-01-12 18:58:11', 'ascccasxdaws', '2020-01-12 18:58:22', 1),
(25, 'Sushant Erappa yelurkar', 'yelurkarsushant@gmail.com', 9594236104, ' xaxaxsxaXA', '2020-01-12 19:00:21', 'Scs ad axsc zzsas sa', '2020-01-12 19:00:36', 1),
(26, 'Shabista', 'afshaidrisi13155@gmail.com', 8291283711, ' Hi this is testing', '2020-01-13 04:04:00', NULL, NULL, NULL),
(27, 'Jashraj Patel', 'shubhamkatke19@gmail.com', 1234568, ' HI. how are you??', '2020-01-13 04:08:22', NULL, NULL, NULL),
(28, 'Tanishk Shah', 'tanishkshah12345@gmail.com', 9876543210, ' Hi', '2020-01-13 09:50:34', 'hii tabhungtybyt', '2020-01-13 09:51:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '2019-11-06 04:20:07'),
(3, 2, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', '2019-11-06 04:31:24'),
(4, 1, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', '2019-11-06 04:52:42'),
(5, 1, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', '2019-11-06 04:56:55'),
(6, 4, '90/120', '120', '56', '98 F', '#blood sugar high\r\n#Asthma problem', '2019-11-06 14:38:33'),
(7, 5, '80/120', '120', '85', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup', '2019-11-10 18:50:23'),
(8, 6, '52', '526', '56', '10', 'hi  bro ksa aahes\r\n', '2020-01-11 09:56:36'),
(9, 7, '1', 'Rajesh', '40', '2000', 'High Profile Cases', '2020-01-11 12:00:48'),
(10, 10, 'sd', 'sdcv', 'sdc', 'SDC', 'asc', '2020-01-12 12:59:14'),
(11, 10, 'dsc', 'AC', 'Asc', 'ASC', 'ASCascASCsac', '2020-01-12 13:01:00'),
(12, 10, '1', 'Ajit Jena', '12', '2', 'no experience .................................', '2020-01-12 13:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(7, 26, 'Ajay Jain', 9393299392, 'ajay@gmail.com', 'Male', 'Mumbai', 59, 'Patent', '2020-01-11 11:27:42', '2020-01-11 11:32:39'),
(8, 26, 'Rahul Singh', 9933993399, 'rahul@gmail.com', 'male', 'Delhi', 34, 'Corporate Case', '2020-01-11 11:31:27', NULL),
(9, 1, 'ajit jena', 1234567890, 'ajitjena12345@gmail.com', 'male', ',,near chandivali farm road,,400072', 36, 'chori', '2020-01-12 11:27:52', NULL),
(10, 49, 'Sushant Erappa Yelurkar', 1234567890, 'yelurkarsushant@gmail.com', 'male', '13/b/505 Gurukrupa H.S.G soc,Sangharsh nagar Chandivali,Farm road Andheri (East)', 17, 'hii no history', '2020-01-12 12:35:29', NULL),
(11, 60, 'afsha', 8291283711, 'afshaidrisi13155@gmail.com', 'female', 'kurla', 30, 'bhjgwjhke', '2020-01-13 04:06:56', NULL),
(12, 60, 'John', 9876543219, 'john@gmail.com', 'male', 'Mumbai', 45, 'Hi', '2020-01-13 04:13:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(28, 8, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 07:46:56', NULL, 1),
(29, 8, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 07:50:40', NULL, 1),
(30, 8, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 08:10:02', NULL, 1),
(31, 8, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 08:10:03', '11-01-2020 01:40:32 PM', 1),
(32, 8, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 10:19:58', NULL, 1),
(33, 12, 'ajitjena@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 11:22:29', '11-01-2020 04:57:31 PM', 1),
(34, 13, 'shubhamkatke19@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 11:38:42', '11-01-2020 05:33:26 PM', 1),
(35, 14, 'jashrajpatel@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 12:05:55', NULL, 1),
(36, NULL, 'tanishkshah@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 12:11:18', NULL, 0),
(37, 14, 'jashrajpatel@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 12:11:31', '11-01-2020 05:56:42 PM', 1),
(38, 15, 'tanishkshah@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 12:12:27', '11-01-2020 05:43:30 PM', 1),
(39, NULL, 'salman@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 12:26:14', NULL, 0),
(40, 16, 'salman@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 12:26:28', '11-01-2020 05:57:27 PM', 1),
(41, 17, 'shiv@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 12:28:47', '11-01-2020 05:59:38 PM', 1),
(42, 18, 'khushi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 12:31:10', '11-01-2020 06:01:50 PM', 1),
(43, 19, 'jaisid@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 12:33:42', '11-01-2020 06:04:14 PM', 1),
(44, 20, 'ajit123456@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-11 13:05:52', NULL, 1),
(45, NULL, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 08:44:21', NULL, 0),
(46, NULL, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 08:44:26', NULL, 0),
(47, 24, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 09:45:37', '12-01-2020 03:23:00 PM', 1),
(48, 24, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 09:54:46', '12-01-2020 03:26:25 PM', 1),
(49, NULL, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 10:05:59', NULL, 0),
(50, NULL, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 10:06:04', NULL, 0),
(51, NULL, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 10:06:12', NULL, 0),
(52, 36, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 10:36:37', '12-01-2020 04:44:43 PM', 1),
(53, NULL, 'ajitjena@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 11:21:40', NULL, 0),
(54, NULL, 'ajitjena@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 11:22:34', NULL, 0),
(55, NULL, 'ajitjena@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 11:22:41', NULL, 0),
(56, 38, 'ajitjena12345@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 11:22:52', NULL, 1),
(57, 36, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 12:30:50', '12-01-2020 06:01:10 PM', 1),
(58, 36, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 12:32:07', '12-01-2020 06:02:26 PM', 1),
(59, 36, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 12:34:09', NULL, 1),
(60, 36, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 12:34:10', NULL, 1),
(61, 36, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 18:00:13', '12-01-2020 11:52:41 PM', 1),
(62, NULL, 'yelurkarsushnt@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 18:47:38', NULL, 0),
(63, 36, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 18:48:00', '13-01-2020 12:28:05 AM', 1),
(64, 36, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 19:03:49', '13-01-2020 12:46:39 AM', 1),
(65, 36, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 19:16:58', '13-01-2020 12:50:27 AM', 1),
(66, 36, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-12 19:20:49', '13-01-2020 12:51:25 AM', 1),
(67, 39, 'jashrajkp@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 03:05:35', '13-01-2020 08:40:33 AM', 1),
(68, NULL, 'tanishkshah12345@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 03:15:59', NULL, 0),
(69, NULL, 'tanishkshah12345@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 03:16:22', NULL, 0),
(70, NULL, 'tanishkshah12345@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 03:16:39', NULL, 0),
(71, NULL, 'tanishkshahgmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 03:17:03', NULL, 0),
(72, 15, 'tanishkshah@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 03:17:18', '13-01-2020 08:47:56 AM', 1),
(73, 15, 'tanishkshah@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 03:19:20', '13-01-2020 08:50:30 AM', 1),
(74, 15, 'tanishkshah@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 03:41:42', '13-01-2020 09:22:28 AM', 1),
(75, NULL, 'afshaidrisi', 0x3a3a3100000000000000000000000000, '2020-01-13 03:44:44', NULL, 0),
(76, NULL, 'afsha', 0x3a3a3100000000000000000000000000, '2020-01-13 03:47:22', NULL, 0),
(77, NULL, 'afshaidrisi', 0x3a3a3100000000000000000000000000, '2020-01-13 03:50:09', NULL, 0),
(78, NULL, 'afsha', 0x3a3a3100000000000000000000000000, '2020-01-13 03:50:25', NULL, 0),
(79, NULL, 'shabista', 0x3a3a3100000000000000000000000000, '2020-01-13 03:52:53', NULL, 0),
(80, 15, 'tanishkshah@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 04:09:11', '13-01-2020 09:42:02 AM', 1),
(81, 15, 'tanishkshah@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 04:12:44', '13-01-2020 09:46:15 AM', 1),
(82, NULL, 'tanishkshah12345@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 04:26:00', NULL, 0),
(83, NULL, 'tanishkshah12345@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 04:26:16', NULL, 0),
(84, 15, 'tanishkshah@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 04:26:31', '13-01-2020 09:57:23 AM', 1),
(85, 36, 'yelurkarsushant@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 05:00:40', NULL, 1),
(86, NULL, 'jashrajkp@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 09:32:58', NULL, 0),
(87, 39, 'jashrajkp@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 09:33:11', '13-01-2020 03:07:22 PM', 1),
(88, 42, 'ajitjena123456@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-13 09:35:51', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(14, 'jashraj', 'wadala', 'mumbai', 'male', 'jashrajpatel@gmail.com', '9e64f3a618c9118733bd573022126af3', '2020-01-11 12:05:04', NULL),
(15, 'Tanishk Shah', 'Marine Lines', 'Mumbai', 'male', 'tanishkshah@gmail.com', 'cd77144d5454e421111aea3764856f25', '2020-01-11 12:12:04', NULL),
(16, 'salman', 'gaziabad', 'uttar pradesh', 'male', 'salman@gmail.com', '0a89129a210587f3512b9222d4588e2e', '2020-01-11 12:25:48', NULL),
(17, 'Shiv', 'sakinaka', 'mumbai', 'male', 'shiv@gmail.com', '83aabad1faa2534cfece15c84ace2cb6', '2020-01-11 12:28:24', NULL),
(18, 'khushi', 'wadala', 'MUMBAI', 'female', 'khushi@gmail.com', 'cae5161fc8156ab2de412ec4007a76e2', '2020-01-11 12:30:46', NULL),
(19, 'jaisid', 'dapoli', 'ratnagiri', 'female', 'jaisid@gmail.com', '4bf930187d0149a9e4374a4e823f867d', '2020-01-11 12:33:17', NULL),
(28, 'Tanishk shah', '13/b/505 Gurukrupa H.S.G soc,Sangharsh nagar Chandivali,Farm road Andheri (East)', 'Mumbai Suburban', 'male', 'tanishkshah12345@gmail.com', '9aeb92a38ed38be12d9d9eb515bb7187', '2020-01-12 10:03:30', NULL),
(29, 'Tanishk shah', '13/b/505 Gurukrupa H.S.G soc,Sangharsh nagar Chandivali,Farm road Andheri (East)', 'Mumbai Suburban', 'male', 'tanishkshah12345@gmail.com', '9aeb92a38ed38be12d9d9eb515bb7187', '2020-01-12 10:04:24', NULL),
(36, 'Sushant Erappa Yelurkar', '13/b/505 Gurukrupa H.S.G soc,Sangharsh nagar Chandivali,Farm road Andheri (East)', 'Mumbai Suburban', 'male', 'ajitjena123456@gmail.com', '298b552c163916216cc4891aa79ffa7d', '2020-01-12 10:35:42', '2020-01-13 09:42:28'),
(37, 'Sushant Erappa Yelurkar', '13/b/505 Gurukrupa H.S.G soc,Sangharsh nagar Chandivali,Farm road Andheri (East)', 'Mumbai Suburban', 'male', 'yelurkarsushant@gmail.com', '298b552c163916216cc4891aa79ffa7d', '2020-01-12 10:36:07', NULL),
(38, 'ajitjena', ',,near chandivali farm road,,400072', 'Mumbai', 'male', 'ajitjena12345@gmail.com', 'fbecb99849958fe3ea044bfafa66cd78', '2020-01-12 11:22:11', NULL),
(39, 'Jashraj Patel', 'wadala', 'Mumbau', 'male', 'jashrajkp@gmail.com', 'c1038c4fa51ca9a5e1dc93f7f10160e9', '2020-01-13 03:05:01', NULL),
(40, 'afshaidrisi', 'kurla', 'mumbai', 'female', 'afshaidrisi13155@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2020-01-13 03:49:35', NULL),
(42, 'Ajit Jena', 'maharashtra', 'mumbai', 'male', 'ajitjena123456@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2020-01-13 09:34:40', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
