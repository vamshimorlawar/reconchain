-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 11:58 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reconchain`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `id` int(11) NOT NULL,
  `candidate_email` varchar(100) NOT NULL,
  `company_email` varchar(100) NOT NULL,
  `job_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`id`, `candidate_email`, `company_email`, `job_id`) VALUES
(1, 'deep@gmail', 'i@i', 2),
(2, 'deep@gmail', 'i@i', 6),
(4, 'krishna@gmail', 'i@i', 15),
(5, 'xyz@gmail', 'i@i', 2),
(6, 'xyz@gmail', 'i@i', 16),
(7, 'xyz@gmail', 'tech@tc.com', 12),
(8, 'xyz@gmail', 'i@i', 14),
(9, 'vipul@gmail.com', 'i@i', 14),
(10, 'u1@u1', 'c1@c1', 17);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_profile`
--

CREATE TABLE `candidate_profile` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `rating` int(11) NOT NULL,
  `interests` varchar(100) NOT NULL,
  `education` varchar(100) NOT NULL,
  `experience` varchar(1000) NOT NULL,
  `skills` varchar(1000) NOT NULL,
  `languages` varchar(200) NOT NULL,
  `mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidate_profile`
--

INSERT INTO `candidate_profile` (`id`, `username`, `email`, `rating`, `interests`, `education`, `experience`, `skills`, `languages`, `mobile`) VALUES
(2, 'riya', 'riya@gmail', 0, 'sde', 'Mtech', '3 Years', 'C++', 'C, C++, Python', '1234567890'),
(3, 'Vipul', 'vipul@gmail.com', 0, 'sde', 'MTech', '2 years', 'C, C++', 'Python', '9291919191'),
(4, 'abc', 'abc@gmail', 0, '', '', '', '', '', ''),
(5, 'deep', 'deep@gmail', 0, '', '', '', '', '', ''),
(7, 'xyz', 'xyz@gmail', 0, '', '', '', '', '', ''),
(8, 'u1', 'u1@u1', 0, '', '', '', '', '', ''),
(9, 'u2', 'u2@u2', 0, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `company_profile`
--

CREATE TABLE `company_profile` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `rating` int(20) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `website` varchar(100) NOT NULL,
  `about` varchar(500) NOT NULL,
  `number_job_posts` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_profile`
--

INSERT INTO `company_profile` (`id`, `username`, `email`, `rating`, `company_name`, `location`, `mobile`, `website`, `about`, `number_job_posts`) VALUES
(1, 'infosys', 'i@i', 55238, 'Infosys', 'Pune', '1234567890', 'infosys.com', 'Software', 0),
(3, 'Tehverito', 'tech@tc.com', 10, 'TechVerito', 'Pune', '1234567890', 'www.techverito.com', 'SDE', 0),
(4, 'c1', 'c1@c1', 0, '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `job_posts`
--

CREATE TABLE `job_posts` (
  `id` int(11) NOT NULL,
  `company_email` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `salary` varchar(100) NOT NULL,
  `report` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_posts`
--

INSERT INTO `job_posts` (`id`, `company_email`, `title`, `description`, `tag`, `location`, `type`, `salary`, `report`) VALUES
(2, 'i@i', 'Vamshi', 'Vamshi', 'Vamshi', 'Vamshi', 'VAmshi', '1', 11),
(3, 'i@i', 'vinay', 'UI UX', 'UIX UX', 'Kanpur', 'Remote', '30000000', 7),
(6, 'i@i', 'QA Engineer', 'File System, Slenium', 'qa', 'Chnadigarh', 'Full Time', '456000', 2),
(12, 'tech@tc.com', 'Software Engineer', 'Lorem ipsum', 'sde', 'Pune, Mumbai', 'Full time', '1234567', 2),
(14, 'i@i', 'sde', 'software dev', 'ui', 'hydra', 'part time', '200000000', 3),
(15, 'i@i', 'ContentWriter', 'Writing', 'gate', 'raipur', 'part time', '5000', 11),
(16, 'i@i', 'erg', 'erg', 'rg', 'erg', 'ferf', '32323', 3),
(17, 'c1@c1', 'c1', 'c1', 'c1', 'c1', 'c1', '234', 2),
(18, 'c1@c1', 'c2', 'c2', 'c2', 'c2', 'c2', '43', 2);

-- --------------------------------------------------------

--
-- Table structure for table `job_report_history`
--

CREATE TABLE `job_report_history` (
  `id` int(11) NOT NULL,
  `candidate_email` varchar(100) NOT NULL,
  `job_id` int(11) NOT NULL,
  `report_flag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_report_history`
--

INSERT INTO `job_report_history` (`id`, `candidate_email`, `job_id`, `report_flag`) VALUES
(1, 'xyz@gmail', 16, 1),
(2, 'xyz@gmail', 2, 1),
(3, 'xyz@gmail', 16, 1),
(4, 'xyz@gmail', 16, 1),
(5, 'xyz@gmail', 2, 1),
(6, 'xyz@gmail', 2, 1),
(7, 'xyz@gmail', 2, 1),
(8, 'xyz@gmail', 12, 1),
(9, 'xyz@gmail', 2, 1),
(10, 'xyz@gmail', 2, 1),
(11, 'xyz@gmail', 2, 1),
(12, 'xyz@gmail', 2, 1),
(13, 'xyz@gmail', 6, 1),
(14, 'xyz@gmail', 15, 1),
(15, 'vipul@gmail.com', 15, 1),
(16, 'xyz@gmail', 3, 1),
(17, 'u1@u1', 14, 1),
(18, 'u2@u2', 14, 1),
(19, 'u1@u1', 17, 1),
(20, 'u2@u2', 17, 1),
(21, 'u1@u1', 2, 1),
(22, 'u2@u2', 2, 1),
(23, 'u1@u1', 3, 1),
(24, 'u1@u1', 18, 1),
(25, 'u2@u2', 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `userType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`id`, `name`, `email`, `password`, `userType`) VALUES
(16, 'riya', 'riya@gmail', '123', 'candidate'),
(21, 'infosys', 'i@i', '123', 'company'),
(23, 'Vipul', 'vipul@gmail.com', '12345', 'candidate'),
(24, 'Tehverito', 'tech@tc.com', '123', 'company'),
(25, 'abc', 'abc@gmail', 'abc', 'candidate'),
(26, 'deep', 'deep@gmail', 'deep', 'candidate'),
(28, 'xyz', 'xyz@gmail', 'xyz', 'candidate'),
(29, 'u1', 'u1@u1', 'u1', 'candidate'),
(30, 'c1', 'c1@c1', 'c1', 'company'),
(31, 'u2', 'u2@u2', 'u2', 'candidate');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_profile`
--
ALTER TABLE `candidate_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_profile`
--
ALTER TABLE `company_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_posts`
--
ALTER TABLE `job_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_report_history`
--
ALTER TABLE `job_report_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `candidate_profile`
--
ALTER TABLE `candidate_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `company_profile`
--
ALTER TABLE `company_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job_posts`
--
ALTER TABLE `job_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `job_report_history`
--
ALTER TABLE `job_report_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
