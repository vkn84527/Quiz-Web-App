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
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(25) NOT NULL,
  `teacher_email` varchar(25) NOT NULL,
  `teacher_password` varchar(100) DEFAULT NULL,
  `teacher_phone` varchar(25) NOT NULL,
  `Created_At` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `teacher_name`, `teacher_email`, `teacher_password`, `teacher_phone`, `Created_At`) VALUES
(1, 'vik', 'vkn11@gmail.com', '$2a$10$xz/hC9tk77TjZwCwY3Q3ze16vY4pJa/b9vffoivNMkl0iCxiWl/qK', '7352570838', '2021-08-14 15:06:47'),
(2, 'vikas', 'vkn1@gmail.com', '$2a$10$OaVZsqCoxo/ghAhyz1grl.5ObtQYVaKjVkl3wiYY44PQaFQtgDEj6', '7352570838', '2021-08-14 15:06:47'),
(3, 'vikas', 'vkn110@gmail.com', '$2a$10$pu8KYM1JeH.cefBFkI.2tOolcssJ0L.t34V1x2prfLcuxdoO71d7S', '7352570838', '2021-08-14 15:06:47'),
(4, 'vikas', 'vkn0@gmail.com', '$2a$10$Me2q5bJT3EB6lvnoLqgmUetmu5.Rm1YLVEZdUXlR4IfUKVNMoXVpK', '7352570838', '2021-08-14 15:07:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
