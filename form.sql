-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2023 at 07:43 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `form`
--

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `sno` int(4) NOT NULL,
  `name` text NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `email` varchar(22) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `other` text NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`sno`, `name`, `age`, `gender`, `email`, `phone`, `other`, `dt`) VALUES
(1, 'testname', 23, 'male', 'this@this.com', '999999999999', 'this is very good form', '2023-10-28 23:45:03'),
(0, '', 0, '', '', '', '', '2023-10-29 01:00:10'),
(0, '', 0, '', '', '', '', '2023-10-29 01:06:55'),
(0, 'Saad', 23, 'male', 'abc@gmail.com', '123456789101', 'adsdasdsasds', '2023-10-29 01:22:44'),
(0, 'Saad', 23, 'male', 'abc@gmail.com', '123456789101', 'adsdasdsasds', '2023-10-29 01:30:14'),
(0, 'Saad', 23, 'male', 'abc@gmail.com', '123456789101', 'adsdasdsasds', '2023-10-29 01:30:17'),
(0, '', 0, '', '', '', '', '2023-10-29 01:32:12'),
(0, 'ali', 12, 'male', 'abc@bn.com', '111111111111', 'ASaasd', '2023-10-29 01:49:56');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
