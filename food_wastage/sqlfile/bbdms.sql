-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2022 at 12:20 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbdms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2022-02-24 09:43:16');

-- --------------------------------------------------------

--
-- Table structure for table `tblblooddonars`
--

CREATE TABLE `tblblooddonars` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Message` mediumtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblblooddonars`
--

INSERT INTO `tblblooddonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Address`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Uma Maheswari', '9879879878', 'umagfs@gmail.com', 'Male', 25, 'Chitra Agency', 'Chennai', 'We have some food ', '2022-02-24 09:57:15', 1),
(2, 'Lavanya', '9879879878', 'lavanya@gmail.com', 'Male', 25, 'Radha Agency', 'Madurai', ' We have some food\r\n', '2022-02-24 10:08:06', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodgroup`
--

CREATE TABLE `tblbloodgroup` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbloodgroup`
--

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(1, 'Chitra Agency', '2017-06-30 20:33:50'),
(2, 'Renu Agency', '2017-06-30 20:34:00'),
(3, 'Radha Agency', '2017-06-30 20:34:05'),
(4, 'Rama Agency', '2017-06-30 20:34:10'),
(5, 'Anu Agency', '2017-06-30 20:34:13'),
(7, 'Dhaya Agency', '2020-07-17 08:49:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'DEMOOO																						', 'serbermz2020@gmail.com', '8585233222');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(2, 'caasda', 'webhostingamigo@gmail.com', '42342342', 'drftghjk', '2017-06-30 21:17:09', 1),
(3, 'caasda', 'webhostingamigo@gmail.com', '42342342', 'drftghjk', '2017-06-30 21:21:30', NULL),
(4, 'te', 'sdfsdf@gmail.com', '75787875545', 'sfsdf sdg hs h sh', '2017-07-01 07:19:36', 1),
(5, 'Lyndon Bermoy', 'serbermz2020@gmail.com', '123456789', 'demo', '2020-07-17 08:50:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', '<span style="color: rgb(56, 56, 56); font-family: &quot;Droid Serif&quot;, serif; font-size: 18px; word-spacing: 0.018px;">Food Tank: The Food Think Tank will feature a series of articles throughout the week highlighting different initiatives that are helping to prevent food waste in developing and industrialized countries alike.</span>'),
(3, 'About Us ', 'aboutus', '<span style="color: rgb(56, 56, 56); font-family: &quot;Droid Serif&quot;, serif; font-size: 18px; word-spacing: 0.018px;">The U.N. Food and Agriculture Organization (FAO) estimates that 1.3 billion tonnes of food are wasted annually. Some countries are, unfortunately, greater culprits than others; according to the&nbsp;</span><a href="http://kms.foodtank.org/index.php?title=Organizations/Barilla_Center_for_Food_%26_Nutrition" target="_blank" style="box-sizing: inherit; background-color: rgb(255, 255, 255); line-height: inherit; color: rgb(8, 8, 8); cursor: pointer; transition: all 0.25s linear 0s; outline: 0px; border-bottom: 2px solid transparent; box-shadow: rgb(172, 223, 255) 0px -5px 0px inset; border-top-color: transparent; border-right-color: transparent; border-left-color: transparent; font-family: &quot;Droid Serif&quot;, serif; font-size: 18px; word-spacing: 0.018px;">Barilla Center for Food &amp; Nutrition</a><span style="color: rgb(56, 56, 56); font-family: &quot;Droid Serif&quot;, serif; font-size: 18px; word-spacing: 0.018px;">&nbsp;(BCFN), the total amount of food wasted in the U.S.&nbsp;</span><a href="http://www.barillacfn.com/en/position-paper/pp-spreco-alimentare-cause/" target="_blank" style="box-sizing: inherit; background-color: rgb(255, 255, 255); line-height: inherit; color: rgb(8, 8, 8); cursor: pointer; transition: all 0.25s linear 0s; outline: 0px; border-bottom: 2px solid transparent; box-shadow: rgb(172, 223, 255) 0px -5px 0px inset; border-top-color: transparent; border-right-color: transparent; border-left-color: transparent; font-family: &quot;Droid Serif&quot;, serif; font-size: 18px; word-spacing: 0.018px;">exceeds</a><span style="color: rgb(56, 56, 56); font-family: &quot;Droid Serif&quot;, serif; font-size: 18px; word-spacing: 0.018px;">&nbsp;that of the United Kingdom, Italy, Sweden, France, and Germany combined. In addition, the&nbsp;</span><a href="http://foodtank.org/resources/650/Organizations/United_Nations_Environment_Programme" target="_blank" style="box-sizing: inherit; background-color: rgb(255, 255, 255); line-height: inherit; color: rgb(8, 8, 8); cursor: pointer; transition: all 0.25s linear 0s; outline: 0px; border-bottom: 2px solid transparent; box-shadow: rgb(172, 223, 255) 0px -5px 0px inset; border-top-color: transparent; border-right-color: transparent; border-left-color: transparent; font-family: &quot;Droid Serif&quot;, serif; font-size: 18px; word-spacing: 0.018px;">U.N. Environment Programme</a><span style="color: rgb(56, 56, 56); font-family: &quot;Droid Serif&quot;, serif; font-size: 18px; word-spacing: 0.018px;">&nbsp;(UNEP) estimates that global food production&nbsp;</span><a href="http://www.unep.org/wed/theme/" target="_blank" style="box-sizing: inherit; background-color: rgb(255, 255, 255); line-height: inherit; color: rgb(8, 8, 8); cursor: pointer; transition: all 0.25s linear 0s; outline: 0px; border-bottom: 2px solid transparent; box-shadow: rgb(172, 223, 255) 0px -5px 0px inset; border-top-color: transparent; border-right-color: transparent; border-left-color: transparent; font-family: &quot;Droid Serif&quot;, serif; font-size: 18px; word-spacing: 0.018px;">accounts for</a><span style="color: rgb(56, 56, 56); font-family: &quot;Droid Serif&quot;, serif; font-size: 18px; word-spacing: 0.018px;">&nbsp;70 percent of fresh water use and 80 percent of deforestation. Food production is also the largest single driver of biodiversity loss and creates at least 30 percent of global greenhouse gas emissions.</span><br>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
