-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2022 at 06:12 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gis_info_registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `gps_track`
--

CREATE TABLE `gps_track` (
  `rider_id` int(11) NOT NULL,
  `track_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `track_lng` decimal(11,7) NOT NULL,
  `track_lat` decimal(11,7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gps_track`
--

INSERT INTO `gps_track` (`rider_id`, `track_time`, `track_lng`, `track_lat`) VALUES
(999, '2022-06-25 18:10:18', '69.1568640', '34.5276416');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gps_track`
--
ALTER TABLE `gps_track`
  ADD PRIMARY KEY (`rider_id`),
  ADD KEY `track_time` (`track_time`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
