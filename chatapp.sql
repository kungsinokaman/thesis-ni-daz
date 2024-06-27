-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2024 at 09:08 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 1551814879, 878883814, 'heyyyooo'),
(2, 878883814, 1551814879, 'hello to you'),
(3, 1551814879, 878883814, 'wasssuppp omh'),
(4, 1551814879, 878883814, 'may load ka?'),
(5, 878883814, 1551814879, 'yesssssss'),
(6, 1551814879, 878883814, 'pila pa load mo?'),
(7, 878883814, 1551814879, '100 regular'),
(8, 1551814879, 878883814, 'ayyy 50 lang akon gcash'),
(9, 1551814879, 878883814, 'kadto d sa barangay pls'),
(10, 878883814, 1551814879, 'yessssssss maaamm'),
(11, 878883814, 1551814879, 'gamay na lang na antos'),
(12, 843962607, 878883814, 'welcome to our barangay'),
(13, 878883814, 843962607, 'hello maam'),
(14, 843962607, 878883814, 'good morning, pls see me sa brgy office'),
(15, 878883814, 1551814879, 'yowwwwwwwwwwwwwwwww'),
(16, 878883814, 1551814879, 'heyyyy yowwww luv u'),
(17, 1551814879, 878883814, 'te amo'),
(18, 878883814, 1543690531, 'good afternoon. naka fill up ko maam ka clearance. lihog'),
(19, 1543690531, 878883814, 'cge'),
(20, 878883814, 1216535115, 'good morning. nagfill ako form para sa residency. pwede ko makuha karon?'),
(21, 1216535115, 878883814, 'sure kwaa karon sa hapon'),
(22, 878883814, 1551814879, 'maam coi');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(1, 1551814879, 'Rafayel', 'Lemuria', 'rafayel@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1713425135127084397_809717502957425_2101613270043513304_n.jpg', 'Active now'),
(2, 878883814, 'Joy', 'Happy', 'joy@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1713425270HD-wallpaper-fantasy-women-warrior-armor-girl-knight-ponytail-sword-white-hair-woman-warrior.jpg', 'Active now'),
(3, 843962607, 'xavier', 'linkon', 'xavier@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '171345517079159701195a0a2148f83d2931955e63.jpeg', 'Offline now'),
(4, 1395313887, 'Zayne', 'Linkon', 'zayne@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1714602294HD-wallpaper-fantasy-women-warrior-girl-long-hair-ponytail-white-hair-woman-warrior.jpg', 'Offline now'),
(5, 328194195, 'Namjoon', 'Kim', 'rm@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '17146023504da3cf9fa9db4d468c18a8717f7da9d0.jpg', 'Offline now'),
(6, 1101034915, 'Seokjin', 'Kim', 'jin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '17146024064d5ae54d30d38a917b1e1073348736d5.jpg', 'Offline now'),
(7, 1543690531, 'jenny', 'ignacio', 'jeny@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1714627099tree.jpg', 'Offline now'),
(8, 1216535115, 'Mary', 'Magdalene', 'mary@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '17155551956ca786d8b019cf9336fe181cb3482f8a.jpg', 'Active now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
