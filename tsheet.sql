-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2023 at 02:58 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tsheet`
--

-- --------------------------------------------------------

--
-- Table structure for table `brgy_emp`
--

CREATE TABLE `brgy_emp` (
  `emp_id` int(10) NOT NULL,
  `emp_lname` varchar(50) NOT NULL,
  `emp_fname` varchar(50) NOT NULL,
  `emp_address` varchar(100) NOT NULL,
  `emp_status` varchar(20) NOT NULL,
  `emp_gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brgy_emp`
--

INSERT INTO `brgy_emp` (`emp_id`, `emp_lname`, `emp_fname`, `emp_address`, `emp_status`, `emp_gender`) VALUES
(1, 'quines', 'ernest', 'pakigne', 'single', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `emp_id` int(11) NOT NULL,
  `u_position` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`emp_id`, `u_position`) VALUES
(1, 'tanod');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brgy_emp`
--
ALTER TABLE `brgy_emp`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD KEY `emp_id` (`emp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brgy_emp`
--
ALTER TABLE `brgy_emp`
  MODIFY `emp_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD CONSTRAINT `user_tbl_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `brgy_emp` (`emp_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
