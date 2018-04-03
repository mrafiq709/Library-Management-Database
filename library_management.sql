-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2016 at 05:07 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `library_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `books_no` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `books_name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `author` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `edition` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `copies` int(50) NOT NULL,
  `dept` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`books_no`, `books_name`, `author`, `edition`, `copies`, `dept`) VALUES
('10001', 'C Programming', 'Shums Outlines', '4th', 8, 'CSE'),
('10002', 'Electronics and Electrical', 'BL Thereja', '5th', 14, 'EEE'),
('10003', 'Data Structures', 'Shaums Outline', 'Tata Mc-Graw-Hall Edition', 8, 'CSE'),
('10004', 'Algorithms', 'Corman', '3rd', 18, 'CSE'),
('10005', 'Electric Circuit', 'Corman', '3rd', 24, 'EEE'),
('10006', 'Computer Network', 'Peterson & Bruce', '4th', 10, 'EEE'),
('10007', 'Sheet Metal', 'devid', '2nd', 15, 'CE');

-- --------------------------------------------------------

--
-- Table structure for table `issuereturn`
--

CREATE TABLE IF NOT EXISTS `issuereturn` (
  `reg_no` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `books_no` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `dept` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `issue_date` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `return_date` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `issuereturn`
--

INSERT INTO `issuereturn` (`reg_no`, `books_no`, `dept`, `issue_date`, `return_date`) VALUES
('2012331501', '10001', 'CSE', 'Dec 1, 2015', 'X'),
('2012331502', '10002', 'EEE', 'Dec 2, 2015', 'X'),
('2012331503', '10003', 'CSE', 'Dec 3, 2015', 'X'),
('2012331504', '10004', 'CSE', 'Dec 4, 2015', 'X'),
('2012331501', '10001', 'CSE', 'X', 'Dec 5, 2015'),
('2012331502', '10002', 'EEE', 'X', 'Dec 6, 2015'),
('2012331503', '10003', 'CSE', 'X', 'Dec 7, 2015'),
('2012331504', '10004', 'CSE', 'X', 'Dec 8, 2015'),
('2012331501', '10004', 'CSE', 'Dec 26, 2015', 'X'),
('2012331501', '10002', 'CSE', 'Dec 26, 2015', 'X'),
('2012331502', '10003', 'CSE', 'Dec 26, 2015', 'X'),
('2012331501', '10001', 'CSE', 'Dec 26, 2015', 'X'),
('2012331504', '10004', 'CSE', 'Dec 26, 2015', 'X'),
('2012331501', '10001', 'CSE', 'X', 'Dec 26, 2015'),
('2012331504', '10001', 'CSE', 'Dec 26, 2015', 'X'),
('2012331505', '', '', '', ''),
('2012331506', '', '', '', ''),
('2012331507', '', '', '', ''),
('2012331522', '', 'CSE', '', ''),
('2012331522', '10001', 'CSE', 'Dec 27, 2015', 'X'),
('2012331522', '10001', 'CSE', 'X', 'Jan 7, 2016'),
('2012331522', '10003', 'CSE', 'Jan 7, 2016', 'X'),
('2012331508', '', 'CSE', '', ''),
('2012331509', '', 'CSE', '', ''),
('2012331522', '10006', 'CSE', 'Mar 25, 2016', 'X'),
('2012331522', '10006', 'CSE', 'X', 'Mar 25, 2016'),
('2012331501', '10004', 'CSE', 'X', 'Mar 25, 2016'),
('2012331501', '10006', 'CSE', 'Mar 25, 2016', 'X'),
('2012331501', '10006', 'CSE', 'X', 'Mar 25, 2016'),
('2012331505', '10002', 'EEE', 'Mar 25, 2016', 'X'),
('2012331505', '10002', 'EEE', 'X', 'Mar 25, 2016'),
('2012331522', '10004', 'CSE', 'Mar 26, 2016', 'X'),
('2012331522', '10004', 'CSE', 'X', 'Mar 26, 2016');

-- --------------------------------------------------------

--
-- Table structure for table `log_in`
--

CREATE TABLE IF NOT EXISTS `log_in` (
  `sl` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `log_in`
--

INSERT INTO `log_in` (`sl`, `password`, `email`) VALUES
('1', '11', 'mrafiq709@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
 ADD PRIMARY KEY (`books_no`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
