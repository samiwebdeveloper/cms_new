-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2022 at 07:03 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nqash_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_user`
--

CREATE TABLE `acc_user` (
  `acc_user_id` int(11) NOT NULL,
  `oper_user_id` int(11) NOT NULL,
  `oper_user_name` varchar(350) CHARACTER SET latin1 NOT NULL,
  `oper_account_no` varchar(350) CHARACTER SET latin1 NOT NULL,
  `oper_user_password` varchar(450) CHARACTER SET latin1 NOT NULL,
  `oper_user_power` varchar(350) CHARACTER SET latin1 NOT NULL,
  `oper_user_city_id` int(11) NOT NULL DEFAULT 1,
  `mixtures` varchar(500) NOT NULL,
  `oper_reporting_station` varchar(350) CHARACTER SET latin1 NOT NULL DEFAULT 'Lahore',
  `oper_user_department` varchar(100) NOT NULL DEFAULT 'acct',
  `oper_user_company` varchar(450) NOT NULL DEFAULT 'tmc',
  `oper_user_portal` varchar(45) NOT NULL DEFAULT 'acct',
  `oper_user_mac` varchar(17) DEFAULT NULL,
  `oper_user_session` varchar(45) DEFAULT NULL,
  `rider_id` int(11) NOT NULL DEFAULT 0,
  `is_enable` int(11) NOT NULL DEFAULT 1,
  `is_supervisor` tinyint(1) NOT NULL DEFAULT 0,
  `last_login` datetime NOT NULL,
  `last_logout` datetime NOT NULL,
  `thrid_party_id` int(11) NOT NULL DEFAULT 0,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acc_user`
--

INSERT INTO `acc_user` (`acc_user_id`, `oper_user_id`, `oper_user_name`, `oper_account_no`, `oper_user_password`, `oper_user_power`, `oper_user_city_id`, `mixtures`, `oper_reporting_station`, `oper_user_department`, `oper_user_company`, `oper_user_portal`, `oper_user_mac`, `oper_user_session`, `rider_id`, `is_enable`, `is_supervisor`, `last_login`, `last_logout`, `thrid_party_id`, `created_date`) VALUES
(100, 1, 'Muhammad Saim', '2329', 'db6095c1faaf12d07c81af371fb37e1a', 'SE', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-08-14 19:21:45', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(101, 2, 'Danish Mehmood', 'danish', 'dcceb02ebc770c67156137fc462ec80b', 'SE', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-11 21:40:30', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(102, 3, 'Humair Yousaf', 'humair', '89c6eae17d2592e7afd41d2fe3f89e13', 'CS', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-14 11:22:02', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(103, 4, 'Sargodha Operation', 'sargodha', 'd62821ab70a8e23fa2f1f5da0e2cefe6', 'BM', 13, '', 'Sargodha', '', '', '', NULL, NULL, 0, 0, 0, '2020-10-28 17:03:01', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(104, 5, 'Talha Zohaib', 'talha', 'f1f4395a65abbdb435e4cab13e4de2b6', 'SE', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-14 12:25:42', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(105, 6, 'Karachi Operations', 'khiops', '253acb401ca5ef629fb17e520cfc64e6', 'BM', 2, '', 'Karachi', '', '', '', NULL, NULL, 0, 0, 0, '2020-10-29 12:14:26', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(106, 7, 'Faizan', 'faizan', 'b57c976fd3c2728dacf6d150cdf42bf5', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-06-03 00:59:07', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(107, 8, 'Minher Waqas', 'minher', '7697a048b202f4a44167e02369637895', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-09-24 14:27:17', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(108, 9, 'Ali Raza', 'ali', '728d11649d22566dfd3a56d591e63b17', 'SE', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-14 09:32:18', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(109, 10, 'Awais', 'awais', '595f8d889c3ea3e410165919794a6320', 'CS', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-13 18:42:08', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(110, 11, 'Salman', 'salman', 'b279fc05ec6f30ca5a0d89b963dfbb32', 'CS', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-14 09:32:55', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(111, 12, 'Waqar Sarwar', 'waqar', '1709de0d9d44e3287f56d80aef6d5ceb', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-09-14 06:58:10', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(112, 13, 'Rana Rizwan', 'rizwan', 'f0cf204d4a573815adf1f29ba79f54f3', 'SE', 1, 'ex_punjab,ex_sindh,ex_kpk,ex_balochistan,ex_ajk', 'Lahore', '', '', '', '0', 'e54c10c7e7a23640624009024e31f3cc6fdbed96', 0, 1, 1, '2022-07-02 18:22:00', '2022-06-29 18:47:50', 0, '2020-09-02 14:59:10'),
(113, 14, 'Asif Khalid', 'asif', '3d4e992d8d8a7d848724aa26ed7f4176', 'SE', 1, 'ex_punjab,ex_sindh,ex_kpk,ex_balochistan,ex_ajk', 'Lahore', '', '', '', NULL, NULL, 0, 1, 1, '2021-03-19 23:21:27', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(114, 15, 'Behzad', 'behzad', '52b32537a92bd74ed972e6fda431e2aa', 'CS', 2, '', 'Karachi', '', '', '', NULL, NULL, 0, 0, 0, '2021-09-30 16:52:34', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(115, 16, 'Naveed Sahiwal', 'naveedswl', 'b550728c5d3d74adb9ba90c610200d28', 'BM', 22, '', 'Sahiwal', '', '', '', NULL, NULL, 0, 0, 0, '2020-12-01 12:02:06', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(116, 17, 'Samar Sab', 'samar', '9610f2e5508c9949d61f85e3285810b5', 'BM', 2, '', 'Karachi', '', '', '', NULL, NULL, 0, 0, 0, '2020-12-06 18:29:56', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(117, 18, 'Nadia', 'nadia', '850dd6c6a47c8dd396d5bdfbf8d40902', 'CS', 2, '', 'Karachi', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-14 10:49:34', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(118, 19, 'Abdul Qadeer', 'quetta', '90ca199af45eb677aca914ae966d24b4', 'BM', 10, '', 'Quetta', '', '', '', NULL, NULL, 0, 0, 0, '2020-12-03 13:25:34', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(119, 20, 'Javed Akhtar', 'javed', '8b26e84d4bc48a6143a4f846c037403b', 'SE', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-01-27 21:17:20', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(120, 21, 'Waseem Mughal', 'waseem.mughal', '22db93d634f22cf49dffb8344e9f8140', 'CS', 2, '', 'Karachi', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-14 16:40:20', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(121, 22, 'Malak Zorawar', 'zorawar', 'd3ebacc80ac52777332e0acd94333ec9', 'BM', 9, '', 'Peshawar', '', '', '', NULL, NULL, 0, 0, 0, '2020-12-23 22:06:58', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(122, 23, 'Saimon', 'saimon', '0203697cae76248d9c207c1027864bf8', 'CS', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-14 13:22:10', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(123, 24, 'Mariam', 'mariam', 'e29390494d5416d2ddf0278798d4e5f2', 'CS', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-14 18:09:15', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(124, 25, 'Alamgir', 'alamgir', '0c4d48a569437b52dc2c454c0418709a', 'BM', 2, '', 'Karachi', '', '', '', NULL, NULL, 0, 0, 0, '2021-04-03 10:16:55', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(125, 26, 'Hafeez Irshad', 'hafeezirshad', '44fd2c9916ae34c021e9a60fa60584a0', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-14 12:03:34', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(126, 27, 'Siddiq', 'siddiq', 'ab1d1d2da7e4bbf2e139ac3d0a451fa6', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-01-08 23:31:41', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(127, 28, 'Waqas', 'waqas', 'cf24a74757a3f97d9f8cd6c4b8ceb99a', 'CS', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-06-02 16:51:40', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(128, 29, 'Abdul Qadeer', 'a.qadeer', '4387ba109b46218a6ea8191c2dc8703e', 'BM', 10, '', 'Quetta', '', '', '', NULL, NULL, 0, 0, 0, '2021-09-14 10:05:18', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(129, 30, 'Ajmal', 'ajmal', 'dcfabeb43d9436fcf50c9a465400ff71', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-05 05:22:13', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(130, 31, 'Chaudhary Parvaiz', 'parvaiz', '5a17bb0eeb2a54402549fb82980430cf', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-01-07 18:27:04', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(131, 32, 'Kamran', 'kamran', 'ed4991a37a7147b4e61b6ace9a0ca428', 'BM', 4, '', 'Islamabad', '', '', '', NULL, NULL, 0, 0, 0, '2021-01-26 16:38:39', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(132, 33, 'Fayaz Hussain', 'fayaz', '82276bfc7bdef5d037d0fd3bb9061fe1', 'CS', 161, '', 'Sukkur', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-14 14:59:17', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(133, 34, 'Sajid Yaseen', 'sajid', '9f91a5f2b54ac037ca4be3285c348977', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-14 05:48:35', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(134, 35, 'Guest User', 'guest', '084e0343a0486ff05530df6c705c8bb4', 'SE', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-09-27 14:32:52', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(135, 36, 'Yasir Javed', 'yasir', 'be28a88d7e2de1fa4494a75e901f17d7', 'SE', 1, 'ex_punjab,ex_sindh,ex_kpk,ex_balochistan,ex_ajk', 'Lahore', '', '', '', '0', '199ccd0693f79063f946543c38c4f78b865645cf', 0, 1, 1, '2022-07-02 17:45:51', '2022-07-01 10:59:21', 0, '2020-09-02 14:59:10'),
(136, 37, 'Saeed Akhter', 'samallick', '46503645fe06c7b62628ed205c59bed0', 'SE', 2, '', 'Karachi', '', '', '', NULL, NULL, 0, 0, 0, '2021-04-01 16:01:30', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(137, 38, 'Mughees', 'mughees', '4d1688617e018300c979196ea0287041', 'CS', 4, '', 'Islamabad', '', '', '', NULL, NULL, 0, 0, 0, '2021-10-23 20:29:15', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(138, 39, 'Raja Mughees', 'raja', 'd3ebacc80ac52777332e0acd94333ec9', 'BM', 4, '', 'Islamabad', '', '', '', NULL, NULL, 0, 0, 0, '2021-01-26 16:38:39', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(139, 40, 'Noman', 'noman', 'a1fac83d812610bff054839dc3142f92', 'BM', 5, '', 'Faisalabad', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-14 18:46:22', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(140, 41, 'Saad Hussain', 'saadhussain', 'f290ca45b0dec2ec16cf3afcafbea6ac', 'BM', 2, '', 'Karachi', '', '', '', NULL, NULL, 0, 0, 0, '2021-07-07 11:07:16', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(141, 42, 'Toheed Mir', 'toheed', 'c4d9e5076ad9fc104b210ed6a7f18599', 'BM', 2, '', 'Karachi', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-14 04:43:12', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(142, 43, 'Kausar', 'kausar', '9c00f60b56ed1b5541f0710e67c18f9f', 'BM', 2, '', 'Karachi', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-08 15:29:52', '2021-02-20 15:24:53', 0, '2021-02-20 15:24:53'),
(143, 44, 'Yasir Javaid', 'yasir', 'be28a88d7e2de1fa4494a75e901f17d7', 'CS', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-02-24 14:55:19', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(144, 45, 'ali', 'alikhi', '984d8144fa08bfc637d2825463e184fa', 'BM', 2, '', 'Karachi', '', '', '', NULL, NULL, 0, 0, 0, '2021-07-27 12:51:49', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(145, 46, 'Ehsan', 'ehsan', '3f5f560697163aa47b916b1596b6775e', 'SE', 2, 'ex_sindh', 'Karachi', '', '', '', '0', '1e61c067ab7130e957f7906e8431ae5bafdca58e', 0, 1, 1, '2022-06-30 17:45:33', '2022-06-30 18:23:47', 0, '2020-09-02 14:59:10'),
(146, 47, 'Noman', 'noman.ali', '85db767e10d9c1d9b3a2956658420372', 'SM', 2, 'ex_sindh', 'Karachi', '', '', '', '0', '11912f85aa39a8107fef64793ecf3181f590c3a9', 0, 1, 0, '2022-06-30 16:58:31', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(147, 48, 'Haroon', 'haroon', 'be48fa0602c227b4c030f1b558559e83', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-14 14:06:59', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(148, 49, 'Hammad', 'hammad', '8066bf8f8224eeccdd16a0db4756ca93', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-05-31 15:44:30', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(149, 50, 'Hafiz Abdul Azeem', 'abdulazeem', 'd3ebacc80ac52777332e0acd94333ec9', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-13 17:38:58', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(150, 51, 'Zeeshan Ahmad', 'zeeshan', '98cceb944b190cd389f72cf538461e51', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-03-09 10:38:09', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(151, 52, 'Rehan Raza', 'rehan', '2785961783ec7afb897e9a5722477a31', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-01 14:01:48', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(152, 53, 'Farhan Baig', 'farhan', 'f4fadb79893c86b9d287d87c34849372', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-11-15 22:34:39', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(153, 54, 'Aizaz Haider', 'aizaz', '65deb51c7e8e307dd563268e5494a2e7', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-03-19 16:07:27', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(154, 55, 'Saif', 'saif', '8c7682d566f21185d7dfb18e8b5f8e80', 'BM', 2, '', 'Karachi', '', '', '', NULL, NULL, 0, 0, 0, '2021-03-03 12:17:04', '2021-02-20 15:24:53', 0, '2021-02-20 15:24:53'),
(155, 56, 'Zubair Siddiqui', 'zubair', '085c23a8a3199f7eeb55a8fda49762d8', 'BM', 2, '', 'Karachi', '', '', '', NULL, NULL, 0, 0, 0, '2021-03-03 12:17:04', '2021-02-20 15:24:53', 0, '2021-02-20 15:24:53'),
(156, 57, 'Usman Azeem', 'usman.azeem', '3ad0b83338ba5df15b5701e181f58129', 'SE', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-05-18 12:00:53', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(157, 58, 'Fahad Ali Azhar', 'fahad.mux', 'd8e28c1f7a637f0c1f83efb94c3a79e1', 'BM', 7, '', 'Multan', '', '', '', NULL, NULL, 0, 0, 0, '2021-03-10 15:10:28', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(158, 59, 'Ali Murtaza', 'ali.murtaza', '33d403e86a266347fe3d264951eb0720', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-14 15:52:31', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(159, 60, 'Dummy', 'dummy', '222d185e7013d9815e0cc5c75e2c76f2', 'CS', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-03-27 17:51:43', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(160, 61, 'Danish Maqsood', 'danishmaqsood', 'ebeecfe6796a73d93eb7c4dacee5e091', 'CS', 2, '', 'Karachi', '', '', '', NULL, NULL, 0, 0, 0, '2021-10-23 09:48:03', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(161, 62, 'Fahad Fida', 'fahad', 'd8e28c1f7a637f0c1f83efb94c3a79e1', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-06 17:39:49', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(162, 63, 'Arbaz', 'arbaz', 'e7eb813d40177cddad7aef691b132b82', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-04-27 12:03:33', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(163, 65, 'Tariq Siraj', 'tariq', '0ede426ef9f0ddf10ab68c131d9b5fc5', 'BM', 2, '', 'Karachi', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-14 09:34:13', '2021-05-21 17:58:14', 0, '2021-05-21 17:58:14'),
(164, 67, 'Dera Ismail khan', 'dera', 'd3ebacc80ac52777332e0acd94333ec9', 'BM', 130, '', 'Deraismailkhan', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-14 17:01:11', '2021-06-01 09:46:05', 0, '2021-06-01 09:46:05'),
(165, 68, 'Khurram', 'khurram', 'd3ebacc80ac52777332e0acd94333ec9', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-13 18:36:35', '2021-06-01 11:40:47', 0, '2021-06-01 11:40:47'),
(166, 69, 'Abdul Rehman', 'abdulrehman', 'fd02cfb68cb22308bd2533189012327c', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-07 02:40:43', '2021-06-01 11:42:32', 0, '2021-06-01 11:42:32'),
(167, 71, 'Noor Zainab', 'noor', '117704b051d655d351ca37705e46c8a0', 'CS', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-14 18:40:03', '2021-06-08 10:05:18', 0, '2021-06-08 10:05:18'),
(168, 72, 'Ghufran', 'ghufran', '4a05e4900658c93a72eb1b1a22acdd65', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-14 17:49:26', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(169, 73, 'Shazia', 'shazia', '2fa858b84d17ca17d1b7e4926ff3b810', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-08-10 10:44:50', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(170, 74, 'Ghazanfar Ali', 'ghazanfar', 'd57fa9ded60f0af46a2b6c1b921e5edb', 'SE', 1, 'ex_punjab,ex_sindh,ex_kpk,ex_balochistan,ex_ajk', 'Lahore', '', '', '', '0', '9e2a3baf7bba3b23688279c67f65201db956ed47', 0, 1, 1, '2022-06-28 16:59:00', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(171, 75, 'Abdul Jabar', 'abduljabar', '2a908de4448c764adce7c549f64412d3', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-14 18:07:19', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(172, 76, 'Waseem Baig', 'waseembeg', 'e10adc3949ba59abbe56e057f20f883e', 'SE', 1, 'ex_punjab,ex_sindh,ex_kpk,ex_balochistan,ex_ajk', 'Lahore', '', '', '', NULL, NULL, 0, 1, 1, '2021-12-14 15:51:12', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(173, 77, 'Munawar Khan', 'munawar', 'b17d5fe54f645eb2c5a12bb65005caaa', 'CS', 2, '', 'Karachi', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-14 17:19:49', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(174, 78, 'Mohsin', 'mohsin', 'd38509b02c3af7545dc345630382cdeb', 'CS', 8, '', 'Hyderabad', '', '', '', NULL, NULL, 0, 0, 0, '2021-07-15 09:04:08', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(175, 79, 'Ehsaan Alahi', 'ehsaan', 'e99a18c428cb38d5f260853678922e03', 'SE', 1, 'ex_punjab,ex_sindh,ex_kpk,ex_balochistan,ex_ajk', 'Lahore', '', '', '', '0', 'a45d5b6f8a5ec741cd20d4d5ff22c2c671c87b6f', 0, 1, 1, '2022-07-01 19:18:49', '2020-09-02 14:59:10', 0, '2020-09-02 14:59:10'),
(176, 80, 'Imran Ali', 'imran', 'afec8e6703a941d25838aff771b45ff0', 'SE', 1, '', 'lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-09-24 10:31:22', '2021-07-30 14:12:38', 0, '2021-07-30 14:12:38'),
(177, 81, 'Naveed Ajmal', 'Naveed', 'b550728c5d3d74adb9ba90c610200d28', 'BM', 1, '', 'lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-09 18:41:42', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(178, 82, 'Syed Mehmood ul Hassan Kazmi', 'Mehmood', 'e1057f2cc1976b589e9abdf4e18e5fa6', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-10-20 17:44:03', '2021-08-28 18:13:21', 0, '2021-08-28 18:13:21'),
(179, 83, 'minhaj', 'minhaj', 'bcd0c8a6c2d4faaf7f7d405c8b8351e4', 'CS', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-09-26 02:10:49', '2021-09-06 14:36:33', 0, '2021-09-06 14:36:33'),
(180, 84, 'Soban Idrees', 'soban', 'c96297db608d603f7d014e83e5fbf20f', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-09-20 15:19:18', '2021-09-17 11:08:47', 0, '2021-09-17 11:08:47'),
(181, 85, 'Inzamam Maqbool', 'inzamam.maqbool', '4875a5aafd881d5939cf749a739fb37b', 'CS', 4, '', 'Islamabad', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-08 21:31:18', '2021-09-21 09:37:53', 0, '2021-09-21 09:37:53'),
(182, 86, 'Usman Ali', 'usman.ali', '17059a79f68145170eaf02d7599c5020', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-11-10 20:17:22', '2021-09-21 10:45:46', 0, '2021-09-21 10:45:46'),
(183, 87, 'Adil Aslam', 'Adilopd', '025318e8f75ab53c3681019b762aafda', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-14 05:51:45', '2021-09-21 13:59:24', 0, '2021-09-21 13:59:24'),
(184, 88, 'patras', 'patras', '64b4fedf41d7f213b68c39537fd13818', 'RIDER', 1, '', 'Lahore', '', '', '', NULL, NULL, 2, 0, 0, '2021-10-07 12:21:30', '2021-09-25 10:00:18', 0, '2021-09-25 10:00:18'),
(185, 89, 'Muhammad Waleed', 'mwaleed', 'a9684f6a100dcf828737dc0e6a0948a9', 'BM', 2, '', 'Karachi', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-13 23:33:00', '2021-10-08 16:48:13', 0, '2021-10-08 16:48:13'),
(186, 90, 'Hassaan Tahir', 'hassaan.tahir', '0d5b2f35e486ac2bbb1526801e194b00', 'SE', 1, 'ex_punjab,ex_sindh,ex_kpk,ex_balochistan,ex_ajk', 'lahore', '', '', '', '0', '0dc5481381e2d88adb0914bf61a5248b557d78bc', 0, 1, 1, '2022-07-02 18:33:22', '2022-07-02 18:08:27', 0, '2021-10-11 17:04:59'),
(187, 91, 'Abshar Hassan', 'abshar', '029af0bb5e956db9b8c6397dd4a74b5e', 'CS', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-14 13:13:23', '2021-10-16 14:24:18', 0, '2021-10-16 14:24:18'),
(188, 92, 'Hafiz Abdul Wajid', 'wajid', '7a5bde8adaf60027e794a3af535dcaff', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-11-30 17:55:45', '2021-10-16 17:05:41', 0, '2021-10-16 17:05:41'),
(189, 93, 'kiran', 'kiran', 'd64bc53880b945869498f0322b7802b1', 'CS', 2, '', 'Karachi', '', '', '', NULL, NULL, 0, 0, 0, '2021-11-25 19:18:17', '2021-11-01 12:41:17', 0, '2021-11-01 12:41:17'),
(190, 94, 'Zeeshan', 'zeeshandik', '96130a816610a5d39fe3a69d0fca3ea2', 'BM', 130, '', 'Dera Ismail Khan', '', '', '', NULL, NULL, 0, 0, 0, '2021-11-08 13:15:27', '2021-11-08 12:50:41', 0, '2021-11-08 12:50:41'),
(191, 95, 'Abdul Samad', 'samad', 'adef6a7c553e2bc1f25a91d654a6ca40', 'CS', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-11-25 15:35:58', '2021-11-24 13:21:56', 0, '2021-11-24 13:21:56'),
(192, 96, 'Mudassar Nazeer', 'mudassar.nazeer', '498b8964d6bd0f04dfe57dd126070824', 'CS', 4, '', 'Islamabad', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-14 10:37:46', '2021-12-08 14:48:53', 0, '2021-12-08 14:48:53'),
(193, 97, 'Sarfraz Mukhtar', 'sarfraz.mukhtar', 'cabf80e5973e751d275da0644d14c84a', 'BM', 1, '', 'Lahore', '', '', '', NULL, NULL, 0, 0, 0, '2021-12-13 11:48:14', '2021-12-10 10:16:55', 0, '2021-12-10 10:16:55'),
(194, 98, 'Ayyaz Tahir', 'ayyaz.tahir', 'd5c33bc1e43fa41c8330a8f8b003aa15', 'SE', 1, 'ex_punjab,ex_sindh,ex_kpk,ex_balochistan,ex_ajk', 'Lahore', '', '', '', '0', '8e04b6b59771078d9d218f8a88066def2d07f674', 0, 1, 1, '2022-06-25 12:20:12', '2022-06-25 17:59:20', 0, '2021-12-14 11:18:21'),
(195, 113, 'Jameel Khalil', 'jameel.khalil', 'f2e21901cea0a2d3722d35e09c21db4f', 'BM', 1, 'ex_punjab,ex_sindh,ex_kpk,ex_balochistan,ex_ajk', 'Lahore', '', '', '', '0', '916bdecaa9f135977cfa7210fff146e93f1834b9', 0, 1, 0, '2022-07-01 14:27:16', '2022-05-25 17:59:53', 0, '2021-12-14 17:56:48'),
(196, 112, 'Anwaar Ul Haq', 'anwaar', '80466a8ba074bc74d80c48a3a7483f5f', 'BM', 1, 'ex_punjab,ex_sindh,ex_kpk,ex_balochistan,ex_ajk', 'Lahore', '', '', '', '0', '36571e151fc91ab5eb3b5f023915ac75b5bf57ab', 0, 1, 0, '2022-04-18 16:25:58', '2022-04-18 17:09:28', 0, '2022-03-26 12:45:00'),
(198, 116, 'Samiullah Saleem', 'samiullah.saleem', '72843797e73cfa394f8374844081ceea', 'SE', 1, 'ex_punjab,ex_sindh,ex_kpk,ex_balochistan,ex_ajk', 'Lahore', 'acct', 'tmc', 'acct', '0', '0cf9kg67gmmnhk0kgm5t7h0jvbf3cnmo', 0, 1, 1, '2022-07-17 18:52:17', '2022-07-17 18:42:47', 0, '2022-05-07 12:44:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `CategoryId` int(11) NOT NULL,
  `ParentId` int(11) NOT NULL,
  `Category` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`CategoryId`, `ParentId`, `Category`) VALUES
(1, 2, 'cate'),
(2, 0, 'kjhjgfjhgfjhgjh');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `LandLine` varchar(30) COLLATE utf8_unicode_ci DEFAULT '',
  `Cell` varchar(30) COLLATE utf8_unicode_ci DEFAULT '',
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Address` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Map` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`LandLine`, `Cell`, `Email`, `Address`, `Map`) VALUES
('11', '111', 'samiullah.webdeveloper@gmail.com', 'aaa', 'http://localhost:88/nqash/cms/Event_Controller/add_contact'),
('11', '111', 'samiullah.webdeveloper@gmail.com', 'aaa', 'http://localhost:88/nqash/cms/Event_Controller/add_contact'),
('22', '22', 'samiullah.webdeveloper@gmail.com', 'aaa', 'http://localhost:88/nqash/cms/Event_Controller/add_contact'),
('22', '22', 'samiullah.webdeveloper@gmail.com', 'aaa', 'http://localhost:88/nqash/cms/Event_Controller/add_contact'),
('11', '111', 'samiullah.webdeveloper@gmail.com', 'aa', 'http://localhost:88/nqash/cms/Event_Controller/add_contact'),
('11', '111', 'samiullah.webdeveloper@gmail.com', 'aa', 'http://localhost:88/nqash/cms/Event_Controller/add_contact'),
('11', '111', 'samiullah.webdeveloper@gmail.com', 'aa', 'http://localhost:88/nqash/cms/Event_Controller/add_contact');

-- --------------------------------------------------------

--
-- Table structure for table `tblevent`
--

CREATE TABLE `tblevent` (
  `EventId` int(11) NOT NULL,
  `Title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `EventDate` datetime NOT NULL,
  `Detail` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `sort_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblevent`
--

INSERT INTO `tblevent` (`EventId`, `Title`, `EventDate`, `Detail`, `sort_no`) VALUES
(1, 'event_title', '2022-08-04 21:51:00', 'event_detail', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbleventimage`
--

CREATE TABLE `tbleventimage` (
  `EventImageId` int(11) NOT NULL,
  `EventId` int(11) NOT NULL,
  `Image` text COLLATE utf8_unicode_ci NOT NULL,
  `Alternative` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbleventimage`
--

INSERT INTO `tbleventimage` (`EventImageId`, `EventId`, `Image`, `Alternative`) VALUES
(15, 1, 'cc1fcc0e007d77c28df8ee2dfa8efc09.jpeg', 'logo_1'),
(16, 1, 'fcce1b5d655a7b5f11a318027aa2cc0e.png', 'logo_1');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `ProductId` int(11) NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `Description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `XPrice` decimal(10,0) NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblproductimage`
--

CREATE TABLE `tblproductimage` (
  `ProductImageId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `Image` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Alternative` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblprojectimage`
--

CREATE TABLE `tblprojectimage` (
  `ProjectImageId` int(11) NOT NULL,
  `ProjectId` int(11) NOT NULL,
  `Image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Alternative` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblprojectimage`
--

INSERT INTO `tblprojectimage` (`ProjectImageId`, `ProjectId`, `Image`, `Alternative`) VALUES
(10, 1, 'b2c2aa602042a47662b9026a1826243e.jpeg', 'sami_1'),
(11, 1, '45d52e21426362ec894b9763ea304933.png', 'logo_1');

-- --------------------------------------------------------

--
-- Table structure for table `tblprojects`
--

CREATE TABLE `tblprojects` (
  `ProjectId` int(11) NOT NULL,
  `Title` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Period` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Organization` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `OrganizationLogo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Details` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `SortNo` int(11) NOT NULL,
  `File` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblprojects`
--

INSERT INTO `tblprojects` (`ProjectId`, `Title`, `Period`, `Organization`, `OrganizationLogo`, `Details`, `SortNo`, `File`) VALUES
(1, 'project_title', '2 Month', 'nqash solution', 'd8cf021a3c817cd5f5d0233472a16476.jpeg', 'detail', 1, '057f912eeba24455377d4f8fa27d5a24.docx');

-- --------------------------------------------------------

--
-- Table structure for table `tblsliders`
--

CREATE TABLE `tblsliders` (
  `SliderId` int(11) NOT NULL,
  `SliderDate` date NOT NULL DEFAULT current_timestamp(),
  `StartDate` date NOT NULL DEFAULT current_timestamp(),
  `EndDate` date NOT NULL DEFAULT current_timestamp(),
  `Detail` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Title` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Image` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblsliders`
--

INSERT INTO `tblsliders` (`SliderId`, `SliderDate`, `StartDate`, `EndDate`, `Detail`, `Title`, `Type`, `Image`) VALUES
(2, '2022-08-04', '2022-08-04', '2022-08-06', 'slider _detail', 'slider_titel', 'Promotion', '85d35b5ccc06d75ab368832e383aac6b.jpeg'),
(3, '2022-08-09', '2022-08-09', '2022-08-11', '\r\n3222\r\n32', '52', 'Promotion', '4a4f8803ceee8921e44f4af4e823e5b4.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_user`
--
ALTER TABLE `acc_user`
  ADD PRIMARY KEY (`acc_user_id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`CategoryId`);

--
-- Indexes for table `tblevent`
--
ALTER TABLE `tblevent`
  ADD PRIMARY KEY (`EventId`);

--
-- Indexes for table `tbleventimage`
--
ALTER TABLE `tbleventimage`
  ADD PRIMARY KEY (`EventImageId`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`ProductId`);

--
-- Indexes for table `tblproductimage`
--
ALTER TABLE `tblproductimage`
  ADD PRIMARY KEY (`ProductImageId`);

--
-- Indexes for table `tblprojectimage`
--
ALTER TABLE `tblprojectimage`
  ADD PRIMARY KEY (`ProjectImageId`);

--
-- Indexes for table `tblprojects`
--
ALTER TABLE `tblprojects`
  ADD PRIMARY KEY (`ProjectId`);

--
-- Indexes for table `tblsliders`
--
ALTER TABLE `tblsliders`
  ADD PRIMARY KEY (`SliderId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc_user`
--
ALTER TABLE `acc_user`
  MODIFY `acc_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblevent`
--
ALTER TABLE `tblevent`
  MODIFY `EventId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbleventimage`
--
ALTER TABLE `tbleventimage`
  MODIFY `EventImageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `ProductId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblproductimage`
--
ALTER TABLE `tblproductimage`
  MODIFY `ProductImageId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblprojectimage`
--
ALTER TABLE `tblprojectimage`
  MODIFY `ProjectImageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblprojects`
--
ALTER TABLE `tblprojects`
  MODIFY `ProjectId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblsliders`
--
ALTER TABLE `tblsliders`
  MODIFY `SliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
