-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2018 at 07:26 PM
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
-- Database: `e_healthcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(5) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `no` int(11) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fname`, `lname`, `username`, `no`, `password`) VALUES
(45241, 'Badryah', 'Majrashi', 'badryh744@hotmail.com', 550179744, 'bia9812');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `full_name` varchar(100) NOT NULL,
  `ID` int(10) NOT NULL,
  `ph_no` int(10) NOT NULL,
  `message` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`full_name`, `ID`, `ph_no`, `message`) VALUES
('', 0, 0, ''),
('hh', 0, 34536, 'hfhgv'),
('j', 11, 76543, 'poiukgjfdxc');

-- --------------------------------------------------------

--
-- Table structure for table `health_record`
--

CREATE TABLE `health_record` (
  `clinical note` text,
  `Discharge` varchar(300) DEFAULT NULL,
  `Medical_pre` text,
  `Admission` varchar(100) DEFAULT NULL,
  `ID_P` int(11) NOT NULL,
  `Patient_NO` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health_record`
--

INSERT INTO `health_record` (`clinical note`, `Discharge`, `Medical_pre`, `Admission`, `ID_P`, `Patient_NO`) VALUES
('rtyui', 'qwerty', 'sdfghj', '456789', 1, 123);

-- --------------------------------------------------------

--
-- Table structure for table `laboratory`
--

CREATE TABLE `laboratory` (
  `Patient_NO` int(6) NOT NULL,
  `ID_P` int(6) NOT NULL,
  `P_Name` varchar(100) NOT NULL,
  `Age` int(6) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Req_Date` date NOT NULL,
  `Date_of_birth` date NOT NULL,
  `Lab_Num` int(50) NOT NULL,
  `Test_Name` varchar(100) NOT NULL,
  `specimen` varchar(100) NOT NULL,
  `N_Clinic` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medical_staff_information`
--

CREATE TABLE `medical_staff_information` (
  `ID` varchar(10) NOT NULL,
  `F_name` varchar(30) NOT NULL,
  `L_name` varchar(30) NOT NULL,
  `ID_passport` varchar(10) NOT NULL,
  `Gender` char(6) NOT NULL,
  `Date_of_birth` date NOT NULL,
  `pass` varchar(12) NOT NULL,
  `Nationality` varchar(100) NOT NULL,
  `Country` varchar(30) NOT NULL,
  `City` varchar(30) NOT NULL,
  `Major` varchar(30) NOT NULL,
  `Section` varchar(30) NOT NULL,
  `Workplace` varchar(30) NOT NULL,
  `Phone_number` int(13) NOT NULL,
  `E_mail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_staff_information`
--

INSERT INTO `medical_staff_information` (`ID`, `F_name`, `L_name`, `ID_passport`, `Gender`, `Date_of_birth`, `pass`, `Nationality`, `Country`, `City`, `Major`, `Section`, `Workplace`, `Phone_number`, `E_mail`) VALUES
('636', 'azez', 'ahamed', 'g4536', 'male', '2016-11-20', '209', 'barbadian', 'riyadh', 'jeddah', 'doctor', 'gdgh', 'king fahad', 550179744, 'b@gmail.com'),
('b123', 'bia', 'mohammed', 't6466', 'male', '2018-04-16', '123456789', 'austrian', 'riyadh', 'riyadh', 'nurse', 'beee', 'mmmm', 555, 'badralkon200@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `pilgrims`
--

CREATE TABLE `pilgrims` (
  `ID_P` char(10) NOT NULL,
  `F_name` varchar(100) NOT NULL,
  `L_name` varchar(100) NOT NULL,
  `Date_of_birthday` date NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Nationality` varchar(100) NOT NULL,
  `Phone_number` int(15) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Authorization` int(15) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Record_number` int(6) NOT NULL,
  `type_program` varchar(50) NOT NULL,
  `Camp_name` varchar(100) NOT NULL,
  `Camp_Number` int(10) NOT NULL,
  `Location_Camp` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pilgrims`
--

INSERT INTO `pilgrims` (`ID_P`, `F_name`, `L_name`, `Date_of_birthday`, `Gender`, `Nationality`, `Phone_number`, `Address`, `Authorization`, `Type`, `Record_number`, `type_program`, `Camp_name`, `Camp_Number`, `Location_Camp`) VALUES
('1131409814', 'badryah  Mohammed             ', 'majrashi             ', '1995-04-20', 'Female             ', 'saudi             ', 550179744, ' Riyadh            ', 765800, 'Internal Pilgrim             ', 860, ' Public Hajj Programs   ', ' Manasek   ', 888, 't2      '),
('1131409877', 'amwaj  ', 'mohammed  ', '1996-11-25', 'Female  ', 'monacan  ', 548714375, 'paris  ', 1131409877, 'External Pilgrim  ', 656, 'Low cost Hajj programs  ', 'yasser to hajj  ', 79, 'u '),
('1365867868', 'Mohammed', 'Hussain', '2005-10-28', 'Male', 'serbian', 500000000, 'Makkah', 1365867868, 'External Pilgrim', 745, 'Public Hajj Programs', 'Mnasek', 32, 'v'),
('2147483647', 'Amjad', 'omar', '2001-07-17', 'Female', 'moldovan', 553309968, 'london', 765434333, 'External Pilgrim', 777886, 'Low cost Hajj programs', 'Makkah to hajj', 65, 'k');

-- --------------------------------------------------------

--
-- Table structure for table `rediology`
--

CREATE TABLE `rediology` (
  `Date` date NOT NULL,
  `Date of birth` date NOT NULL,
  `Red NO` int(11) NOT NULL,
  `Time` time NOT NULL,
  `N clinic` int(11) NOT NULL,
  `Type radiology` varchar(100) NOT NULL,
  `P name` varchar(20) NOT NULL,
  `ID_P` int(11) NOT NULL,
  `Patient_NO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rediology`
--

INSERT INTO `rediology` (`Date`, `Date of birth`, `Red NO`, `Time`, `N clinic`, `Type radiology`, `P name`, `ID_P`, `Patient_NO`) VALUES
('2018-02-01', '2018-02-07', 111, '05:12:00', 1234, 'jkfkfh', 'alia', 1, 123);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health_record`
--
ALTER TABLE `health_record`
  ADD PRIMARY KEY (`ID_P`);

--
-- Indexes for table `medical_staff_information`
--
ALTER TABLE `medical_staff_information`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pilgrims`
--
ALTER TABLE `pilgrims`
  ADD PRIMARY KEY (`ID_P`);

--
-- Indexes for table `rediology`
--
ALTER TABLE `rediology`
  ADD PRIMARY KEY (`ID_P`),
  ADD UNIQUE KEY `ID_P` (`ID_P`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45242;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
