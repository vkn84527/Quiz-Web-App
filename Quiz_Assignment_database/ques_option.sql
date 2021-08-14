-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2021 at 03:10 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `ques_option`
--

CREATE TABLE `ques_option` (
  `ques_id` int(11) NOT NULL,
  `opt_A` varchar(10) NOT NULL,
  `opt_B` varchar(10) NOT NULL,
  `opt_C` varchar(10) NOT NULL,
  `opt_D` varchar(10) NOT NULL,
  `correct_opt` varchar(10) NOT NULL,
  `Created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ques_option`
--

INSERT INTO `ques_option` (`ques_id`, `opt_A`, `opt_B`, `opt_C`, `opt_D`, `correct_opt`, `Created_at`) VALUES
(1, '0', '1', '3', '6', '6', '2021-08-14 16:52:27'),
(2, '0', '1', '4', '6', '4', '2021-08-14 16:53:10');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
