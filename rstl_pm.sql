-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2022 at 09:45 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rstl_pm`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ac_attachments`
--

CREATE TABLE `tbl_ac_attachments` (
  `ac_attach_id` int(11) NOT NULL,
  `ac_id` int(11) DEFAULT NULL,
  `file_path` varchar(1000) DEFAULT NULL,
  `file_description` varchar(1000) DEFAULT NULL,
  `file_type` varchar(10) DEFAULT NULL,
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ac_attachments`
--

INSERT INTO `tbl_ac_attachments` (`ac_attach_id`, `ac_id`, `file_path`, `file_description`, `file_type`, `date_created`, `status`) VALUES
(37, 7, 'http://122.53.79.156:8082/rstl_pm/images/16541570062022-Jun-Thu-2022 RSTL Staff Accomplishment Report Format.pdf', 'Manual', NULL, '2022-06-02 16:03:27', 1),
(38, 7, 'http://122.53.79.156:8082/rstl_pm/images/16541571692022-Jun-Thu-clavano-civil form2 dtr(1-31) bir (1).pdf', 'Maintenance Report', NULL, '2022-06-02 16:06:09', 1),
(39, 7, 'http://122.53.79.156:8082/rstl_pm/images/16547597102022-Jun-Thu-Q2 Billing Statement.pdf', 'Q2 Billing Statement', NULL, '2022-06-09 15:28:30', 1),
(40, 0, 'http://122.53.79.156:8082/rstl_pm/images/16563125152022-Jun-Mon-002.jpg', 'Menu', NULL, '2022-06-27 14:48:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ac_maint_record`
--

CREATE TABLE `tbl_ac_maint_record` (
  `id` int(11) NOT NULL,
  `ac_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `op_performed` varchar(500) NOT NULL,
  `remarks` varchar(1000) NOT NULL,
  `performed_by` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ac_maint_record`
--

INSERT INTO `tbl_ac_maint_record` (`id`, `ac_id`, `date_added`, `op_performed`, `remarks`, `performed_by`, `date_created`, `status`) VALUES
(3, 7, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-20 09:56:43', 1),
(4, 7, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-20 09:57:44', 1),
(5, 12, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-20 11:40:26', 1),
(6, 12, '2020-10-16 00:00:00', 'CORRECTIVE MAINTENANCE', '- DEFECTIVE SHAFTING\n- DEFECTIVE FAN MOTOR\n- DISALIGNED FAN BLADE AND BLOWER\n- GOOD WORKING CONDITION', 'VVP', '2022-05-20 11:50:24', 1),
(7, 12, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-20 11:51:00', 1),
(11, 51, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-20 13:16:51', 1),
(15, 52, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:19:07', 1),
(16, 52, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION\n\nQ1+Q2 PM WAS NOT CONDUCTED DUE TO THE PANDEMIC - RAP', 'VVP', '2022-05-23 08:19:33', 1),
(17, 52, '2021-10-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:20:18', 1),
(18, 13, '2020-08-26 00:00:00', 'General Cleaning / PM', 'OPERATIONAL AND GOOD CONDITION', 'VVP', '2022-05-23 08:22:26', 1),
(19, 13, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:23:04', 1),
(20, 13, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:23:35', 1),
(21, 14, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:24:08', 1),
(22, 14, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:24:19', 1),
(23, 15, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:24:45', 1),
(24, 15, '2020-10-16 00:00:00', 'Corrective Maintenance', '- DEFECTIVE STARTING CAPACITOR\n- DEFECTIVE SHAFTING AND BEARING\n- GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:25:22', 1),
(25, 15, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:25:36', 1),
(26, 16, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:26:19', 1),
(27, 16, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:26:30', 1),
(28, 18, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:26:53', 1),
(29, 18, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:27:05', 1),
(30, 21, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:27:59', 1),
(31, 21, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:28:09', 1),
(32, 19, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:28:34', 1),
(33, 19, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:28:45', 1),
(34, 2, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:30:18', 1),
(35, 2, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:30:29', 1),
(36, 4, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:31:09', 1),
(37, 4, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:31:19', 1),
(38, 6, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:31:45', 1),
(39, 6, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:32:01', 1),
(40, 5, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:32:21', 1),
(41, 5, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:32:31', 1),
(42, 3, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:32:51', 1),
(43, 3, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:33:02', 1),
(44, 8, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:33:24', 1),
(45, 8, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:33:36', 1),
(46, 9, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:45:04', 1),
(47, 9, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:45:15', 1),
(48, 23, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:51:08', 1),
(49, 23, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:51:17', 1),
(50, 24, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:52:21', 1),
(51, 24, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:52:30', 1),
(52, 25, '2021-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:52:49', 1),
(53, 25, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:53:04', 1),
(54, 26, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:53:40', 1),
(55, 26, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:53:48', 1),
(56, 27, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:54:08', 1),
(57, 27, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:54:22', 1),
(58, 28, '2020-09-03 00:00:00', 'Corrective Maintenance', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:54:56', 1),
(59, 28, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:55:05', 1),
(60, 29, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:55:24', 1),
(61, 29, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:55:36', 1),
(62, 30, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:56:05', 1),
(63, 30, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:56:12', 1),
(64, 31, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:56:50', 1),
(65, 31, '2021-02-26 00:00:00', 'Corrective Maintenance', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:57:02', 1),
(66, 32, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:57:25', 1),
(67, 32, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:57:32', 1),
(68, 33, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:57:52', 1),
(69, 33, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:58:01', 1),
(70, 34, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:58:22', 1),
(71, 34, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:58:30', 1),
(72, 35, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:58:46', 1),
(73, 35, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:59:06', 1),
(74, 36, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:59:26', 1),
(75, 36, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:59:35', 1),
(76, 37, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 08:59:55', 1),
(77, 37, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:00:06', 1),
(78, 38, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:00:29', 1),
(79, 38, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:00:36', 1),
(80, 39, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:01:03', 1),
(81, 39, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:03:00', 1),
(82, 40, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:03:45', 1),
(83, 40, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:03:55', 1),
(84, 41, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:04:19', 1),
(85, 41, '2021-02-26 00:00:00', 'General Cleaning', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:04:26', 1),
(86, 42, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:04:58', 1),
(87, 42, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:05:11', 1),
(88, 43, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:05:32', 1),
(89, 43, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:05:41', 1),
(90, 44, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:06:02', 1),
(91, 44, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:06:11', 1),
(92, 45, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:06:33', 1),
(93, 45, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:06:41', 1),
(94, 46, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:07:04', 1),
(95, 46, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:07:11', 1),
(96, 47, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:07:29', 1),
(97, 47, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:07:37', 1),
(98, 48, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:08:02', 1),
(99, 48, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:08:13', 1),
(100, 49, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:08:31', 1),
(101, 49, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:08:40', 1),
(102, 50, '2020-09-03 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:10:22', 1),
(103, 50, '2021-02-26 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-23 09:10:40', 1),
(104, 12, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:08:19', 1),
(105, 12, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:08:32', 1),
(106, 12, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:08:47', 1),
(107, 13, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:10:09', 1),
(108, 13, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:10:25', 1),
(109, 13, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:10:37', 1),
(110, 14, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:11:28', 1),
(111, 14, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:11:39', 1),
(112, 14, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:11:48', 1),
(113, 15, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:12:14', 1),
(114, 15, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:12:22', 1),
(115, 15, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:12:31', 1),
(116, 16, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:17:05', 1),
(117, 16, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:17:17', 1),
(118, 16, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:17:25', 1),
(119, 18, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:18:09', 1),
(120, 18, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:18:18', 1),
(121, 18, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:18:26', 1),
(122, 21, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:18:42', 1),
(123, 21, '0000-00-00 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:18:51', 1),
(124, 21, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:18:58', 1),
(125, 19, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:19:18', 1),
(126, 19, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:19:29', 1),
(127, 19, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:19:37', 1),
(128, 7, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:20:43', 1),
(129, 7, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:20:55', 1),
(130, 7, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:21:39', 1),
(131, 2, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:22:01', 1),
(132, 2, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:22:08', 1),
(133, 2, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:22:17', 1),
(134, 4, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:23:05', 1),
(135, 4, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:23:48', 1),
(136, 4, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:24:00', 1),
(137, 6, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:24:23', 1),
(138, 6, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:24:33', 1),
(139, 6, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:24:41', 1),
(140, 5, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:25:02', 1),
(141, 5, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:25:15', 1),
(142, 5, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:25:22', 1),
(143, 3, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:25:41', 1),
(144, 3, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:25:50', 1),
(145, 3, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:25:58', 1),
(146, 8, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:26:32', 1),
(147, 8, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:26:42', 1),
(148, 8, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:26:50', 1),
(149, 9, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:27:34', 1),
(150, 9, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:27:44', 1),
(151, 9, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:27:51', 1),
(152, 23, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:28:09', 1),
(153, 23, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:28:17', 1),
(154, 23, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:28:25', 1),
(155, 24, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:28:45', 1),
(156, 24, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:28:52', 1),
(157, 24, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:29:00', 1),
(158, 25, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:29:20', 1),
(159, 25, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:29:29', 1),
(160, 25, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:29:35', 1),
(161, 26, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:29:52', 1),
(162, 26, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:38:07', 1),
(163, 26, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:38:15', 1),
(164, 27, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:38:54', 1),
(165, 27, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:39:04', 1),
(166, 27, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:39:10', 1),
(167, 28, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:42:04', 1),
(168, 28, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:42:12', 1),
(169, 28, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:42:20', 1),
(170, 29, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:42:40', 1),
(171, 29, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:42:47', 1),
(172, 29, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:42:54', 1),
(173, 30, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:43:14', 1),
(174, 30, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:43:24', 1),
(175, 30, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:43:31', 1),
(176, 31, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:44:01', 1),
(177, 31, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:44:10', 1),
(178, 31, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:44:17', 1),
(179, 32, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:44:48', 1),
(180, 32, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:44:58', 1),
(181, 32, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:45:05', 1),
(182, 33, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:45:43', 1),
(183, 33, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:45:53', 1),
(184, 33, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:46:00', 1),
(185, 34, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:46:53', 1),
(186, 34, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:47:01', 1),
(187, 34, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:47:08', 1),
(188, 35, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:47:24', 1),
(189, 35, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:47:31', 1),
(190, 35, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:47:39', 1),
(191, 36, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:48:10', 1),
(192, 36, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:48:18', 1),
(193, 36, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:48:29', 1),
(194, 37, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:49:50', 1),
(195, 37, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:49:59', 1),
(196, 37, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:50:05', 1),
(197, 38, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:50:27', 1),
(198, 38, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:50:34', 1),
(199, 38, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:50:41', 1),
(200, 39, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:52:20', 1),
(201, 39, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:52:33', 1),
(202, 39, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:52:40', 1),
(203, 40, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:53:19', 1),
(204, 40, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:53:27', 1),
(205, 40, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:53:41', 1),
(206, 41, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:54:02', 1),
(207, 41, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:54:10', 1),
(208, 41, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:54:21', 1),
(209, 42, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:54:38', 1),
(210, 42, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:54:47', 1),
(211, 42, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:54:53', 1),
(212, 43, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:55:19', 1),
(213, 43, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:55:30', 1),
(214, 43, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:55:36', 1),
(215, 44, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:55:57', 1),
(216, 44, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:56:06', 1),
(217, 44, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:56:19', 1),
(218, 45, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:56:55', 1),
(219, 45, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:57:03', 1),
(220, 45, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:57:12', 1),
(221, 46, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:57:35', 1),
(222, 46, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:57:45', 1),
(223, 46, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:57:53', 1),
(225, 47, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:58:43', 1),
(226, 47, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:58:58', 1),
(227, 47, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 08:59:06', 1),
(228, 48, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 09:00:07', 1),
(229, 48, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 09:00:18', 1),
(230, 48, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 09:00:26', 1),
(231, 49, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 09:00:45', 1),
(232, 49, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 09:03:39', 1),
(233, 49, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 09:03:46', 1),
(234, 50, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 09:04:14', 1),
(235, 50, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 09:04:22', 1),
(236, 50, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 09:04:31', 1),
(237, 51, '2021-06-01 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 09:05:03', 1),
(238, 51, '2021-10-09 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 09:05:12', 1),
(239, 51, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-24 09:05:22', 1),
(240, 52, '2022-04-23 00:00:00', 'General Cleaning / PM', 'GOOD WORKING CONDITION', 'VVP', '2022-05-27 11:38:36', 1),
(241, 7, '0000-00-00 00:00:00', '', '', '', '2022-09-07 16:52:58', 0),
(242, 7, '1970-01-01 00:00:00', 'afaf', '', '', '2022-09-07 16:53:04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ac_status`
--

CREATE TABLE `tbl_ac_status` (
  `id` int(11) NOT NULL,
  `equip_stat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ac_status`
--

INSERT INTO `tbl_ac_status` (`id`, `equip_stat`) VALUES
(1, 'Working'),
(2, 'Not-Working');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_aircon`
--

CREATE TABLE `tbl_aircon` (
  `id` int(10) NOT NULL,
  `code_no` varchar(45) DEFAULT NULL,
  `equipment_name` varchar(1000) DEFAULT NULL,
  `manufacturer` varchar(1000) DEFAULT NULL,
  `type_model_no` varchar(100) DEFAULT NULL,
  `serial_no` varchar(100) DEFAULT NULL,
  `software_name` varchar(100) DEFAULT NULL,
  `current_location` varchar(100) DEFAULT NULL,
  `placement_date` datetime DEFAULT NULL,
  `received_condition` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `mfg_instructions` varchar(100) DEFAULT NULL,
  `other_specifications` varchar(1000) DEFAULT NULL,
  `remarks` varchar(1000) DEFAULT NULL,
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `ac_stat` int(11) DEFAULT '1',
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_aircon`
--

INSERT INTO `tbl_aircon` (`id`, `code_no`, `equipment_name`, `manufacturer`, `type_model_no`, `serial_no`, `software_name`, `current_location`, `placement_date`, `received_condition`, `price`, `mfg_instructions`, `other_specifications`, `remarks`, `date_created`, `ac_stat`, `status`) VALUES
(1, 'saf', '2', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 11:14:16', 1, 0),
(2, 'RO-ORD-ACU-1.5', 'Air conditioning Unit', '', 'Split Type, Samsung - 2.0 hp', '', NULL, 'ORD Office', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 11:14:49', 1, 1),
(3, 'RO-ORD-ACU-1.1', 'Air conditioning Unit', '', 'Window Type, LG - 1.0hp', '', NULL, 'ORD Office', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 11:16:00', 1, 1),
(4, 'RO-ORD-ACU-1.4', 'Air conditioning Unit', '', 'Window Type, Sharp - 1.0hp', '', NULL, 'ORD Office', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 11:16:56', 1, 1),
(5, 'RO-ORD-ACU-1.2', 'Air conditioning Unit', '', 'Window Type, Sharp - 1.0hp', '', NULL, 'ORD Office', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 11:17:54', 1, 1),
(6, 'RO-ORD-ACU-1.3', 'Air conditioning Unit', '', 'Window Type, Sharp - 1.0hp', '', NULL, 'ORD Office', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 11:19:46', 1, 1),
(7, 'RO-COA-ACU-1.1', 'Air conditioning Unit', 'Carrier', 'Window Type, National - 2.0 hp', 'Property No.: RO-AC-ACEL-001', NULL, 'COA Office', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 11:21:36', 1, 1),
(8, 'RO-FASD-ACU-1.1', 'Air conditioning Unit', '', 'Window Type, LG - 1.0hp', '', NULL, 'FASD Office', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 11:24:08', 1, 1),
(9, 'RO-FASD-ACU-1.2', 'Air conditioning Unit', '', 'Window Type, Sharp - 1.0hp', '', NULL, 'FASD Office', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 11:27:34', 1, 1),
(10, 'saf', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 11:28:15', 1, 0),
(11, 'try delete', 'try deleter', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 11:31:23', 1, 0),
(12, 'RO-RSTL-ACU-1.15', 'Air conditioning Unit', '', 'Split Type, Koppel - 2.0 hp', 'LB350(350)', NULL, 'MIC Sterile Lab', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 11:31:30', 1, 1),
(13, 'RO-FASD-ACU-1.6', 'Air conditioning Unit', '', 'Split Type, Koppel - 2.0 hp', '', NULL, 'FASD Office', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 11:34:42', 1, 1),
(14, 'RO-TSD-ACU-1.4', 'Air conditioning Unit', '', 'Window Type, Sharp - 1.0hp', '', NULL, 'TSD Office', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 11:35:11', 1, 1),
(15, 'RO-RSTL-ACU-1.18', 'Air conditioning Unit', '', 'Window Type, Carrier - 1.0 hp', 'H2RACCARIOKECF08PC-0447619', NULL, 'RSTL Hallway Near MIC Lab', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 11:36:38', 1, 1),
(16, 'RO-TSD-ACU-1.3', 'Air conditioning Unit', '', 'Window Type, Sharp - 1.0hp', '', NULL, 'TSD Office', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 11:49:15', 1, 1),
(17, 'safagsadgdfhgdh', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 11:49:26', 1, 0),
(18, 'RO-TSD-ACU-1.2', 'Air conditioning Unit', '', 'Window Type, Sharp - 1.0hp', '', NULL, 'TSD Office', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 11:49:57', 1, 1),
(19, 'RO-ORD-ACU-1.6', 'Air conditioning Unit', '', 'Split Type, Midea - 2.0 hp', '', NULL, 'ORD Office', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 11:51:15', 1, 1),
(20, 'sf', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 11:52:43', 1, 0),
(21, 'RO-TSD-ACU-1.1', 'Air conditioning Unit', '', 'Window Type, Sharp - 1.0hp', '', NULL, 'TSD Office', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 12:57:29', 1, 1),
(22, 'try', 'try', 'try', 'try', 'try', NULL, 'try', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 14:17:21', 1, 0),
(23, 'RO-FASD-ACU-1.3', 'Air conditioning Unit', '', 'Window Type, Carrier - 1.0 hp', '', NULL, 'FASD Office', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:38:05', 1, 1),
(24, 'RO-FASD-ACU-1.4', 'Air conditioning Unit', '', 'Split Type, Sharp - 2.0 hp', '', NULL, 'FASD Office', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:38:07', 1, 1),
(25, 'RO-FASD-ACU-1.5', 'Air conditioning Unit', '', 'Split Type, Sharp - 2.0 hp', '', NULL, 'FASD Office', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:38:08', 1, 1),
(26, 'RO-SERVER-ACU-1.1', 'Air conditioning Unit', '', 'Window Type, Sharp - 1.0hp', '', NULL, 'Server Room', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:38:10', 1, 1),
(27, 'RO-RSTL-ACU-1.26', 'Air conditioning Unit', '', 'Split Type, Koppel - 2.0 hp', 'DU250220', NULL, 'RSTL Hallway', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:38:13', 1, 1),
(28, 'RO-RSTL-ACU-1.25', 'Air conditioning Unit', '', 'Window Type, Carrier - 1.0 hp', '120110600642', NULL, 'CHE Drinking Lab', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:38:15', 1, 1),
(29, 'RO-RSTL-ACU-1.24', 'Air conditioning Unit', '', 'Window Type, LG - 1.0hp', '601TAULC8318', NULL, 'CHE Drinking Lab', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:38:18', 1, 1),
(30, 'RO-RSTL-ACU-1.23', 'Air conditioning Unit', '', 'Split Type, Koppel - 2.0 hp', '98SC18232', NULL, 'CHE Drinking Lab', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:38:20', 1, 1),
(31, 'RO-RSTL-ACU-1.22', 'Air conditioning Unit', '', 'Window Type, LG - 1.0hp', '601TAKKC8485', NULL, 'CHE Weighing Room', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:38:22', 1, 1),
(32, 'RO-RSTL-ACU-1.21', 'Air conditioning Unit', '', 'Window Type, National - 2.0 hp', '', NULL, 'CHE Wet Lab', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:38:24', 1, 1),
(33, 'RO-RSTL-ACU-1.20', 'Air conditioning Unit', '', 'Window Type, Carrier - 2.0 hp', '111705055', NULL, 'CHE Wet Lab', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:43:42', 1, 1),
(34, 'RO-RSTL-ACU-1.19', 'Air conditioning Unit', '', 'Window Type, National - 2.0 hp', '5D0615884', NULL, 'CHE Wet Lab', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:43:44', 1, 1),
(35, 'RO-TSD-ACU-1.5', 'Air conditioning Unit', '', 'Split Type, Samsung - 2.0 hp', '', NULL, 'TSD Office', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:43:45', 1, 1),
(36, 'RO-RSTL-ACU-1.6', 'Air conditioning Unit', '', 'Window Type, LG - 1.0hp', '601TAZFC8429', NULL, 'RML Old Room (Temperature Calibration)', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:43:47', 1, 1),
(37, 'RO-RSTL-ACU-1.7', 'Air conditioning Unit', '', 'Window Type, Sharp - 1.0hp', 'AF-T1017CR', NULL, 'RML Old Room (Small Mass Calibration)', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:43:49', 1, 1),
(38, 'RO-RSTL-ACU-1.1', 'Air conditioning Unit', '', 'Split Type, Koppel - 2.0 hp', 'AC250034', NULL, 'CRO Area', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:43:51', 1, 1),
(39, 'RO-RSTL-ACU-1.2', 'Air conditioning Unit', '', 'Window Type, Carrier - 2.0 hp', '', NULL, 'RML New Room (Thermohygrometer Calibration)', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:43:53', 1, 1),
(40, 'RO-RSTL-ACU-1.3', 'Air conditioning Unit', '', 'Window Type, Sharp - 1.0hp', '1801050563', NULL, 'RML New Room (Big Mass Calibration)', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:43:55', 1, 1),
(41, 'RO-RSTL-ACU-1.4', 'Air conditioning Unit', '', 'Split Type, LG - 2.0 hp', '507HARDC3590/507HAJTA5612', NULL, 'RSTL Office', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:43:56', 1, 1),
(42, 'RO-RSTL-ACU-1.8', 'Air conditioning Unit', '', 'Window Type, Carrier - 2.0 hp', '', NULL, 'SHL Lab', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:43:58', 1, 1),
(43, 'RO-RSTL-ACU-1.9', 'Air conditioning Unit', '', 'Split Type, Koppel - 2.0 hp', 'KB250086', NULL, 'SHL Lab', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:50:32', 1, 1),
(44, 'RO-RSTL-ACU-1.10', 'Air conditioning Unit', '', 'Window Type, TCL - 1.0hp', '10061ZJ4930J40100011', NULL, 'MIC Lab Hallway', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:50:34', 1, 1),
(45, 'RO-RSTL-ACU-1.11', 'Air conditioning Unit', '', 'Window Type, TCL - 1.0hp', '10061ZJ4930J40101167', NULL, 'MIC Lab Hallway', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:50:37', 1, 1),
(46, 'RO-RSTL-ACU-1.12', 'Air conditioning Unit', '', 'Window Type, TCL - 1.0hp', '10061ZJ4930J40100002', NULL, 'MIC Media Prep', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:50:39', 1, 1),
(47, 'RO-RSTL-ACU-1.13', 'Air conditioning Unit', '', 'Window Type, Carrier - 1.0 hp', '', NULL, 'MIC Media Prep', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:50:40', 1, 1),
(48, 'RO-RSTL-ACU-1.14', 'Air conditioning Unit', '', 'Split Type, Koppel - 2.0 hp', 'LB380(338)', NULL, 'MIC Drinking Lab', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:53:45', 1, 1),
(49, 'RO-RSTL-ACU-1.16', 'Air conditioning Unit', '', 'Window Type, National - 2.0 hp', '4D1705557', NULL, 'CHE Instrumentation Room', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:53:47', 1, 1),
(50, 'RO-RSTL-ACU-1.17', 'Air conditioning Unit', '', 'Window Type, National - 2.0 hp', '741614991', NULL, 'CHE Instrumentation Room', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:53:49', 1, 1),
(51, 'RO-DORM-ACU-1.1', 'Air conditioning Unit', 'Sharp', 'Window Type, Sharp - 1.0hp', 'P1931040663', NULL, 'DOST-X Dorm', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 08:53:50', 1, 1),
(52, 'RO-RSTL-ACU-1.5', 'Air conditioning Unit', '', 'Split Type, Samsung - 2.0 hp', 'QOPJPDCD600048', NULL, 'RSTL Document Room', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 14:23:27', 1, 1),
(53, '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-02 10:15:34', 1, 0),
(54, '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-02 11:39:39', 1, 0),
(55, '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-02 16:21:21', 1, 0),
(56, '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-02 16:23:20', 1, 0),
(57, '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 16:52:30', 1, 0),
(58, '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 16:52:42', 1, 0),
(59, '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 16:54:40', 1, 0),
(60, '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-07 16:56:45', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_calibration_type`
--

CREATE TABLE `tbl_calibration_type` (
  `ctype_id` int(11) NOT NULL,
  `calib_req` varchar(100) DEFAULT NULL,
  `measurement_unit` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `datetime_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_calibration_type`
--

INSERT INTO `tbl_calibration_type` (`ctype_id`, `calib_req`, `measurement_unit`, `status`, `datetime_created`) VALUES
(1, 'Volume Accuracy', 'Volume', 1, '2021-12-24 14:06:38'),
(2, 'Temperature accuracy and stability', 'Temperature', 1, '2021-12-24 14:07:14'),
(3, 'Pressure accuracy and stability', 'Pressure', 1, '2021-12-24 14:07:38'),
(4, 'Mass accuracy', 'Mass', 1, '2021-12-24 14:08:01'),
(5, 'Hardness Value', 'HRC, HRB, BHN', 1, '2021-12-24 14:08:30'),
(6, 'Hardness Value', 'BHN', 1, '2021-12-24 14:08:51'),
(7, 'Length accuracy', 'Metric System', 1, '2021-12-24 14:09:12'),
(8, 'Reading accuracy', 'Mass', 1, '2021-12-24 14:10:04'),
(9, 'Reading precision and accuracy', 'temperature/pressure', 1, '2021-12-24 14:10:56'),
(10, 'Humidity and Temperature accuracy', 'humidity/pressure', 1, '2021-12-24 14:11:39'),
(11, 'Temperature, humidity and velocity accuracy and stability', 'temperature', 1, '2021-12-24 14:12:23'),
(12, 'Surface flatness accuracy', 'Metric System', 1, '2021-12-24 14:12:53'),
(13, 'Temperature and pressure accuracy and stability', 'Temperature', 1, '2021-12-24 14:14:15'),
(14, 'Temperature and humidity accuracy', 'Temperature/Humidity', 1, '2021-12-24 14:14:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_calib_program`
--

CREATE TABLE `tbl_calib_program` (
  `calib_id` int(11) NOT NULL,
  `equip_id` int(11) DEFAULT NULL,
  `calib_type_id` int(11) DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_calib_program`
--

INSERT INTO `tbl_calib_program` (`calib_id`, `equip_id`, `calib_type_id`, `frequency`, `date_added`, `status`) VALUES
(1, 133, 1, 5, NULL, 1),
(2, 133, 4, 6, NULL, 1),
(3, 132, 1, 5, NULL, 1),
(4, 132, 4, 6, NULL, 1),
(5, 134, 1, 5, NULL, 1),
(6, 134, 4, 6, NULL, 1),
(7, 135, 1, 6, NULL, 1),
(8, 135, 5, 7, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_equipment`
--

CREATE TABLE `tbl_equipment` (
  `id` int(10) NOT NULL,
  `code_no` varchar(45) DEFAULT NULL,
  `equipment_name` varchar(1000) DEFAULT NULL,
  `manufacturer` varchar(1000) DEFAULT NULL,
  `type_model_no` varchar(100) DEFAULT NULL,
  `serial_no` varchar(100) DEFAULT NULL,
  `software_name` varchar(100) DEFAULT NULL,
  `current_location` varchar(100) DEFAULT NULL,
  `placement_date` datetime DEFAULT NULL,
  `received_condition` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `mfg_instructions` varchar(100) DEFAULT NULL,
  `other_specifications` varchar(1000) DEFAULT NULL,
  `remarks` varchar(1000) DEFAULT NULL,
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_equipment`
--

INSERT INTO `tbl_equipment` (`id`, `code_no`, `equipment_name`, `manufacturer`, `type_model_no`, `serial_no`, `software_name`, `current_location`, `placement_date`, `received_condition`, `price`, `mfg_instructions`, `other_specifications`, `remarks`, `date_created`, `status`) VALUES
(1, 'RML-EQ-1.1', 'Air Conditioning Unit, Carrier', 'Carrier', 'WCARP019ED', '51PMXRACCAR19KEDE08PC-0324277', 'N/A', 'Office Area', '0000-00-00 00:00:00', 'Good, Working', 0, 'N/A', '5 in 1 filter', '', '2021-12-24 13:15:58', 1),
(132, 'RML-EQ-1.2', 'Air Conditioning Unit, Carrier', 'Carrier', '', '51CHG-RAC-CAR-10KECB14P-C010-5134', 'N/A', 'Mass Room', '2016-12-01 00:00:00', 'Good, Working', 0, 'N/A', '', '', '2021-12-23 10:08:15', 1),
(133, 'RML-EQ-2.1', 'Barometer, Aneroid, Sato', 'Sato', '', '57082', 'N/A', 'Mass Section Room', '0000-00-00 00:00:00', 'Good, Working', 0, 'N/A', '930-1070 hPa/700-800mmHg', '', '2021-12-23 10:09:05', 1),
(134, 'RML-EQ-1.3', 'Air Conditioning Unit, Samsung', 'Samsung', '', '', '', '', '0000-00-00 00:00:00', '', 0, '', '', '', '2021-12-23 10:11:24', 1),
(135, 'RML-EQ-1.1', 'Air Conditioning Unit, Carrier', 'Carrier', 'WCARP019ED', '51PMXRACCAR19KEDE08PC-0324277', 'N/A', 'Office Area', '0000-00-00 00:00:00', 'Good, Working', 0, 'N/A', '5 in 1 filter', '', '2021-12-23 10:14:49', 0),
(136, 'RML-EQ-3.3', 'Computer, Laptop, Acer', 'Acer', 'KAV10', 'LUS62OBO279O9232O41601', 'WindowsXP', 'Weighing Room', '0000-00-00 00:00:00', 'Good, Working', 0, 'N/A', '', '', '2021-12-23 10:15:53', 1),
(137, 'RML-EQ-3.1', 'Computer, Laptop, Acer', 'Acer', 'LH1, Acer Aspire 3810T Series', '92502048723', 'Windows Vista', 'FBQ\'s Office', '0000-00-00 00:00:00', 'Good, Working', 0, 'N/A', 'DC Rating: 19V, 3.42A', 'Blind Laptop', '2021-12-23 10:21:24', 1),
(138, 'RML-EQ-3.2', 'Computer, Laptop, Acer', 'Acer', 'KAV10', 'LUS620B027909232041601', 'Windows VXp', 'Mass Section Room', '0000-00-00 00:00:00', 'Good, Working', 0, 'N/A', 'DC Rating: 19V, 1.58A', '', '2021-12-23 10:22:52', 1),
(139, 'RML-EQ-3.4', 'Computer, Laptop, Compaq Presario', 'Compaq Computer Corporation', 'SERIES 2940', 'V733BQH5C934', 'WINDOWS 95/98', 'Weighing Room', '0000-00-00 00:00:00', 'Good, Working', 0, 'N/A', '', '', '2022-04-28 08:35:25', 1),
(140, 'RML-EQ-3.5', 'Computer, Laptop, Toshiba', 'Toshiba Corporation', 'PSMCOL-02400C', '87135149Q', '', 'Weighing Room', '0000-00-00 00:00:00', 'Good, Working', 0, 'N/A', 'DC Rating, 19V, 3.42A', '', '2022-04-28 08:36:51', 1),
(141, 'RML-EQ-3.6', 'Computer, Laptop, Toshiba', 'Toshiba Corporation', '', '', '', 'Mass Section Room', '0000-00-00 00:00:00', 'Good, Working', 0, 'N/A', '', '', '2022-04-28 08:37:42', 1),
(142, 'RML-EQ-3.7', 'Computer, Laptop, ACER ASPIRE 47362 SERIES', 'ACER', 'KALGO', 'LXP530C010920328551601', 'WINDOWS 7', 'FBQ OFFICE', '0000-00-00 00:00:00', 'Good, Working', 0, 'N/A', '', '', '2022-04-28 08:40:30', 1),
(143, 'RML-EQ-3.8', 'Computer, Laptop, ACER ASPIRE E1-431', 'ACER', 'ZQT', 'NXMORSPO14333069DC7600', 'WINDOWS 8', 'FBQ ROOM', '0000-00-00 00:00:00', 'Good, Working', 0, 'N/A', '', 'Accessory to RML-EQ-8.4 (Mass Comparator, Sartorius)', '2022-04-28 08:42:44', 1),
(144, 'RML-EQ-3.9', 'Computer, Laptop, ACER ASPIRE E-14', 'ACER', 'E5 - 47636-3', 'NXMXJSPOO1519007AAF3400', 'WINDOWS 8', 'FBQ ROOM', '2015-06-25 00:00:00', 'Good, Working', 0, 'AVAILABLE', 'CHARCOAL GREY INTEL CORE I3 - 4005V PROCESSOR 4GB DDR3 MEMORY 1TB HDD SATA', 'RO-RML-COM-005', '2022-04-28 08:45:21', 1),
(145, 'RML-EQ-3.10', 'Computer, Laptop, ACER ASPIRE E-14', 'ACER', 'ES - 47636-3', 'NXMXHSP0015190A2FB3400', 'WINDOWS 8', 'FBQ ROOM', '2015-06-25 00:00:00', 'Good, Working', 28140, 'AVAILABLE', 'OCEAN BLUE INTEL CORE I3 - 4005V PROCESSOR 4GB DDR3 MEMORY 1TB HDD SATA', '', '2022-04-28 08:47:50', 1),
(146, 'RML-EQ-3.11', 'Computer, Laptop, ACER ASPIRE E-14', 'ACER', 'E5 - 47636-3', 'NXMXJSPOO151907AEC3400', 'WINDOWS 8', 'FBQ ROOM', '2015-06-25 00:00:00', 'Good, Working', 28140, 'AVAILABLE', 'CHARCOAL GREY INTEL CORE I3 - 4005V PROCESSOR 4GB DDR3 MEMORY 1TB HDD SATA', '', '2022-04-28 08:49:31', 1),
(147, 'RML-EQ-3.12', 'Computer, Laptop, Samsung', 'Samsung', '', '', '', 'FBQ ROOM', '0000-00-00 00:00:00', 'Good, Working', 0, 'N/A', '', 'Accessory to RML-EQ-8.31 (Mass Comparator, Radwag)', '2022-04-28 08:50:28', 1),
(148, 'RML-EQ-4.1', 'Dead Weight Tester, Portable Pneumatic', 'Pressurements LTD.', 'M220013', '9773-96', 'N/A', 'OFFICE ROOM', '0000-00-00 00:00:00', 'Good, Working', 0, '', 'Range: 10-10000psi, Factor: X20, g:980-665', '', '2022-04-28 08:52:57', 1),
(149, 'RML-EQ-4.2', 'Pressure Comparator, Type T', 'Ametek, Mansfield and Green Division', '2481482 & 3155041', '100313', 'N/A', 'Office Room', '0000-00-00 00:00:00', 'Good, Working', 0, '', 'Digital Readout', '', '2022-04-28 08:54:50', 1),
(150, 'RML-EQ-5.1', 'Dehumidifier, White Westing House', 'White Westing House', '', '', 'N/A', 'Office Room', '0000-00-00 00:00:00', 'Good, Working', 0, '', '30 frost control, automatic shut off', '10Aug2016: Humidifier motor is defective. Motor needs rewinding.', '2022-04-28 08:56:25', 1),
(151, 'RML-EQ-6.1', 'Vent Hood', 'Philab Industries Inc.', 'N/A', 'N/A', 'N/A', 'Office Room', '0000-00-00 00:00:00', 'Good, Working', 0, 'N/A', '', '', '2022-04-28 08:57:12', 1),
(152, 'RML-EQ-7.1', 'LCD Monitor, AOC', 'AOC, TVP Electric(Fujian) Co. LTD', '7FT15W60PS', 'V489BJA000611', 'N/A', 'Mass Section Room', '0000-00-00 00:00:00', 'Good, Working', 0, '', 'Product Name: 1619SQ', '', '2022-04-28 08:58:50', 1),
(153, 'RML-EQ-7.2', 'LCD Monitor, AOC', 'AOC, TVP Electronic(Fujian) Co. LTD', 'TFT15W60PS', 'I8287JA012061', 'N/A', 'Mass Section Room', '0000-00-00 00:00:00', 'Good, Working', 0, 'N/A', 'Product Name: 1619Sw Power Rating 100-240V, 50/60Hz, 1.5A', '', '2022-04-28 09:00:30', 1),
(154, 'RML-EQ-8.1', 'Mass Comparator, Analytical Balance, Sartorius', 'Sartorius', 'LC5101S', '80301371', 'N/A', 'Mass Section Room', '0000-00-00 00:00:00', 'Good, Working', 0, '', '', '', '2022-04-28 09:01:56', 1),
(155, 'RML-EQ-7.3', 'LCD Monitor, Samsung', 'Samsung', 'S20B300B', 'ZUL6HMBC700141H', 'N/A', 'Receiving Area', '0000-00-00 00:00:00', 'Good, Working', 0, '', 'DC 14V, 2.14A', '', '2022-04-28 09:03:00', 1),
(156, 'RML-EQ-8.2a', 'Mass Comparator, Digital Readout, Sartorius', 'Sartorius', 'CCE60K2', '2370518', '', 'Mass Section Room', '0000-00-00 00:00:00', 'Good, Working', 0, '', '', '', '2022-04-28 09:03:59', 1),
(157, 'RML-EQ-8.2', 'Mass Comparator, Digital Readout, Sartorius', 'Sartorius', 'CCE60K2', '2370518', '', 'Mass Section Room', '0000-00-00 00:00:00', 'Good, Working', 0, '', '', '', '2022-04-28 09:04:55', 1),
(158, 'RML-EQ-8.3a', 'Mass Comparator, Digital Readout, Radwag', 'Radwag', 'WAY 500.3YKO', '384112/13', '', 'Mass Section Room', '2013-07-10 00:00:00', 'Good, Working', 0, '', '', '', '2022-04-28 09:05:59', 1),
(159, 'RML-EQ-8.3', 'Mass Comparator, Radwag', 'Radwag ', 'WAY 500.3YKO', '384112/13', '', 'Mass Room', '2013-07-10 00:00:00', 'Good, Working', 0, '', '', '', '2022-04-28 09:06:56', 1),
(160, 'RML-EQ-8.3b', 'Mass Comparator attached Data Printer, Samsung', 'Samsung', '', '', '', '', '0000-00-00 00:00:00', '', 0, '', '', '', '2022-04-28 09:07:50', 1),
(161, 'RML-EQ-8.4', 'Mass Comparator, Sartorius', 'Sartorius', 'CCE2004', '31303328', '', 'Mass Room', '2014-04-01 00:00:00', 'Satisfactory', 1778499, 'Available', 'Complete with Draft shield YDS24C Capacity: 2500g, Resolution: 0.1mg ', 'Pull out for Repair by exclusive traders on 5 Nov 14 due to increasing reading. Delivered by the exclusive Traders on Feb 15', '2022-04-28 09:10:53', 1),
(162, 'RML-EQ-8.4a', 'Mass Comparator, Digital Readout', 'Sartorius', '', '', '', 'Mass Room', '0000-00-00 00:00:00', 'Good, Working', 0, 'N/A', '', '', '2022-04-28 09:11:45', 1),
(163, 'RML-EQ-9.1', 'Pocket Weather Tracker, Kestrel', 'Kestrel', '4000', '591230', 'N/A', 'Mass Section Room', '0000-00-00 00:00:00', 'Good, Working', 0, '', '', '', '2022-04-28 09:12:30', 1),
(164, 'RML-EQ-10.1', 'Printer, EPSON LX-300', 'EPSON', 'LX-300', '', '', 'Mass Section Room', '0000-00-00 00:00:00', 'Good, Working', 0, '', '', '', '2022-04-28 09:13:07', 1),
(165, 'RML-EQ-10.2', 'Printer, HP LaserJet', 'Hewlett Packard', 'P1006', 'VNF4G05182', '', 'Office Room', '0000-00-00 00:00:00', 'Good, Working', 0, '', '', '', '2022-04-28 10:39:58', 1),
(166, 'RML-EQ-10.3', 'Printer, HP Deskjet 2060 All-in-One', 'HP', 'VCVRA-1001', 'CN19F33MZN', '', 'Office Room', '0000-00-00 00:00:00', 'Satisfactory', 0, '', '', '', '2022-04-28 10:40:58', 1),
(167, 'RML-EQ-10.4', 'Printer, HP Deskjet 2515', 'HP', 'VCVRA-1221', 'CN36Q3PM2B', '', 'FBQ ROOM', '0000-00-00 00:00:00', 'Good, Working', 0, 'Available', '', '', '2022-04-28 10:41:56', 1),
(168, 'RML-EQ-10.5', 'Printer, Samsung', 'Samsung', 'ML-2164', '2629B8GD2DOO5GM', '', 'Mass Room', '0000-00-00 00:00:00', 'Good, working', 0, '', 'Laser Printer', 'Accessory to RML-EQ-8.3a (Mass Comparator), RML-EQ-3.12. Not used Reason: Samsung Laser Cartridge is expensive.', '2022-04-28 10:44:42', 1),
(169, 'RML-EQ-10.6', 'Printer, HP Deskjet 1515 All-in-One', 'HP', 'SNPRB-1204-01', 'CN3QIN731', 'Printer Software', 'FBQ Office', '2015-07-03 00:00:00', 'Good, Working', 3659, 'Available', '', '', '2022-04-28 10:45:59', 1),
(170, 'RML-EQ-11.1', 'Temperature Calibrator, Data Logger, 73VR', 'M System', '73VR2112-E-M2', '71033656', '', 'Mass Section Room', '0000-00-00 00:00:00', 'Good, Working', 0, '', '', '', '2022-04-28 10:47:15', 1),
(171, 'RML-EQ-11.2', 'Thermocouple Calibrator, Universal, Ametek', 'Ametek', '422', '188992', '', 'Mass Section Room', '0000-00-00 00:00:00', 'Good, Working', 0, '', '', '', '2022-04-28 10:48:04', 1),
(172, 'RML-EQ-12.2', 'Thermohygrometer, Vaisala', 'Vaisala', 'HM141', 'E2150004', '', 'Office Room', '0000-00-00 00:00:00', 'Good, Working', 0, '', 'Operating Temp Range: -20-60°C/-4-140°F, Humidity Range: 0 to 100%RH, Battery: 1.5V', '', '2022-04-28 10:49:36', 1),
(173, 'RML-EQ-12.1', 'Thermohygrometer', 'Cole Palmer Instrument Company', '3310-40', '', '', 'Weighing Room', '0000-00-00 00:00:00', 'Good, Working', 0, 'N/A', 'Temp Range: -10-76°C/0-180°F, Humidity Range: 0 to 100% RH ', '', '2022-04-28 11:51:25', 1),
(174, 'RML-EQ-12.4', 'Temperature and Humidity Datalogger, Extech', 'Extech', '42280', '9926105', 'Extech SW276 Software', 'Mass Section Room', '2013-03-11 00:00:00', 'Good, Working', 0, '', 'Large LCD display shows temp, humidity, and date/time clock simultaneously, 16000 internal memory capacity', '', '2022-04-28 11:53:47', 1),
(175, 'RML-EQ-12.4', 'Temperature and Humidity Datalogger, Extech', 'Extech', '42280', '9945563', 'Extech SW276 Software', 'Mass Section Room', '2013-03-11 00:00:00', 'Good, Working', 0, '', 'Large LCD display shows temp, humidity, and date/time clock simultaneously, 16000 internal memory capacity', '', '2022-04-28 11:55:54', 1),
(176, 'RML-EQ-12.6', 'Humidity-Temperature Chart Recorder, Extech', 'Extech', 'RH520', 'CH23811', 'ExChart RH520 v.2.1', 'Mass Section Room', '2013-03-11 00:00:00', 'Good, Working', 0, '', 'Large, backlit graphical LCD, Accuracy ±3.0%RH and 1.8­°F(1°C) for temp, Three (3) AA batteries and AC adaptor', '', '2022-04-28 11:58:53', 1),
(177, 'RML-EQ-12.5', 'Humidity-Temperature Chart Recorder, Extech', 'Extech', 'RH520', 'CH23816', 'ExChart RH520 v.2.1', 'Mass Section Room', '2013-03-11 00:00:00', 'Good, Working', 0, '', 'Large, backlit graphical LCD, Accuracy ±3.0%RH and 1.8­°F(1°C) for temp, Three (3) AA batteries and AC adaptor', '11 May 2015 - Defective (no power)', '2022-04-28 12:00:33', 1),
(178, 'RML-EQ-12.7', 'Thermohygraph Recording & Time Printing', 'Sekonic', 'ST50-M', 'HE51-000221', '', 'Mass Room', '2014-04-01 00:00:00', 'Satisfactory', 59126, 'Available', 'Battery Operated, DC6V, LR20x4, R20x4', 'Pull out for calibration on 5 Nov 14 by Exclusive traders. 19 Jan 15 - Returned this unit by Exclusive Traders. 26 Jan 15 Found out this unit is not turning on (Already replaced 4pcs of the battery). 27 Jan 15 informed the exclusive about the problem. 18 March 15 pulled out by the exclusive for repair.', '2022-04-28 13:11:20', 1),
(179, 'RML-EQ-12.8', 'Thermohygraph Recording & Time Printing', 'Sekonic', 'ST50-M', 'HE51-000252', '', 'Mass Room', '2014-04-01 00:00:00', 'Satisfactory', 59126, 'Available', 'Battery Operated, DC6V, LR20x4, R20x4', '27 April 2015 - defective/no power; already changed battery (RRG). 28 May 2015 - repaired (re-saddle) by technician for exclusive and batteries were replaced. Already in functional condition.', '2022-04-28 13:19:02', 1),
(180, 'RML-EQ-12.10', 'Thermometry Calibrator, KIMO', '', '', '', '', 'Office Room', '0000-00-00 00:00:00', '', 0, '', '', '', '2022-04-28 13:19:55', 1),
(181, 'RML-EQ-12.9', 'Thermo-Hygrometer', 'Lufft', '5061-A/HTAB 176', '3833', '', 'Mass Section Room', '1996-02-12 00:00:00', 'Satisfactory', 7030, '', 'Relative Humidity/Temperature Meter 0-100%RH/ -20 to 100°C. Wall Mounted', '', '2022-04-28 13:21:37', 1),
(182, 'RML-EQ-13.1', 'Thermometry Calibrator, Ametek Calibration Instruments', 'Ametek Calibration Instruments', 'ATC-140B', '578144-00525', '', 'Office Room/RML Temp Calibration Room', '0000-00-00 00:00:00', 'Good, Working', 0, 'N/A', 'Volts/Hz-115/230', '', '2022-04-28 13:23:04', 1),
(183, 'RML-EQ-13.2', 'Thermometry Calibrator, Ametek Calibration Instruments', 'Ametek Calibration Instruments', 'DT1-1000A', '578405-00268', '', 'Office Room', '0000-00-00 00:00:00', 'Good, Working', 0, 'N/A', 'Volts/Hz-8/1.5V', '', '2022-04-28 13:25:10', 1),
(184, 'RML-EQ-13.4', 'Thermometry Calibrator, Fluke Hart Scientific', 'Fluke', '7340', 'B32444', '', 'Office Room', '2012-12-26 00:00:00', 'Good, Working', 1367887, '', 'please input', '', '2022-05-12 14:27:05', 1),
(185, 'RML-EQ-13.3', 'Thermometry Calibrator, Ertco, Precision, TCS', 'Ertco, Precision', 'TCS 200-35', '808311', '', 'Office Room', '0000-00-00 00:00:00', 'Good, Working', 0, 'N/A', 'Volts/Hz-120/160', '', '2022-05-12 14:29:34', 1),
(186, 'RML-EQ-13.5', 'Thermometer, Oakton', 'Oakton', '', '', '', 'Office Room', '0000-00-00 00:00:00', '', 0, '', '', '', '2022-05-12 14:30:03', 1),
(187, 'RML-EQ-14.1', 'Voltage Regulator, Matsunaga', 'MATSUNAGA', 'SVC-500NM', '', '', 'Mass Section Room', '0000-00-00 00:00:00', 'Good, Working', 0, 'N/A', '', '', '2022-05-12 14:30:51', 1),
(188, 'RML-EQ-14.2', 'Voltage Regulator, Stancor', 'Stancor', 'MVS-5500W', '', '', 'Mass Section Room', '0000-00-00 00:00:00', 'Good, Working', 0, 'N/A', '500W, Input  60/30V/140-2400', '', '2022-05-12 14:32:03', 1),
(189, 'RML-EQ-14.3', 'Voltage Regulator, Ultra', 'Ultra, Servo Motor', 'SVC-1500', 'DO635423', '', 'Office Room', '0000-00-00 00:00:00', 'Good, Working', 0, 'N/A', '', '', '2022-05-12 14:33:53', 1),
(190, 'RML-EQ-14.4', 'Voltage Regulator, Ultra', 'Ultra, Servo Motor', 'SVC-1500', '', '', 'Mass Section Room', '0000-00-00 00:00:00', 'Good, Working', 0, 'N/A', '', '', '2022-05-12 14:35:22', 1),
(191, 'RML-EQ-14.5', 'Voltage Regulator, Ultra', 'Ultra, Servo Motor', '', '', '', '', '2014-11-25 00:00:00', '', 0, 'N/A', '', '', '2022-05-12 14:36:02', 1),
(192, 'RML-EQ-14.6', 'Voltage Regulator, Radix', 'Radix', 'MDR-22506W', 'MT1312 9860 0113', '', '', '0000-00-00 00:00:00', '', 0, '', '', '', '2022-05-12 14:36:45', 1),
(193, 'RML-EQ-14.7', 'Voltage Regulator, Pioneer Electronics', 'Pioneer Electronics', '20,200', '', '', 'Office Room', '0000-00-00 00:00:00', 'Good, Working', 0, '', 'Cycles: 60, Volts Output 220, Volts Input: 110', '', '2022-05-12 14:37:52', 1),
(194, 'RML-EQ-16.2', 'Platform Balance', '', '', '', '', '', '0000-00-00 00:00:00', '', 0, '', '', '', '2022-05-12 14:38:12', 1),
(195, 'RML-EQ-16.1', 'Weighing Indicator, Asuki K1', 'Asuki, Electronics Scales co. LTD Japan', 'SS-035, Level III', 'K10425', '', 'Mass Section Room', '0000-00-00 00:00:00', 'Good, Working', 0, '', 'Power Source: 220V/50Hz, Max Capacity: 17kg, Min. Capacity: 2kg', '', '2022-05-12 14:39:36', 1),
(196, 'RML-EQ-17.1', 'Speed Drill, Press', '', '', '', '', 'Office Room', '0000-00-00 00:00:00', 'Good, Working', 0, '', '', '', '2022-05-12 14:40:05', 1),
(197, 'RML-EQ-18.1', 'Optical Emission Spectrometer', 'HILGER ANALYTICAL', 'E982C', '714', '', 'Mass Section Room', '1995-07-21 00:00:00', 'Satisfactory', 2065847, 'Available', '45 Channels', '', '2022-05-12 14:43:48', 1),
(198, 'RML-EQ-19.1', 'Rare Gas Purifier', 'Sircal Instruments (UK) Ltd. ', '', '388876', '', 'Mass Section Room', '1996-02-12 00:00:00', 'Satisfactory', 149147, 'Available', 'please update', '', '2022-05-12 14:45:03', 1),
(199, 'RML-EQ-19.1a', 'Automatic Voltage Regulator', 'Sircal Instruments (UK) Ltd.', 'Model 400A-75TTY', '027083', '', 'Mass Section Room', '1995-07-21 00:00:00', 'Satisfactory', 0, '', '0-300V', '', '2022-05-12 14:46:24', 1),
(200, 'RML-EQ-21.1', 'Printer', 'Epson Industrial PTE LTD.', 'Epson LX 300', '1Q8X 009118', '', 'Mass Section Room', '1995-07-21 00:00:00', 'Satisfactory', 0, 'Available', 'please update', '', '2022-05-12 14:48:06', 1),
(201, 'RML-EQ-22.1', 'Keyboard', 'Olivetti Computer System', 'ANK 28-102', '24000744', '', 'Mass Section Room', '1995-07-21 00:00:00', 'Satisfactory', 0, 'Available', '', '', '2022-05-12 14:49:11', 1),
(202, 'RML-EQ-22.2', 'VDU', 'Olivetti Computer System', 'CDU1435SE/GS11', '7154837', '', 'Linear Room', '1995-07-21 00:00:00', 'Satisfactory', 0, 'Available', '', '', '2022-05-12 14:50:00', 1),
(203, 'RML-EQ-22.3', 'Computer', 'Olivetti Computer System', 'Model PCS40 SX/25', '*9739059*/V', '', 'Mass Section Room', '1995-07-21 00:00:00', 'Satisfactory', 0, '', 'please update', '', '2022-05-12 14:51:18', 1),
(204, 'RML-EQ-23.1', 'Horizontal Grinder', 'MIRDC Fabricated', '', '', '', 'Mass Section Room', '1996-02-12 00:00:00', 'Satisfactory', 0, '', 'please update', '', '2022-05-12 14:52:02', 1),
(205, 'RML-EQ-24.1', 'Rockwell Hardness Tester', 'Mitutuyo', 'AR-10', '102205', '', 'Office Room', '1995-07-21 00:00:00', 'Satisfactory', 138741, 'Available', 'please update', '', '2022-05-12 14:52:57', 1),
(206, 'RML-EQ-24.1a', 'Accessories', 'Asahi', '', '102205', '', 'Mass Room', '0000-00-00 00:00:00', '', 0, 'Available', '', '', '2022-05-12 14:53:40', 1),
(207, 'RML-EQ-24.2', 'Brinell Hardness Tester', 'KING TESTER CORP.', 'Standard Test Head with 13 1/2\"Base', 'VA-43', '', 'Office Room', '1995-09-21 00:00:00', 'Satisfactory', 90817, 'Available', 'please update', '', '2022-05-12 15:02:34', 1),
(208, 'RML-EQ-25.1', 'Electromagnetic Yoke', 'Econospect Corp.', 'Model ESY 400', '948202', '', 'Mass Section Room', '1995-07-21 00:00:00', 'Satisfactory', 19639, 'Available', 'Please update', '', '2022-05-12 15:03:43', 1),
(209, 'RML-EQ-26.1', 'Magnetic Field Indicator', 'MAGNAFLUX CORP.', '', '95-988', '', 'Mass Section Room', '1996-02-12 00:00:00', 'Satisfactory', 8120, 'None', 'Part No. 105645 Brand, Magnaflux', '', '2022-05-12 15:04:40', 1),
(210, 'RML-EQ-27.2', 'Gauge Block Set', 'Mitutoyo', 'Grade 0 ', '008631', '', 'Linear Room', '1995-07-21 00:00:00', 'Satisfactory', 0, '', '', '', '2022-05-12 15:05:20', 1),
(211, 'RML-EQ-27.1', 'Gauge Block Set', 'Mitutoyo', 'Grade 0', '950623', '', 'Mass Section Room', '1995-07-21 00:00:00', 'Satisfactory', 40453, 'Available', 'please update', '', '2022-05-12 15:06:15', 1),
(212, 'RML-EQ-29.1', 'Check Master', 'Mitutoyo', '', '510106', '', 'Mass Section Room', '1995-07-21 00:00:00', 'Satisfactory', 74383, 'Available', 'please update', '', '2022-05-12 15:07:09', 1),
(213, 'RML-EQ-28.1', 'Calibration Tester', 'Mitutoyo', 'Model UDT - 2', '500238', '', 'Office Room', '1995-07-21 00:00:00', 'Satisfactory', 44563, 'Available', 'please update', '', '2022-05-12 15:08:15', 1),
(214, 'RML-EQ-31.1', 'Micrometer', 'Mitutoyo', 'Digimatic', '6039678', '', 'Mass Section Room', '1996-02-12 00:00:00', 'Satisfactory', 7687, '', 'Code No. 293-721-30 0.001mm x 25mm', '', '2022-05-12 15:09:25', 1),
(215, 'RML-EQ-30.1', 'Vernier Caliper', 'Mitutoyo', 'Digimatic/CD-12\"', '7043107', '', 'Mass Section Room', '1996-02-12 00:00:00', 'Satisfactory', 0, 'Available', 'please update', '', '2022-05-12 15:10:47', 1),
(216, 'RML-EQ-33.2', 'Dial Indicator', 'Mitutoyo', '', '269E74', '', 'Mass Section Room', '1995-07-21 00:00:00', 'Satisfactory', 1174, '', '0.01mm x 10mm Code No. 2046FE', '', '2022-05-12 15:11:53', 1),
(217, 'RML-EQ-32.1', 'Dial Test Indicator', 'Mitutoyo', '', '189948', '', 'Mass Section Room', '1996-02-12 00:00:00', 'Satisfactory', 0, '', '0.01mm x 0.50mm Code No. 513-214FE', '', '2022-05-12 15:14:41', 1),
(218, 'RML-EQ-34.1', 'Micrometer Stand', 'Mitutoyo', '', 'None', '', 'Mass Section Room', '1996-02-12 00:00:00', 'Satisfactory', 0, '', 'Code No. 156-101', '', '2022-05-12 15:38:48', 1),
(219, 'RML-EQ-35.1', 'Magnetic Stand', 'KANETSU KOGYO CO., LTD.', 'Kanet MB-BV', '', '', 'Mass Section Room', '1995-07-21 00:00:00', 'Satisfactory', 2036, 'Available', 'Code No. 156-101', '', '2022-05-12 15:39:55', 1),
(220, 'RML-EQ-36.1', 'Cast Iron Surface Plate', 'MIRDC Fabricated', '', '', '', 'Mass Section Room', '1995-07-21 00:00:00', 'Satisfactory', 0, 'Code No. 156-101', '', '', '2022-05-12 15:40:42', 1),
(221, 'RML-EQ-32.3', 'Dial Indicator', 'Mitutoyo', '', '429C92', '', 'Mass Section Room', '1996-02-12 00:00:00', 'Satisfactory', 1175, 'Available', '0.01mm x 10mm Code No. 2046FE', '', '2022-05-12 15:42:07', 1),
(222, 'saf', '', '', '', '', '', '', '0000-00-00 00:00:00', '', 0, '', '', '', '2022-05-19 11:15:48', 0),
(223, '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', 0, '', '', '', '2022-05-19 11:53:37', 0),
(224, 'SFA', '', '', '', '', '', '', '0000-00-00 00:00:00', '', 0, '', '', '', '2022-05-19 12:44:18', 0),
(225, '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', 0, '', '', '', '2022-05-19 12:59:10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_frequency`
--

CREATE TABLE `tbl_frequency` (
  `mfreq_id` int(11) NOT NULL,
  `frequency` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `datetime_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_frequency`
--

INSERT INTO `tbl_frequency` (`mfreq_id`, `frequency`, `status`, `datetime_created`) VALUES
(1, 'As needed', 1, '2021-12-24 14:20:52'),
(2, 'Before & After Use', 1, NULL),
(3, 'Bi-monthly', 1, NULL),
(4, 'Monthly', 1, NULL),
(5, 'Every 4 months', 1, NULL),
(6, 'Bi-annual', 1, NULL),
(7, 'Annually', 1, NULL),
(8, 'Every 2 years', 1, NULL),
(10, 'Every 3 years', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_maintenance_type`
--

CREATE TABLE `tbl_maintenance_type` (
  `mtype_id` int(11) NOT NULL,
  `maintenance_type` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `datetime_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_maintenance_type`
--

INSERT INTO `tbl_maintenance_type` (`mtype_id`, `maintenance_type`, `status`, `datetime_created`) VALUES
(1, 'External Cleaning', 1, '2021-12-24 14:16:21'),
(2, 'Internal Cleaning', 1, '2021-12-24 14:16:47'),
(3, 'External and Internal Cleaning', 1, '2021-12-24 14:17:15'),
(4, 'Corrective Maintenance', 1, '2021-12-24 14:17:38'),
(5, 'Preventive Maintenance', 1, '2021-12-24 14:19:35'),
(6, 'Preventive and Corrective Maintenance', 1, '2021-12-24 14:19:49'),
(7, 'Cleaning', 1, '2021-12-24 14:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_maint_forms`
--

CREATE TABLE `tbl_maint_forms` (
  `form_id` int(11) NOT NULL,
  `file_path` varchar(1000) DEFAULT NULL,
  `file_description` varchar(1000) DEFAULT NULL,
  `file_type` varchar(10) DEFAULT NULL,
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_maint_forms`
--

INSERT INTO `tbl_maint_forms` (`form_id`, `file_path`, `file_description`, `file_type`, `date_created`, `status`) VALUES
(1, 'http://122.53.79.156:8082/rstl_pm/images/MC-F1.docx', 'MC-F1 EQUIPMENT MAINTENANCE RECORD', NULL, '2022-06-27 15:30:39', 1),
(2, 'http://122.53.79.156:8082/rstl_pm/images/MC-F2 Request for Maintenance (For Vehicle).docx', 'MC-F2 Request for Maintenance (For Vehicle)', NULL, '2022-06-27 15:38:32', 1),
(3, 'http://122.53.79.156:8082/rstl_pm/images/MC-F3 Maintenance Record of ICT Equipment New.doc', 'MC-F3 Maintenance Record of ICT Equipment New', NULL, '2022-06-27 15:47:10', 1),
(4, 'http://122.53.79.156:8082/rstl_pm/images/ICT Record MC-F4.doc', 'MC-F4 ICT Record', NULL, '2022-06-27 15:50:14', 1),
(5, 'http://122.53.79.156:8082/rstl_pm/images/MC-F5, Building and Utilities Maintenance Record.doc', 'MC-F5, Building and Utilities Maintenance Record', NULL, '2022-06-28 08:56:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_maint_program`
--

CREATE TABLE `tbl_maint_program` (
  `maint_id` int(11) NOT NULL,
  `equip_id` int(11) DEFAULT NULL,
  `maint_type_id` int(11) DEFAULT NULL,
  `frequency_id` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_maint_program`
--

INSERT INTO `tbl_maint_program` (`maint_id`, `equip_id`, `maint_type_id`, `frequency_id`, `date_added`, `status`) VALUES
(1, 135, 1, 1, NULL, 1),
(3, 135, 6, 5, NULL, 1),
(4, 132, 1, 1, NULL, 1),
(5, 132, 6, 5, NULL, 1),
(6, 134, 1, 1, NULL, 1),
(7, 134, 6, 5, NULL, 1),
(8, 133, 7, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sidetrips`
--

CREATE TABLE `tbl_sidetrips` (
  `sidetrip_id` int(11) NOT NULL,
  `address_id` int(11) DEFAULT NULL,
  `sidetrip_name` varchar(200) DEFAULT NULL,
  `sidetrip_description` varchar(500) DEFAULT NULL,
  `entrance_fee` decimal(10,2) DEFAULT '0.00',
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sidetrips`
--

INSERT INTO `tbl_sidetrips` (`sidetrip_id`, `address_id`, `sidetrip_name`, `sidetrip_description`, `entrance_fee`, `date_created`, `status`) VALUES
(1, 9, 'St. John the Baptist Church Jimenez', 'Commonly referred to as Jimenez Church, is a late 18th century, Baroque church with an impressive,  well-preserved ceiling paintings. It is one of the oldest churches in the Philippines. The century-old Spanish Catholic church is nestled within the predominantly Catholic town of Jimenez which also boasts of over 100 centuries old Spanish houses.', '0.00', NULL, 1),
(2, 10, 'Cotta Fort, Ozamiz City', 'Built by the Spaniards in 1755, the Fuerte de la Concepcion y del Triunfo, also known as Cotta Fort & Shrine is one of the oldest historical structures in Mindanao. This fort houses the miraculous image of Our Lady of Triumph of the Cross which is engraved on its wall facing the Panguil Bay.', '5.00', NULL, 1),
(3, 11, 'Bawbawon Beach and Mangrove Park, Plaridel', 'This ecotourism paradise of Misamis Occidental boasts of white sand beaches, hidden inside a lush and thick forest of mangroves. An 800 meter bamboo bridge complements the pristine waters and magnificent seascapes that will surely captivate the hearts of the tourists.', '0.00', NULL, 1),
(4, 12, 'Caluya Shrine(Christ the Redeemer), Sapang Dalaga', 'This shrine is home of the 45 foot statue of Christ the Redeemer, This landmark has a magnificent view overlooking Murcielagos Bay, Naputhas Island, Mount Malindang and Dioyo River.', '0.00', NULL, 1),
(5, 13, 'Vertical Bivouac , Quezon', 'This 150 meter high ledge  of white rock cliff has put Bukidnon in the global spotlight of rock climbing. The first vertical bivouac adventure in the Philippines will certainly take your breath away. Another pioneer adventure in the province.', '0.00', NULL, 1),
(6, 14, 'Monastery of the transfiguration, Malaybalay City', 'The last known masterpiece of National Artist for the Architecture, Leandro Locsin. It houses the exact replica of our Lady of Motserrat from Catalonia, Spain. It also hosts a museum of Filipino Liturgical Vestments Collection made out of the different  indigenous fabrics and designs created by Dom Martin, formerly known as the world famous designer Gang Gomez.', '0.00', NULL, 1),
(7, 15, 'Dahilayan Adventure Park, Manolo Fortich ', 'This is the Premier Adventure Park in the Region, situated in the hills of barangay Dahilayan, Manolo Fortich. It also boasts of world-class accommodation and exciting adventure rides: the 840m zipline( the first longest dual ziplines in asia) and the drop zone ( 150 foot freefall bungee ride) along with the other leisure activities for the whole family.', '0.00', NULL, 1),
(8, 16, 'Lake Apo, Valencia City', 'Lake Apo, a 24 hectare crater lake in Valencia City, was awarded as the cleanest inland body of water in Region 10 in the 1990s, The City’s pride indeed.', '0.00', NULL, 1),
(9, 17, 'Sunken Cemetery ', 'Some of the most iconic structures in Camiguin are survivors of violent volcanic eruptions: one prime example is the Sunken Cemetery in the town of Catarman.', '0.00', NULL, 1),
(10, 18, 'Ardent Hot Springs ', 'Relax and revitalize your tired bodies by taking a hot bath in any of the 4-tiered pools with water temperatures reaching up to 40 degrees Celsius.', '50.00', NULL, 1),
(11, 19, 'Mt.  Hibok-Hibok ', 'This volcano’s slope is challenging for professional climbers as they trek skillfully and maneuver on loose rocks and boulders towards the peak. At the summit, there is a crater-like lake and steam outlets where one can have a clear panoramic view of the island and Bohol Province during sunny clear days.', '0.00', NULL, 1),
(12, 20, 'White Island', 'Head out to the sea and enjoy the sun at the White Island Sandbar not too far from the coastline.', '50.00', NULL, 1),
(13, 21, 'Katibawasan Falls', 'A very cool escapes with waters flowing from Mt.Timpong. This falls has a 75-foot drop right into a stone pool at the bottom.  Cool down in the mist that envelops the park and have a picnic on the stone tables.', '20.00', NULL, 1),
(14, 22, 'Mantigue Island', 'Is a 4-hectare land declared as a marine sanctuary. This small space  is home to a verdant forest and a picturesque white sand beach. It also offers a great view of Mt. Timpoong Camiguin’s highest peak', '20.00', NULL, 1),
(15, 23, 'Malasag Eco-Tourism Village', 'Nestled amidst a specular view of Macajalar Bay, this living museum features replicas of the houses of the tribes of Bukidnon. Accommodation are available as well as function rooms for conferences and parties. ', '30.00', NULL, 1),
(16, 24, 'Mapawa Nature Park', 'Experience eco adventure at its best in Cagayan de Oro City. This 2500 hectare ranch, owned by the former Vice President Emmanuel Pelaez, has been transformed into ab ecopark  with a unique forest ecosystem. Activities include an exciting river trek adventure complete with a natural water slide and a 70 foot waterfall rappel, ziplines, horse-back riding, bird watching or just simply communing with nature.', '50.00', NULL, 1),
(17, 25, 'St. Augustin Metropolitan Cathedral', 'Visit the historic neo gothic style church built in honor of Cagayan de Oro’s patron saint. This church houses the miraculous 400 years old image of Birhen sa Kota and the beautiful 19th century stained glass windows donated by the Sacred Heart Sisters of New York during its reconstruction in 1942.', '0.00', NULL, 1),
(18, 26, 'Museum of 3 cultures', 'The museum of Three cultures houses 3 main galleries: The Maranao Gallery, which holds an impressive collection of Muslim traditional brassware products and rare Maranao artifacts; The Lumad Gallery which houses Higaonon & Manobo arts and crafts; And the Historical Gallery which features Region 10 history & Christian religious and community artifacts from Northern Mindanao & surrounding areas. It also features a modern art gallery that promotes the masterpieces of local artists of Mindanao.', '50.00', NULL, 1),
(19, 27, 'Pueblo de Oro Golf & Country Club', 'An 18 hole. Par 72 championships golf course designed by Robert Trent Jones II, the Pueblo golf course is heralded among the top 5 in the country. It had been the choice venue for the PAL Interclub Tournament and other big golf events. A driving range, clubhouse, tee houses and practice putting greens complete the golf course facilities.', '0.00', NULL, 1),
(20, 28, 'Experience the Philippines Sailfin Lizard in the municipality of Jasaan', 'About 54 lizards come to the riverside house of a couple, Rodolfo and Alma Dael, like clockwork every 7:00 to 9:00 in the morning and 4:00 to 6:00 in the afternoon to feats on kangkong and bananas given by the couple.', '0.00', NULL, 1),
(21, 29, 'Ostrich and Crocodile Farm', 'This 10 hectare Ostrich and Crocodile Farm is the 1st and biggest ostrich farm in the Philippines. It produces ostrich and crocodile meat which is served in Cagayan de Oro restaurants & supplied to different parts of the country.', '30.00', NULL, 1),
(22, 30, 'Mantianak Zoo and Botanical Garden, Sugbongcogon', 'Mantianak Botanical and Zoological park, the only zoo in Region 10, is the home of Bengali and Siberian tigers. It is also features exotic birds in a beautifully maintained zoo.', '100.00', NULL, 1),
(23, 31, 'Sugpulon Falls', 'Sagpulon falls is located in barangay San Isidro and is just 7 kilometers away from the national highway. The waterfall drop is at an estimate of 350 meters. The beauty of the falls together with its cool waters has long been a favourite among local tourists.', '20.00', NULL, 1),
(24, 32, 'Diving in Misamis Oriental', 'Misamis Oriental boasts of a beautiful underwater landscape with diverse marine wildlife including sightings of rare species of thresher sharks, manta rays, and whale sharks.Favorite dive sites include Agutayan reef, Constancia reef, Banaug Shoal, and Laguindingan Marine Sanctuary.', '0.00', NULL, 1),
(25, 33, 'Divine mercy Shrine, El Salvador City', 'The Divine mercy Shrine is a Catholic monument located in the Divine Mercy Hills, barangay Ulaliman, El Salvador City, Misamis Oriental. It features a 70 feet statue of the Divine Mercy as its focal point of this destination which overlooks Macajalar Bay on the southern island of Mindanao. Pilgrims flock to this picturesque site as part of their devotion, especially every first Sunday after Easter, known as the Feast of the Divine Mercy.', '0.00', NULL, 1),
(26, 34, 'The Mindanao Civic Center', 'The Mindanao Civic Center is a 71 hectare integrated complex which houses a hotel, cafeteria, gym,, swimming pool, oval and other sports facilities, a picnic park and sports academy. It was first constructed as a sports hub of the First Mindanao Friendship Games and is a favorite venue for national sports event in the country', '0.00', NULL, 1),
(27, 35, 'Cathedral Falls, Kapatagan', 'The rock formations on the wall of the falls, which resemble cathedral posts give a unique background to this iconic destination. Cathedral falls is located in the municipality of Kapatagan in the land of Beauty and Bounty. ', '0.00', NULL, 1),
(28, 36, 'Lanao del Norte Pasalubong Center', 'Lanao del Norte Pasalubong Center is the hub for souvenir items made from materials indigenous to different towns in the province as well as a one-stop souvenir shop for transit travelers to check on when passing the capital town of Tubod.', '0.00', NULL, 1),
(29, 37, 'Tinago Falls, Linamon', 'Cascating beautifully into a deep ravine between the Municipality of Linamon and Iligan City, this majestic waterfalls has 5 drops, the highest being 250 feet. The 300 or more steps to get to the falls is worth every step as the cool waters from the pool below and the breathtaking views will refresh your very soul. ', '10.00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sidetrips_activities`
--

CREATE TABLE `tbl_sidetrips_activities` (
  `sidetrips_act_id` int(11) NOT NULL,
  `sidetrips_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `fee` decimal(10,2) DEFAULT '0.00',
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sidetrips_activities`
--

INSERT INTO `tbl_sidetrips_activities` (`sidetrips_act_id`, `sidetrips_id`, `name`, `description`, `fee`, `date_created`, `status`) VALUES
(1, 105, 'Cottage', 'Rent a cottage for around 200 pesos', '200.00', NULL, 1),
(2, 105, 'Boat Ride', '30 pesos for the baot ride', '30.00', NULL, 1),
(3, 111, 'Boat Ride', 'Boat Ride going to the cross: 100 pesos ( for 5 pax)', '100.00', NULL, 1),
(4, 114, 'Boat Rental', '450 pesos (good for 6 pax) ', '450.00', NULL, 1),
(5, 114, 'Umbrella Rental', '150 pesos', '150.00', NULL, 1),
(6, 114, 'Mat Rental', '50 pesos', '50.00', NULL, 1),
(7, 115, 'Entrance Fee', 'P20 (adult) P5 (children) P10 (student)', '0.00', NULL, 1),
(8, 116, 'Boat Rental', '550 pesos (good for 5 pax)', '0.00', NULL, 1),
(9, 123, 'Entrance Fee', 'The farm is open for site tours from 8am to 4pm for just a very minimal fee of 30 pesos per adult, 2O pesos per student and 15 pesos for kids. ', '0.00', NULL, 1),
(10, 124, 'Entrance Fee', '100 pesos for adults and 50 pesos for children', '0.00', NULL, 1),
(11, 125, 'Entrance Fee', 'Adult – 20, Kids – 10', '0.00', NULL, 1),
(12, 125, 'Parking Fee', '4 Wheels – 30, Motorcycles – 5', '0.00', NULL, 1),
(13, 125, 'Cottage Fee', 'Cottage Fee – 150', '150.00', NULL, 1),
(14, 127, 'Entrance Fee', 'There is no ENTRANCE FEE, you can, however, give money through their donation boxes.', '0.00', NULL, 1),
(15, 131, 'Cottage Fee', 'Cottages can be rented from P100-300', '0.00', NULL, 1),
(16, 131, 'Life Jackets', 'Life jackets can be rented for P10-P20', '0.00', NULL, 1),
(17, 118, 'GROUP PACKAGE RATES – (MINIMUM of 10 PAX) A. PACKAGE PRICE           ', 'P1,270.00 per person - Inclusive of: Room Accommodation, 3 Buffet meals, Free flowing coffee, Free purified water, Free entrance at the park', '1270.00', NULL, 1),
(18, 118, 'GROUP PACKAGE RATES – (MINIMUM of 10 PAX) B. PACKAGE PRICE', 'P1,125.00 per person - Inclusive of: Room Accommodation, Plate-in meals, Free flowing coffee, Free purified water, Free entrance at the park', '1125.00', NULL, 1),
(19, 118, 'GROUP PACKAGE RATES – (MINIMUM of 20 PAX) A. PACKAGE PRICE           ', 'P1,450.00 per person - Inclusive of: Room Accommodation, 3 Buffet meals, 2 Snacks, Free use of Function Hall (8am-5pm) with sound system, white board and markers, One Stand By waiter, Free flowing coffee, Free entrance at the park', '1450.00', NULL, 1),
(20, 118, 'GROUP PACKAGE RATES – (MINIMUM of 20 PAX) B. PACKAGE PRICE           ', 'P 1,305.00 per person - Inclusive of: Room Accommodation, Plate-in meals, Snacks, Free use of Function Hall (8am-5pm) with sound system, white board and markers, One Stand By waiter, Free flowing coffee, Free entrance at the park', '1305.00', NULL, 1),
(21, 118, 'ZIPLINE PACKAGE ', 'P 325.00/ HEAD', '325.00', NULL, 1),
(22, 118, 'HORSEBACK RIDING', '15 MINUTES - P100.00/HEAD, 30 MINUTES - P125.00/HEAD, 1 HOUR - P 200.00/HEAD', '0.00', NULL, 1),
(23, 118, 'BONFIRE ', NULL, '1000.00', NULL, 1),
(24, 118, 'OBSTACLE COURSE ', NULL, '2500.00', NULL, 1),
(25, 118, 'VIEW DECKS ', 'P500.00 (small), P1,000.00 (big)', '0.00', NULL, 1),
(26, 118, 'PICNIC TABLES ', 'P150.00', '150.00', NULL, 1),
(27, 118, 'CAMP GROUNDS', NULL, '0.00', NULL, 1),
(28, 118, 'SWIMMING POOL ', 'P75.00/head', '75.00', NULL, 1),
(29, 118, 'VIDEOKE RENTAL ', 'P800.00', '800.00', NULL, 1),
(30, 118, 'OVERNIGHT CAMPING RATE ', 'P100.00/HEAD (MINIMUM OF 12PERSONS)', '100.00', NULL, 1),
(31, 118, 'RIVER TREK & CANYONEERING PACKAGE', '@ P 1,200.00 per person (minimum of group of 5 persons) ** Advance booking required SCHEDULE: 7:00 A.M. to 2:00 P.M. Packages Includes: Trekkers provided with packed lunch and bottled water. (Package inclusive of park entrance) *All trekkers are equipped with life jackets, helmet and trek guides WHAT TO WEAR: *Wear hiking shoes or sandals, NO slippers. *Use clothing of light material, wear jogging pants or loose long pants.', '1200.00', NULL, 1),
(32, 109, 'Package A.', 'PHP 1,200/head Zip Day Tour (min. of 10 pax) - Transportation from Cagayan de Oro to Brgy. Dahilayan back & forth, Lunch, All rides on ziplines (840m + 320m + 150m)', '1200.00', NULL, 1),
(33, 109, 'Package B.', 'PHP 2,500/head Zip Package Tandem (min. of 2, max. of 4 pax) - Transportation from Cagayan de Oro to Brgy. Dahilayan back & forth, Lunch, All rides on ziplines (840m + 320m + 150m), Dropzone', '2500.00', NULL, 1),
(34, 109, 'Package C.', 'PHP 2,199/head Zip & Raft Basic (min. of 10 pax) - Transportation from Cagayan de Oro to Brgy. Dahilayan to Rafting Area back & forth, Lunch & snacks (during rafting), All rides on ziplines (840m + 320m + 150m), 14 rapids Water Rafting (beginner)', '2199.00', NULL, 1),
(35, 109, 'Package D.', 'PHP 2,499/head Zip & Raft Advance (min. of 10 pax) - Transportation from Cagayan de Oro to Brgy. Dahilayan to Rafting Area back & forth, Lunch or Dinner at Pinegrove (before or after zipline) / Lunch & snacks (during rafting), All rides on ziplines (840m + 320m + 150m), 21 rapids Water Rafting (advance)', '2499.00', NULL, 1),
(36, 109, 'Package E.', 'PHP 2,550/head Zip & Raft Basic + Dropzone (min. of 10 pax) - Transportation from Cagayan de Oro to Brgy. Dahilayan to Rafting Area back & forth, Lunch & snacks (during rafting), All rides on ziplines (840m + 320m + 150m) and Dropzone, 14 rapids Water Rafting (beginner)', '2550.00', NULL, 1),
(37, 109, 'Package F.', 'PHP 2,850/head Zip & Raft Advance + Dropzone (min. of 10pax) - Transportation from Cagayan de Oro to Brgy. Dahilayan to Rafting Area back & forth,  Lunch or Dinner at Pinegrove (before or after zipline) / Lunch & snacks (during rafting), All rides on ziplines (840m + 320m + 150m) and Dropzone, 21 rapids Water Rafting (advance)', '2850.00', NULL, 1),
(38, 109, '320MT plus 150MT Zipline', 'To equip you for Asia?s Longest, you can first try our training ziplines perfect for the whole family!', '250.00', NULL, 1),
(39, 109, 'Asia?s 1st Longest Dual Zipline', 'Dahilayan Adventure Park boasts of two 840m Ziplines with a drop of 100 meters. Zipriders are transported via 4WD Safari Cruiser to a launch tower at 4500? ASL. Zoom through the rainforest canopy at 60-80kph to land at our Carrier-type flight deck using a special arresting gear system.', '500.00', NULL, 1),
(40, 109, 'Dropzone 120 Ft. Freefall Ride', 'Single PHP 500.00 or Tandem PHP 750.00 - DROPZONE at Dahilayan features a 120 ft Freefall into a manmade lake. Swoop to within feet of the water surface making it an adrenaline pumping Screamer of a ride. This is the Philippine’s first extreme pendulum swing of its kind.', '500.00', NULL, 1),
(41, 109, 'Flying Lizard Canopy Glider', 'This canopy glider moves thru the trees, crawls along vines, and zips between tree trunks while you pedal along the high wire.', '250.00', NULL, 1),
(42, 109, 'Python Roller Zipride', 'Python Roller Zipride Zip, rattle, roll, drop,swing & bounce over 500 meters. Asia?s first zipline roller coaster is now at the Dahilayan Adventure Park in Bukidnon The Python is the latest additional to a growing list of great rides of Dahilayan Adventure Park.', '300.00', NULL, 1),
(43, 109, 'Ropes Course', 'Build your confidence level and learn teamwork at our Tower of Power Ropes Course, a 12-stage High and Low Wire obstacle course complete with a Multisided Rockwall!', '200.00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `marital_status` varchar(20) DEFAULT NULL,
  `employment_status` varchar(20) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `access_level` int(1) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact_number` decimal(10,0) DEFAULT NULL,
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '1',
  `sex` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `lastname`, `middlename`, `firstname`, `birthday`, `address_id`, `marital_status`, `employment_status`, `username`, `password`, `access_level`, `email`, `contact_number`, `date_created`, `status`, `sex`) VALUES
(1, 'sheila', 'neri', 'cagape', '2017-01-01', NULL, 'single', 'employed', 'admin', 'admin', 0, 's.c@gmail.com', '9268912891', NULL, 1, 'female'),
(2, 'Pangan', 'A.', 'Ronald', NULL, NULL, NULL, NULL, 'rap', 'rapdostx', 0, NULL, NULL, NULL, 1, 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_ac_attachments`
--
ALTER TABLE `tbl_ac_attachments`
  ADD KEY `ac_attach_id` (`ac_attach_id`);

--
-- Indexes for table `tbl_ac_maint_record`
--
ALTER TABLE `tbl_ac_maint_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ac_id` (`ac_id`);

--
-- Indexes for table `tbl_ac_status`
--
ALTER TABLE `tbl_ac_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_aircon`
--
ALTER TABLE `tbl_aircon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ac_stat` (`ac_stat`);

--
-- Indexes for table `tbl_calibration_type`
--
ALTER TABLE `tbl_calibration_type`
  ADD PRIMARY KEY (`ctype_id`);

--
-- Indexes for table `tbl_calib_program`
--
ALTER TABLE `tbl_calib_program`
  ADD PRIMARY KEY (`calib_id`),
  ADD KEY `equip_id` (`equip_id`),
  ADD KEY `frequency` (`frequency`),
  ADD KEY `tbl_calib_program_ibfk_2` (`calib_type_id`);

--
-- Indexes for table `tbl_equipment`
--
ALTER TABLE `tbl_equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_frequency`
--
ALTER TABLE `tbl_frequency`
  ADD PRIMARY KEY (`mfreq_id`);

--
-- Indexes for table `tbl_maintenance_type`
--
ALTER TABLE `tbl_maintenance_type`
  ADD PRIMARY KEY (`mtype_id`);

--
-- Indexes for table `tbl_maint_forms`
--
ALTER TABLE `tbl_maint_forms`
  ADD PRIMARY KEY (`form_id`),
  ADD KEY `ac_attach_id` (`form_id`);

--
-- Indexes for table `tbl_maint_program`
--
ALTER TABLE `tbl_maint_program`
  ADD PRIMARY KEY (`maint_id`),
  ADD KEY `equip_id` (`equip_id`),
  ADD KEY `maint_type_id` (`maint_type_id`),
  ADD KEY `frequency_id` (`frequency_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_ac_attachments`
--
ALTER TABLE `tbl_ac_attachments`
  MODIFY `ac_attach_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `tbl_ac_maint_record`
--
ALTER TABLE `tbl_ac_maint_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;
--
-- AUTO_INCREMENT for table `tbl_ac_status`
--
ALTER TABLE `tbl_ac_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_aircon`
--
ALTER TABLE `tbl_aircon`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `tbl_calibration_type`
--
ALTER TABLE `tbl_calibration_type`
  MODIFY `ctype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_calib_program`
--
ALTER TABLE `tbl_calib_program`
  MODIFY `calib_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_equipment`
--
ALTER TABLE `tbl_equipment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;
--
-- AUTO_INCREMENT for table `tbl_frequency`
--
ALTER TABLE `tbl_frequency`
  MODIFY `mfreq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_maintenance_type`
--
ALTER TABLE `tbl_maintenance_type`
  MODIFY `mtype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_maint_forms`
--
ALTER TABLE `tbl_maint_forms`
  MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_maint_program`
--
ALTER TABLE `tbl_maint_program`
  MODIFY `maint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_ac_maint_record`
--
ALTER TABLE `tbl_ac_maint_record`
  ADD CONSTRAINT `tbl_ac_maint_record_ibfk_1` FOREIGN KEY (`ac_id`) REFERENCES `tbl_aircon` (`id`);

--
-- Constraints for table `tbl_aircon`
--
ALTER TABLE `tbl_aircon`
  ADD CONSTRAINT `tbl_aircon_ibfk_1` FOREIGN KEY (`ac_stat`) REFERENCES `tbl_ac_status` (`id`);

--
-- Constraints for table `tbl_calib_program`
--
ALTER TABLE `tbl_calib_program`
  ADD CONSTRAINT `tbl_calib_program_ibfk_1` FOREIGN KEY (`equip_id`) REFERENCES `tbl_equipment` (`id`),
  ADD CONSTRAINT `tbl_calib_program_ibfk_2` FOREIGN KEY (`calib_type_id`) REFERENCES `tbl_calibration_type` (`ctype_id`),
  ADD CONSTRAINT `tbl_calib_program_ibfk_3` FOREIGN KEY (`frequency`) REFERENCES `tbl_frequency` (`mfreq_id`);

--
-- Constraints for table `tbl_maint_program`
--
ALTER TABLE `tbl_maint_program`
  ADD CONSTRAINT `tbl_maint_program_ibfk_1` FOREIGN KEY (`equip_id`) REFERENCES `tbl_equipment` (`id`),
  ADD CONSTRAINT `tbl_maint_program_ibfk_2` FOREIGN KEY (`maint_type_id`) REFERENCES `tbl_maintenance_type` (`mtype_id`),
  ADD CONSTRAINT `tbl_maint_program_ibfk_3` FOREIGN KEY (`frequency_id`) REFERENCES `tbl_frequency` (`mfreq_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
