-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2021 at 07:54 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reserve`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad`
--

CREATE TABLE `ad` (
  `adid` int(3) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bs`
--

CREATE TABLE `bs` (
  `tid` int(3) NOT NULL,
  `day` date NOT NULL,
  `people` varchar(50) NOT NULL,
  `time` time(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL,
  `rname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bs`
--

INSERT INTO `bs` (`tid`, `day`, `people`, `time`, `email`, `phno`, `rname`) VALUES
(1, '2021-04-24', '20', '17:22:00.000000', 'mohitvora705@gmail.com', '7059965591', 'Urban Masala');

-- --------------------------------------------------------

--
-- Table structure for table `comp`
--

CREATE TABLE `comp` (
  `cid` int(3) NOT NULL,
  `day` varchar(50) NOT NULL,
  `issue` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `con`
--

CREATE TABLE `con` (
  `tid` int(3) NOT NULL,
  `day` date NOT NULL,
  `people` varchar(50) NOT NULL,
  `time` time(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `conb`
--

CREATE TABLE `conb` (
  `tid` int(3) NOT NULL,
  `day` date NOT NULL,
  `people` varchar(50) NOT NULL,
  `time` time(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `conc`
--

CREATE TABLE `conc` (
  `tid` int(3) NOT NULL,
  `day` date NOT NULL,
  `people` varchar(50) NOT NULL,
  `time` time(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conc`
--

INSERT INTO `conc` (`tid`, `day`, `people`, `time`, `email`, `phno`) VALUES
(1, '2021-04-24', '20', '17:22:00.000000', 'mohitvora705@gmail.com', '7059965591');

-- --------------------------------------------------------

--
-- Table structure for table `cond`
--

CREATE TABLE `cond` (
  `tid` int(3) NOT NULL,
  `day` date NOT NULL,
  `people` varchar(50) NOT NULL,
  `time` time(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `email` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`email`, `pwd`) VALUES
('mohitvora705@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `rest`
--

CREATE TABLE `rest` (
  `rid` int(3) NOT NULL,
  `rname` varchar(50) NOT NULL,
  `raddr` varchar(500) NOT NULL,
  `rphno` varchar(50) NOT NULL,
  `remail` varchar(50) NOT NULL,
  `rpwd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rest`
--

INSERT INTO `rest` (`rid`, `rname`, `raddr`, `rphno`, `remail`, `rpwd`) VALUES
(1, 'India Restaurant', '33,Level 5, Quest Mall , Syed Amir Ali Avenue , Ballygunge , Kolkata', '8984445668', 'mv@gmail.com', '1234'),
(2, 'OCTA', '34, Karl Marx Sarani , Kidderpore , Kolkata', '7059965591', 'mv1@gmail.com', '1234'),
(3, 'Urban Masala', '33,Level 5, Quest Mall , Syed Amir Ali Avenue , Ballygunge , Kolkata', '7059965592', 'mv2@gmail.com', '1234'),
(4, 'Friends Of Pho - Asian Fine Dining Club', '196 ,Chakraborty Para , Rajdanga , Near Water Tank, Kasba, Kolkata', '7059965593', 'mv3@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `st`
--

CREATE TABLE `st` (
  `tid` int(3) NOT NULL,
  `day` date NOT NULL,
  `people` varchar(50) NOT NULL,
  `time` time(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL,
  `rname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `st`
--

INSERT INTO `st` (`tid`, `day`, `people`, `time`, `email`, `phno`, `rname`) VALUES
(1, '2021-04-24', '20', '17:22:00.000000', 'mohitvora705@gmail.com', '7059965591', 'Urban Masala');

-- --------------------------------------------------------

--
-- Table structure for table `tablea`
--

CREATE TABLE `tablea` (
  `tid` int(3) NOT NULL,
  `day` date NOT NULL,
  `people` varchar(50) NOT NULL,
  `time` time(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tableb`
--

CREATE TABLE `tableb` (
  `tid` int(3) NOT NULL,
  `day` date NOT NULL,
  `people` varchar(50) NOT NULL,
  `time` time(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tablec`
--

CREATE TABLE `tablec` (
  `tid` int(3) NOT NULL,
  `day` date NOT NULL,
  `people` varchar(50) NOT NULL,
  `time` time(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tabled`
--

CREATE TABLE `tabled` (
  `tid` int(3) NOT NULL,
  `day` date NOT NULL,
  `people` varchar(50) NOT NULL,
  `time` time(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `addr`, `phno`, `email`, `pwd`) VALUES
(1, 'mohit', 'fvaf', '7059965591', 'mohitvora705@gmail.com', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ad`
--
ALTER TABLE `ad`
  ADD PRIMARY KEY (`adid`);

--
-- Indexes for table `comp`
--
ALTER TABLE `comp`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `rest`
--
ALTER TABLE `rest`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `tablea`
--
ALTER TABLE `tablea`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `tableb`
--
ALTER TABLE `tableb`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `tablec`
--
ALTER TABLE `tablec`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `tabled`
--
ALTER TABLE `tabled`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ad`
--
ALTER TABLE `ad`
  MODIFY `adid` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comp`
--
ALTER TABLE `comp`
  MODIFY `cid` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest`
--
ALTER TABLE `rest`
  MODIFY `rid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tablea`
--
ALTER TABLE `tablea`
  MODIFY `tid` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tableb`
--
ALTER TABLE `tableb`
  MODIFY `tid` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tablec`
--
ALTER TABLE `tablec`
  MODIFY `tid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tabled`
--
ALTER TABLE `tabled`
  MODIFY `tid` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
