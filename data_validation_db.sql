-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2018 at 04:20 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_validation_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`id`, `email`, `password`) VALUES
(1, 'iffatfarhana11@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `data_table`
--

CREATE TABLE `data_table` (
  `id` int(12) NOT NULL,
  `Full_Name` varchar(26) NOT NULL,
  `Roll_No` int(12) NOT NULL,
  `Father_Name` varchar(26) NOT NULL,
  `Birth_Date` date NOT NULL,
  `Address` varchar(26) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phone_No` int(15) NOT NULL,
  `Edu_Qua` varchar(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_table`
--

INSERT INTO `data_table` (`id`, `Full_Name`, `Roll_No`, `Father_Name`, `Birth_Date`, `Address`, `Email`, `Phone_No`, `Edu_Qua`) VALUES
(1, 'iffat', 12, '', '1995-11-11', 'bogra', 'a@gmail.com', 1767, 'hsc'),
(2, 'iffat', 12, '', '1995-11-11', 'bogra', 'a@gmail.com', 1767, 'hsc'),
(3, 'iffat', 12, '', '1995-11-11', 'bogra', 'a@gmail.com', 1767, 'hsc'),
(4, 'jemi', 12, '', '1995-11-11', 'qwe', 'a@gmail.com', 9765, 'ssc'),
(5, 'jemi', 12, 'xyz', '1995-11-11', 'qwe', 'a@gmail.com', 9765, 'ssc'),
(6, 'shishir', 14205401, 'abc', '1995-11-11', 'bogra', 's@gmail.com', 1791776543, 'ssc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_table`
--
ALTER TABLE `data_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_table`
--
ALTER TABLE `data_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
