-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2021 at 01:31 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crudapplication`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `sname`, `phone`, `email`, `password`, `created_on`) VALUES
(1, 'Stephen', 'Talba', 'Diyong', '08030458801', 'steve@gmail.com', '12345', '2021-06-01 22:30:52'),
(2, 'stephen', 'Talba', 'Diyong', '08030458801', 'sss@gmail.com', '12345678', '2021-06-01 22:36:36'),
(3, 'Silas', 'Dauda', 'Tony', 'tony@gmail.com', '23456789', '12345678', '2021-06-02 14:05:54'),
(4, 'Adojoa', 'Pantience', 'Papertua', 'wertyuiop', 'yuiop[', '34567890-', '2021-06-02 14:21:56'),
(5, 'man', 'job', 'john', 'qwertyui', '12345678', '1234567890', '2021-06-02 14:31:41'),
(6, 'Enoch', 'Nobert', 'Lazy', 'tony@gmail.com', 'sss@gmail.com', '123456723456', '2021-06-02 14:55:36'),
(7, 'duk', 'sad', 'paece', 'hssrte', 'ertyuio', '4567u8io', '2021-06-02 20:06:09'),
(8, 'Stephen', 'Talba', 'Diyong', '08030458801', 'steve@gmail.com', '12345', '2021-06-01 22:30:52'),
(9, 'stephen', 'Talba', 'Diyong', '08030458801', 'sss@gmail.com', '12345678', '2021-06-01 22:36:36'),
(10, 'Silas', 'Dauda', 'Tony', 'tony@gmail.com', '23456789', '12345678', '2021-06-02 14:05:54'),
(11, 'Adojoa', 'Pantience', 'Papertua', 'wertyuiop', 'yuiop[', '34567890-', '2021-06-02 14:21:56'),
(12, 'man', 'job', 'john', 'qwertyui', '12345678', '1234567890', '2021-06-02 14:31:41'),
(13, 'Enoch', 'Nobert', 'Lazy', 'tony@gmail.com', 'sss@gmail.com', '123456723456', '2021-06-02 14:55:36'),
(14, 'duk', 'sad', 'paece', 'hssrte', 'ertyuio', '4567u8io', '2021-06-02 20:06:09'),
(15, 'asbe;', 'Talba', 'ertyuiop', '08030458801', 'sss@gmail.com', '12345678', '2021-06-02 23:55:48'),
(16, 'asbe;', 'Talba', 'ertyuiop', '08030458801', 'sss@gmail.com', '12345678', '2021-066-02 23:55:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
