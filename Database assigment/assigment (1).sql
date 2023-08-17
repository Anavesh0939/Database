-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 17, 2023 at 11:27 AM
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
-- Database: `assigment`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `PK_CNM` int(11) DEFAULT NULL,
  `CNAME` varchar(25) DEFAULT NULL,
  `CITY` varchar(25) DEFAULT NULL,
  `RATING` int(11) DEFAULT NULL,
  `FK_SNo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`PK_CNM`, `CNAME`, `CITY`, `RATING`, `FK_SNo`) VALUES
(201, 'Hoffman', 'London', 100, 1001),
(202, 'Giovanne', 'Roe', 200, 1003),
(203, 'Liu', 'San Jose', 300, 1002),
(204, 'Grass', 'Barcelona', 100, 1002),
(206, 'Clemens', 'London', 300, 1007),
(207, 'Pereira', 'Roe', 100, 1004);

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
--

CREATE TABLE `Employee` (
  `Employee_id` int(11) DEFAULT NULL,
  `First_Name` varchar(20) DEFAULT NULL,
  `Last_Name` varchar(29) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL,
  `Joining_Date` varchar(50) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`Employee_id`, `First_Name`, `Last_Name`, `Salary`, `Joining_Date`, `Department`) VALUES
(1, 'John', 'Abraham', 1000000, '01-JAN-13  12.00.00 AM', 'Banking'),
(2, 'Michael', 'Clarke', 800000, '01-JAN-13  12.00.00 AM', 'Insurance'),
(3, 'Employee Name', 'Thomas', 700000, '01-FEB-13  12.00.00 AM', 'Banking'),
(4, 'Tom', 'Jose', 600000, '01-FEB-13  12.00.00 AM', 'Insurance'),
(5, 'Jerry', 'Pinto', 650000, '01-FEB-13  12.00.00 AM', 'Insurance'),
(6, 'Philip', 'Mathew', 750000, '01-JAN-13  12.00.00 AM', 'Services'),
(7, 'TestName1', '123', 650000, '01-JAN-13  12.00.00 AM', 'Services'),
(8, 'TestName2', 'Lname%', 600000, '01-FEB-13  12.00.00 AM', 'Services');

-- --------------------------------------------------------

--
-- Table structure for table `examdb`
--

CREATE TABLE `examdb` (
  `Rollno` int(11) DEFAULT NULL,
  `S_code` varchar(25) DEFAULT NULL,
  `Marks` int(11) DEFAULT NULL,
  `P_code` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `examdb`
--

INSERT INTO `examdb` (`Rollno`, `S_code`, `Marks`, `P_code`) VALUES
(1, 'CS11', 50, 'CS'),
(1, 'CS12', 60, 'CS'),
(2, 'EC101', 66, 'EC'),
(3, 'EC101', 45, 'EC'),
(3, 'EC102', 50, 'EC');

-- --------------------------------------------------------

--
-- Table structure for table `Incentive`
--

CREATE TABLE `Incentive` (
  `id` int(11) DEFAULT NULL,
  `Date` varchar(50) DEFAULT NULL,
  `Amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Incentiveinfo`
--

CREATE TABLE `Incentiveinfo` (
  `Employee_ref_id` int(11) DEFAULT NULL,
  `Incentive_date` varchar(25) DEFAULT NULL,
  `Incentive_amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Information`
--

CREATE TABLE `Information` (
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Information`
--

INSERT INTO `Information` (`firstname`, `lastname`, `address`, `city`, `age`) VALUES
('mickey', 'mouse', '123 fantasy', 'anaheim', 71),
('bat', 'woman', '321 colony', 'gotham', 54),
('woman', 'woman', '321 col', 'cotham', 46),
('donald', 'trump', '112 vastrapur', 'lotham', 84),
('bug', 'bunny', '156 vastral', 'surat', 20),
('wiley', 'coyote', '5654 carrot', 'st bus stand', 35),
('wlfmd', 'cow', '56 carrot city', 'surendranagar', 53),
('mihir', 'patel', '5 water city', 'nagar', 64);

-- --------------------------------------------------------

--
-- Table structure for table `salesperson`
--

CREATE TABLE `salesperson` (
  `PK_SNO` int(11) DEFAULT NULL,
  `SNAME` varchar(25) DEFAULT NULL,
  `CITY` varchar(25) DEFAULT NULL,
  `COMM` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salesperson`
--

INSERT INTO `salesperson` (`PK_SNO`, `SNAME`, `CITY`, `COMM`) VALUES
(1001, 'Peel', 'London', 0.12),
(1002, 'Serres', 'San Jose', 0.13),
(1004, 'Motika', 'London', 0.11),
(1007, 'Rafkin', 'Barcelona', 0.15),
(1003, 'Axelrod', 'New york', 0.1);

-- --------------------------------------------------------

--
-- Table structure for table `stud`
--

CREATE TABLE `stud` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `age` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stud`
--

INSERT INTO `stud` (`id`, `fullname`, `age`) VALUES
(1, 'JASH', 20),
(3, 'SHUR', 18),
(4, 'SHIV', 19);

-- --------------------------------------------------------

--
-- Table structure for table `Student`
--

CREATE TABLE `Student` (
  `Kirti` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stud`
--
ALTER TABLE `stud`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stud`
--
ALTER TABLE `stud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
