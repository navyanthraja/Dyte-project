-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2021 at 03:15 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AID` int(11) NOT NULL,
  `ANAME` varchar(150) NOT NULL,
  `APASS` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AID`, `ANAME`, `APASS`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `CID` int(11) NOT NULL,
  `CNAME` varchar(150) NOT NULL,
  `CSEC` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`CID`, `CNAME`, `CSEC`) VALUES
(1, '1', 'a'),
(2, '2', 'a'),
(3, '3', 'a'),
(4, '4', 'a'),
(5, '5', 'a'),
(6, '6', 'a'),
(7, '7', 'a'),
(8, '8', 'a'),
(9, '9', 'a'),
(35, '3', 'a'),
(36, '4', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `message` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Teja', 'teja34@gmail.com', 'Web dev', 'good website'),
(207, 'Santhosh', 'santhosh@gmail.com', 'maths', 'good website'),
(238, 'Navyanth', 'navyanth@gmail.com', 'science', 'good website'),
(239, 'user1', 'chilakasanthoshreddy230@gmail.com', 'software', 'hello'),
(240, 'user1', 'chilakasanthoshreddy230@gmail.com', 'software', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `EID` int(11) NOT NULL,
  `ENAME` varchar(150) NOT NULL,
  `ETYPE` varchar(150) NOT NULL,
  `EDATE` varchar(150) NOT NULL,
  `SESSION` varchar(150) NOT NULL,
  `CLASS` varchar(150) NOT NULL,
  `SUB` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`EID`, `ENAME`, `ETYPE`, `EDATE`, `SESSION`, `CLASS`, `SUB`) VALUES
(1, '1st Semistar', '100', '2021-05-03', 'a', '1', 'English-1st'),
(2, '1st Semistar', '100', '2021-05-03', 'a', '2', 'English-1st'),
(3, '1st Semistar', '100', '2021-05-04', 'a', '3', 'English-2nd'),
(4, '1st Semistar', '100', '2021-05-04', 'a', '4', 'English-2nd'),
(5, '1st Semistar', '100', '2021-05-04', 'a', '5', 'English-2nd'),
(6, '1st Semistar', '100', '2021-05-05', 'a', '5', 'Mathematics'),
(7, '1st Semistar', '100', '2021-06-05', 'a', '7', 'Science'),
(8, '1st Semistar', '100', '2021-06-06', 'a', '8', 'Mathematics'),
(35, '2ns Semester', '2nd term', '2021-06-08', 'b', '7', 'IWP'),
(36, '2nd Semester', '1st term', '2021-05-06', 'b', '9', 'AI'),
(37, '2nd Semester', '2nd term', '2021-06-24', 'b', '8', 'ML');

-- --------------------------------------------------------

--
-- Table structure for table `hclass`
--

CREATE TABLE `hclass` (
  `HID` int(11) NOT NULL,
  `TID` int(11) NOT NULL,
  `CLA` varchar(150) NOT NULL,
  `SEC` varchar(150) NOT NULL,
  `SUB` varchar(150) NOT NULL,
  `HCTIME` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hclass`
--

INSERT INTO `hclass` (`HID`, `TID`, `CLA`, `SEC`, `SUB`, `HCTIME`) VALUES
(1, 10, '5', 'a', 'Mathematics', '10:40-11:20am'),
(2, 10, '7', 'a', 'Mathematics', '11:20-12pm'),
(3, 10, '8', 'a', 'Science', '12-12:30'),
(4, 10, '9', 'a', 'S. Science', '12:30-1 pm'),
(5, 12, '10', 'a', 'S. Science', '8:00-8:40 am'),
(11, 1, '3', 'b', 'Agricultural', '13:45-14:00'),
(12, 1, '9', 'b', 'IWP', '10:00-11:00');

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE `mark` (
  `MID` int(11) NOT NULL,
  `REGNO` varchar(150) NOT NULL,
  `SUB` varchar(150) NOT NULL,
  `MARK` varchar(150) NOT NULL,
  `TERM` varchar(150) NOT NULL,
  `CLASS` varchar(150) NOT NULL,
  `TMARK` varchar(100) NOT NULL,
  `SMARK` varchar(100) NOT NULL,
  `GPA` varchar(100) NOT NULL,
  `GPOINT` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`MID`, `REGNO`, `SUB`, `MARK`, `TERM`, `CLASS`, `TMARK`, `SMARK`, `GPA`, `GPOINT`) VALUES
(124, 's101', 'English-1st', '85', '100', '1', '', '', '', ''),
(125, 's101', 'English-2nd', '78', '100', '1', '', '', '', ''),
(126, 's101', 'Mathematics', '90', '100', '1', '', '', '', ''),
(127, 's101', 'Science', '98', '100', '1', '', '', '', ''),
(128, 's101', 'S. Science', '94', '100', '1', '', '', '', ''),
(129, 's101', 'Agricultural', '60', '100', '1', '', '', '', ''),
(130, 's102', 'English-1st', '84', '100', '1', '', '', '', ''),
(131, 's102', 'English-2nd', '89', '100', '1', '', '', '', ''),
(132, 's102', 'Mathematics', '84', '100', '1', '', '', '', ''),
(133, 's102', 'Science', '56', '100', '1', '', '', '', ''),
(134, 's102', 'Science', '82', '100', '1', '', '', '', ''),
(135, 's102', 'Agricultural', '78', '100', '1', '', '', '', ''),
(136, 's103', 'Science', '85', '100', '1', '', '', '', ''),
(137, 's103', 'Science', '85', '100', '1', '', '', '', ''),
(138, 's103', 'Mathematics', '56', '100', '1', '', '', '', ''),
(139, 's101', 'English-2nd', '94', '100', '1', '', '', '', ''),
(140, 's101', 'English-1st', '85', '100', '1', '', '', '', ''),
(141, 's101', 'English-1st', '85', '100', '1', '', '', '', ''),
(142, 's101', 'English-1st', '85', '100', '1', '', '', '', ''),
(143, 's101', 'English-1st', '85', '100', '1', '', '', '', ''),
(145, 's101', 'English-1st', '94', '100', '1', '', '', '', ''),
(152, 's101', 'Science', '45', '100', '1', '', '', '', ''),
(153, 's101', 'English-1st', '84', '1st term', '1', '', '', '', ''),
(154, 's101', 'Mathematics', '78', '1st term', '1', '', '', '', ''),
(155, 's101', 'Mathematics', '78', '1st term', '1', '', '', '', ''),
(156, 's101', 'English-1st', '94', '100', '1', '', '', '', ''),
(157, 's101', 'English-1st', '94', '100', '1', '', '', '', ''),
(158, 's101', 'Science', '45', '100', '1', '', '', '', ''),
(159, 's101', 'English-1st', '89', '100', '1', '', '', '', ''),
(160, 's101', 'English-1st', '85', '1st term', '1', '', '', '', ''),
(161, 's101', 'English-1st', '89', '100', '1', '', '', '', ''),
(162, 's101', 'Mathematics', '78', '100', '1', '', '', '', ''),
(163, 's101', 'English-2nd', '84', '100', '1', '', '', '', ''),
(164, 's101', 'English-2nd', '84', '100', '1', '', '', '', ''),
(165, 's101', 'English-2nd', '84', '100', '1', '', '', '', ''),
(166, 's101', 'English-1st', '94', '100', '1', '', '', '', ''),
(167, 's101', 'Science', '78', '1st term', '1', '', '', '', ''),
(168, 's101', 'Science', '78', '1st term', '1', '', '', '', ''),
(169, 's101', 'English-1st', '78', '100', '1', '', '', '', ''),
(170, 's102', 'English-2nd', '56', '100', '1', '', '', '', ''),
(171, 's103', 'Science', '94', '100', '1', '', '', '', ''),
(172, 's105', 'CSE', '75', '100', '2', '', '', '', ''),
(173, 's110', 'Agricultural', '50', '100', '4', '', '', '', ''),
(174, 's108', 'CSE', '80', '100', '3', '', '', '', ''),
(175, 's115', 'Agricultural', '65', '100', '6', '', '', '', ''),
(176, 's101', 'Science', '75', '100', '1', '', '', '', ''),
(177, 's121', 'English-1st', '50', '100', '9', '', '', '', ''),
(178, 's120', 'IWP', '85', '2nd term', '9', '', '', '', ''),
(179, 's108', 'AI', '90', '2nd term', '3', '', '', '', ''),
(180, 's108', 'CSE', '90', '2nd term', '3', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `TID` int(11) NOT NULL,
  `TNAME` varchar(150) NOT NULL,
  `TPASS` varchar(150) NOT NULL,
  `QUAL` varchar(200) NOT NULL,
  `SAL` varchar(13) NOT NULL,
  `DATE` varchar(13) NOT NULL,
  `PNO` varchar(150) NOT NULL,
  `MAIL` varchar(150) NOT NULL,
  `PADDR` text NOT NULL,
  `IMG` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`TID`, `TNAME`, `TPASS`, `QUAL`, `SAL`, `DATE`, `PNO`, `MAIL`, `PADDR`, `IMG`) VALUES
(1, 'Santhosh', '1230', 'B.tech', '50,000', '2021-03-01', '9951024179', 'santhosh@gmail.com', 'Hyderabad', 'staff/santhosh.jpg'),
(2, 'Navyanth', '1234', 'M.tech', '60,000', '2020-03-01', '795815660', 'navyanth@gmail.com', 'Vijayawada', 'staff/navyanth.jpeg'),
(17, 'Teja', '1234', 'B.tech', '45,000', '2020-10-24', '9856423107', 'tejanaveen@gmail.com', 'Nellore', 'staff/teja.jpeg'),
(18, 'naveen', '1234', 'M.tech', '50000', '2021-06-11', '', '', '', ''),
(19, 'malathy', '1234', 'p.h.d', '100000', '2021-06-11', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int(11) NOT NULL,
  `RNO` varchar(150) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `FNAME` varchar(100) NOT NULL,
  `DOB` varchar(150) NOT NULL,
  `GEN` varchar(150) NOT NULL,
  `PHO` varchar(150) NOT NULL,
  `MAIL` varchar(150) NOT NULL,
  `ADDR` varchar(1000) NOT NULL,
  `SCLASS` varchar(150) NOT NULL,
  `SSEC` varchar(150) NOT NULL,
  `SIMG` varchar(150) NOT NULL,
  `TID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `RNO`, `NAME`, `FNAME`, `DOB`, `GEN`, `PHO`, `MAIL`, `ADDR`, `SCLASS`, `SSEC`, `SIMG`, `TID`) VALUES
(1, 'S101', 'Saketh', 'Raju', '2006-06-01', 'Male', '7894561230', 'prahaas.munna3@gmail.com', 'Vizag', '1', 'a', 'student/download (1).jpg', 1),
(2, 's102', 'Subhash', 'Kumar', '2006-03-25', 'Male', '9513578524', 'praveenveera277@gmail.com', 'kakinada', '1', 'a', 'student/download (2).jpg', 1),
(3, 's103', 'lokesh', 'saki', '2006-04-11', 'Male', '7894561257', 'bandiramamunireddy10847@gmail.com', 'srikakulam', '1', 'a', 'student/download.jpg', 1),
(4, 's104', 'Vishnu ', 'Bhagavan', '2007-01-23', 'Male', '8527419514', 'vishnu@gmail.com', 'Eluru', '2', 'a', 'student/images.jpg', 1),
(5, 's105', 'yashwanth', 'pranav', '2007-06-20', 'Male', '4566789414', 'yash@gmail.com', 'chittor', '2', 'a', 'student/download (3).jpg', 1),
(6, 's106', 'saivikas', 'Kumar', '2007-11-09', 'Male', '7514569870', 'saivikas34@gmail.com', 'srikakulam', '2', 'a', 'student/images (1).jpg', 1),
(7, 's107', 'Harish', 'Anthi', '2007-08-13', 'Male', '8974664561', 'harish@gmail.com', 'Warangal', '3', 'a', 'student/images.jpg', 1),
(71, 's108', 'Visala', 'konda', '2007-09-05', 'Male', '7845128955', 'visalaramesh@gmail.com', 'Vizianagar', '3', 'a', 'student/images.jpg', 1),
(72, 's109', 'mukesh', 'dravid', '2008-06-11', 'Male', '6543219871', 'mukesh@gmail.com', 'kadapa', '3', 'a', 'student/images.jpg', 1),
(73, 's109', 'mukesh', 'dravid', '2008-06-11', 'Male', '6543219871', 'mukesh@gmail.com', 'kadapa', '3', 'a', 'student/images.jpg', 1),
(74, 's110', 'Swapna', 'Ramu', '2008-02-06', 'Female', '7415829547', 'swapna@gmail.com', 'shimla', '4', 'a', 'student/download (4).jpg', 1),
(75, 's111', 'Ashwin', 'Dutt', '2008-10-17', 'Male', '7451289654', 'dutt@gmail.com', 'Hyd', '4', 'a', 'student/download (5).jpg', 1),
(76, 's112', 'sagar', 'Ramesh', '2008-10-29', 'Male', '9445127864', 'Sagar@gmail.com', 'srikakulam', '5', 'a', 'student/download (5).jpg', 1),
(77, 's113', 'Mani', 'rama', '2008-07-10', 'Male', '7418524567', 'mani@gmail.com', 'kurnool', '5', 'a', 'student/download.jpg', 1),
(78, 's114', 'srikar', 'apparao', '2008-05-14', 'Male', '7894561220', 'appa@gmail.com', 'nagavalli', '6', 'a', 'student/images (1).jpg', 1),
(79, 's115', 'Bala', 'anki reddy', '2008-07-11', 'Male', '7898456102', 'bala@gmail.com', 'kadapa', '6', 'a', 'student/download (3).jpg', 1),
(80, 's116', 'jayakumar', 'k', '2009-01-07', 'Male', '7418529634', 'jaya@gmail.com', 'vellore', '7', 'a', 'student/download.jpg', 1),
(81, 's117', 'ramesh', 'kumar', '2009-10-09', 'Male', '7415829634', 'rameshkumar@gmail.com', 'kakinada', '7', 'a', 'student/download (5).jpg', 1),
(82, 's118', 'tagore', 'ravi', '2010-06-24', 'Male', '7415827894', 'tagore@gmail.com', 'mumbai', '8', 'a', 'student/download (1).jpg', 1),
(83, 's119', 'Shiva', 'dube', '2011-05-31', 'Male', '8546965745', 'shiva@gmail.com', 'banglore', '8', 'a', 'student/images.jpg', 1),
(84, 's120', 'sanju', 'sanmson', '2012-10-24', 'Male', '7418529574', 'sanju@gmail.com', 'Rajasthan', '9', 'a', 'student/download (1).jpg', 1),
(85, 's121', 'Riyan', 'Parag', '2017-10-24', 'Male', '6547981247', 'Riyan@gmail.com', 'Assam', '9', 'a', 'student/download.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub`
--

CREATE TABLE `sub` (
  `SID` int(11) NOT NULL,
  `SNAME` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub`
--

INSERT INTO `sub` (`SID`, `SNAME`) VALUES
(1, 'English-1st'),
(2, 'English-2nd'),
(3, 'Mathematics'),
(4, 'Science'),
(5, 'S. Science'),
(6, 'Agricultural'),
(7, 'c.s'),
(25, 'CSE'),
(26, 'IWP'),
(27, 'AI'),
(28, 'ML');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AID`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`EID`);

--
-- Indexes for table `hclass`
--
ALTER TABLE `hclass`
  ADD PRIMARY KEY (`HID`);

--
-- Indexes for table `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`MID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`TID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sub`
--
ALTER TABLE `sub`
  ADD PRIMARY KEY (`SID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `EID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `hclass`
--
ALTER TABLE `hclass`
  MODIFY `HID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mark`
--
ALTER TABLE `mark`
  MODIFY `MID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `TID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `sub`
--
ALTER TABLE `sub`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
