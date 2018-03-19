-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2018 at 06:19 PM
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
-- Table structure for table `admit_pilgrim`
--

CREATE TABLE `admit_pilgrim` (
  `ID_P` varchar(15) NOT NULL,
  `F_name` varchar(30) NOT NULL,
  `L_name` varchar(30) NOT NULL,
  `Date_of_brithday` date NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Department` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admit_pilgrim`
--

INSERT INTO `admit_pilgrim` (`ID_P`, `F_name`, `L_name`, `Date_of_brithday`, `Date`, `Time`, `Department`) VALUES
('1', 'ali', 'alshehri', '2018-03-13', '2018-03-14', '07:03:00', 'Haematology'),
('12', 's', 't', '2018-03-13', '2018-03-13', '07:02:00', 'volvo'),
('21', 'reem', 'alshehri', '2018-03-07', '2018-03-20', '07:04:00', 'Obstetrics/Gynecology'),
('23', 'we', 'rr', '2018-02-07', '2018-02-03', '14:01:00', 'saab'),
('445', 'ebtesam', 'ali', '2018-03-17', '2018-03-07', '03:05:00', 'Haematology');

-- --------------------------------------------------------

--
-- Table structure for table `clinical_note`
--

CREATE TABLE `clinical_note` (
  `ID_P` varchar(15) NOT NULL,
  `F_name` varchar(30) NOT NULL,
  `L_name` varchar(30) NOT NULL,
  `Date_of_brithday` date NOT NULL,
  `Review_Date` date NOT NULL,
  `Review_Time` time NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Note_Doctor` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clinical_note`
--

INSERT INTO `clinical_note` (`ID_P`, `F_name`, `L_name`, `Date_of_brithday`, `Review_Date`, `Review_Time`, `Status`, `Note_Doctor`) VALUES
('12', 'ali', 'alshehri', '2018-03-20', '2018-03-14', '07:05:00', 'B', 'NEED LABORATORY  '),
('121', 'REEM', 'ALI', '2018-03-20', '2018-03-15', '07:06:00', 'S', 'NEED LABORATORY  .  '),
('20', 'mohammed', 'ali', '2018-03-02', '2018-03-08', '07:07:00', 'B', 'NEED LABORATORY   '),
('56', 'hjk,l.', 'sdfg', '2018-02-08', '2018-02-22', '00:59:00', 'cvbnm', '  fghj');

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
-- Table structure for table `mang_discharg_pilgrim`
--

CREATE TABLE `mang_discharg_pilgrim` (
  `ID_P` varchar(15) NOT NULL,
  `F_name` varchar(30) NOT NULL,
  `L_name` varchar(30) NOT NULL,
  `Date_of_brithday` date NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mang_discharg_pilgrim`
--

INSERT INTO `mang_discharg_pilgrim` (`ID_P`, `F_name`, `L_name`, `Date_of_brithday`, `Date`, `Time`) VALUES
('20', 'ali', 'mohamed', '2018-03-05', '2018-03-14', '10:10:00'),
('202', 'ali', 'alshehri', '2018-03-01', '2018-03-05', '07:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `medical_information`
--

CREATE TABLE `medical_information` (
  `ID_P` varchar(15) NOT NULL,
  `F_name` varchar(30) NOT NULL,
  `L_name` varchar(30) NOT NULL,
  `Date_of_birthday` date NOT NULL,
  `Medical_History` varchar(100) NOT NULL,
  `Note_of_Doctor` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_information`
--

INSERT INTO `medical_information` (`ID_P`, `F_name`, `L_name`, `Date_of_birthday`, `Medical_History`, `Note_of_Doctor`) VALUES
('1111', 'jk', 'll', '2018-03-13', 'saab', '   Enter textjkl. here...  '),
('1121', 'o', 's', '2018-03-13', 'saab', '  hjjjjjjjjjjjjjjjj Enter text here...  '),
('12', 'mohammed', 'alshehri', '2018-03-12', 'Cholecystitis', ' NEED LABORATORY  '),
('121', 'ali', 'SAD', '2018-03-13', 'Renal failure', ' NEED LABORATORY   '),
('2', 'l', 'h', '2018-03-05', 'saab', '   Enter text here...  vbnm,'),
('445', 'ali', 'SAD', '2018-03-08', 'Cholecystitis', ' NEED LABORATORY  ');

-- --------------------------------------------------------

--
-- Table structure for table `medical_prescription`
--

CREATE TABLE `medical_prescription` (
  `ID_P` varchar(15) NOT NULL,
  `F_name` varchar(30) NOT NULL,
  `L_name` varchar(30) NOT NULL,
  `Date_of_birthday` date NOT NULL,
  `Date_Prescription` date NOT NULL,
  `medical_Prescription_Details` varchar(100) NOT NULL,
  `medication_name` varchar(100) NOT NULL,
  `Note_of_Doctor` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_prescription`
--

INSERT INTO `medical_prescription` (`ID_P`, `F_name`, `L_name`, `Date_of_birthday`, `Date_Prescription`, `medical_Prescription_Details`, `medication_name`, `Note_of_Doctor`) VALUES
('2122', 'ebtesam', 'ali', '2018-03-15', '2018-03-14', 'DM- ONE DAY   ', 'R5RE', ' NOTHING '),
('3', 'ali', 'mohamed', '2018-03-20', '2018-03-14', ' ONE DAY 5 ONLY', 'RT5R', ' NEED LABORATORY  ');

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
-- Table structure for table `patient_appointments`
--

CREATE TABLE `patient_appointments` (
  `ID_P` varchar(15) NOT NULL,
  `F_name` varchar(30) NOT NULL,
  `L_name` varchar(30) NOT NULL,
  `Date_of_birthday` date NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Department` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_appointments`
--

INSERT INTO `patient_appointments` (`ID_P`, `F_name`, `L_name`, `Date_of_birthday`, `Date`, `Time`, `Department`) VALUES
('', '', '', '0000-00-00', '0000-00-00', '00:00:00', ''),
('12333u8', 'dfghj', 'ghjk', '2018-02-22', '2018-02-09', '14:00:00', 'saab'),
('1278', 'SA', 'GHJK', '2018-02-08', '2018-02-06', '23:58:00', 'fiat'),
('13', 'ali', 'salutan', '2018-02-14', '2018-02-13', '14:01:00', 'saab'),
('16', 'ali', 'salutan', '2018-02-14', '2018-02-13', '14:01:00', 'saab'),
('18', 'ali', 'salutan', '2018-02-14', '2018-02-13', '14:01:00', 'fiat'),
('2355', 'sad ', 'gnhmbj,kn.', '2018-02-16', '2018-02-20', '02:01:00', 'fiat'),
('5', 'ali', 'tfhfjy', '2018-02-14', '2018-02-13', '14:01:00', 'audi'),
('67', 'j', 'p', '2018-02-15', '2018-02-16', '14:00:00', 'fiat'),
('rt', 'gh', 'ee', '2018-03-19', '2018-03-13', '11:23:00', 'Accident & Emergency');

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
-- Indexes for table `admit_pilgrim`
--
ALTER TABLE `admit_pilgrim`
  ADD PRIMARY KEY (`ID_P`),
  ADD UNIQUE KEY `ID_P` (`ID_P`);

--
-- Indexes for table `clinical_note`
--
ALTER TABLE `clinical_note`
  ADD PRIMARY KEY (`ID_P`),
  ADD UNIQUE KEY `ID_P` (`ID_P`);

--
-- Indexes for table `health_record`
--
ALTER TABLE `health_record`
  ADD PRIMARY KEY (`ID_P`);

--
-- Indexes for table `mang_discharg_pilgrim`
--
ALTER TABLE `mang_discharg_pilgrim`
  ADD PRIMARY KEY (`ID_P`),
  ADD UNIQUE KEY `ID_P` (`ID_P`);

--
-- Indexes for table `medical_information`
--
ALTER TABLE `medical_information`
  ADD PRIMARY KEY (`ID_P`),
  ADD UNIQUE KEY `ID_P` (`ID_P`);

--
-- Indexes for table `medical_prescription`
--
ALTER TABLE `medical_prescription`
  ADD PRIMARY KEY (`ID_P`),
  ADD UNIQUE KEY `ID_P` (`ID_P`);

--
-- Indexes for table `medical_staff_information`
--
ALTER TABLE `medical_staff_information`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patient_appointments`
--
ALTER TABLE `patient_appointments`
  ADD PRIMARY KEY (`ID_P`),
  ADD UNIQUE KEY `ID_Pilgrim` (`ID_P`);

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
