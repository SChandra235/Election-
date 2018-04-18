-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 18, 2018 at 09:49 AM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2015CSE131`
--

-- --------------------------------------------------------

--
-- Table structure for table `election`
--

CREATE TABLE `election` (
  `nominees` varchar(20) NOT NULL,
  `PM` varchar(10) DEFAULT NULL,
  `CM` varchar(10) DEFAULT NULL,
  `Votes` int(10) DEFAULT NULL,
  `section` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `election`
--

INSERT INTO `election` (`nominees`, `PM`, `CM`, `Votes`, `section`) VALUES
('Arvind Kejriwal', NULL, 'YES', 3, '3'),
('Mamata Banerjee', NULL, 'YES', 1, '3'),
('Narendra Modi', 'YES', 'YES', 103, '2'),
('Nitish Kumar', NULL, 'YES', 26, '2'),
('Shashi Tharoor', NULL, NULL, 26, '2');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `section` varchar(5) DEFAULT NULL,
  `vote` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `password`, `section`, `vote`) VALUES
('2015CSE00067', 'dontknow', '2', '0'),
('2015CSE00111', '111111', '2', '1'),
('2015CSE00131', 'Shubham', '3', '0'),
('2015CSE131', 'Shubham', '3', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `election`
--
ALTER TABLE `election`
  ADD PRIMARY KEY (`nominees`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
