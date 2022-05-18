-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2022 at 03:29 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banksys`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Deepika', 'Mayushka', 51000, '2021-08-14 14:29:15'),
(2, 'Mayushka', 'Deepika', 25000, '2021-08-14 18:40:51'),
(3, 'Ilina', 'Hari', 5000, '2021-08-14 19:16:56'),
(4, 'Ritika', 'Manisha', 26950, '2021-08-14 19:31:07'),
(5, 'Bhumika', 'Gauri', 7510, '2021-08-14 20:15:14'),
(6, 'Shiva', 'Prabati', 35100, '2021-08-14 20:15:47'),
(7, 'Shyam', 'Ram', 3150, '2021-08-14 20:16:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` varchar(155) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `gender`, `balance`) VALUES
(1, 'Deepika', 'deepika@gmail.com', 'Female', 62500),
(2, 'Mayushka', 'mayushka@gmail.com', 'Female', 40650),
(3, 'Ilina', 'ilina@gmail.com', 'Female', 113750),
(4, 'Ritika', 'ritika@gmail.com', 'Female', 100005),
(5, 'Hari', 'hari@gmail.com', 'male', 127350),
(6, 'Manisha', 'manisha@gmail.com', 'Female', 81000),
(7, 'Gauri', 'gauri@gmail.com', 'Female', 69005),
(9, 'Shiva', 'shiva@gmail.com', 'Male', 99000),
(10, 'Prabati', 'prabati@gmail.com', 'Female', 40000),
(19, 'Shyam', 'shyam@gmail.com', 'Male', 40000),
(20, 'Ram', 'ram@gmail.com', 'Male', 29610);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
