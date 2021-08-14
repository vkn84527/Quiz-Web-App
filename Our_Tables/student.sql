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
-- Table structure for table `student`
--

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
