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
-- Database: `brgyhub`
--

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `fullname` varchar(150) NOT NULL,
  `age` int(100) NOT NULL,
  `certificates` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`fullname`, `age`, `certificates`) VALUES
('', 0, ''),
('Dazel Dane Lee R. Palo', 21, 'Certificates of Indigency'),
('Rafayel Lemuria', 27, 'Certificate of Residency'),
('jenny', 25, 'Certificates of Indigency'),
('Mary Magdalene', 20, 'Certificates of Indigency'),
('Rafayel Lemuria', 25, 'Certificates of Indigency');

-- --------------------------------------------------------

--
-- Table structure for table `clearance`
--

CREATE TABLE `clearance` (
  `fullname` varchar(150) NOT NULL,
  `age` int(100) NOT NULL,
  `clearance` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clearance`
--

INSERT INTO `clearance` (`fullname`, `age`, `clearance`) VALUES
('Dazel Dane Lee R. Palo', 21, 'Application for PWD ID'),
('Rafayel Lemuria', 27, 'Overseas Travel Papers'),
('jenny', 27, 'Application for Employment');

-- --------------------------------------------------------

--
-- Table structure for table `head`
--

CREATE TABLE `head` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `head`
--

INSERT INTO `head` (`id`, `name`, `email`, `password`, `image`) VALUES
('KYaYydJo9VaLVhoZQPQo', 'Joy', 'joy@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'M4Z8zRSx6TzsGMam1vib.jpg'),
('z8qFzbAKhUST629OuuE9', 'Lopez Jaena', 'lopez@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'DSYE93BHASLrTygYBcWM.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image_path`, `description`) VALUES
(1, 'uploads/tree.jpg', 'rfdfdfdf'),
(2, 'uploads/fa6c82aaaf29a52b92da6545d61a1347.jpg', 'c'),
(3, 'uploads/HD-wallpaper-anime-girl-piano.jpg', 'c'),
(4, 'uploads/3nRx1j8Ax.1_11.jpg', 'Cleaning barangay on friday be like');

-- --------------------------------------------------------

--
-- Table structure for table `noticemsg`
--

CREATE TABLE `noticemsg` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `noticemsg`
--

INSERT INTO `noticemsg` (`id`, `message`) VALUES
(19, 'fdfdfdfd'),
(20, 'heyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\r\n'),
(21, 'wala klase'),
(22, 'half day klase bwas'),
(23, 'cleaning of barangay'),
(24, 'wala klase'),
(25, 'hahahahahahahaahahahahah'),
(26, 'balik sa normal schedule hahaha'),
(27, 'Announcement: \r\nThere will be  a community cleaning on May 10, 2024 at 7:00 in the morning. Please come to the barangay hall for the assembly and bring your cleaning tools with you. '),
(28, 'senior Citizen can claim their pension'),
(29, 'Announcement:\r\nWhat: Meeting for PWD\r\nWhere: Barangay Hall\r\nWhen: May 13, 2024\r\nWho: Barangay Residents PWD');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `likes` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` int(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `password`, `image`) VALUES
('KQXeaMLjB6tCzaDQWfUB', 'Rafayel', 9999999, '8cb2237d0679ca88db6464eac60da96345513964', 'raf.jpg'),
('foOuHK5G836pXa1gjIq5', 'Dazel', 0, '8cb2237d0679ca88db6464eac60da96345513964', '5ynWuLUkuaimWpOW7VB7.jpg'),
('naNx3QgtFVDArq4sELHO', 'Xavier', 123456789, '8cb2237d0679ca88db6464eac60da96345513964', 'QnE7uYQPC9FUTBlQJylF.jpeg'),
('neT7qzc8FbZ6wpzzOewA', 'Zayne', 2147483647, '8cb2237d0679ca88db6464eac60da96345513964', 'OFPfQPfaiKqJcnYmpeIh.jpg'),
('Hwudw8Vxbe9iIfcYjPeE', 'RM', 2147483647, '8cb2237d0679ca88db6464eac60da96345513964', 'kGrYOiE8LGGPvxCM0UWH.jpg'),
('OboH1ctTYz5MMGIMA7wy', 'Kim SeokJin', 2147483647, '8cb2237d0679ca88db6464eac60da96345513964', 'NfmZLBoRyPwPFzeCn1lY.jpg'),
('Vb9PPUwcJJ99EJYA7XUV', 'Jennie ', 2147483647, '8cb2237d0679ca88db6464eac60da96345513964', '1FZVPv36DxmOGBwbTP7i.jpg'),
('dGPHnD3RxTJ1jtZJpkLt', 'Jenny', 2147483647, '8cb2237d0679ca88db6464eac60da96345513964', 'UURRxXp1Ps5GL0IchI9f.jpg'),
('apLAhwyLExTJdkcJdRHw', 'Janet', 2147483647, '8cb2237d0679ca88db6464eac60da96345513964', 'fO4ZG3mqtm0syhFZ3r3Y.jpg'),
('vlVdHmtq3TA5jAttzDCq', 'winston', 12345, '8cb2237d0679ca88db6464eac60da96345513964', 'NQNZhFgCItKStJZAMniw.jpg'),
('u3qdcNDCus2u0nunB2sg', 'jenny', 123, '8cb2237d0679ca88db6464eac60da96345513964', 'gwTZ0YKm7PHDyoSaaFJ4.jpg'),
('rrnShIa1GmGGJzy84wan', 'Mary Magdalene', 987123456, '8cb2237d0679ca88db6464eac60da96345513964', '23Yb8pDbrvgNT99t9ND5.jpg'),
('PnSfGbPPwbexjJeQYNvT', 'peter', 2147483647, '8cb2237d0679ca88db6464eac60da96345513964', '0MRtt8XcgNOZGKFHxISa.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticemsg`
--
ALTER TABLE `noticemsg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `noticemsg`
--
ALTER TABLE `noticemsg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
