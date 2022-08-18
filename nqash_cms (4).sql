-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2022 at 07:04 AM
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
(198, 116, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'SE', 1, 'ex_punjab,ex_sindh,ex_kpk,ex_balochistan,ex_ajk', 'Lahore', 'acct', 'tmc', 'acct', '0', '0cf9kg67gmmnhk0kgm5t7h0jvbf3cnmo', 0, 1, 1, '2022-07-17 18:52:17', '2022-07-17 18:42:47', 0, '2022-05-07 12:44:27');

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
(23, 0, 'shoes'),
(24, 23, 'Addidas'),
(25, 23, 'Nikee'),
(26, 23, 'Pumma'),
(27, 0, 'Pants'),
(28, 27, 'Dainum'),
(29, 0, 'Medicine');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `id` int(11) NOT NULL,
  `LandLine` varchar(30) COLLATE utf8_unicode_ci DEFAULT '',
  `Cell` varchar(30) COLLATE utf8_unicode_ci DEFAULT '',
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Address` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Map` text COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`id`, `LandLine`, `Cell`, `Email`, `Address`, `Map`) VALUES
(8, '5464', '03114358506', 'samiullah.webdeveloper@gmail.com', 'Begrian chock green town lahore', '\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6808.557356641903!2d74.30248442287566!3d31.43399407990642!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3919012e2488f7fb%3A0x67e6caf9c4e2b5e7!2sGreen%20Town%2C%20Lahore%2C%20Punjab%2C%20Pakistan!5e0!3m2!1sen!2sus!4v1660242251683!5m2!1sen!2sus\"'),
(9, '222', '031165448', 'samiullah.webdeveloper@gmail.com', 'Begrian chock green town lahore', 'src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d109120.73713754266!2d72.26592467522227!3d31.275458026759367!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3923a2a1b138cbc3%3A0xded4c1b9259211a1!2sJhang%2C%20Punjab%2C%20Pakistan!5e0!3m2!1sen!2sus!4v1660242523241!5m2!1sen!2sus\"');

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
  `Status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`ProductId`, `CategoryId`, `Description`, `XPrice`, `Price`, `Status`) VALUES
(6, 23, 'test_deatil_2', '100', '200', 1),
(7, 27, 'testing', '20', '10', 1),
(8, 27, 'detail alkdjksaljakd dka;ljdkl;jakldj dkaj', '200', '100', 1),
(9, 29, 'LIVA-MANIA: is a liquid mixture for oral use and is indicated in case of intoxications, fatty liver, and other chronic liver diseases. After illnesses and therapeutic treatment. During convalescence and in case of weakness it stimulates the appetite ', '500', '1000', 1),
(10, 29, 'Nutri-Adeck is a liquid vitamin solution for oral use and is indicated in case of Vitamin A, D  E  C and K deficiency effective in coccidiosis.\r\nIncrease the growth rate , egg production and hatchability .\r\nImprove egg sell quality', '600', '693', 1),
(11, 29, 'Vita-mania is a liquid mixture for oral use and is indicated in all cases of nutritional multivitamin deficiencies, periods of stress, parasites, bacterial, and virus infectious', '900', '1000', 1),
(12, 29, 'Nutri-Adeck is a liquid vitamin solution for oral use and is indicated in case of Vitamin A, D  E   and K deficiency effective in coccidiosis.\r\nIncrease the growth rate , egg production and hatchability .\r\nImprove egg sell quality', '1500', '2000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblproductimage`
--

CREATE TABLE `tblproductimage` (
  `ProductImageId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `Image` text COLLATE utf8_unicode_ci NOT NULL,
  `Alternative` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblproductimage`
--

INSERT INTO `tblproductimage` (`ProductImageId`, `ProductId`, `Image`, `Alternative`) VALUES
(13, 6, 'a81d5468a32cb0a2ed17ef784f3aa29c.jpeg', 'sami_2'),
(15, 7, '84752ff56df63bb8156554df41047919.png', 'logo_1'),
(16, 8, '076267745730a16c5f43fa8d33bf0c2b.jpeg', 'al text'),
(17, 8, '1a174f22504e681010b39a7f3b348813.png', 'sami_1'),
(18, 9, 'bed77f5a8c7ca223690a1a59291a20dd.jpeg', 'LIVA-MANIA'),
(19, 10, '6d0d44372f43b5b3038d45ab5de0ace4.jpeg', 'LIVA-MANIA'),
(20, 11, 'a16c29c75efb22e10ba622379a74e952.jpeg', 'LIVA-MANIA'),
(21, 12, '93f3ed5fde40d11ab42e4f177fbe9cf5.jpeg', 'LIVA-MANIA');

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
(11, 1, '45d52e21426362ec894b9763ea304933.png', 'logo_1'),
(12, 6, '82a8de9cf507ad8fbea99211b2a740b2.jpeg', 'al text'),
(13, 7, '6b20e2c05c79237ba0da406373aa80c2.jpeg', 'al text');

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
(1, 'project_title', '2 Month', 'nqash solution', 'd8cf021a3c817cd5f5d0233472a16476.jpeg', 'detail', 0, '057f912eeba24455377d4f8fa27d5a24.docx'),
(7, 'title_3', 'aa', 'Organization Name', '4a47086835b3f11d09708ea8cf034765.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil sit saepe non rerum, reiciendis, nulla ipsam alias voluptatem eveniet dolore quod repellendus, ad autem? Ipsam sit unde molestias culpa saepe at eum eveniet adipisci maiores animi magni,', 7, '1f6c9351d28460bbc181c8a553cab6bc.png'),
(10, 'project_title', '2 Month', 'nqash solution', 'd8cf021a3c817cd5f5d0233472a16476.jpeg', 'detail', 1, '057f912eeba24455377d4f8fa27d5a24.docx'),
(12, 'title_3', 'aa', 'Organization Name', '4a47086835b3f11d09708ea8cf034765.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil sit saepe non rerum, reiciendis, nulla ipsam alias voluptatem eveniet dolore quod repellendus, ad autem? Ipsam sit unde molestias culpa saepe at eum eveniet adipisci maiores animi magni,', 7, '1f6c9351d28460bbc181c8a553cab6bc.png'),
(14, 'project_title', '2 Month', 'nqash solution', 'd8cf021a3c817cd5f5d0233472a16476.jpeg', 'detail', 1, '057f912eeba24455377d4f8fa27d5a24.docx'),
(15, 'title_2', '2', 'org Name', '8c44f2bc491103e774828038f0289099.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil sit saepe non rerum, reiciendis, nulla ipsam alias voluptatem eveniet dolore quod repellendus, ad autem? Ipsam sit unde molestias culpa saepe at eum eveniet adipisci maiores animi magni,', 6, '3afafd2486ddea087b30591f435105f2.png'),
(16, 'title_3', 'aa', 'Organization Name', '4a47086835b3f11d09708ea8cf034765.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil sit saepe non rerum, reiciendis, nulla ipsam alias voluptatem eveniet dolore quod repellendus, ad autem? Ipsam sit unde molestias culpa saepe at eum eveniet adipisci maiores animi magni,', 7, '1f6c9351d28460bbc181c8a553cab6bc.png');

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
(5, '2022-08-18', '2022-08-18', '2022-08-20', 'MEDICE is one of the most successful owner-managed family businesses in the German pharmaceutical in', 'xyz tesitng', 'Extra', 'e73dbd40d49f33320d1c215734a0cdfc.jpg');

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
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `CategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `ProductId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblproductimage`
--
ALTER TABLE `tblproductimage`
  MODIFY `ProductImageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblprojectimage`
--
ALTER TABLE `tblprojectimage`
  MODIFY `ProjectImageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblprojects`
--
ALTER TABLE `tblprojects`
  MODIFY `ProjectId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblsliders`
--
ALTER TABLE `tblsliders`
  MODIFY `SliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
