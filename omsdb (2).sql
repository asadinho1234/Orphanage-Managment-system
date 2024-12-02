-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2024 at 11:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `omsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin', 'f925916e2754e5e03f75dd58a5733251', '2023-10-21 19:25:00'),
(2, 'Fatima', 'faatum7@gmail.com', 'fadma', '12345', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` int(11) NOT NULL,
  `donor_name` varchar(255) NOT NULL,
  `donor_email` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `donation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `donor_name`, `donor_email`, `amount`, `donation_date`, `phone`) VALUES
(1, 'Fatima Abdurahman', 'faatum7@gmail.com', 300.00, '2024-07-30 10:41:29', '7777778'),
(2, 'Fatima Abdurahman', 'faatum7@gmail.com', 700.00, '2024-07-30 10:56:26', '617973699'),
(3, 'Hassan', 'hass@gmail.com', 900.00, '2024-07-30 11:03:34', '7777775'),
(4, 'Geele Ali', 'Geele@gmail.com', 900.00, '2024-07-30 13:13:02', '7637872'),
(5, 'Caisha Salad', 'cuud1@gmail.com', 900.00, '2024-07-30 13:17:32', '7637873'),
(6, 'geedi', 'Geele@gmail.com', 1000.00, '2024-07-30 13:22:30', '7637873'),
(7, 'Hani Ese', 'hana@gmail.com', 1000.00, '2024-07-30 13:29:35', '7827469'),
(8, 'suleqa', 'sule1@gmail.com', 10.00, '2024-07-30 14:36:28', '7777775'),
(9, 'Hassan', 'hass@gmail.com', 1000.00, '2024-08-03 08:30:39', '7777796'),
(10, 'Geele Ali', 'Geele@gmail.com', 0.00, '2024-08-03 08:33:34', '7637873'),
(11, 'Fatima Abdurahman', 'Geele@gmail.com', 0.00, '2024-08-12 06:47:55', '7637873'),
(12, 'Fatima Abdurahman', 'Geele@gmail.com', 0.00, '2024-08-12 09:34:06', '7637873'),
(13, 'Geele Ali', 'faatum7@gmail.com', 400.00, '2024-08-12 09:59:38', '7777778'),
(14, 'Xawo Ali', 'xawa@gmail.com', 0.00, '2024-08-14 13:40:25', '7637843'),
(15, 'Geele Ali', 'sule13@gmail.com', 0.00, '2024-08-18 08:53:29', '7777778');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `message`, `status`, `created_at`) VALUES
(0, 'New Request', 'A new adoption request has been made.', 0, '2024-07-24 10:36:53'),
(0, 'New Request', 'A new adoption request has been made.', 0, '2024-07-24 10:51:45'),
(0, 'New Request', 'A new adoption request has been made.', 0, '2024-07-24 10:56:21'),
(0, 'New Request', 'A new adoption request has been made.', 0, '2024-07-24 15:48:52'),
(0, '', 'A new adoption request has been submitted.', 0, '2024-07-24 21:34:52'),
(0, '', 'A new adoption request has been submitted.', 0, '2024-07-24 21:44:04'),
(0, '', 'A new adoption request has been submitted.', 0, '2024-07-24 22:31:48'),
(0, '', 'A new adoption request has been submitted.', 0, '2024-07-24 22:44:16'),
(0, '', 'A new adoption request has been submitted.', 0, '2024-07-24 23:02:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbladoption`
--

CREATE TABLE `tbladoption` (
  `ID` int(5) NOT NULL,
  `Userid` int(5) DEFAULT NULL,
  `Childid` int(5) DEFAULT NULL,
  `Requestnumber` int(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `occupation` varchar(250) DEFAULT NULL,
  `income` decimal(10,0) DEFAULT NULL,
  `Reasonforadoption` mediumtext DEFAULT NULL,
  `MaritalStatus` varchar(100) DEFAULT NULL,
  `SpouseName` varchar(250) DEFAULT NULL,
  `SpousePhonenumber` bigint(11) DEFAULT NULL,
  `SpouceEmail` varchar(250) DEFAULT NULL,
  `SpouseOccupation` varchar(250) DEFAULT NULL,
  `SpouseIncome` decimal(10,0) DEFAULT NULL,
  `IsActive` int(2) DEFAULT NULL,
  `RequsetDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` varchar(250) DEFAULT NULL,
  `Remark` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladoption`
--

INSERT INTO `tbladoption` (`ID`, `Userid`, `Childid`, `Requestnumber`, `Address`, `occupation`, `income`, `Reasonforadoption`, `MaritalStatus`, `SpouseName`, `SpousePhonenumber`, `SpouceEmail`, `SpouseOccupation`, `SpouseIncome`, `IsActive`, `RequsetDate`, `Status`, `Remark`, `UpdationDate`) VALUES
(1, 3, 6, 504599019, 'J-890, Konark Apartment, New DElhi', 'Bussness', 102100, 'Medical Issue', 'Married', 'Harshita Mathur', 6546465465, 'har@gmail.com', 'Software Deeloper', 135000, 1, '2023-09-11 11:27:16', 'Accepted', 'Request has been accepted', '2023-09-21 12:47:01'),
(2, 4, 1, 846702211, 'J-890, Konark Apartment, New DElhi', 'Bussness', 102100, 'dasddsdfsfdddtretryrytrytuytuytuythgyutryututgutu', 'Married', 'Joe Mathur', 6454646546, 'neha@gmail.com', 'Software Deeloper', 135000, 1, '2023-09-20 05:50:19', 'Rejected', 'your request has been rejected due to some missing information.', '2023-09-22 05:46:16'),
(3, 5, 8, 558595690, 'k-890, Kaura Apartment Mumbai', 'Software Develper', 200000, 'vnbvnhdfajwfkgfgue\r\ngtgtvuy\r\nv4tuivyi\r\ny4rtuiq3yi', 'Married', 'Lalit Dubey', 6454654654, 'lalit@gmail.com', 'Software Deeloper', 250000, 1, '2023-09-22 06:24:57', 'Accepted', 'Adopted application accepted.', '2023-10-21 18:35:23'),
(4, 6, 22, 832321900, 'A 12 XYZ Apartment New Delhi 110092', 'Govt service', 123000, 'NA', 'Married', 'Amita', 1122331122, 'amita12@test.com', 'NA', 45000, 1, '2023-10-21 19:21:30', 'Accepted', 'Adoption Request accepted', '2023-10-21 19:22:05'),
(5, 8, 21, 238918459, 'hodan', 'Doctor', 200, 'to help', 'Unmarried', '', 0, '', '', 0, 1, '2024-07-20 20:11:52', 'Accepted', 'good', '2024-07-21 15:59:34'),
(6, 8, 18, 530285443, 'madiina', 'Doctor', 200, 'to help', 'Unmarried', '', 0, '', '', 0, 1, '2024-07-23 08:43:05', 'Rejected', 'fddddddddddddd', '2024-08-03 10:00:46'),
(7, 8, 18, 415800536, 'hodan', 'Doctor', 200, 'to help child', 'Unmarried', '', 0, '', '', 0, 1, '2024-07-23 08:51:10', 'Accepted', 'good', '2024-07-23 08:55:42'),
(8, 11, 19, 601644616, 'hodan', 'engineer', 300, 'dddddddddd', 'Unmarried', '', 0, '', '', 0, 1, '2024-07-23 17:04:06', 'Rejected', 'kjxNKJAAAAA', '2024-08-03 10:01:14'),
(9, 11, 19, 468825500, 'Kaxda', 'nurse', 400, 'yyyyyyyyyyyy', 'Unmarried', '', 0, '', '', 0, 1, '2024-07-24 10:25:19', NULL, NULL, '2024-07-24 10:25:19'),
(10, 11, 19, 962603602, 'Taleex', 'engineer', 500, 'ttttttttttttttttt', 'Unmarried', '', 0, '', '', 0, 1, '2024-07-24 10:36:53', NULL, NULL, '2024-07-24 10:36:53'),
(11, 11, 20, 429439928, 'Taleex', 'nurse', 700, 'hhhhhhhhhhhhhhhhh', 'Unmarried', '', 0, '', '', 0, 1, '2024-07-24 10:51:45', NULL, NULL, '2024-07-24 10:51:45'),
(12, 12, 20, 611608328, 'Taleex', 'engineer', 800, 'jjjjjjjjjjjjjjjjjj', 'Unmarried', '', 0, '', '', 0, 1, '2024-07-24 10:56:21', NULL, NULL, '2024-07-24 10:56:21'),
(13, 12, 20, 267502251, 'madiina', 'engineer', 800, 'kkkkkkkkkkkkkk', 'Unmarried', '', 0, '', '', 0, 1, '2024-07-24 15:48:52', 'Accepted', 'hhhhhhhhhhhhhhhxs', '2024-08-03 09:58:03'),
(14, 13, 20, 664151137, 'hodan', 'engineer', 300, 'ssssssssssssssssssss', 'Unmarried', '', 0, '', '', 0, 1, '2024-07-24 21:06:55', NULL, NULL, '2024-07-24 21:06:55'),
(15, 14, 20, 573272691, 'suleqa', 'nurse', 700, 'lllllllllllllllllllllll', 'Unmarried', '', 0, '', '', 0, 1, '2024-07-24 21:34:52', NULL, NULL, '2024-07-24 21:34:52'),
(16, 14, 20, 608122799, 'suleqa', 'engineer', 400, 'yyyyyyyyyyyyyyyy', 'Unmarried', '', 0, '', '', 0, 1, '2024-07-24 21:44:04', NULL, NULL, '2024-07-24 21:44:04'),
(17, 14, 20, 470140625, 'khalid', 'nurse', 200, 'bbbbbbbbbbbbb', 'Unmarried', '', 0, '', '', 0, 1, '2024-07-24 22:31:48', NULL, NULL, '2024-07-24 22:31:48'),
(18, 15, 20, 792908776, 'hassan', 'Doctor', 500, 'eeeeeeeeeeeeeeeeeeee', 'Unmarried', '', 0, '', '', 0, 1, '2024-07-24 22:44:16', NULL, NULL, '2024-07-24 22:44:16'),
(19, 16, 20, 509599513, 'khalid', 'lowyer', 800, 'rrrrrrrrrrrrrrrrrrrrr', 'Unmarried', '', 0, '', '', 0, 1, '2024-07-24 23:02:55', NULL, NULL, '2024-07-24 23:02:55'),
(20, 8, 19, 429337916, 'hodan', 'engineer', 800, 'dwqddfedfffffff', 'Unmarried', '', 0, '', '', 0, 1, '2024-08-14 13:29:28', NULL, NULL, '2024-08-14 13:29:28'),
(21, 8, 1, 381478066, 'hodan', 'engineer', 800, 'ddddd', 'Unmarried', '', 0, '', '', 0, 1, '2024-08-18 08:31:00', 'Accepted', 'ali', '2024-08-18 08:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `tblchild`
--

CREATE TABLE `tblchild` (
  `ID` int(5) NOT NULL,
  `IndentificationNumber` int(10) DEFAULT NULL,
  `ChildName` varchar(250) DEFAULT NULL,
  `ChildGender` varchar(50) DEFAULT NULL,
  `ChildArrivalDate` date DEFAULT NULL,
  `AllergicIssue` varchar(250) DEFAULT NULL,
  `BloodGroup` varchar(100) DEFAULT NULL,
  `Age` varchar(255) DEFAULT NULL,
  `ChildPhoto` varchar(255) DEFAULT NULL,
  `IsActive` int(2) DEFAULT NULL,
  `isAdopted` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblchild`
--

INSERT INTO `tblchild` (`ID`, `IndentificationNumber`, `ChildName`, `ChildGender`, `ChildArrivalDate`, `AllergicIssue`, `BloodGroup`, `Age`, `ChildPhoto`, `IsActive`, `isAdopted`, `RegDate`) VALUES
(1, 916358413, 'Ali', 'Male', '2023-07-04', 'No', 'A+', '6 month', 'f6dd4b2d11dbd05a205115fc5fce5001.png', 1, 1, '2023-09-05 07:13:27'),
(2, 377005620, 'Muscab', 'Male', '2022-03-05', 'Allergy with egg', 'A-', '6 Yrs', '50f2d5b26dd832ebea43f5ef447d616c.png', 1, NULL, '2023-09-05 07:18:43'),
(4, 189839036, 'Sumaya', 'Female', '2023-08-15', 'No', 'O+', '2 month', 'c3e0293ff9e4424eaa6b0dc6fbc146f2.png', 1, NULL, '2023-09-06 05:33:43'),
(5, 938447714, 'Shamsa', 'Female', '2021-08-06', 'Allergy with pollen grains', 'O-', '5 yrs', 'b9fb9d37bdf15a699bc071ce49baea53.jpg', 1, NULL, '2023-09-06 05:35:17'),
(6, 761986836, 'Shakir', 'Female', '2021-08-06', 'Allergy with pollen grains', 'AB-', '2 yrs', '4cce6effd7233b9caff4dbab6aa0fe19.png', 1, 1, '2023-09-06 05:36:42'),
(7, 250686741, 'Maryan', 'Female', '2021-08-06', 'No', 'O-', '7 yrs', 'e92c68f5e5d3678d2f31566b8b80811e.png', 1, NULL, '2023-09-06 05:36:50'),
(8, 464474936, 'Ridwan', 'Male', '2021-08-06', 'No', 'O-', '3 month', 'f6dd4b2d11dbd05a205115fc5fce5001.png', 1, 1, '2023-09-06 05:36:53'),
(9, 502196060, 'Adam', 'Male', '2021-08-06', 'No', 'O-', '5 yrs', '0b8f83073379088105b7c36aa86703c0.png', 1, NULL, '2023-09-06 05:36:55'),
(10, 800119594, 'Moni', 'Female', '2021-08-06', 'No', 'O-', '4 yrs', 'f7d91b05225840ba46210e20dd781b12.png', 1, NULL, '2023-09-06 05:36:58'),
(11, 866216168, 'Mohan', 'Male', '2021-08-06', 'Allergy with pineapple', 'O-', '7 yrs', 'bba925a0fad854bc5edfb7b0d94eaf01.png', 1, NULL, '2023-09-06 05:37:00'),
(12, 143357733, 'Mana', 'Female', '2021-08-06', 'No', 'O-', '5 yrs', 'cb29e94c94ccaf09cc538602138a3a53.png', 1, NULL, '2023-09-06 05:37:03'),
(13, 372762158, 'Khanha', 'Male', '2021-08-06', 'No', 'O-', '2 month', 'd036d4458ffbaef207d44f04c70e44eb.png', 1, NULL, '2023-09-06 05:37:05'),
(14, 372965736, 'Bulbul', 'Female', '2021-05-12', 'No', 'AB+', '1 yrs', '15f3401b39f161e9c32f7f15f2f57e05.png', 1, NULL, '2023-09-06 05:37:08'),
(15, 401763552, 'Jamac', 'Male', '2022-04-13', 'No', 'A+', '6 yrs', '50f2d5b26dd832ebea43f5ef447d616c.png', 1, NULL, '2023-09-06 05:37:10'),
(16, 461640323, 'Kamila', 'Female', '2021-08-06', 'No', 'O-', '5 yrs', '326f8b19432fefb1a910a4ef6a06b040.png', 1, NULL, '2023-09-06 05:37:12'),
(17, 110355215, 'Layla', 'Female', '2021-08-06', 'No', 'O-', '9 yrs', '7c255fce9fc18903d0094e690c15b598.png', 1, NULL, '2023-09-06 05:37:14'),
(18, 736286289, 'Mohamed', 'Male', '2021-08-06', 'No', 'O-', '5 yrs', '756b91bcf77750d3b71c75c6257139b0.png', 1, 1, '2023-09-06 05:37:26'),
(19, 730712739, 'Xanaan', 'Female', '2021-08-06', 'No', 'A-', '9 yrs', '41b586905e6233e72b076191f8bf9512.png', 1, NULL, '2023-09-06 05:37:28'),
(20, 643160463, 'Ciise', 'Male', '2021-08-06', 'No', 'O-', '2 yrs', '9de6a7e6c523fcb8cf7108827473b47a.png', 1, 1, '2023-09-06 05:37:30'),
(21, 715537806, 'Muuse', 'Male', '2021-08-14', 'No', 'O-', '5 yrs', '8a822a50142d18106553eef99640f9c5.png', 1, 1, '2023-09-06 05:37:32'),
(22, 970543550, 'Qaasim', 'Male', '2023-07-15', 'NO', 'a-', '2', '2d6324e14bdc20a35ba0332e7d9d4ad1.jpg', 1, 1, '2023-10-21 19:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `tblgenralsettings`
--

CREATE TABLE `tblgenralsettings` (
  `id` int(11) NOT NULL,
  `SiteName` varchar(200) DEFAULT NULL,
  `PhoneNumber` bigint(12) DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `footercontent` mediumtext DEFAULT NULL,
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblgenralsettings`
--

INSERT INTO `tblgenralsettings` (`id`, `SiteName`, `PhoneNumber`, `EmailId`, `address`, `footercontent`, `LastUpdationDate`) VALUES
(1, 'Orphanage Management System', 252616666744, 'CharityOrg@gmail.com', 'Test address\r\nTest City\r\nTest State\r\nSom-7789', 'Orphanage Management System', '2024-07-20 18:46:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblnews`
--

CREATE TABLE `tblnews` (
  `id` int(11) NOT NULL,
  `NewsTitle` varchar(255) DEFAULT NULL,
  `NewsDetails` mediumtext DEFAULT NULL,
  `NewsImage` varchar(250) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblnews`
--

INSERT INTO `tblnews` (`id`, `NewsTitle`, `NewsDetails`, `NewsImage`, `PostingDate`) VALUES
(7, 'Jharkhand: Abandoned child gets new home and family in Italy', 'The high court had in January this year, in an interim order.\r\nThe high court had in January this year, in an interim order.\r\nThe high court had in January this year, in an interim order.\r\nThe high court had in January this year, in an interim order.\r\n', '7d9447d1b9fb53c89dca21de068f7784.jpg', '2023-09-21 13:25:10'),
(8, 'Number Of Orphan, Abandoned Children Rise By 25% Since 2020: Centre', 'Number Of Orphan, Abandoned Children Rise By 25% Since 2020: CentreNumber Of Orphan, Abandoned Children Rise By 25% Since 2020: CentreNumber Of Orphan, Abandoned Children Rise By 25% Since 2020: CentreNumber Of Orphan, Abandoned Children Rise By 25% Since 2020: Centre', '1b31e8ebe779bca68ef65cd7313ea821.jpg', '2023-09-21 13:25:52'),
(9, 'Father, Domestic Help Physically Abuse Adopted Child In Assam, Arrested', 'A doctor and his family\'s domestic help were arrested in Guwahati on Saturday for allegedly physically abusing his adopted daughter, police said.', '8a45d55df7427159964a8a74751cea1e.jpg', '2023-09-21 13:26:42'),
(10, 'Child Found in Deserted Alley in Mogadishu in 2020 Adopted by Swedish Family', 'Child Found Abandoned in Market in Somalia in 2019 Adopted by German Couple', '76aff5461155c51b53561125b6907dfa.jpg', '2023-09-21 13:27:22'),
(11, 'Somalia Teacher, 34, Denied Food to 8-Year-Old Orphaned Pupil for a Week, Detained', 'Mogadishu Farmer, 47, Forced 12-Year-Old Nephew to Work in Harsh Conditions, Arrested', '127fd892a8b4ddf02eb2779592061736.jpg', '2023-09-21 13:28:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageType` varchar(255) DEFAULT NULL,
  `PageDetails` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageType`, `PageDetails`, `LastupdationDate`) VALUES
(1, 'aboutus', '<span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">At Somali Charity, we provide care and support to orphaned children in Mogadishu. Our mission is to create a safe, nurturing environment with shelter, education, healthcare, and emotional support. With the help of donors and volunteers, we strive to meet every child\'s needs and foster hope. Join us in making a positive impact on their lives</span>', '2024-07-23 07:26:46');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `Userid` int(11) NOT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Emailid` varchar(255) DEFAULT NULL,
  `PhoneNumber` bigint(12) DEFAULT NULL,
  `UserGender` varchar(100) DEFAULT NULL,
  `UserPassword` varchar(255) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsActive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`Userid`, `FullName`, `UserName`, `Emailid`, `PhoneNumber`, `UserGender`, `UserPassword`, `RegDate`, `LastUpdationDate`, `IsActive`) VALUES
(7, 'Faduma Abdurahman Abdullahi', 'faatum7@gmail.com', 'faatum7@gmail.com', 617973699, 'Female', 'b0f4f05b3fc4c401b1d926d2bb6e495e', '2024-07-19 17:07:08', NULL, 1),
(8, 'Fatima Abdurahman', 'fadma', 'faatum7@gmail.com', 617973625, 'Female', '6ea7dc02893577e9317badab0ebe3622', '2024-07-20 20:02:20', NULL, 1),
(9, 'Zaki nor', 'zack', 'zak@gmail.com', NULL, 'male', '12344', '2024-07-21 15:54:06', NULL, NULL),
(10, 'Hassan Muse', 'Odegaard', 'odegard@gmail.com', NULL, 'male', '1233', '2024-07-21 15:57:19', NULL, NULL),
(11, 'Caisha Salad', 'Csha', 'cuud1@gmail.com', 617973626, 'Female', 'b23c511d3ab8ab67e96ea5e4b632c4a8', '2024-07-23 14:52:14', NULL, 1),
(12, 'Geele Ali', 'Geele', 'Geele@gmail.com', 617973623, 'Male', '1815e113e9361a4df5dbe24104b4e908', '2024-07-24 10:55:20', NULL, 1),
(13, 'suleqa', 'sule', 'sule1@gmail.com', 617974425, 'Female', '0b1351df36a6a9955c20473b80124bab', '2024-07-24 21:02:06', NULL, 1),
(14, 'suleqa', 'sulq', 'sule13@gmail.com', 617973667, 'Female', '79df8f63dbf451cc8e1ae13ba97bc0ce', '2024-07-24 21:33:53', NULL, 1),
(15, 'Hassan', 'hass', 'hass@gmail.com', 617973656, 'Male', 'f4be408037da58f2c1205d54e0708c2f', '2024-07-24 22:43:12', NULL, 1),
(16, 'geedi', 'geedi', 'geedi@gmail.com', 617973456, 'Male', '43f3fa4018c6cbcb1c001c36cbeb96e3', '2024-07-24 23:01:46', NULL, 1),
(17, 'Khalid', 'geedi', 'kal@gmail.com', 617973656, 'Male', '43f3fa4018c6cbcb1c001c36cbeb96e3', '2024-08-03 09:54:29', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladoption`
--
ALTER TABLE `tbladoption`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblchild`
--
ALTER TABLE `tblchild`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblgenralsettings`
--
ALTER TABLE `tblgenralsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnews`
--
ALTER TABLE `tblnews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`Userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbladoption`
--
ALTER TABLE `tbladoption`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblchild`
--
ALTER TABLE `tblchild`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblgenralsettings`
--
ALTER TABLE `tblgenralsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblnews`
--
ALTER TABLE `tblnews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `Userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
