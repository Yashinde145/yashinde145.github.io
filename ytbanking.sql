-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2020 at 03:11 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ytbanking`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `balance` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Ajay Mehta', 'ajaymehta@gmail.com', 5000),
(2, 'Jay Patil', 'jayp1@gmail.com', 5500),
(3, 'Raj Joshi', 'rajoshi@gmail.com', 5100),
(4, 'Sania Sharma', 'saniasharma@yahoo.com', 7000),
(5, 'Manish Raina', 'manishraina@rediffmail.com', 9500),
(6, 'Anjali Jha', 'anjalijha@outlook.com', 8200),
(7, 'Mayur Tripathi', 'mayurt@outlook.com', 5400),
(8, 'Gauri Sinha', 'gausinha@gmail.com', 9200),
(9, 'Pragya Yadav', 'pragyay1@yahoo.com', 7100),
(10, 'Nisha Soni', 'nishas1@gmail.com', 3200);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(10) NOT NULL,
  `senderName` varchar(40) NOT NULL,
  `receiverName` varchar(40) NOT NULL,
  `amount` bigint(11) NOT NULL,
  `date` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `senderName`, `receiverName`, `amount`, `date`) VALUES
(1, 'Ajay Mehta', 'Jay Patil', 1, '2020-11-20 12:22:13.550835'),
(2, 'Jay Patil', 'Ajay Mehta', 1, '2020-11-20 12:22:30.157596'),
(3, 'Raj Joshi', 'Anjali Jha', 500, '2020-11-20 15:47:03.596844'),
(4, 'Mayur Tripathi', 'Anjali Jha', 200, '2020-11-20 15:53:55.043732'),
(5, 'Gauri Sinha', 'Pragya Yadav', 300, '2020-11-20 15:54:29.712187'),
(6, 'Manish Raina', 'Nisha Soni', 200, '2020-11-20 15:55:18.563746'),
(7, 'Manish Raina', 'Mayur Tripathi', 100, '2020-11-20 18:20:38.718961');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
