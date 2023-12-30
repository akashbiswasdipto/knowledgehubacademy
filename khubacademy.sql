-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2023 at 10:11 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khubacademy`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminusers`
--

CREATE TABLE `adminusers` (
  `sl` int(11) NOT NULL,
  `Fullname` text NOT NULL,
  `dob` text NOT NULL,
  `username` text NOT NULL,
  `userpass` text NOT NULL,
  `date_created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminusers`
--

INSERT INTO `adminusers` (`sl`, `Fullname`, `dob`, `username`, `userpass`, `date_created`) VALUES
(1, 'Akash Biswas', '29th September 1995', 'akashbiswas.dipto', 'temporarypass123', '2023-12-28'),
(2, 'Md. Jakaria Zahid Islam', '16th September 1987', 'jakariazahid.islam', 'temporarypass123', '2023-12-28');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `sl` int(11) NOT NULL,
  `ntitle` text NOT NULL,
  `ndesc` text NOT NULL,
  `nfile` text NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`sl`, `ntitle`, `ndesc`, `nfile`, `date`) VALUES
(1, 'Coaching Opening Notice', 'Coaching Sessions Opening on 21st January  Exciting News! KnowledgeHub Academy is launching coaching sessions starting January 21st. Benefit from expert instructors, interactive learning, and flexible schedules. Enroll now for a tailored education experience.', '../notice/Black White Simple Online Course Instagram Post.png', '2023-12-30'),
(3, 'O-Level Crash Course', 'Unlock Success with KnowledgeHub Academy: Accelerated Crash Courses for O Students gearing up for Oct/Nov 2024 exams! Elevate your learning, conquer challenges, and excel with our comprehensive, exam-focused approach.  ', '../notice/O level Crash Course.png', '2023-12-30'),
(4, 'A-Level Crash Course', 'Elevate your A Level journey with KnowledgeHub Academy Crash Courses! Uncover advanced insights, master challenging concepts, and triumph in the Oct/Nov 2024 exams. Empower your academic pursuit with our specialized guidance.', '../notice/A level Crash Course.png', '2023-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `studentenrollment`
--

CREATE TABLE `studentenrollment` (
  `sl` int(11) NOT NULL,
  `sname` text NOT NULL,
  `semail` text NOT NULL,
  `scon` text NOT NULL,
  `spname` text NOT NULL,
  `spnum` text NOT NULL,
  `course` text NOT NULL,
  `time` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `studentfees`
--

CREATE TABLE `studentfees` (
  `sid` text NOT NULL,
  `fdate` text NOT NULL,
  `famount` text NOT NULL,
  `status` text NOT NULL,
  `method` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `studentregister`
--

CREATE TABLE `studentregister` (
  `sid` text NOT NULL,
  `sname` text NOT NULL,
  `sdob` text NOT NULL,
  `scon` text NOT NULL,
  `semail` text NOT NULL,
  `ename` text NOT NULL,
  `enum` text NOT NULL,
  `course` text NOT NULL,
  `ncourse` text NOT NULL,
  `registerdate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminusers`
--
ALTER TABLE `adminusers`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `studentenrollment`
--
ALTER TABLE `studentenrollment`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `studentfees`
--
ALTER TABLE `studentfees`
  ADD PRIMARY KEY (`sid`(16));

--
-- Indexes for table `studentregister`
--
ALTER TABLE `studentregister`
  ADD PRIMARY KEY (`sid`(16));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminusers`
--
ALTER TABLE `adminusers`
  MODIFY `sl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `sl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `studentenrollment`
--
ALTER TABLE `studentenrollment`
  MODIFY `sl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
