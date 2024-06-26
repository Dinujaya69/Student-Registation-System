-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2023 at 03:43 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srs_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `coursess`
--

CREATE TABLE `coursess` (
  `id` int(11) NOT NULL,
  `codes` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `requirement` text DEFAULT NULL,
  `age_range` varchar(20) DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  `free` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coursess`
--

INSERT INTO `coursess` (`id`, `codes`, `name`, `description`, `requirement`, `age_range`, `duration`, `free`) VALUES
(1, '1011', 'Higher Diploma in Business Management', 'The higher diploma program aims to provide a high-quality and professionally relevant education experience equivalent to 1st & the 2nd years of the undergraduate program,\r\n developing students\' ability to progress to final top-up options for their higher education.\r\n It also aims to prepare students to undertake the role of a manager in the modern business world.\r\n Higher Diploma diplomas will equip me with the necessary skills and knowledge for a multi-disciplinary approach to diverse business,\r\n information communication technology, and management problems. ', 'GCE A/L or Level 3 Equivalent Qualification\r\nGCE O/L + Foundation Diploma', '18-30', '18 Months (Full Time', 1),
(2, '1022', 'Higher Diploma in Digital Marketing', 'Programmed Structure Year 1 – Module Business Communications Introduction to Marketing Fundamentals of Business Management Managing Information Systems Introduction to Digital Marketing', 'None', '18 and above', '2 Years', 0),
(3, '1033', 'Diploma in Tourism and Hospitality Management', 'The objective of the OTHM Level 7 Diploma in Tourism and Hospitality Management qualification is to provide tourism industry professionals with the specialist knowledge needed to advance their careers, or for graduates entering the tourism and hospitality sector to gain the skills needed to manage business operations. The qualification provides learners with a contemporary, critical, and international program that supports their development as managers with a lifelong-learning orientation.', '1. An honors degree in a related subject or a UK level 6 diploma or an equivalent overseas qualification\r\n\r\n\r\n\r\n2. Mature learners (over 21) with management experience\r\n', '18 and above', '9 Months', 1),
(4, '1044', 'Diploma in Human Resource Management', 'The objective of the OTHM Level 7 Diploma in Human Resource Management qualification is to provide learners with the skills and understanding in human resource management (HRM) that align with good strategic decision-making to maintain organizations’ competitive advantage.', '1. An honors degree in a related subject or a UK level 6 diploma or an equivalent overseas qualification\r\n2. Mature learners (over 21) with management experience', '18 and above', '9 Months', 1),
(5, '1055', 'British Foundation Diploma for Higher Education Studies', 'British Foundation Diploma for Higher Education Studies', 'No need Extra Requiremnt', '18 and above', '9 Months', 1),
(6, '1066', 'International Diploma in Business Administration', 'The International Diploma in Business Administration program is aimed at students who seek to obtain fundamental knowledge in business management discipline. This program will help you to possess essential business knowledge and skills needed in today\'s competitive marketplace.', 'O/ Level', '18 and above', '6 Months', 1),
(7, 'HNDIT', 'hirnational', 'dis', 'needs', '15-20', '12months', 127);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `UserID` int(15) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `UserType` varchar(10) NOT NULL,
  `Email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`UserID`, `UserName`, `Password`, `UserType`, `Email`) VALUES
(0, 'ravi', '123', 'user', 'ravin@gmail.com'),
(1, 'admin', '1234', 'admin', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `qualifications`
--

CREATE TABLE `qualifications` (
  `Zcore` float NOT NULL,
  `RegNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qualifications`
--

INSERT INTO `qualifications` (`Zcore`, `RegNo`) VALUES
(0, 11),
(0, 12),
(0, 13),
(0, 14),
(0, 15),
(0, 16),
(0, 17),
(0, 18),
(0, 19),
(0, 20),
(0, 21),
(0, 22);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `RegistrationNo` int(20) NOT NULL,
  `FullName` varchar(80) NOT NULL,
  `DateOfBirth` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `MobileNO` int(10) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Address` varchar(70) NOT NULL,
  `District` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`RegistrationNo`, `FullName`, `DateOfBirth`, `Email`, `MobileNO`, `Gender`, `Address`, `District`) VALUES
(11, '', '-1/-1/-1', '', 0, '', '', ''),
(12, '', '-1/-1/-1', '', 0, 'Male', '', ''),
(13, '', '-1/-1/-1', '', 0, 'Male', '', ''),
(14, '', '-1/-1/-1', '', 0, 'Female', '', ''),
(15, '', '-1/-1/-1', '', 0, 'Male', '', ''),
(16, '', '-1/-1/-1', '', 0, 'Male', '', ''),
(17, '', '-1/-1/-1', '', 0, 'Male', '', ''),
(18, '', '-1/-1/-1', '', 0, '', '', ''),
(19, '', '-1/-1/-1', '', 0, 'Male', '', ''),
(20, '', '-1/-1/-1', '', 0, 'Female', '', ''),
(21, '', '-1/-1/-1', '', 0, '', '', ''),
(22, '', '-1/-1/-1', '', 0, 'Male', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `subject_al`
--

CREATE TABLE `subject_al` (
  `Subject1Name` varchar(20) NOT NULL,
  `Grade1` varchar(1) NOT NULL,
  `Subject2Name` varchar(20) NOT NULL,
  `Grade2` varchar(1) NOT NULL,
  `Subject3Name` varchar(20) NOT NULL,
  `Grade3` varchar(1) NOT NULL,
  `RegNo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject_al`
--

INSERT INTO `subject_al` (`Subject1Name`, `Grade1`, `Subject2Name`, `Grade2`, `Subject3Name`, `Grade3`, `RegNo`) VALUES
('', 'A', '', 'A', '', 'A', 11),
('', 'A', '', 'A', '', 'A', 12),
('', 'A', '', 'A', '', 'A', 13),
('', 'A', '', 'A', '', 'A', 14),
('', 'A', '', 'A', '', 'A', 15),
('', 'A', '', 'A', '', 'A', 16),
('', 'A', '', 'A', '', 'A', 17),
('', 'A', '', 'A', '', 'A', 18),
('', 'A', '', 'A', '', 'A', 19),
('', 'A', '', 'A', '', 'A', 20),
('', 'A', '', 'A', '', 'A', 21),
('', 'A', '', 'A', '', 'A', 22);

-- --------------------------------------------------------

--
-- Table structure for table `subject_ol`
--

CREATE TABLE `subject_ol` (
  `MathsGrade` varchar(1) NOT NULL,
  `ScienceGrade` varchar(1) NOT NULL,
  `EnglishGrade` varchar(1) NOT NULL,
  `RegNo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject_ol`
--

INSERT INTO `subject_ol` (`MathsGrade`, `ScienceGrade`, `EnglishGrade`, `RegNo`) VALUES
('A', 'A', 'A', 11),
('A', 'A', 'A', 12),
('A', 'A', 'A', 13),
('A', 'A', 'A', 14),
('A', 'A', 'A', 15),
('A', 'A', 'A', 16),
('A', 'A', 'A', 17),
('A', 'A', 'A', 18),
('A', 'A', 'A', 19),
('A', 'A', 'A', 20),
('A', 'A', 'A', 21),
('A', 'A', 'A', 22);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coursess`
--
ALTER TABLE `coursess`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD KEY `RegNo` (`RegNo`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`RegistrationNo`);

--
-- Indexes for table `subject_al`
--
ALTER TABLE `subject_al`
  ADD KEY `RegNo` (`RegNo`);

--
-- Indexes for table `subject_ol`
--
ALTER TABLE `subject_ol`
  ADD KEY `RegNo` (`RegNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coursess`
--
ALTER TABLE `coursess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `RegistrationNo` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD CONSTRAINT `qualifications_ibfk_1` FOREIGN KEY (`RegNo`) REFERENCES `registration` (`RegistrationNo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subject_al`
--
ALTER TABLE `subject_al`
  ADD CONSTRAINT `subject_al_ibfk_1` FOREIGN KEY (`RegNo`) REFERENCES `registration` (`RegistrationNo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subject_ol`
--
ALTER TABLE `subject_ol`
  ADD CONSTRAINT `subject_ol_ibfk_1` FOREIGN KEY (`RegNo`) REFERENCES `registration` (`RegistrationNo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
