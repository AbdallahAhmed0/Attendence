-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2022 at 06:08 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendee_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE `attendence` (
  `attendence_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `birthofdate` date NOT NULL,
  `emailaddress` varchar(150) NOT NULL,
  `contactnumber` varchar(50) NOT NULL,
  `specailty_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendence`
--

INSERT INTO `attendence` (`attendence_id`, `firstname`, `lastname`, `birthofdate`, `emailaddress`, `contactnumber`, `specailty_id`) VALUES
(1, 'Abdallah', 'Adel', '2000-01-02', 'abdallah@gmail.com', '01156238562365', 1),
(2, 'Adel', 'Ahmed', '1997-09-10', 'Adel@gmail.com', '01289658999', 3),
(3, 'wael', 'magdy', '1999-09-10', 'wael@gmail.com', '015895689456', 4),
(4, 'kamel', 'Adel', '1995-02-10', 'kamel@gmail.com', '01115623652365', 2),
(5, 'sara', 'Ahmed', '2001-02-10', 'Sara@gmail.com', '01524651320', 3);

-- --------------------------------------------------------

--
-- Table structure for table `specailty`
--

CREATE TABLE `specailty` (
  `specailty_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specailty`
--

INSERT INTO `specailty` (`specailty_id`, `name`) VALUES
(1, 'Giza'),
(2, 'Cairo'),
(3, 'Alex'),
(4, 'Mansora');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendence`
--
ALTER TABLE `attendence`
  ADD PRIMARY KEY (`attendence_id`);

--
-- Indexes for table `specailty`
--
ALTER TABLE `specailty`
  ADD PRIMARY KEY (`specailty_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendence`
--
ALTER TABLE `attendence`
  MODIFY `attendence_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `specailty`
--
ALTER TABLE `specailty`
  MODIFY `specailty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
