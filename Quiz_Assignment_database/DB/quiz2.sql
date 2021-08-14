-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2021 at 03:11 PM
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
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `student_id` int(11) NOT NULL,
  `ques_id` int(11) NOT NULL,
  `student_option` varchar(10) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`student_id`, `ques_id`, `student_option`, `score`) VALUES
(14, 1, '3', 0),
(14, 1, '6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `ques_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `your_question` varchar(100) NOT NULL,
  `Created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`ques_id`, `topic_id`, `your_question`, `Created_at`) VALUES
(1, 1, 'what will be sum of 2+2+2', '2021-08-14 16:43:50'),
(2, 1, 'what will be multiple of 2*2', '2021-08-14 16:44:21');

-- --------------------------------------------------------

--
-- Table structure for table `ques_option`
--

DROP TABLE IF EXISTS `ques_option`;
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

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(25) NOT NULL,
  `student_email` varchar(25) NOT NULL,
  `student_password` varchar(100) DEFAULT NULL,
  `student_phone` varchar(25) NOT NULL,
  `Created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `student_email`, `student_password`, `student_phone`, `Created_at`) VALUES
(1, 'vikas', 'vkn@gmail.com', '$2a$10$2/6BAneFEpJoBzyhDK6Y6uLhnsIY9NUMaEXXGRUD9U8gQa9YERbme', '7352570838', '2021-08-14 15:07:59'),
(2, 'vikas', 'vkn1@gmail.com', '$2a$10$WYvJD6Cnoi9FXL38wOxnPes5H8kbhGQbloF76TkfkZIHXlXC1ChHO', '7352570838', '2021-08-14 15:07:59'),
(3, 'vikas', 'vkn21@gmail.com', '$2a$10$NBmgIahG3.oHP0NYIjCLcucSEeXuUjOUk8bAtTUaPL7XSEdgzOvT2', '7352570838', '2021-08-14 15:07:59'),
(4, 'vikas', 'v2kn21@gmail.com', '$2a$10$gGom6yTDHVDQOZ7oeKeD/ejUb3tP8jB4iie45YHeMWBBP6hjqENJy', '7352570838', '2021-08-14 15:07:59'),
(5, 'vikas', 'v2kn121@gmail.com', '$2a$10$33RtHEz3MqWjaAGjsoa6PeudDAZuURBVluGGXSRlhApxRCbxBt982', '7352570838', '2021-08-14 15:07:59'),
(6, 'vikas', 'v2kn1221@gmail.com', '$2a$10$viIbNYflc9PgqTfAnoWKxen8gWjHGwakRD5ontZ9SM6U6zXDb4S3S', '7352570838', '2021-08-14 15:07:59'),
(7, 'vikas', 'v2kn122w1@gmail.com', '$2a$10$YImKtsc.MlWfXmAFLegBH.c6OzlaJkFMsi8f9eZ1tVjZ7xMF36RYO', '7352570838', '2021-08-14 15:07:59'),
(8, 'vikas', 'v2wkn122w1@gmail.com', '$2a$10$c5zdvPlAcKJnmbCrrqTcQuyuppPJzz1URwF7gQ6KWbL/hVPxdYthK', '7352570838', '2021-08-14 15:07:59'),
(9, 'vikas', 'v2wkdn122w1@gmail.com', '$2a$10$40DQ2ufhSXCjWEQCrA5GRu1So.Xy3zIK40Exw/U0.3jOr/qKuZmqq', '7352570838', '2021-08-14 15:07:59'),
(10, 'vikas', 'v2wkdsadweqn122w1@gmail.c', '$2a$10$1ZOn0Pqd1LFV6DiIu9Bskebzn6Jx2KIXOvha/xez3Td4/YYohI71e', '7352570838', '2021-08-14 15:07:59'),
(11, 'vikas', 'v2kn1322w1@gmail.com', '$2a$10$COzJxCi5HNmlGVAuGUyrfeybNrJizmESqXxk14ZJu8DfOzDlijnaK', '7352570838', '2021-08-14 15:07:59'),
(12, 'vikas', 'vkn0@gmail.com', '$2a$10$pY1naU1f4QjBFkgtiS/eVetJ7dXDtBtvPb/fTKk0iW3RUCsv6g72a', '7352570838', '2021-08-14 15:07:59'),
(13, 'vik', 'vk1n@gmail.com', '$2a$10$Z/6.bKQFBSNOIV9FYagtwe2vb7IYanJMywawP/UoiJdBf8EqwgDye', '7352570838', '2021-08-14 15:07:59'),
(14, 'vikas', 'vikas@gmail.com', '$2a$10$OcFQ0ijGRNMfZS0OkF.SDuimWqc16Th7y.tCxXiLLHNsL6hKBQdMq', '7352570838', '2021-08-14 15:07:59'),
(15, 'vikas', 'vikas@gmail1.com', '$2a$10$W1/2FuDesgjkqj6FJ9g5Aez5ShQ7/E78V3x9gdB1GyCoJR1M2C9wu', '7352570838', '2021-08-14 15:07:59'),
(16, 'vikas', 'vikas1@gmail.com', '$2a$10$BiASWaGiVdC3LBs/rOfMB.FnmX0LoY6Ntd/3h5evtZkWJZpvfeTRK', '7352570838', '2021-08-14 15:07:59'),
(17, 'vikas', 'vikas2@gmail.com', '$2a$10$gLjD170IEMXRvn.yq82NUewekIF71NLaxoTKKoFbRi0sm3l3.DiBm', '7352570838', '2021-08-14 15:07:59'),
(18, 'vikas', 'vikas122@gmail.com', '$2a$10$3X4NaKAE6S97g7N1hJGe2uPPGE/idtRvmiKUCNaPInsnWlHdNsw8W', '7352570838', '2021-08-14 15:08:21');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
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

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `topic_id` int(11) NOT NULL,
  `topic_name` varchar(25) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `Created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`topic_id`, `topic_name`, `teacher_id`, `Created_at`) VALUES
(1, 'math', 4, '2021-08-14 15:14:49'),
(2, 'Python2', 4, '2021-08-14 15:17:31'),
(3, 'Python', 4, '2021-08-14 15:20:57'),
(5, 'Python3', 4, '2021-08-14 15:26:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`ques_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`topic_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `ques_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
