-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2025 at 03:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `track_serve`
--

-- --------------------------------------------------------

--
-- Table structure for table `05_03_2025_faculty_dinner`
--

CREATE TABLE `05_03_2025_faculty_dinner` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `05_03_2025_faculty_dinner`
--

INSERT INTO `05_03_2025_faculty_dinner` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML089', '2025-03-05 15:36:25');

-- --------------------------------------------------------

--
-- Table structure for table `05_03_2025_faculty_lunch`
--

CREATE TABLE `05_03_2025_faculty_lunch` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `05_03_2025_faculty_lunch`
--

INSERT INTO `05_03_2025_faculty_lunch` (`id`, `student_id`) VALUES
(1, 'D24AIML089');

-- --------------------------------------------------------

--
-- Table structure for table `05_03_2025_hostel_student_dinner`
--

CREATE TABLE `05_03_2025_hostel_student_dinner` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `05_03_2025_hostel_student_dinner`
--

INSERT INTO `05_03_2025_hostel_student_dinner` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML079', '2025-03-05 16:15:22');

-- --------------------------------------------------------

--
-- Table structure for table `05_03_2025_non_hostel_student_dinner`
--

CREATE TABLE `05_03_2025_non_hostel_student_dinner` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `05_03_2025_non_hostel_student_dinner`
--

INSERT INTO `05_03_2025_non_hostel_student_dinner` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML087', '2025-03-05 15:33:05');

-- --------------------------------------------------------

--
-- Table structure for table `05_03_2025_non_hostel_student_lunch`
--

CREATE TABLE `05_03_2025_non_hostel_student_lunch` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `05_03_2025_non_hostel_student_lunch`
--

INSERT INTO `05_03_2025_non_hostel_student_lunch` (`id`, `student_id`) VALUES
(1, 'D24AIML087');

-- --------------------------------------------------------

--
-- Table structure for table `05_05_2025_hostel_student_breakfast`
--

CREATE TABLE `05_05_2025_hostel_student_breakfast` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `05_05_2025_hostel_student_breakfast`
--

INSERT INTO `05_05_2025_hostel_student_breakfast` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML079', '2025-05-05 07:19:35');

-- --------------------------------------------------------

--
-- Table structure for table `05_05_2025_hostel_student_lunch`
--

CREATE TABLE `05_05_2025_hostel_student_lunch` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `05_05_2025_hostel_student_lunch`
--

INSERT INTO `05_05_2025_hostel_student_lunch` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML079', '2025-05-05 07:18:26'),
(2, 'D24AIML087', '2025-05-05 07:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `06_03_2025_faculty_breakfast`
--

CREATE TABLE `06_03_2025_faculty_breakfast` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `06_03_2025_faculty_breakfast`
--

INSERT INTO `06_03_2025_faculty_breakfast` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML089', '2025-03-06 03:47:16');

-- --------------------------------------------------------

--
-- Table structure for table `06_03_2025_hostel_student_breakfast`
--

CREATE TABLE `06_03_2025_hostel_student_breakfast` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `06_03_2025_hostel_student_breakfast`
--

INSERT INTO `06_03_2025_hostel_student_breakfast` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML079', '2025-03-06 03:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `06_03_2025_hostel_student_lunch`
--

CREATE TABLE `06_03_2025_hostel_student_lunch` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `06_03_2025_hostel_student_lunch`
--

INSERT INTO `06_03_2025_hostel_student_lunch` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML079', '2025-03-06 10:35:35');

-- --------------------------------------------------------

--
-- Table structure for table `06_03_2025_non_hostel_student_breakfast`
--

CREATE TABLE `06_03_2025_non_hostel_student_breakfast` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `06_03_2025_non_hostel_student_breakfast`
--

INSERT INTO `06_03_2025_non_hostel_student_breakfast` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML087', '2025-03-06 03:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `08_06_2025_faculty_breakfast`
--

CREATE TABLE `08_06_2025_faculty_breakfast` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `08_06_2025_faculty_breakfast`
--

INSERT INTO `08_06_2025_faculty_breakfast` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML079', '2025-06-08 05:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `08_06_2025_faculty_dinner`
--

CREATE TABLE `08_06_2025_faculty_dinner` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `08_06_2025_faculty_dinner`
--

INSERT INTO `08_06_2025_faculty_dinner` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML079', '2025-06-08 05:45:35');

-- --------------------------------------------------------

--
-- Table structure for table `08_06_2025_faculty_lunch`
--

CREATE TABLE `08_06_2025_faculty_lunch` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `08_06_2025_faculty_lunch`
--

INSERT INTO `08_06_2025_faculty_lunch` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML079', '2025-06-08 05:42:02');

-- --------------------------------------------------------

--
-- Table structure for table `08_06_2025_hostel_student_breakfast`
--

CREATE TABLE `08_06_2025_hostel_student_breakfast` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `08_06_2025_hostel_student_breakfast`
--

INSERT INTO `08_06_2025_hostel_student_breakfast` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML089', '2025-06-08 05:38:44'),
(2, 'D24AIML087', '2025-06-08 05:38:49');

-- --------------------------------------------------------

--
-- Table structure for table `08_06_2025_hostel_student_dinner`
--

CREATE TABLE `08_06_2025_hostel_student_dinner` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `08_06_2025_hostel_student_dinner`
--

INSERT INTO `08_06_2025_hostel_student_dinner` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML089', '2025-06-08 05:45:39'),
(2, 'D24AIML087', '2025-06-08 05:45:44');

-- --------------------------------------------------------

--
-- Table structure for table `08_06_2025_hostel_student_lunch`
--

CREATE TABLE `08_06_2025_hostel_student_lunch` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `08_06_2025_hostel_student_lunch`
--

INSERT INTO `08_06_2025_hostel_student_lunch` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML089', '2025-06-08 05:41:03'),
(2, 'D24AIML087', '2025-06-08 05:41:06');

-- --------------------------------------------------------

--
-- Table structure for table `08_06_2025_non_hostel_student_breakfast`
--

CREATE TABLE `08_06_2025_non_hostel_student_breakfast` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `08_06_2025_non_hostel_student_breakfast`
--

INSERT INTO `08_06_2025_non_hostel_student_breakfast` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML080', '2025-06-08 05:40:07');

-- --------------------------------------------------------

--
-- Table structure for table `08_06_2025_non_hostel_student_dinner`
--

CREATE TABLE `08_06_2025_non_hostel_student_dinner` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `08_06_2025_non_hostel_student_dinner`
--

INSERT INTO `08_06_2025_non_hostel_student_dinner` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML080', '2025-06-08 05:45:49');

-- --------------------------------------------------------

--
-- Table structure for table `08_06_2025_non_hostel_student_lunch`
--

CREATE TABLE `08_06_2025_non_hostel_student_lunch` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `08_06_2025_non_hostel_student_lunch`
--

INSERT INTO `08_06_2025_non_hostel_student_lunch` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML080', '2025-06-08 05:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `13_06_2025_faculty_dinner`
--

CREATE TABLE `13_06_2025_faculty_dinner` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `13_06_2025_hostel_student_dinner`
--

CREATE TABLE `13_06_2025_hostel_student_dinner` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `16_05_2025_faculty_lunch`
--

CREATE TABLE `16_05_2025_faculty_lunch` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `16_05_2025_faculty_lunch`
--

INSERT INTO `16_05_2025_faculty_lunch` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML079', '2025-05-16 07:09:02');

-- --------------------------------------------------------

--
-- Table structure for table `16_05_2025_hostel_student_lunch`
--

CREATE TABLE `16_05_2025_hostel_student_lunch` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `16_05_2025_hostel_student_lunch`
--

INSERT INTO `16_05_2025_hostel_student_lunch` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML089', '2025-05-16 07:06:43'),
(2, 'D24AIML087', '2025-05-16 07:06:48');

-- --------------------------------------------------------

--
-- Table structure for table `16_05_2025_lunch_faculty`
--

CREATE TABLE `16_05_2025_lunch_faculty` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `16_05_2025_lunch_hostel_student`
--

CREATE TABLE `16_05_2025_lunch_hostel_student` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `16_05_2025_lunch_hostel_student`
--

INSERT INTO `16_05_2025_lunch_hostel_student` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML087', '2025-05-16 06:49:10');

-- --------------------------------------------------------

--
-- Table structure for table `16_05_2025_lunch_non_hostel_student`
--

CREATE TABLE `16_05_2025_lunch_non_hostel_student` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `16_05_2025_non_hostel_student_lunch`
--

CREATE TABLE `16_05_2025_non_hostel_student_lunch` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `16_05_2025_non_hostel_student_lunch`
--

INSERT INTO `16_05_2025_non_hostel_student_lunch` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML080', '2025-05-16 07:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `18_03_2025_faculty_dinner`
--

CREATE TABLE `18_03_2025_faculty_dinner` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `18_03_2025_faculty_lunch`
--

CREATE TABLE `18_03_2025_faculty_lunch` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `18_03_2025_faculty_lunch`
--

INSERT INTO `18_03_2025_faculty_lunch` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML089', '2025-03-18 07:50:03');

-- --------------------------------------------------------

--
-- Table structure for table `18_03_2025_hostel_student_dinner`
--

CREATE TABLE `18_03_2025_hostel_student_dinner` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `18_03_2025_hostel_student_dinner`
--

INSERT INTO `18_03_2025_hostel_student_dinner` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML079', '2025-03-18 15:57:36');

-- --------------------------------------------------------

--
-- Table structure for table `18_03_2025_hostel_student_lunch`
--

CREATE TABLE `18_03_2025_hostel_student_lunch` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `18_03_2025_hostel_student_lunch`
--

INSERT INTO `18_03_2025_hostel_student_lunch` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML079', '2025-03-18 07:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `18_03_2025_non_hostel_student_dinner`
--

CREATE TABLE `18_03_2025_non_hostel_student_dinner` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `18_03_2025_non_hostel_student_dinner`
--

INSERT INTO `18_03_2025_non_hostel_student_dinner` (`id`, `student_id`, `timestamp`) VALUES
(1, 'd24aiml087', '2025-03-18 16:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `18_03_2025_non_hostel_student_lunch`
--

CREATE TABLE `18_03_2025_non_hostel_student_lunch` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `18_03_2025_non_hostel_student_lunch`
--

INSERT INTO `18_03_2025_non_hostel_student_lunch` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML087', '2025-03-18 07:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `29_03_2025_faculty_lunch`
--

CREATE TABLE `29_03_2025_faculty_lunch` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `29_03_2025_hostel_student_lunch`
--

CREATE TABLE `29_03_2025_hostel_student_lunch` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `29_03_2025_hostel_student_lunch`
--

INSERT INTO `29_03_2025_hostel_student_lunch` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML079', '2025-03-29 07:32:41');

-- --------------------------------------------------------

--
-- Table structure for table `29_03_2025_non_hostel_student_lunch`
--

CREATE TABLE `29_03_2025_non_hostel_student_lunch` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `29_03_2025_non_hostel_student_lunch`
--

INSERT INTO `29_03_2025_non_hostel_student_lunch` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML087', '2025-03-29 07:32:59');

-- --------------------------------------------------------

--
-- Table structure for table `29_04_2025_faculty_breakfast`
--

CREATE TABLE `29_04_2025_faculty_breakfast` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `29_04_2025_faculty_lunch`
--

CREATE TABLE `29_04_2025_faculty_lunch` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `29_04_2025_hostel_student_breakfast`
--

CREATE TABLE `29_04_2025_hostel_student_breakfast` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `29_04_2025_hostel_student_breakfast`
--

INSERT INTO `29_04_2025_hostel_student_breakfast` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML079', '2025-04-29 04:52:07');

-- --------------------------------------------------------

--
-- Table structure for table `29_04_2025_hostel_student_lunch`
--

CREATE TABLE `29_04_2025_hostel_student_lunch` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `29_04_2025_hostel_student_lunch`
--

INSERT INTO `29_04_2025_hostel_student_lunch` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML079', '2025-04-29 10:12:35');

-- --------------------------------------------------------

--
-- Table structure for table `29_04_2025_non_hostel_student_breakfast`
--

CREATE TABLE `29_04_2025_non_hostel_student_breakfast` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `29_04_2025_non_hostel_student_breakfast`
--

INSERT INTO `29_04_2025_non_hostel_student_breakfast` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML087', '2025-04-29 04:51:59');

-- --------------------------------------------------------

--
-- Table structure for table `29_04_2025_non_hostel_student_lunch`
--

CREATE TABLE `29_04_2025_non_hostel_student_lunch` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `29_04_2025_non_hostel_student_lunch`
--

INSERT INTO `29_04_2025_non_hostel_student_lunch` (`id`, `student_id`, `timestamp`) VALUES
(1, 'D24AIML087', '2025-04-29 10:12:47');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `phone_no` varchar(15) NOT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fullname`, `phone_no`, `email_id`, `password`) VALUES
(1, 'Gajera Prince Laxmanbhai', '7862017545', 'princegajera0506@gmail.com', '0506');

-- --------------------------------------------------------

--
-- Table structure for table `breakfast`
--

CREATE TABLE `breakfast` (
  `id` int(11) NOT NULL,
  `Monday` varchar(255) DEFAULT NULL,
  `Tuesday` varchar(255) DEFAULT NULL,
  `Wednesday` varchar(255) DEFAULT NULL,
  `Thursday` varchar(255) DEFAULT NULL,
  `Friday` varchar(255) DEFAULT NULL,
  `Saturday` varchar(255) DEFAULT NULL,
  `Sunday` varchar(255) DEFAULT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `breakfast`
--

INSERT INTO `breakfast` (`id`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`, `from_date`, `to_date`, `created_at`) VALUES
(1, 'Bhakari', 'Bhakari', 'Bhakari', 'Bhakari', 'Bhakari', 'Bhakari', 'Bhakari', '2025-03-03', '2025-03-09', '2025-03-05 08:15:14'),
(2, 'CHA\r\nCOFFE\r\nMILK', 'CHA\r\nCOFFE\r\nMILK', 'CHA\r\nCOFFE\r\nMILK', 'CHA\r\nCOFFE\r\nMILK', 'CHA\r\nCOFFE\r\nMILK', 'CHA\r\nCOFFE\r\nMILK', 'CHA\r\nCOFFE\r\nMILK', '2025-03-10', '2025-03-16', '2025-03-05 08:25:52'),
(3, 'Thepla', 'Thepla', 'Thepla', 'Thepla', 'Thepla', 'Thepla', 'Thepla', '2025-03-17', '2025-03-24', '2025-03-20 16:37:10'),
(5, 'samosa', 'paratha', 'thepla', 'poha', 'bhakhri', 'idli', 'dhokla', '2025-04-28', '2025-05-04', '2025-04-29 09:42:36'),
(6, 'bateka pauva', 'thepla', 'idli shambhar', 'dal pakwan', 'cha bhakhri', 'locho', 'masala bhakhri', '2025-06-09', '2025-06-16', '2025-06-12 14:53:13');

-- --------------------------------------------------------

--
-- Table structure for table `dinner`
--

CREATE TABLE `dinner` (
  `id` int(11) NOT NULL,
  `Monday` varchar(255) DEFAULT NULL,
  `Tuesday` varchar(255) DEFAULT NULL,
  `Wednesday` varchar(255) DEFAULT NULL,
  `Thursday` varchar(255) DEFAULT NULL,
  `Friday` varchar(255) DEFAULT NULL,
  `Saturday` varchar(255) DEFAULT NULL,
  `Sunday` varchar(255) DEFAULT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dinner`
--

INSERT INTO `dinner` (`id`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`, `from_date`, `to_date`, `created_at`) VALUES
(1, 'Dabeli', 'Dabeli', 'Dabeli', 'Dabeli', 'Dabeli', 'Dabeli', 'Dabeli', '2025-03-03', '2025-03-09', '2025-03-05 08:15:52'),
(2, 'PIZZA', 'PIZZA', 'PIZZA', 'PIZZA', 'PIZZA', 'PIZZA', 'PIZZA', '2025-03-10', '2025-03-16', '2025-03-05 08:26:24'),
(3, 'Pizza', 'Pizza', 'Pizza', 'Pizza', 'Pizza', 'Pizza', 'Pizza', '2025-03-17', '2025-03-24', '2025-03-20 16:37:34'),
(5, 'panir butter masasla\r\ndal fry jira rice', 'panir butter masasla\r\ndal fry jira rice', 'panir butter masasla\r\ndal fry jira rice', 'panir butter masasla\r\ndal fry jira rice', 'panir butter masasla\r\ndal fry jira rice', 'panir butter masasla\r\ndal fry jira rice', 'panir butter masasla\r\ndal fry jira rice', '2025-05-05', '2025-05-11', '2025-05-05 07:35:55'),
(6, 'PIZZA', 'DABELI', 'MAR', 'VADAPAV', 'MAR', 'PIZZA', 'BHEL', '2025-06-09', '2025-06-16', '2025-06-12 14:54:58');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_id` varchar(20) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `balance` double(100,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `fullname`, `phone_no`, `email`, `password`, `balance`) VALUES
('D24AIML079', 'Gajera Prince Laxmanbhai', '9727497372', 'princegajera0506@gmail.com', '0506', 240.00);

-- --------------------------------------------------------

--
-- Table structure for table `grocery_vegetable_management`
--

CREATE TABLE `grocery_vegetable_management` (
  `id` int(11) NOT NULL,
  `date_day` datetime DEFAULT current_timestamp(),
  `meal_type` varchar(20) DEFAULT NULL,
  `menu_item` text DEFAULT NULL,
  `person` varchar(50) DEFAULT NULL,
  `grocery` text DEFAULT NULL,
  `vegetable` text DEFAULT NULL,
  `khanabcha` text DEFAULT NULL,
  `khanaghata` text DEFAULT NULL,
  `remark` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grocery_vegetable_management`
--

INSERT INTO `grocery_vegetable_management` (`id`, `date_day`, `meal_type`, `menu_item`, `person`, `grocery`, `vegetable`, `khanabcha`, `khanaghata`, `remark`) VALUES
(11, '2025-06-12 20:57:11', 'lunch', '1. MIX SHAK\n2. ROTLI\n3. PAPAD\n4. CHAS', '1000', '2. ghav - 200', '1. shak - 100', '1. 10 kg\n2. 100 rotli', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_student`
--

CREATE TABLE `hostel_student` (
  `student_id` varchar(20) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `hostel` varchar(20) DEFAULT NULL,
  `room_no` varchar(10) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `first` double(100,2) DEFAULT NULL,
  `second` double(100,2) DEFAULT NULL,
  `full` double(100,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hostel_student`
--

INSERT INTO `hostel_student` (`student_id`, `fullname`, `phone_no`, `email`, `hostel`, `room_no`, `password`, `first`, `second`, `full`) VALUES
('0', 'JAHNVI A MISTRY', '9978797775', '0@charusat.edu.in', 'HOSTEL - 4', 'C-06', '0', 1.00, NULL, NULL),
('1068', 'ESTET  DEPARMENT', '9726002843', '1068@charusat.edu.in', 'ESTATE DEPARTMENT', '55', '1068', NULL, NULL, NULL),
('1072', 'PINKI P RUPAREL', '9574069361', '1072@charusat.edu.in', 'HOSTEL - 1', '72', '1072', 0.00, NULL, NULL),
('20BBA006', 'DHARTI BANUGARIYA', '8866160460', '20BBA006@charusat.edu.in', 'HOSTEL - 4', '73', '20BBA006', 0.00, NULL, NULL),
('20BBA145', 'ZEMY RAJANI', '9638033979', '20BBA145@charusat.edu.in', 'HOSTEL - 4', '73', '20BBA145', 0.00, NULL, NULL),
('20BBA241', 'KRISHNA H SAVALIYA', '9499555436', '20BBA241@charusat.edu.in', 'HOSTEL - 4', '68', '20BBA241', 0.00, 0.00, NULL),
('20BPH015', 'MARGI LADANI', '7016590155', '20BPH015@charusat.edu.in', 'HOSTEL - 2', '58', '20BPH015', 0.00, NULL, NULL),
('20BPH088', 'MAITRI     ROJIVADIYA', '9313706016', '20BPH088@charusat.edu.in', 'HOSTEL - 2', '58', '20BPH088', 0.00, NULL, NULL),
('20BPH090', 'AKSHI K SHAH', '9313403707', '20BPH090@charusat.edu.in', 'HOSTEL - 2', '14', '20BPH090', 0.00, NULL, NULL),
('20DRBIO001', 'HIRAL   AGHARA', '9898247441', '20DRBIO001@charusat.edu.in', 'HOSTEL - 4', '65', '20DRBIO001', 0.00, NULL, NULL),
('20DRPHY003', 'KINJAL  K   JOSHI', '9428573232', '20DRPHY003@charusat.edu.in', 'HOSTEL - 1', '6', '20DRPHY003', 0.00, 0.00, NULL),
('20DRPHY004', 'HIMA PATEL', '9722663663', '20DRPHY004@charusat.edu.in', 'HOSTEL - 4', '5', '20DRPHY004', 0.00, NULL, NULL),
('21BBA101', 'ANSHU A PANCHAL', '8799327468', '21BBA101@charusat.edu.in', 'HOSTEL - 4', '47', '21BBA101', 0.00, NULL, NULL),
('21BCA062', 'ANSHI R TILVA', '8980782356', '21BCA062@charusat.edu.in', 'HOSTEL - 3', '69', '21BCA062', 0.00, NULL, NULL),
('21BCA096', 'HARDI K JOSHI', '9429612107', '21BCA096@charusat.edu.in', 'HOSTEL - 3', '7', '21BCA096', 0.00, 0.00, NULL),
('21BCA278', 'BANSARI U PATEL', '9664966011', '21BCA278@charusat.edu.in', 'HOSTEL - 3', 'C-09', '21BCA278', 0.00, NULL, NULL),
('21BN001', 'SHITAL G BARIA', '9023756237', '21BN001@charusat.edu.in', 'HOSTEL - 1', '9', '21BN001', 0.00, NULL, NULL),
('21BN003', 'LAXMIBEN K DAYRA', '9016952014', '21BN003@charusat.edu.in', 'HOSTEL - 1', '50', '21BN003', 0.00, NULL, NULL),
('21BN004', 'PRUTHA K GOHIL', '8320568781', '21BN004@charusat.edu.in', 'HOSTEL - 1', '20', '21BN004', 0.00, NULL, NULL),
('21BN008', 'ISHITA R  MODI', '9510788106', '21BN008@charusat.edu.in', 'HOSTEL - 1', '33', '21BN008', 0.00, NULL, NULL),
('21BN012', 'YUKTA D PARMAR', '6351399842', '21BN012@charusat.edu.in', 'HOSTEL - 1', '41', '21BN012', 0.00, NULL, NULL),
('21BN014', 'AESHA D PATEL', '9023635177', '21BN014@charusat.edu.in', 'HOSTEL - 1', '35', '21BN014', 0.00, NULL, NULL),
('21BN015', 'ANJALI N PATEL', '9265165220', '21BN015@charusat.edu.in', 'HOSTEL - 1', '10', '21BN015', 0.00, NULL, NULL),
('21BN02', 'ISHA H PATEL', '8140017470', '21BN02@charusat.edu.in', 'HOSTEL - 1', '34', '21BN02', 0.00, NULL, NULL),
('21BN021', 'HARDI D PATEL', '7041296104', '21BN021@charusat.edu.in', 'HOSTEL - 1', '45', '21BN021', 0.00, NULL, NULL),
('21BN028', 'KRINA M PATEL', '8140717080', '21BN028@charusat.edu.in', 'HOSTEL - 1', '10', '21BN028', 0.00, NULL, NULL),
('21BN034', 'PALAK BEN J PATEL', '7990135790', '21BN034@charusat.edu.in', 'HOSTEL - 1', '30', '21BN034', 0.00, NULL, NULL),
('21BN037', 'REENABEN M PATEL', '7862843374', '21BN037@charusat.edu.in', 'HOSTEL - 1', '50', '21BN037', 0.00, NULL, NULL),
('21BN044', 'TANVI K PATEL', '7434954265', '21BN044@charusat.edu.in', 'HOSTEL - 1', '30', '21BN044', 0.00, NULL, NULL),
('21BN049', 'YASHVI K PATEL', '8401513658', '21BN049@charusat.edu.in', 'HOSTEL - 1', '35', '21BN049', 0.00, NULL, NULL),
('21BN055', 'NIKITABEN G RATHVA', '8469179196', '21BN055@charusat.edu.in', 'HOSTEL - 1', '9', '21BN055', 0.00, 0.00, NULL),
('21BN056', 'RASHMIKA N ROHIT', '9265239341', '21BN056@charusat.edu.in', 'HOSTEL - 1', '28', '21BN056', 0.00, NULL, NULL),
('21BPH018', 'AAYUSHI MANDALIYA', '7433050374', '21BPH018@charusat.edu.in', 'HOSTEL - 2', '24', '21BPH018', 0.00, NULL, NULL),
('21BPH019', 'DHARMI R PATEL', '8799364874', '21BPH019@charusat.edu.in', 'HOSTEL - 2', '19', '21BPH019', 0.00, NULL, NULL),
('21BPH020', 'DHRUVI R PATEL', '8799391882', '21BPH020@charusat.edu.in', 'HOSTEL - 2', '19', '21BPH020', 0.00, NULL, NULL),
('21BPH022', 'GEHNA S PATEL', '7859982966', '21BPH022@charusat.edu.in', 'HOSTEL - 2', '69', '21BPH022', 0.00, NULL, NULL),
('21BPH024', 'RIANNE M PADINJAREMANNIL', '9426255489', '21BPH024@charusat.edu.in', 'HOSTEL - 2', '25', '21BPH024', 0.00, NULL, NULL),
('21BPH026', 'ASTHA BAVARIA', '7383888386', '21BPH026@charusat.edu.in', 'HOSTEL - 2', '65', '21BPH026', 0.00, NULL, NULL),
('21BPH030', 'MEERA M KOAYANI', '9875149975', '21BPH030@charusat.edu.in', 'HOSTEL - 2', '70', '21BPH030', 0.00, 0.00, NULL),
('21BPH031', 'ALEENA A ABY', '8128685679', '21BPH031@charusat.edu.in', 'HOSTEL - 2', '10', '21BPH031', 0.00, NULL, NULL),
('21BPH033', 'RUTVI PATEL', '7779012903', '21BPH033@charusat.edu.in', 'HOSTEL - 2', '50', '21BPH033', 0.00, NULL, NULL),
('21BPH034', 'SNEHA GOR', '7016942537', '21BPH034@charusat.edu.in', 'HOSTEL - 2', '60', '21BPH034', 0.00, NULL, NULL),
('21BPH037', 'LIZABEN V MANSURIA', '6351856482', '21BPH037@charusat.edu.in', 'HOSTEL - 2', '60', '21BPH037', 0.00, NULL, NULL),
('21BPH043', 'POOJA C PATEL', '8780590031', '21BPH043@charusat.edu.in', 'HOSTEL - 2', '10', '21BPH043', 0.00, 0.00, NULL),
('21BPH044', 'TISHA KORALWALA', '9687048954', '21BPH044@charusat.edu.in', 'HOSTEL - 2', '70', '21BPH044', 0.00, NULL, NULL),
('21BPH048', 'HASTI S PATEL', '9328593758', '21BPH048@charusat.edu.in', 'HOSTEL - 2', '69', '21BPH048', 0.00, NULL, NULL),
('21BPH051', 'SALONI A SONI', '9408382103', '21BPH051@charusat.edu.in', 'HOSTEL - 2', '61', '21BPH051', 0.00, NULL, NULL),
('21BPH052', 'AAYUSHI V RAJPUT', '9727527929', '21BPH052@charusat.edu.in', 'HOSTEL - 2', '58', '21BPH052', 0.00, NULL, NULL),
('21BPH055', 'JUHI S KHANDAR', '9408049799', '21BPH055@charusat.edu.in', 'HOSTEL - 2', '9', '21BPH055', 0.00, NULL, NULL),
('21BPH063', 'URVI R TANDEL', '6352446511', '21BPH063@charusat.edu.in', 'HOSTEL - 2', '7', '21BPH063', 0.00, NULL, NULL),
('21BPH064', 'KRISHA L HIRANI', '8320392732', '21BPH064@charusat.edu.in', 'HOSTEL - 2', '45', '21BPH064', 0.00, NULL, NULL),
('21BPH073', 'HONEY S PATEL', '6354804734', '21BPH073@charusat.edu.in', 'HOSTEL - 2', '7', '21BPH073', 0.00, NULL, NULL),
('21BPH074', 'DARVI P MAKADIA', '8849040870', '21BPH074@charusat.edu.in', 'HOSTEL - 2', '45', '21BPH074', 0.00, NULL, NULL),
('21BPH085', 'PRAPTI D KANABAR', '9624831725', '21BPH085@charusat.edu.in', 'HOSTEL - 2', '55', '21BPH085', 0.00, 0.00, NULL),
('21BPH16', 'PRIYANKA PARIMAL', '8320370513', '21BPH16@charusat.edu.in', 'HOSTEL - 2', '34', '21BPH16', 0.00, NULL, NULL),
('21BPT002', 'AVANI BARASARA', '7069939941', '21BPT002@charusat.edu.in', 'HOSTEL - 2', '71', '21BPT002', 0.00, NULL, NULL),
('21BPT004', 'VISHA M BHALANI', '9727757190', '21BPT004@charusat.edu.in', 'HOSTEL - 2', '42', '21BPT004', 0.00, NULL, NULL),
('21BPT005', 'ISHITA R BHATT', '9876922045', '21BPT005@charusat.edu.in', 'HOSTEL - 2', '63', '21BPT005', 0.00, NULL, NULL),
('21BPT006', 'VANSHEE K BHATT', '9904195509', '21BPT006@charusat.edu.in', 'HOSTEL - 2', '11', '21BPT006', 0.00, NULL, NULL),
('21BPT008', 'PALAK CHUHAN', '8980443121', '21BPT008@charusat.edu.in', 'HOSTEL - 2', '69', '21BPT008', 0.00, NULL, NULL),
('21BPT010', 'UNNATI B CHAUHAN', '7359822310', '21BPT010@charusat.edu.in', 'HOSTEL - 2', '49', '21BPT010', 0.00, 0.00, NULL),
('21BPT017', 'DAIVI B JOSHI', '9316293990', '21BPT017@charusat.edu.in', 'HOSTEL - 2', '63', '21BPT017', 0.00, NULL, NULL),
('21BPT018', 'KHUSHI A JOSHI', '7862858067', '21BPT018@charusat.edu.in', 'HOSTEL - 2', '62', '21BPT018', 0.00, NULL, NULL),
('21BPT019', 'PRATHA H KADIYA', '9408528331', '21BPT019@charusat.edu.in', 'HOSTEL - 2', '60', '21BPT019', 0.00, NULL, NULL),
('21BPT024', 'KANISHA MAKWANA', '7046227230', '21BPT024@charusat.edu.in', 'HOSTEL - 2', '16', '21BPT024', 0.00, 0.00, NULL),
('21BPT026', 'JINSI Y NAIK', '9913759596', '21BPT026@charusat.edu.in', 'HOSTEL - 2', '64', '21BPT026', 0.00, NULL, NULL),
('21BPT027', 'NIRJA M NAIK', '9913335459', '21BPT027@charusat.edu.in', 'HOSTEL - 2', '64', '21BPT027', 0.00, NULL, NULL),
('21BPT037', 'DIYA PATEL', '7984301406', '21BPT037@charusat.edu.in', 'HOSTEL - 2', '64', '21BPT037', 0.00, NULL, NULL),
('21BPT042', 'JANVI K PATEL', '7227867744', '21BPT042@charusat.edu.in', 'HOSTEL - 2', '39', '21BPT042', 0.00, NULL, NULL),
('21BPT045', 'NIKITA PATEL', '8758728669', '21BPT045@charusat.edu.in', 'HOSTEL - 2', '50', '21BPT045', 0.00, 0.00, NULL),
('21BPT048', 'RIDDHI P PATEL', '6359952934', '21BPT048@charusat.edu.in', 'HOSTEL - 2', '62', '21BPT048', 0.00, NULL, NULL),
('21BPT049', 'SALONI PATEL', '8799001638', '21BPT049@charusat.edu.in', 'HOSTEL - 2', '68', '21BPT049', 0.00, NULL, NULL),
('21BPT054', 'VAISHNAVI A PATEL', '6359280950', '21BPT054@charusat.edu.in', 'HOSTEL - 2', '10', '21BPT054', 0.00, NULL, NULL),
('21BPT055', 'VIDHI A PATEL', '7984172122', '21BPT055@charusat.edu.in', 'HOSTEL - 2', '20', '21BPT055', 0.00, NULL, NULL),
('21BPT070', 'JANVIBEN S THAKOR', '9574942433', '21BPT070@charusat.edu.in', 'HOSTEL - 2', '43', '21BPT070', 0.00, NULL, NULL),
('21BPT071', 'KRUSHI R VAGADIYA', '9638784906', '21BPT071@charusat.edu.in', 'HOSTEL - 2', '57', '21BPT071', 0.00, NULL, NULL),
('21BPT072', 'ANANDI S VAMJA', '9409107874', '21BPT072@charusat.edu.in', 'HOSTEL - 2', '42', '21BPT072', 0.00, NULL, NULL),
('21BPT074', 'JIYA CHETAN SHAH', '8600381557', '21BPT074@charusat.edu.in', 'HOSTEL - 2', '68', '21BPT074', 0.00, NULL, NULL),
('21BPT076', 'MANSI B RANPARIYA', '7383812392', '21BPT076@charusat.edu.in', 'HOSTEL - 2', '57', '21BPT076', 0.00, NULL, NULL),
('21BSC022', 'GRISHMA DHADUK', '9737061400', '21BSC022@charusat.edu.in', 'HOSTEL - 4', '33', '21BSC022', 0.00, NULL, NULL),
('21BSC042', 'SANJANA H MANGROLA', '9427914585', '21BSC042@charusat.edu.in', 'HOSTEL - 4', '17', '21BSC042', 0.00, NULL, NULL),
('21BSC049', 'POOJA MODHVADIYA', '8128918063', '21BSC049@charusat.edu.in', 'HOSTEL - 4', '17', '21BSC049', 0.00, NULL, NULL),
('21BSC056', 'JIYA H PANDYA', '6357770899', '21BSC056@charusat.edu.in', 'HOSTEL - 4', '17', '21BSC056', 0.00, NULL, NULL),
('21BSC087', 'MANASHREE PATEL', '7861883086', '21BSC087@charusat.edu.in', 'HOSTEL - 4', '7', '21BSC087', 0.00, NULL, NULL),
('21BSC103', 'DARSHNA AHIR', '9313126261', '21BSC103@charusat.edu.in', 'HOSTEL - 4', '9', '21BSC103', 0.00, NULL, NULL),
('21BSC151', 'CHARMI TRAMADIYA', '8160851557', '21BSC151@charusat.edu.in', 'HOSTEL - 4', '9', '21BSC151', 0.00, 0.00, NULL),
('21BSIT092', 'POOJA M SONAGRA', '7016766939', '21BSIT092@charusat.edu.in', 'HOSTEL - 3', '27', '21BSIT092', 0.00, NULL, NULL),
('21DCS118', 'MANSI SOLANKI', '8799614426', '21DCS118@charusat.edu.in', 'HOSTEL - 3', '33', '21DCS118', 0.00, NULL, NULL),
('21DIT02', 'VAISHNAVI KACHHIYA', '9106610148', '21DIT02@charusat.edu.in', 'HOSTEL - 3', '8', '21DIT02', 0.00, NULL, NULL),
('21DRBIO007', 'UMA IYER', '9558318772', '21DRBIO007@charusat.edu.in', 'HOSTEL - 1', '73', '21DRBIO007', 0.00, NULL, NULL),
('21DRPHY005', 'KUTTIPPURATHU SIMMY JOSEPH', '7990381241', '21DRPHY005@charusat.edu.in', 'HOSTEL - 1', '60', '21DRPHY005', 0.00, NULL, NULL),
('21GNM001', 'BHAVISHA S BAMANIYA', '6352529287', '21GNM001@charusat.edu.in', 'HOSTEL - 1', '7', '21GNM001', 0.00, NULL, NULL),
('21GNM002', 'DHARMISTHA S BAMANIYA', '9106849243', '21GNM002@charusat.edu.in', 'HOSTEL - 1', '7', '21GNM002', 0.00, NULL, NULL),
('21GNM004', 'RAHEL V BHABHOR', '6353282863', '21GNM004@charusat.edu.in', 'HOSTEL - 1', '39', '21GNM004', 0.00, NULL, NULL),
('21GNM005', 'SHALINI D BHAGAT', '8469599276', '21GNM005@charusat.edu.in', 'HOSTEL - 1', '39', '21GNM005', 0.00, NULL, NULL),
('21GNM006', 'PRIYANKA R BHURA', '7573910399', '21GNM006@charusat.edu.in', 'HOSTEL - 1', '8', '21GNM006', 0.00, NULL, NULL),
('21GNM031', 'SAKSHI H PATEL', '9016619931', '21GNM031@charusat.edu.in', 'HOSTEL - 1', '45', '21GNM031', 0.00, NULL, NULL),
('21GNM041', 'SHARAYA SOLANKI', '9157547709', '21GNM041@charusat.edu.in', 'HOSTEL - 1', '5', '21GNM041', 0.00, NULL, NULL),
('21GNM042', 'BHUMI D SUMANIYA', '9725698332', '21GNM042@charusat.edu.in', 'HOSTEL - 1', '5', '21GNM042', 0.00, NULL, NULL),
('21GNM18', 'HENSI MAKWANA', '8401849326', '21GNM18@charusat.edu.in', 'HOSTEL - 1', '48', '21GNM18', 0.00, NULL, NULL),
('21PBN043', 'SNEHA D PATEL', '6352417867', '21PBN043@charusat.edu.in', 'HOSTEL - 1', '32', '21PBN043', 0.00, NULL, NULL),
('21TBSCTLV', 'PARITA PATIL', '8200599250', '21TBSCTLV@charusat.edu.in', 'HOSTEL - 4', 'C-15', '21TBSCTLV', 0.00, 0.00, NULL),
('22AIML004', 'JANVI D BHANUSHLI', '7227816351', '22AIML004@charusat.edu.in', 'HOSTEL - 5', '602', '22AIML004', 0.00, 0.00, NULL),
('22AIML005', 'ISHITA R BHOJANI', '6353487984', '22AIML005@charusat.edu.in', 'HOSTEL - 3', '40', '22AIML005', 0.00, NULL, NULL),
('22AIML008', 'KESHA M DESAI', '9909177180', '22AIML008@charusat.edu.in', 'HOSTEL - 3', '61', '22AIML008', 0.00, 0.00, NULL),
('22AIML009', 'ZULI J DOBARIYA', '7984420655', '22AIML009@charusat.edu.in', 'HOSTEL - 3', '40', '22AIML009', 0.00, NULL, NULL),
('22AIML020', 'POOJA P MEHTA', '6351857705', '22AIML020@charusat.edu.in', 'HOSTEL - 3', '40', '22AIML020', 0.00, NULL, NULL),
('22AIML027', 'NENSI S PANSURIYA', '9978640322', '22AIML027@charusat.edu.in', 'HOSTEL - 3', '40', '22AIML027', 0.00, NULL, NULL),
('22AIML033', 'HETVI K PATEL', '9313204645', '22AIML033@charusat.edu.in', 'HOSTEL - 3', '44', '22AIML033', 0.00, 0.00, NULL),
('22AIML034', 'HETVI N PATEL', '9727914505', '22AIML034@charusat.edu.in', 'HOSTEL - 3', '44', '22AIML034', 0.00, 0.00, NULL),
('22AIML035', 'JANVI K PATEL', '7046439371', '22AIML035@charusat.edu.in', 'HOSTEL - 3', '44', '22AIML035', 0.00, 0.00, NULL),
('22AIML036', 'MILI B PATEL', '7229056143', '22AIML036@charusat.edu.in', 'HOSTEL - 3', '44', '22AIML036', 0.00, 0.00, NULL),
('22AIML044', 'LIZA SATASIYA', '7984194161', '22AIML044@charusat.edu.in', 'HOSTEL - 3', 'C-16', '22AIML044', 0.00, NULL, NULL),
('22AIML045', 'ZEEL A SAVALIYA', '6351026516', '22AIML045@charusat.edu.in', 'HOSTEL - 3', '20', '22AIML045', 0.00, 0.00, NULL),
('22AIML051', 'NIRAL R SHEKHAT', '9913826783', '22AIML051@charusat.edu.in', 'HOSTEL - 3', '16', '22AIML051', 0.00, 0.00, NULL),
('22AIML058', 'KUNJALBA S VALA', '8140090777', '22AIML058@charusat.edu.in', 'HOSTEL - 5', '302', '22AIML058', 0.00, 0.00, NULL),
('22BAC098', 'JAIGNESHA V PATIL', '9586742524', '22BAC098@charusat.edu.in', 'HOSTEL - 4', '42', '22BAC098', 0.00, NULL, NULL),
('22BBA019', 'JHANVI CHUDASMA', '8155091818', '22BBA019@charusat.edu.in', 'HOSTEL - 4', '51', '22BBA019', 0.00, NULL, NULL),
('22BBA026', 'MISRI D  FADADU', '9586881946', '22BBA026@charusat.edu.in', 'HOSTEL - 4', '49', '22BBA026', 0.00, NULL, NULL),
('22BBA027', 'KHUSHI A FALDU', '7567516926', '22BBA027@charusat.edu.in', 'HOSTEL - 4', '26', '22BBA027', 0.00, NULL, NULL),
('22BBA039', 'DIYA KAMANI', '8160402574', '22BBA039@charusat.edu.in', 'HOSTEL - 4', '60', '22BBA039', 0.00, NULL, NULL),
('22BBA042', 'NENSI KATARIYA', '9316521597', '22BBA042@charusat.edu.in', 'HOSTEL - 4', '37', '22BBA042', 0.00, NULL, NULL),
('22BBA050', 'ABHIMEETA A MODAK', '7016410992', '22BBA050@charusat.edu.in', 'HOSTEL - 4', '37', '22BBA050', 0.00, 0.00, NULL),
('22BBA061', 'KRUPA S PARSANIYA', '9725082483', '22BBA061@charusat.edu.in', 'HOSTEL - 4', '26', '22BBA061', 0.00, NULL, NULL),
('22BBA072', 'KRISH J PATEL', '9998690829', '22BBA072@charusat.edu.in', 'HOSTEL - 4', '37', '22BBA072', 0.00, NULL, NULL),
('22BBA080', 'JANVI PATIL', '9913158399', '22BBA080@charusat.edu.in', 'HOSTEL - 2', '36', '22BBA080', 0.00, NULL, NULL),
('22BBA115', 'BHAKTI MANISHBHAI SAVALIYA', '9586577909', '22BBA115@charusat.edu.in', 'HOSTEL - 4', '26', '22BBA115', 0.00, NULL, NULL),
('22BBA127', 'VAIDEHI A SHAH', '8469674544', '22BBA127@charusat.edu.in', 'HOSTEL - 4', 'C-16', '22BBA127', 0.00, NULL, NULL),
('22BBA128', 'SALVI SHERATHIYA', '9726753722', '22BBA128@charusat.edu.in', 'HOSTEL - 4', '30', '22BBA128', 0.00, NULL, NULL),
('22BBAB011', 'KHUSHI DHOLAKIYA', '9909334794', '22BBAB011@charusat.edu.in', 'HOSTEL - 4', '59', '22BBAB011', 0.00, NULL, NULL),
('22BBAB032', 'ISHITA M PATEL', '9016865384', '22BBAB032@charusat.edu.in', 'HOSTEL - 4', '51', '22BBAB032', 0.00, NULL, NULL),
('22BBAB043', 'DIYA  PRAJAPATI', '8401205010', '22BBAB043@charusat.edu.in', 'HOSTEL - 5', '104', '22BBAB043', 0.00, NULL, NULL),
('22BBAB051', 'HARVI SATASIYA', '9054105832', '22BBAB051@charusat.edu.in', 'HOSTEL - 4', '49', '22BBAB051', 0.00, 0.00, NULL),
('22BBAB062', 'KRISHA R SUTARIYA', '6354023530', '22BBAB062@charusat.edu.in', 'HOSTEL - 4', '59', '22BBAB062', 0.00, NULL, NULL),
('22BBAB066', 'VISHVA M TRAMBADIYA', '9327953809', '22BBAB066@charusat.edu.in', 'HOSTEL - 4', '35', '22BBAB066', 0.00, 0.00, NULL),
('22BBAB071', 'KRUPALI VANSFODA', '8154877072', '22BBAB071@charusat.edu.in', 'HOSTEL - 4', '74', '22BBAB071', 0.00, NULL, NULL),
('22BBAB072', 'PRACHI M VEKARIYA', '9870084196', '22BBAB072@charusat.edu.in', 'HOSTEL - 4', '35', '22BBAB072', 0.00, 0.00, NULL),
('22BBABO15', 'RUCHI K GORASIYA', '7863050517', '22BBABO15@charusat.edu.in', 'HOSTEL - 4', '59', '22BBABO15', 0.00, NULL, NULL),
('22BBAE002', 'DIYA J AGHARA', '9727522313', '22BBAE002@charusat.edu.in', 'HOSTEL - 4', 'C-16', '22BBAE002', 0.00, NULL, NULL),
('22BBE016', 'SUHANI S KORINGA', '9925322876', '22BBE016@charusat.edu.in', 'HOSTEL - 4', 'C-16', '22BBE016', 0.00, NULL, NULL),
('22BCA074', 'GRISHMA V HIRANI', '9426858815', '22BCA074@charusat.edu.in', 'HOSTEL - 5', '410', '22BCA074', 0.00, 0.00, NULL),
('22BCA087', 'ISHA B KACHHADYIA', '9016564868', '22BCA087@charusat.edu.in', 'HOSTEL - 5', '705', '22BCA087', 0.00, NULL, NULL),
('22BCA094', 'DIYA KANSAGRA', '6352526209', '22BCA094@charusat.edu.in', 'HOSTEL - 5', '402', '22BCA094', 0.00, 0.00, NULL),
('22BCA108', 'JIYA B KHENI', '8780714587', '22BCA108@charusat.edu.in', 'HOSTEL - 5', '409', '22BCA108', 0.00, 0.00, NULL),
('22BCA110', 'JEMI A KORADIYA', '9313872115', '22BCA110@charusat.edu.in', 'HOSTEL - 5', '512', '22BCA110', 0.00, NULL, NULL),
('22BCA111', 'KRISHA KOTADIYA', '8320721959', '22BCA111@charusat.edu.in', 'HOSTEL - 5', '406', '22BCA111', 0.00, 0.00, NULL),
('22BCA160', 'ASHITI PATEL', '7990057320', '22BCA160@charusat.edu.in', 'HOSTEL - 5', '401', '22BCA160', 0.00, NULL, NULL),
('22BCA170', 'DIYA J PATEL', '8128274027', '22BCA170@charusat.edu.in', 'HOSTEL - 5', '704', '22BCA170', 0.00, 0.00, NULL),
('22BCA171', 'DIYA M PATEL', '8980244721', '22BCA171@charusat.edu.in', 'HOSTEL - 5', '407', '22BCA171', 0.00, NULL, NULL),
('22BCA183', 'HIR B PAREL', '7861093549', '22BCA183@charusat.edu.in', 'HOSTEL - 5', '704', '22BCA183', 0.00, 0.00, NULL),
('22BCA193', 'KALPANA M PATEL', '7778030963', '22BCA193@charusat.edu.in', 'HOSTEL - 5', '401', '22BCA193', 0.00, NULL, NULL),
('22BCA200', 'KHUSHI R PATEL', '9913701511', '22BCA200@charusat.edu.in', 'HOSTEL - 5', '712', '22BCA200', 0.00, NULL, NULL),
('22BCA268', 'KRINA N RANPARA', '9023191299', '22BCA268@charusat.edu.in', 'HOSTEL - 5', '413', '22BCA268', 0.00, NULL, NULL),
('22BCA269', 'DENSI S RUPAPARA', '9023938742', '22BCA269@charusat.edu.in', 'HOSTEL - 5', '409', '22BCA269', 0.00, 0.00, NULL),
('22BCA273', 'DHARMI R SATANI', '9510237124', '22BCA273@charusat.edu.in', 'HOSTEL - 5', '406', '22BCA273', 0.00, NULL, NULL),
('22BCA327', 'KHUSHBU UPADHYAY', '9016060417', '22BCA327@charusat.edu.in', 'HOSTEL - 5', '408', '22BCA327', 0.00, 0.00, NULL),
('22BMIT021', 'ANJALI J RUDANI', '8160303060', '22BMIT021@charusat.edu.in', 'HOSTEL - 1', '70', '22BMIT021', 0.00, NULL, NULL),
('22BN001', 'SHRADDHABEN B DABHI', '9924873073', '22BN001@charusat.edu.in', 'HOSTEL - 1', '28', '22BN001', 0.00, NULL, NULL),
('22BN009', 'AYUSHI HEREN PATEL', '9054618852', '22BN009@charusat.edu.in', 'HOSTEL - 1', '71', '22BN009', 0.00, NULL, NULL),
('22BN016', 'DIYA M PATEL', '8780634603', '22BN016@charusat.edu.in', 'HOSTEL - 1', '6', '22BN016', 0.00, NULL, NULL),
('22BN017', 'DIYA P PATEL', '8160291149', '22BN017@charusat.edu.in', 'HOSTEL - 1', '53', '22BN017', 0.00, NULL, NULL),
('22BN018', 'DIYA H PATEL', '7600700102', '22BN018@charusat.edu.in', 'HOSTEL - 1', '53', '22BN018', 0.00, 0.00, NULL),
('22BN029', 'SHIVANI H PATEL', '9313917474', '22BN029@charusat.edu.in', 'HOSTEL - 1', '24', '22BN029', 0.00, NULL, NULL),
('22BN032', 'SHREYA M PATEL', '8200857985', '22BN032@charusat.edu.in', 'HOSTEL - 1', '52', '22BN032', 0.00, NULL, NULL),
('22BN033', 'TISHA K PATEL', '9023262950', '22BN033@charusat.edu.in', 'HOSTEL - 1', '54', '22BN033', 0.00, NULL, NULL),
('22BN034', 'TISHA P PATEL', '6353724174', '22BN034@charusat.edu.in', 'HOSTEL - 1', '54', '22BN034', 0.00, NULL, NULL),
('22BN039', 'VIDHI J PATEL', '9328122245', '22BN039@charusat.edu.in', 'HOSTEL - 1', '56', '22BN039', 0.00, NULL, NULL),
('22BN044', 'MANSVIBEN D PRANAMI', '9023001236', '22BN044@charusat.edu.in', 'HOSTEL - 1', '27', '22BN044', 0.00, NULL, NULL),
('22BN048', 'SANA VAHORA', '8160488345', '22BN048@charusat.edu.in', 'HOSTEL - 1', '26', '22BN048', 0.00, NULL, NULL),
('22BOTAT002', 'KASHISH N CHAUHAN', '8780526421', '22BOTAT002@charusat.edu.in', 'HOSTEL - 2', '34', '22BOTAT002', 0.00, 0.00, NULL),
('22BOTAT005', 'JAHANAVI K KANANI', '6359899823', '22BOTAT005@charusat.edu.in', 'HOSTEL - 2', '20', '22BOTAT005', 0.00, 0.00, NULL),
('22BOTAT012', 'HETVI M RAMPARIYA', '8401247952', '22BOTAT012@charusat.edu.in', 'HOSTEL - 2', '43', '22BOTAT012', 0.00, 0.00, NULL),
('22BOTAT015', 'VAISHNAVI  D  SHERDIWALA', '6351250462', '22BOTAT015@charusat.edu.in', 'HOSTEL - 2', '20', '22BOTAT015', 0.00, NULL, NULL),
('22BPH001', 'TARA  PRADEEP BHAI', '7622891960', '22BPH001@charusat.edu.in', 'HOSTEL - 2', '21', '22BPH001', 0.00, 0.00, NULL),
('22BPH005', 'PRIYANSHI J CHAUHAN', '9510811179', '22BPH005@charusat.edu.in', 'HOSTEL - 2', '9', '22BPH005', 0.00, NULL, NULL),
('22BPH008', 'MANSI  D  DHAMELIYA', '9879133563', '22BPH008@charusat.edu.in', 'HOSTEL - 2', '55', '22BPH008', 0.00, 0.00, NULL),
('22BPH017', 'PRIYANSHI JARIWALA', '9081012779', '22BPH017@charusat.edu.in', 'HOSTEL - 2', '72', '22BPH017', 0.00, NULL, NULL),
('22BPH037', 'AYUSHI M PANSURIYA', '9106162629', '22BPH037@charusat.edu.in', 'HOSTEL - 2', '31', '22BPH037', 0.00, NULL, NULL),
('22BPH039', 'MAITRI M PARMAR', '9624332331', '22BPH039@charusat.edu.in', 'HOSTEL - 2', '17', '22BPH039', 0.00, NULL, NULL),
('22BPH054', 'HET N PATEL', '9712502009', '22BPH054@charusat.edu.in', 'HOSTEL - 2', '16', '22BPH054', NULL, 0.00, NULL),
('22BPH056', 'JANSI B PATEL', '8799406796', '22BPH056@charusat.edu.in', 'HOSTEL - 2', '12', '22BPH056', 0.00, NULL, NULL),
('22BPH057', 'KHUSHI A PATEL', '9104320803', '22BPH057@charusat.edu.in', 'HOSTEL - 2', '59', '22BPH057', 0.00, 0.00, NULL),
('22BPH060', 'KRISHA D PATEL', '7861999491', '22BPH060@charusat.edu.in', 'HOSTEL - 2', '65', '22BPH060', 0.00, NULL, NULL),
('22BPH061', 'MAHEK M PATEL', '9978948031', '22BPH061@charusat.edu.in', 'HOSTEL - 2', '31', '22BPH061', 0.00, NULL, NULL),
('22BPH070', 'PANKTI D PATEL', '9054317679', '22BPH070@charusat.edu.in', 'HOSTEL - 2', '7', '22BPH070', 0.00, NULL, NULL),
('22BPH072', 'RUDRI J PATEL', '7600448315', '22BPH072@charusat.edu.in', 'HOSTEL - 2', '8', '22BPH072', 0.00, NULL, NULL),
('22BPH073', 'SHREYA M PATEL', '9687207328', '22BPH073@charusat.edu.in', 'HOSTEL - 2', '65', '22BPH073', 0.00, NULL, NULL),
('22BPH076', 'TITHI U PATEL', '9316800737', '22BPH076@charusat.edu.in', 'HOSTEL - 2', '8', '22BPH076', 0.00, NULL, NULL),
('22BPH082', 'TANVI C PRAJAPATI', '6351837543', '22BPH082@charusat.edu.in', 'HOSTEL - 2', '12', '22BPH082', 0.00, NULL, NULL),
('22BPH084', 'RIYA R RANA', '6353509727', '22BPH084@charusat.edu.in', 'HOSTEL - 2', '48', '22BPH084', 0.00, NULL, NULL),
('22BPH091', 'NAITRI C SHAH', '8735800176', '22BPH091@charusat.edu.in', 'HOSTEL - 2', '33', '22BPH091', 0.00, NULL, NULL),
('22BPH099', 'DENSI KETANBHAI VACHHANI', '9712196278', '22BPH099@charusat.edu.in', 'HOSTEL - 2', '56', '22BPH099', 0.00, 0.00, NULL),
('22BPH100', 'TRUSHA K VAGHANI', '7622890881', '22BPH100@charusat.edu.in', 'HOSTEL - 2', '21', '22BPH100', 0.00, NULL, NULL),
('22BPH101', 'KELVI R VAGHASIYA', '9106841141', '22BPH101@charusat.edu.in', 'HOSTEL - 2', '31', '22BPH101', 0.00, NULL, NULL),
('22BPHO2', 'MITAL M AHIR', '8128725999', '22BPHO2@charusat.edu.in', 'HOSTEL - 2', '59', '22BPHO2', 0.00, NULL, NULL),
('22BPHS086', 'ISHA NITESH BHAI SANGANI', '6353474080', '22BPHS086@charusat.edu.in', 'HOSTEL - 2', '24', '22BPHS086', 0.00, NULL, NULL),
('22BPT001', 'KRISHA J BHANUSHALI', '9313044964', '22BPT001@charusat.edu.in', 'HOSTEL - 2', '56', '22BPT001', 0.00, NULL, NULL),
('22BPT005', 'MANSI B DER', '9265300414', '22BPT005@charusat.edu.in', 'HOSTEL - 2', '22', '22BPT005', 0.00, NULL, NULL),
('22BPT007', 'HEMANSHI D JANI', '8733013122', '22BPT007@charusat.edu.in', 'HOSTEL - 2', '54', '22BPT007', 0.00, 0.00, NULL),
('22BPT009', 'AYUSHI A KANERIA', '9979103028', '22BPT009@charusat.edu.in', 'HOSTEL - 2', '22', '22BPT009', 0.00, 0.00, NULL),
('22BPT014', 'SANJANA S MALAVEKAR', '9518301774', '22BPT014@charusat.edu.in', 'HOSTEL - 2', '22', '22BPT014', 0.00, NULL, NULL),
('22BPT015', 'JAYATRI K MEHTA', '8128137203', '22BPT015@charusat.edu.in', 'HOSTEL - 2', '42', '22BPT015', 0.00, 0.00, NULL),
('22BPT016', 'ANJALI MESTRY', '9313071356', '22BPT016@charusat.edu.in', 'HOSTEL - 2', '72', '22BPT016', 0.00, NULL, NULL),
('22BPT026', 'KHUSHI R PATEL', '7069638183', '22BPT026@charusat.edu.in', 'HOSTEL - 2', '48', '22BPT026', 0.00, NULL, NULL),
('22BPT028', 'MAITRI H PATEL', '9664901207', '22BPT028@charusat.edu.in', 'HOSTEL - 2', '17', '22BPT028', 0.00, NULL, NULL),
('22BPT031', 'SHREYA R PATEL', '9574752700', '22BPT031@charusat.edu.in', 'HOSTEL - 2', '67', '22BPT031', 0.00, NULL, NULL),
('22BPT033', 'TRUSHA N PATEL', '8866285744', '22BPT033@charusat.edu.in', 'HOSTEL - 2', '55', '22BPT033', 0.00, NULL, NULL),
('22BPT034', 'VIDHI N PATEL', '8849913917', '22BPT034@charusat.edu.in', 'HOSTEL - 2', '73', '22BPT034', 0.00, NULL, NULL),
('22BPT039', 'SIDDHI ASHISH THAKKAR', '7990964169', '22BPT039@charusat.edu.in', 'HOSTEL - 2', '72', '22BPT039', 0.00, 0.00, NULL),
('22BPT041', 'HITALI  D THUMMAR', '9016959188', '22BPT041@charusat.edu.in', 'HOSTEL - 2', '18', '22BPT041', 0.00, 0.00, NULL),
('22BPT042', 'MAHEK K VANKAWALA', '9016328353', '22BPT042@charusat.edu.in', 'HOSTEL - 2', '48', '22BPT042', 0.00, NULL, NULL),
('22BPT044', 'KRUPALI N PATEL', '8320127844', '22BPT044@charusat.edu.in', 'HOSTEL - 1', '71', '22BPT044', 0.00, NULL, NULL),
('22BRMLT003', 'MITTAL ODEDARA', '9106797208', '22BRMLT003@charusat.edu.in', 'HOSTEL - 4', '43', '22BRMLT003', 0.00, 0.00, NULL),
('22BSC008', 'DEVSHREE G CHAUDHARI', '6357120604', '22BSC008@charusat.edu.in', 'HOSTEL - 4', '41', '22BSC008', 0.00, 0.00, NULL),
('22BSC009', 'PALAK CHAUDHARY', '9461630800', '22BSC009@charusat.edu.in', 'HOSTEL - 4', '64', '22BSC009', 0.00, NULL, NULL),
('22BSC010', 'JENCY S CHAVDA', '9173458540', '22BSC010@charusat.edu.in', 'HOSTEL - 4', '53', '22BSC010', 0.00, NULL, NULL),
('22BSC011', 'GRISHMA S CHAWRA', '9879412202', '22BSC011@charusat.edu.in', 'HOSTEL - 4', '10', '22BSC011', 0.00, 0.00, NULL),
('22BSC014', 'HAYA V DESAI', '9825145348', '22BSC014@charusat.edu.in', 'HOSTEL - 4', '61', '22BSC014', 0.00, NULL, NULL),
('22BSC017', 'KRISHA K DODIYA', '7405273218', '22BSC017@charusat.edu.in', 'HOSTEL - 4', '49', '22BSC017', 0.00, 0.00, NULL),
('22BSC019', 'DISHA FALDU', '7859967106', '22BSC019@charusat.edu.in', 'HOSTEL - 4', '36', '22BSC019', 0.00, 0.00, NULL),
('22BSC020', 'VIMI P GHEEWALA', '7016699836', '22BSC020@charusat.edu.in', 'HOSTEL - 4', '66', '22BSC020', 0.00, NULL, NULL),
('22BSC022', 'KHUSHI Y GOSWAMI', '8401775764', '22BSC022@charusat.edu.in', 'HOSTEL - 4', '11', '22BSC022', 0.00, 0.00, NULL),
('22BSC023', 'KHUSHI N JADAV', '9586610177', '22BSC023@charusat.edu.in', 'HOSTEL - 4', '39', '22BSC023', 0.00, 0.00, NULL),
('22BSC025', 'HIMMADRI N  JOSHI', '9428572166', '22BSC025@charusat.edu.in', 'HOSTEL - 2', '23', '22BSC025', 0.00, NULL, NULL),
('22BSC026', 'KRISHA  JOSHI', '9909103809', '22BSC026@charusat.edu.in', 'HOSTEL - 4', '14', '22BSC026', 0.00, NULL, NULL),
('22BSC038', 'KASHISH S NAGAR', '8347098859', '22BSC038@charusat.edu.in', 'HOSTEL - 4', '36', '22BSC038', 0.00, 0.00, NULL),
('22BSC045', 'SHREYA K PARMAR', '9016623910', '22BSC045@charusat.edu.in', 'HOSTEL - 4', '27', '22BSC045', 0.00, 0.00, NULL),
('22BSC048', 'AHUTI  D PATEL', '9016013585', '22BSC048@charusat.edu.in', 'HOSTEL - 4', '29', '22BSC048', 0.00, 0.00, NULL),
('22BSC052', 'DHRUVI V PATEL', '8347795432', '22BSC052@charusat.edu.in', 'HOSTEL - 4', '61', '22BSC052', 0.00, NULL, NULL),
('22BSC060', 'HETVIBEN V PATEL', '7201838552', '22BSC060@charusat.edu.in', 'HOSTEL - 4', '42', '22BSC060', 0.00, NULL, NULL),
('22BSC061', 'HONEY B PATEL', '7486878746', '22BSC061@charusat.edu.in', 'HOSTEL - 4', '39', '22BSC061', 0.00, 0.00, NULL),
('22BSC062', 'JAIMINI J PATEL', '8200235394', '22BSC062@charusat.edu.in', 'HOSTEL - 4', '32', '22BSC062', 0.00, 0.00, NULL),
('22BSC068', 'KRUPA S PATEL', '7359204180', '22BSC068@charusat.edu.in', 'HOSTEL - 4', '36', '22BSC068', 0.00, NULL, NULL),
('22BSC074', 'NABILA I PATEL', '9712991491', '22BSC074@charusat.edu.in', 'HOSTEL - 4', '29', '22BSC074', 0.00, 0.00, NULL),
('22BSC078', 'PREYA D PATEL', '6354871093', '22BSC078@charusat.edu.in', 'HOSTEL - 4', '29', '22BSC078', 0.00, 0.00, NULL),
('22BSC082', 'SALONI V PATEL', '9106090394', '22BSC082@charusat.edu.in', 'HOSTEL - 4', '36', '22BSC082', 0.00, NULL, NULL),
('22BSC094', 'YASHVI P PATEL', '8980385044', '22BSC094@charusat.edu.in', 'HOSTEL - 4', '41', '22BSC094', 0.00, 0.00, NULL),
('22BSC096', 'YUKTA PATHAK', '8160775308', '22BSC096@charusat.edu.in', 'HOSTEL - 4', '11', '22BSC096', 0.00, 0.00, NULL),
('22BSC099', 'PRIYANKA V PATIL', '8849662304', '22BSC099@charusat.edu.in', 'HOSTEL - 4', '41', '22BSC099', 0.00, 0.00, NULL),
('22BSC104', 'MADHAVI V RANA', '7359329811', '22BSC104@charusat.edu.in', 'HOSTEL - 4', '39', '22BSC104', 0.00, 0.00, NULL),
('22BSC105', 'VIDHATRI ROY', '8849537146', '22BSC105@charusat.edu.in', 'HOSTEL - 4', '27', '22BSC105', 0.00, 0.00, NULL),
('22BSC106', 'ANWESHA A SAHA', '7359733089', '22BSC106@charusat.edu.in', 'HOSTEL - 4', '14', '22BSC106', 0.00, NULL, NULL),
('22BSC116', 'MANSI SHIROYA', '7862058702', '22BSC116@charusat.edu.in', 'HOSTEL - 4', '14', '22BSC116', 0.00, NULL, NULL),
('22BSC118', 'MIMANSHA M SINHA', '8210592063', '22BSC118@charusat.edu.in', 'HOSTEL - 4', '53', '22BSC118', 0.00, 0.00, NULL),
('22BSC120', 'SONI RITESH ZEEL', '9904482018', '22BSC120@charusat.edu.in', 'HOSTEL - 4', '14', '22BSC120', 0.00, NULL, NULL),
('22BSC122', 'LAVINA H TAKHTANI', '8329987314', '22BSC122@charusat.edu.in', 'HOSTEL - 4', '28', '22BSC122', 0.00, NULL, NULL),
('22BSC124', 'VEDANSHI D THAKKAR', '9913049449', '22BSC124@charusat.edu.in', 'HOSTEL - 4', '11', '22BSC124', 0.00, 0.00, NULL),
('22BSC125', 'JANVI K THANKI', '7859870627', '22BSC125@charusat.edu.in', 'HOSTEL - 4', '22', '22BSC125', 0.00, 0.00, NULL),
('22BSC126', 'PRACHI K THUMAR', '8200104879', '22BSC126@charusat.edu.in', 'HOSTEL - 4', '29', '22BSC126', 0.00, 0.00, NULL),
('22BSC130', 'ANERI VAGHELA', '6352036016', '22BSC130@charusat.edu.in', 'HOSTEL - 4', '53', '22BSC130', 0.00, 0.00, NULL),
('22BSC135', 'SAKSHI H SHAH', '7737161430', '22BSC135@charusat.edu.in', 'HOSTEL - 4', '41', '22BSC135', 0.00, 0.00, NULL),
('22BSC73', 'MITSU N PATEL', '9106099024', '22BSC73@charusat.edu.in', 'HOSTEL - 4', '11', '22BSC73', 0.00, 0.00, NULL),
('22BSIT024', 'KHUSHBOO DHARMANI', '9509245144', '22BSIT024@charusat.edu.in', 'HOSTEL - 5', '212', '22BSIT024', 0.00, 0.00, NULL),
('22BSIT039', 'BHUMIKA S JAYSWAL', '9327792329', '22BSIT039@charusat.edu.in', 'HOSTEL - 5', '212', '22BSIT039', 0.00, 0.00, NULL),
('22BSIT048', 'HARVI LADANI', '9016743643', '22BSIT048@charusat.edu.in', 'HOSTEL - 5', '311', '22BSIT048', 0.00, 0.00, NULL),
('22BSIT053', 'KAVYA B METHA', '9316068668', '22BSIT053@charusat.edu.in', 'HOSTEL - 5', '407', '22BSIT053', 0.00, NULL, NULL),
('22BSIT054', 'ABHIRUCHI A MODAK', '8320789338', '22BSIT054@charusat.edu.in', 'HOSTEL - 5', '408', '22BSIT054', 0.00, 0.00, NULL),
('22BSIT060', 'DIYA P PANCHAL', '9714283280', '22BSIT060@charusat.edu.in', 'HOSTEL - 5', '407', '22BSIT060', 0.00, NULL, NULL),
('22BSIT062', 'KALAGI V PANDYA', '7862031032', '22BSIT062@charusat.edu.in', 'HOSTEL - 5', '710', '22BSIT062', 0.00, 0.00, NULL),
('22BSIT079', 'DIYA K PATEL', '8160777429', '22BSIT079@charusat.edu.in', 'HOSTEL - 3', '43', '22BSIT079', 0.00, NULL, NULL),
('22BSIT154', 'BANSI  VANPARIA', '7041751333', '22BSIT154@charusat.edu.in', 'HOSTEL - 5', '403', '22BSIT154', 0.00, 0.00, NULL),
('22BSIT156', 'NIRALI ADROJA', '9265891191', '22BSIT156@charusat.edu.in', 'HOSTEL - 3', '51', '22BSIT156', 0.00, 0.00, NULL),
('22BSMT004', 'DRASHTI DEV MURARI', '9510783216', '22BSMT004@charusat.edu.in', 'HOSTEL - 2', '25', '22BSMT004', 0.00, NULL, NULL),
('22BSMT021', 'SANA SEDAT', '9429978600', '22BSMT021@charusat.edu.in', 'HOSTEL - 2', '71', '22BSMT021', 0.00, NULL, NULL),
('22BT019', 'ZEEL B PADSALA', '9664893907', '22BT019@charusat.edu.in', 'HOSTEL - 2', '17', '22BT019', 0.00, NULL, NULL),
('22BTAT013', 'MAULI Y RAO', '6351659449', '22BTAT013@charusat.edu.in', 'HOSTEL - 2', '74', '22BTAT013', 0.00, NULL, NULL),
('22CE004', 'TANVI R BALSARA', '7226940633', '22CE004@charusat.edu.in', 'HOSTEL - 3', '9', '22CE004', 0.00, NULL, NULL),
('22CE007', 'NAISARGI V BHATT', '9104465175', '22CE007@charusat.edu.in', 'HOSTEL - 3', '42', '22CE007', 0.00, NULL, NULL),
('22CE0120', 'PANKTI D SHAH', '8320144714', '22CE0120@charusat.edu.in', 'HOSTEL - 3', '52', '22CE0120', 0.00, 0.00, NULL),
('22CE0121', 'TIRTHA K SHAH', '8320200160', '22CE0121@charusat.edu.in', 'HOSTEL - 3', '73', '22CE0121', 0.00, NULL, NULL),
('22CE028', 'ROSHANI G DHOLARIYA', '9537742100', '22CE028@charusat.edu.in', 'HOSTEL - 3', '47', '22CE028', 0.00, NULL, NULL),
('22CE029', 'SALONI KUMANBHAI GADHIYA', '9327411550', '22CE029@charusat.edu.in', 'HOSTEL - 3', '30', '22CE029', 0.00, 0.00, NULL),
('22CE047', 'SUHASI  J KANANI', '8780850751', '22CE047@charusat.edu.in', 'HOSTEL - 3', '62', '22CE047', 0.00, 0.00, NULL),
('22CE059', 'DIYA Y MAHESHWARI', '8735097097', '22CE059@charusat.edu.in', 'HOSTEL - 3', '28', '22CE059', 0.00, 0.00, NULL),
('22CE072', 'PALAK V NADPARA', '9265746189', '22CE072@charusat.edu.in', 'HOSTEL - 3', '56', '22CE072', 0.00, NULL, NULL),
('22CE073', 'BHAVI P NAIK', '9737916317', '22CE073@charusat.edu.in', 'HOSTEL - 3', '61', '22CE073', 0.00, 0.00, NULL),
('22CE080', 'ANJALIKUMARI M PARMAR', '6355053794', '22CE080@charusat.edu.in', 'HOSTEL - 5', '208', '22CE080', 0.00, NULL, NULL),
('22CE101', 'TISHA VIRAG PATEL', '9327955353', '22CE101@charusat.edu.in', 'HOSTEL - 3', '38', '22CE101', 0.00, 0.00, NULL),
('22CE106', 'POOJA M RAMANI', '7046135619', '22CE106@charusat.edu.in', 'HOSTEL - 3', '24', '22CE106', 0.00, NULL, NULL),
('22CE107', 'RIDHDHI A RAMANUJ', '8128390948', '22CE107@charusat.edu.in', 'HOSTEL - 3', '39', '22CE107', 0.00, 0.00, NULL),
('22CE115', 'BHAKTI A SAVALIYA', '8849481500', '22CE115@charusat.edu.in', 'HOSTEL - 3', '56', '22CE115', 0.00, 0.00, NULL),
('22CE117', 'HARVI P SHAH', '9328333379', '22CE117@charusat.edu.in', 'HOSTEL - 3', '52', '22CE117', 0.00, 0.00, NULL),
('22CE122', 'ANJALI SHARMA', '9313895734', '22CE122@charusat.edu.in', 'HOSTEL - 3', '56', '22CE122', 0.00, NULL, NULL),
('22CE124', 'DISHA JAGDISHBHAI SUDANI', '9925185445', '22CE124@charusat.edu.in', 'HOSTEL - 3', '30', '22CE124', 0.00, 0.00, NULL),
('22CE127', 'YASHVI M THAKKAR', '7778933822', '22CE127@charusat.edu.in', 'HOSTEL - 3', '36', '22CE127', 0.00, NULL, NULL),
('22CS006', 'HASTI R BABRIYA', '7778072960', '22CS006@charusat.edu.in', 'HOSTEL - 3', '60', '22CS006', 0.00, 0.00, NULL),
('22CS012', 'PRIYANSI PRAVINBHAI BORDA', '8866002074', '22CS012@charusat.edu.in', 'HOSTEL - 3', '30', '22CS012', 0.00, 0.00, NULL),
('22CS017', 'DRASHTI S DALSANIYA', '7490909267', '22CS017@charusat.edu.in', 'HOSTEL - 4', '58', '22CS017', 0.00, 0.00, NULL),
('22CS018', 'DEVANSHI M DAVE', '9106528360', '22CS018@charusat.edu.in', 'HOSTEL - 3', 'C-14', '22CS018', 0.00, 0.00, NULL),
('22CS021', 'HINAL J DOBARIA', '8799676957', '22CS021@charusat.edu.in', 'HOSTEL - 3', '25', '22CS021', 0.00, NULL, NULL),
('22CS024', 'JULIBEN S GOPANI', '9726197170', '22CS024@charusat.edu.in', 'HOSTEL - 3', '24', '22CS024', 0.00, NULL, NULL),
('22CS030', 'PIYU K KASUNDRA', '7069058380', '22CS030@charusat.edu.in', 'HOSTEL - 3', '60', '22CS030', 0.00, NULL, NULL),
('22CS032', 'DIYA J  KOYANI', '7043462685', '22CS032@charusat.edu.in', 'HOSTEL - 3', '9', '22CS032', 0.00, 0.00, NULL),
('22CS036', 'DHRUVI H MAHALE', '9328068864', '22CS036@charusat.edu.in', 'HOSTEL - 5', '302', '22CS036', 0.00, 0.00, NULL),
('22CS050', 'BINDIYA S PATEL', '8200858776', '22CS050@charusat.edu.in', 'HOSTEL - 3', '69', '22CS050', 0.00, 0.00, NULL),
('22CS053', 'DHRUVI K PATEL', '8980326804', '22CS053@charusat.edu.in', 'HOSTEL - 5', '405', '22CS053', 0.00, NULL, NULL),
('22CS070', 'PRAGTI M  BAVARA', '9727633500', '22CS070@charusat.edu.in', 'HOSTEL - 4', '58', '22CS070', 0.00, 0.00, NULL),
('22CS074', 'DHARMI RUPAPARA', '9727080956', '22CS074@charusat.edu.in', 'HOSTEL - 3', '21', '22CS074', 0.00, 0.00, NULL),
('22CS078', 'ZANKHANABEN K SAVSANI', '6351943396', '22CS078@charusat.edu.in', 'HOSTEL - 3', '39', '22CS078', 0.00, 0.00, NULL),
('22CS082', 'YASHVI K SUVARIYA', '9879806717', '22CS082@charusat.edu.in', 'HOSTEL - 3', '49', '22CS082', 0.00, 0.00, NULL),
('22CS091', 'SHREYA N VEKARIYA', '9429345145', '22CS091@charusat.edu.in', 'HOSTEL - 3', '24', '22CS091', 0.00, NULL, NULL),
('22CS094', 'KENISHA B VORA', '9909103131', '22CS094@charusat.edu.in', 'HOSTEL - 3', '49', '22CS094', 0.00, 0.00, NULL),
('22DCE004', 'DHANSHREE R BALAR', '7801972817', '22DCE004@charusat.edu.in', 'HOSTEL - 5', '212', '22DCE004', 0.00, NULL, NULL),
('22DCE023', 'ZEEL S DHADUK', '9426683418', '22DCE023@charusat.edu.in', 'HOSTEL - 3', '29', '22DCE023', 0.00, NULL, NULL),
('22DCE027', 'DIYA P DOSHI', '9974986691', '22DCE027@charusat.edu.in', 'HOSTEL - 3', '4', '22DCE027', 0.00, 0.00, NULL),
('22DCE032', 'JANVI A  GEVARIYA', '9023990622', '22DCE032@charusat.edu.in', 'HOSTEL - 3', '16', '22DCE032', 0.00, 0.00, NULL),
('22DCE034', 'VRUSHTI H GHADIYA', '8780096707', '22DCE034@charusat.edu.in', 'HOSTEL - 3', 'C-04', '22DCE034', 0.00, 0.00, NULL),
('22DCE041', 'KIRTIKA K KACHHIYA', '9313014683', '22DCE041@charusat.edu.in', 'HOSTEL - 3', 'C-04', '22DCE041', 0.00, 0.00, NULL),
('22DCE042', 'REEVA K KANSAGARA', '8799113004', '22DCE042@charusat.edu.in', 'HOSTEL - 3', '29', '22DCE042', 0.00, NULL, NULL),
('22DCE045', 'ARCHANA KOTADIYA', '9328176654', '22DCE045@charusat.edu.in', 'HOSTEL - 3', '21', '22DCE045', 0.00, NULL, NULL),
('22DCE061', 'KRUPA D PARMAR', '6353227862', '22DCE061@charusat.edu.in', 'HOSTEL - 3', '16', '22DCE061', 0.00, NULL, NULL),
('22DCE062', 'MAHEK B  PARMAR', '8160565698', '22DCE062@charusat.edu.in', 'HOSTEL - 3', '46', '22DCE062', 0.00, 0.00, NULL),
('22DCE076', 'KRISHNA D PATEL', '7874190191', '22DCE076@charusat.edu.in', 'HOSTEL - 3', '61', '22DCE076', 0.00, 0.00, NULL),
('22DCE085', 'UTSHVI H PATEL', '6359616546', '22DCE085@charusat.edu.in', 'HOSTEL - 3', '36', '22DCE085', 0.00, 0.00, NULL),
('22DCE086', 'VRUTTI A PATEL', '9537262643', '22DCE086@charusat.edu.in', 'HOSTEL - 3', '75', '22DCE086', 0.00, 0.00, NULL),
('22DCE087', 'YASHVI KAJALKUMAR PATEL', '9979866281', '22DCE087@charusat.edu.in', 'HOSTEL - 3', '39', '22DCE087', 0.00, 0.00, NULL),
('22DCE088', 'YASHAVI R PATEL', '7226846435', '22DCE088@charusat.edu.in', 'HOSTEL - 3', '75', '22DCE088', 0.00, 0.00, NULL),
('22DCE089', 'ZEEL G PATEL', '6354055202', '22DCE089@charusat.edu.in', 'HOSTEL - 3', '42', '22DCE089', 0.00, NULL, NULL),
('22DCE092', 'YASHVI J POPAT', '9712634451', '22DCE092@charusat.edu.in', 'HOSTEL - 3', '36', '22DCE092', 0.00, 0.00, NULL),
('22DCE098', 'VANSHITA L RAISINGHANI', '8200768018', '22DCE098@charusat.edu.in', 'HOSTEL - 3', '46', '22DCE098', 0.00, 0.00, NULL),
('22DCE116', 'TANVI I SHEIKH', '9316794789', '22DCE116@charusat.edu.in', 'HOSTEL - 3', '4', '22DCE116', 0.00, 0.00, NULL),
('22DCE127', 'MANASVI V VACHHANI', '9998087570', '22DCE127@charusat.edu.in', 'HOSTEL - 3', '67', '22DCE127', 0.00, NULL, NULL),
('22DCS005', 'MADHURI BAROCHIYA', '9909584551', '22DCS005@charusat.edu.in', 'HOSTEL - 3', '31', '22DCS005', 0.00, 0.00, NULL),
('22DCS008', 'DRASHTI U BHATT', '8849694957', '22DCS008@charusat.edu.in', 'HOSTEL - 3', '31', '22DCS008', 0.00, NULL, NULL),
('22DCS009', 'RUTVAA P BHATT', '8320165925', '22DCS009@charusat.edu.in', 'HOSTEL - 3', '28', '22DCS009', 0.00, NULL, NULL),
('22DCS029', 'PEARL D JOTANIA', '6354437785', '22DCS029@charusat.edu.in', 'HOSTEL - 3', '66', '22DCS029', 0.00, 0.00, NULL),
('22DCS039', 'PRATISHTHA D MAKHIJANI', '9426758199', '22DCS039@charusat.edu.in', 'HOSTEL - 3', '68', '22DCS039', 0.00, NULL, NULL),
('22DCS040', 'NIHAREEKA M MAKWANA', '9974384316', '22DCS040@charusat.edu.in', 'HOSTEL - 3', '29', '22DCS040', 0.00, NULL, NULL),
('22DCS086', 'YASHVI A PATEL', '7621982194', '22DCS086@charusat.edu.in', 'HOSTEL - 3', '42', '22DCS086', 0.00, NULL, NULL),
('22DCS089', 'DHRUVI R PIPALVA', '7862096228', '22DCS089@charusat.edu.in', 'HOSTEL - 3', 'C-16', '22DCS089', 0.00, NULL, NULL),
('22DCS100', 'KRUTI H SAKARIYA', '7862912097', '22DCS100@charusat.edu.in', 'HOSTEL - 3', '42', '22DCS100', 0.00, 0.00, NULL),
('22DCS123', 'SUCHI A VADGAMA', '9574167971', '22DCS123@charusat.edu.in', 'HOSTEL - 3', '46', '22DCS123', 0.00, 0.00, NULL),
('22DCS129', 'HASTI VAKANI', '9374615759', '22DCS129@charusat.edu.in', 'HOSTEL - 3', '67', '22DCS129', 0.00, NULL, NULL),
('22DIT027', 'SHRADDHA R  LAL', '9913208633', '22DIT027@charusat.edu.in', 'HOSTEL - 3', '68', '22DIT027', 0.00, NULL, NULL),
('22DIT060', 'TWISHA P PATEL', '9662348596', '22DIT060@charusat.edu.in', 'HOSTEL - 3', '9', '22DIT060', 0.00, 0.00, NULL),
('22DIT077', 'KRIMA P SHUKLA', '9727918205', '22DIT077@charusat.edu.in', 'HOSTEL - 3', '21', '22DIT077', 0.00, 0.00, NULL),
('22DIT088', 'VIMMY VERMA', '8849568133', '22DIT088@charusat.edu.in', 'HOSTEL - 4', '16', '22DIT088', 0.00, 0.00, NULL),
('22DRBIO002', 'DHARTI  G  BHADLA', '9574802431', '22DRBIO002@charusat.edu.in', 'HOSTEL - 4', 'C-06', '22DRBIO002', 0.00, NULL, NULL),
('22DRBIO004', 'MEETKUNWAR G DAHIYA', '8469163592', '22DRBIO004@charusat.edu.in', 'HOSTEL - 4', '5', '22DRBIO004', 0.00, NULL, NULL),
('22DRBIO008', 'HARDI D PATEL', '9601601601', '22DRBIO008@charusat.edu.in', 'HOSTEL - 4', '6', '22DRBIO008', 0.00, NULL, NULL),
('22DRMLT007', 'PRAGNA   UKANI', '9727393771', '22DRMLT007@charusat.edu.in', 'HOSTEL - 4', '43', '22DRMLT007', 0.00, NULL, NULL),
('22DRPHY007', 'AAYUSHI SHAH', '6354253338', '22DRPHY007@charusat.edu.in', 'HOSTEL - 4', '15', '22DRPHY007', 0.00, NULL, NULL),
('22EC018', 'HETVI N KACHHIYA', '9773121986', '22EC018@charusat.edu.in', 'HOSTEL - 5', '304', '22EC018', 0.00, 0.00, NULL),
('22EC019', 'KRISHNA A KACHHIYA', '7990132440', '22EC019@charusat.edu.in', 'HOSTEL - 5', '304', '22EC019', 0.00, 0.00, NULL),
('22EC042', 'RIYA S PATEL', '8160411095', '22EC042@charusat.edu.in', 'HOSTEL - 3', '28', '22EC042', 0.00, 0.00, NULL),
('22EC059', 'SAUMYAA N SHAH', '9558644021', '22EC059@charusat.edu.in', 'HOSTEL - 3', 'C-17', '22EC059', 0.00, NULL, NULL),
('22EC061', 'NITISHABEN P THAKOR', '9870058532', '22EC061@charusat.edu.in', 'HOSTEL - 3', '43', '22EC061', 0.00, 0.00, NULL),
('22EC065', 'AAYUSHI V VIROJA', '6356561006', '22EC065@charusat.edu.in', 'HOSTEL - 3', '4', '22EC065', 0.00, 0.00, NULL),
('22ECO57', 'DIYA T SHAH', '9173355612', '22ECO57@charusat.edu.in', 'HOSTEL - 3', '43', '22ECO57', 0.00, NULL, NULL),
('22GNM011', 'KRUPALBEN S MAHERA', '8780793912', '22GNM011@charusat.edu.in', 'HOSTEL - 1', '33', '22GNM011', 0.00, NULL, NULL),
('22GNM020', 'KRITIKA S RAVAT', '6351684070', '22GNM020@charusat.edu.in', 'HOSTEL - 1', '48', '22GNM020', 0.00, NULL, NULL),
('22IT002', 'SHRUTI ANGHAN', '9313730083', '22IT002@charusat.edu.in', 'HOSTEL - 3', 'C-16', '22IT002', 0.00, NULL, NULL),
('22IT009', 'DHRUVIBEN P BHIMANI', '9558472733', '22IT009@charusat.edu.in', 'HOSTEL - 3', '60', '22IT009', 0.00, 0.00, NULL),
('22IT022', 'PRIYANSHI DESAI', '9898018565', '22IT022@charusat.edu.in', 'HOSTEL - 3', 'C-17', '22IT022', 0.00, NULL, NULL),
('22IT023', 'VISHWA N DESAI', '9327986465', '22IT023@charusat.edu.in', 'HOSTEL - 3', '68', '22IT023', 0.00, NULL, NULL),
('22IT027', 'LINA DHOLARIYA', '7859898084', '22IT027@charusat.edu.in', 'HOSTEL - 3', '56', '22IT027', 0.00, NULL, NULL),
('22IT037', 'VIDHI HARWANI', '9313800109', '22IT037@charusat.edu.in', 'HOSTEL - 3', 'C-13', '22IT037', 0.00, 0.00, NULL),
('22IT041', 'PRATVI D HIRPARA', '7226960305', '22IT041@charusat.edu.in', 'HOSTEL - 3', '24', '22IT041', 0.00, NULL, NULL),
('22IT073', 'MITALI A MARKANA', '8780892157', '22IT073@charusat.edu.in', 'HOSTEL - 4', '63', '22IT073', 0.00, 0.00, NULL),
('22IT084', 'SIDDHI R PANDYA', '7779018664', '22IT084@charusat.edu.in', 'HOSTEL - 3', '67', '22IT084', 0.00, 0.00, NULL),
('22IT091', 'BHUMI R PATEL', '7984411453', '22IT091@charusat.edu.in', 'HOSTEL - 3', '52', '22IT091', 0.00, 0.00, NULL),
('22IT1054', 'KAVYA H KARIA', '7383248900', '22IT1054@charusat.edu.in', 'HOSTEL - 3', '60', '22IT1054', 0.00, NULL, NULL),
('22IT106', 'PRINCEE A PATEL', '9106802175', '22IT106@charusat.edu.in', 'HOSTEL - 3', '4', '22IT106', 0.00, 0.00, NULL),
('22IT1093', 'HETAVI R PATEL', '9558050204', '22IT1093@charusat.edu.in', 'HOSTEL - 3', '67', '22IT1093', 0.00, NULL, NULL),
('22IT117', 'VANSHIKA I PATEL', '9586646047', '22IT117@charusat.edu.in', 'HOSTEL - 3', '52', '22IT117', 0.00, 0.00, NULL),
('22IT123', 'ISHITA MANSHUKHBHAI PATOLIYA', '9054540270', '22IT123@charusat.edu.in', 'HOSTEL - 3', '30', '22IT123', 0.00, 0.00, NULL),
('22IT149', 'ZEEL K VACHHANI', '9726116566', '22IT149@charusat.edu.in', 'HOSTEL - 4', '63', '22IT149', 0.00, 0.00, NULL),
('22IT150', 'BRINDA S VAGHASIYA', '9723275264', '22IT150@charusat.edu.in', 'HOSTEL - 3', 'C-17', '22IT150', 0.00, 0.00, NULL),
('22IT154', 'PRIYA D VAGHELA', '9104426305', '22IT154@charusat.edu.in', 'HOSTEL - 3', '36', '22IT154', 0.00, 0.00, NULL),
('22IT156', 'HIRVA P VYS', '9909927497', '22IT156@charusat.edu.in', 'HOSTEL - 3', 'C-17', '22IT156', 0.00, NULL, NULL),
('22IT58', 'PRUSHTI R KATHROTIYA', '6353022508', '22IT58@charusat.edu.in', 'HOSTEL - 3', '21', '22IT58', 0.00, 0.00, NULL),
('22TBPT048', 'KRISHA D KUNADIYA', '8849642441', '22TBPT048@charusat.edu.in', 'HOSTEL - 2', '73', '22TBPT048', 0.00, NULL, NULL),
('22TBT004', 'KESHVI LAKHWALA', '9727188000', '22TBT004@charusat.edu.in', 'HOSTEL - 2', '56', '22TBT004', 0.00, NULL, NULL),
('22TDCE121', 'NISHA M DARJI', '9725460216', '22TDCE121@charusat.edu.in', 'HOSTEL - 3', '46', '22TDCE121', 0.00, 0.00, NULL),
('22TDCE135', 'VIDHYA NITESHBHAI MODHA', '9510166405', '22TDCE135@charusat.edu.in', 'HOSTEL - 3', '29', '22TDCE135', 0.00, NULL, NULL),
('23AIML002', 'JAIMI M AHAIR', '9979086556', '23AIML002@charusat.edu.in', 'HOSTEL - 3', '74', '23AIML002', 0.00, 0.00, NULL),
('23AIML003', 'ANSHU BHATT', '9824828633', '23AIML003@charusat.edu.in', 'HOSTEL - 3', '65', '23AIML003', 0.00, 0.00, NULL),
('23AIML005', 'BANSARI S BHANDARI', '6352382183', '23AIML005@charusat.edu.in', 'HOSTEL - 5', '211', '23AIML005', 0.00, 0.00, NULL),
('23AIML016', 'KHUSHIBEN V DONGA', '9537566839', '23AIML016@charusat.edu.in', 'HOSTEL - 3', '55', '23AIML016', 0.00, 0.00, NULL),
('23AIML037', 'KASHAK S MODI', '9426482910', '23AIML037@charusat.edu.in', 'HOSTEL - 5', '112', '23AIML037', 0.00, 0.00, NULL),
('23AIML038', 'DHWANI NAVADIA', '9978926251', '23AIML038@charusat.edu.in', 'HOSTEL - 5', '612', '23AIML038', 0.00, NULL, NULL),
('23AIML043', 'NENCY A PANSURIYA', '9016735726', '23AIML043@charusat.edu.in', 'HOSTEL - 3', '74', '23AIML043', 0.00, 0.00, NULL),
('23AIML057', 'PUJA N RACHCHH', '9328667159', '23AIML057@charusat.edu.in', 'HOSTEL - 3', '65', '23AIML057', 0.00, 0.00, NULL),
('23AIML059', 'TITHI P RADIA', '9428290181', '23AIML059@charusat.edu.in', 'HOSTEL - 3', '66', '23AIML059', 0.00, 0.00, NULL),
('23AIML069', 'UNNATI P TANK', '9054444165', '23AIML069@charusat.edu.in', 'HOSTEL - 3', '65', '23AIML069', 0.00, 0.00, NULL),
('23AIMLA009', 'KRISHNA CHODVADAYA', '6354089449', '23AIMLA009@charusat.edu.in', 'HOSTEL - 3', '62', '23AIMLA009', 0.00, NULL, NULL),
('23AML032', 'JULIBEN KYADA', '8866724222', '23AML032@charusat.edu.in', 'HOSTEL - 3', '55', '23AML032', 0.00, 0.00, NULL),
('23AOC008', 'ANJALI R KANTARIYA', '8200601885', '23AOC008@charusat.edu.in', 'HOSTEL - 4', '57', '23AOC008', 0.00, NULL, NULL),
('23AOC018', 'NANDANI M PATEL', '9510107787', '23AOC018@charusat.edu.in', 'HOSTEL - 4', '23', '23AOC018', 0.00, 0.00, NULL),
('23AOC022', 'ANJALI J TALAVIYA', '8799225827', '23AOC022@charusat.edu.in', 'HOSTEL - 4', '6', '23AOC022', 0.00, 0.00, NULL),
('23AOC025', 'AXITA P UPADHYAY', '6353238028', '23AOC025@charusat.edu.in', 'HOSTEL - 4', '23', '23AOC025', 0.00, 0.00, NULL),
('23BBA038', 'JANU P JOSHI', '9664617505', '23BBA038@charusat.edu.in', 'HOSTEL - 5', '108', '23BBA038', 0.00, 0.00, NULL),
('23BBA040', 'KRISHNA N KADVANI', '9173307077', '23BBA040@charusat.edu.in', 'HOSTEL - 5', '505', '23BBA040', 0.00, NULL, NULL),
('23BBA050', 'KHUSHI A DADHANIA', '6353332807', '23BBA050@charusat.edu.in', 'HOSTEL - 5', '701', '23BBA050', 0.00, 0.00, NULL),
('23BBA053', 'DHRUVI KANERIA', '9313886734', '23BBA053@charusat.edu.in', 'HOSTEL - 5', '105', '23BBA053', 0.00, NULL, NULL),
('23BBA079', 'BANSI D PATEL', '7600610220', '23BBA079@charusat.edu.in', 'HOSTEL - 5', '505', '23BBA079', 0.00, 0.00, NULL),
('23BBA090', 'HANIBEN J PATEL', '8780047568', '23BBA090@charusat.edu.in', 'HOSTEL - 5', '107', '23BBA090', 0.00, NULL, NULL),
('23BBA136', 'DHARA H PATIDAR', '9429529340', '23BBA136@charusat.edu.in', 'HOSTEL - 5', '302', '23BBA136', 0.00, NULL, NULL),
('23BBA139', 'HETVI G PINDORIYA', '6358154862', '23BBA139@charusat.edu.in', 'HOSTEL - 5', '301', '23BBA139', 0.00, NULL, NULL),
('23BBA141', 'DIYA K PRAJAPTI', '8128262100', '23BBA141@charusat.edu.in', 'HOSTEL - 5', '107', '23BBA141', 0.00, 0.00, NULL),
('23BBA156', 'DARSHITA B SAVALIYA', '8866463730', '23BBA156@charusat.edu.in', 'HOSTEL - 5', '703', '23BBA156', 0.00, 0.00, NULL),
('23BBA182', 'HETVI TALAVIYA', '8160568810', '23BBA182@charusat.edu.in', 'HOSTEL - 5', '305', '23BBA182', 0.00, 0.00, NULL),
('23BBA183', 'DIYA R TANTRAPAL', '9054004129', '23BBA183@charusat.edu.in', 'HOSTEL - 5', '102', '23BBA183', 0.00, NULL, NULL),
('23BBA197', 'BHARGAVI A ZALA', '9724127854', '23BBA197@charusat.edu.in', 'HOSTEL - 5', '404', '23BBA197', 0.00, NULL, NULL),
('23BBAB015', 'KANIKA Y GUPTA', '9302567727', '23BBAB015@charusat.edu.in', 'HOSTEL - 5', '602', '23BBAB015', 0.00, NULL, NULL);
INSERT INTO `hostel_student` (`student_id`, `fullname`, `phone_no`, `email`, `hostel`, `room_no`, `password`, `first`, `second`, `full`) VALUES
('23BBAB025', 'KRISHA PANSURIYA', '9913969549', '23BBAB025@charusat.edu.in', 'HOSTEL - 5', '505', '23BBAB025', 0.00, NULL, NULL),
('23BBAB033', 'DHRUVIBEN Y PATEL', '6354215458', '23BBAB033@charusat.edu.in', 'HOSTEL - 5', '210', '23BBAB033', 0.00, NULL, NULL),
('23BBAB055', 'HETAVI V RABADIA', '9824536636', '23BBAB055@charusat.edu.in', 'HOSTEL - 5', '211', '23BBAB055', 0.00, 0.00, NULL),
('23BBAE024', 'HAPPY J MAYANI', '6355572443', '23BBAE024@charusat.edu.in', 'HOSTEL - 5', '504', '23BBAE024', 0.00, NULL, NULL),
('23BBAE029', 'AMIBEN M PANCHOTIYA', '9099779753', '23BBAE029@charusat.edu.in', 'HOSTEL - 5', '301', '23BBAE029', 0.00, 0.00, NULL),
('23BBAE040', 'DRASHTI FINAVA', '6354185541', '23BBAE040@charusat.edu.in', 'HOSTEL - 5', '603', '23BBAE040', 0.00, NULL, NULL),
('23BC002', 'DHARA  JADAV', '7041688686', '23BC002@charusat.edu.in', 'HOSTEL - 4', '4', '23BC002', 0.00, 0.00, NULL),
('23BC008', 'YUTI H PATEL', '9313252402', '23BC008@charusat.edu.in', 'HOSTEL - 4', '62', '23BC008', 0.00, 0.00, NULL),
('23BC009', 'ISHA PONKIYA', '7046904543', '23BC009@charusat.edu.in', 'HOSTEL - 4', '33', '23BC009', 0.00, 0.00, NULL),
('23BC012', 'KRISHNA R SUTARIYA', '9313669447', '23BC012@charusat.edu.in', 'HOSTEL - 4', '62', '23BC012', 0.00, 0.00, NULL),
('23BCA008', 'KASAK D AWTANI', '7778871718', '23BCA008@charusat.edu.in', 'HOSTEL - 5', '610', '23BCA008', 0.00, NULL, NULL),
('23BCA044', 'ISHABEN Y DARJI', '9327208343', '23BCA044@charusat.edu.in', 'HOSTEL - 5', '214', '23BCA044', 0.00, 0.00, NULL),
('23BCA076', 'HEMANGI M HINDOCHA', '8849089390', '23BCA076@charusat.edu.in', 'HOSTEL - 5', '509', '23BCA076', 0.00, 0.00, NULL),
('23BCA081', 'ITALIYA VANSHVI', '9925171441', '23BCA081@charusat.edu.in', 'HOSTEL - 5', '501', '23BCA081', 0.00, NULL, NULL),
('23BCA085', 'DRASHTI JIYANI', '9909178036', '23BCA085@charusat.edu.in', 'HOSTEL - 5', '702', '23BCA085', 0.00, NULL, NULL),
('23BCA114', 'HETVI M KAPURIYA', '9712704179', '23BCA114@charusat.edu.in', 'HOSTEL - 5', '312', '23BCA114', 0.00, NULL, NULL),
('23BCA135', 'AYUSHI P LAKHANI', '9316509495', '23BCA135@charusat.edu.in', 'HOSTEL - 5', '206', '23BCA135', 0.00, 0.00, NULL),
('23BCA166', 'GRISHMA PADARIYA', '6353060336', '23BCA166@charusat.edu.in', 'HOSTEL - 5', '205', '23BCA166', 0.00, NULL, NULL),
('23BCA167', 'HASTI S PADSALA', '7984382404', '23BCA167@charusat.edu.in', 'HOSTEL - 5', '305', '23BCA167', 0.00, 0.00, NULL),
('23BCA170', 'GARVI R PAGHDAR', '9016290549', '23BCA170@charusat.edu.in', 'HOSTEL - 5', '309', '23BCA170', 0.00, 0.00, NULL),
('23BCA180', 'ISHA PANSURIYA', '9510855177', '23BCA180@charusat.edu.in', 'HOSTEL - 5', '314', '23BCA180', 0.00, 0.00, NULL),
('23BCA196', 'ASHITI PATEL', '8238141492', '23BCA196@charusat.edu.in', 'HOSTEL - 5', '311', '23BCA196', 0.00, 0.00, NULL),
('23BCA210', 'DHRUVIBEN M PATEL', '7859933738', '23BCA210@charusat.edu.in', 'HOSTEL - 5', '214', '23BCA210', 0.00, 0.00, NULL),
('23BCA218', 'HARMI S PATEL', '8511887525', '23BCA218@charusat.edu.in', 'HOSTEL - 5', '314', '23BCA218', 0.00, 0.00, NULL),
('23BCA221', 'HETVI PATEL', '9328066714', '23BCA221@charusat.edu.in', 'HOSTEL - 5', '311', '23BCA221', 0.00, NULL, NULL),
('23BCA223', 'HIR M PATEL', '9638505983', '23BCA223@charusat.edu.in', 'HOSTEL - 5', '204', '23BCA223', 0.00, NULL, NULL),
('23BCA228', 'JANVI T PATEL', '6353701902', '23BCA228@charusat.edu.in', 'HOSTEL - 5', '204', '23BCA228', 0.00, NULL, NULL),
('23BCA240', 'KRISHA D PATEL', '7046058243', '23BCA240@charusat.edu.in', 'HOSTEL - 5', '609', '23BCA240', 0.00, 0.00, NULL),
('23BCA331', 'ASTHA U RAVALJI', '8799209701', '23BCA331@charusat.edu.in', 'HOSTEL - 5', '201', '23BCA331', 0.00, 0.00, NULL),
('23BCA332', 'DHRUVI K RUPARELIYA', '7859838311', '23BCA332@charusat.edu.in', 'HOSTEL - 5', '314', '23BCA332', 0.00, 0.00, NULL),
('23BCA336', 'DRASHTI P SANTOKI', '6356832922', '23BCA336@charusat.edu.in', 'HOSTEL - 5', '303', '23BCA336', 0.00, 0.00, NULL),
('23BCA338', 'DHRUVI SAVALIYA', '9879699062', '23BCA338@charusat.edu.in', 'HOSTEL - 5', '605', '23BCA338', 0.00, NULL, NULL),
('23BCA358', 'KHUSHI P SINOJIYA', '6351230550', '23BCA358@charusat.edu.in', 'HOSTEL - 5', '306', '23BCA358', 0.00, 0.00, NULL),
('23BCA382', 'KRITIKA  R THAKRAR', '9316636717', '23BCA382@charusat.edu.in', 'HOSTEL - 5', '113', '23BCA382', 0.00, NULL, NULL),
('23BCA383', 'ISHIKA M THUMAR', '9106189861', '23BCA383@charusat.edu.in', 'HOSTEL - 5', '206', '23BCA383', 0.00, 0.00, NULL),
('23BCA385', 'BANSARI  R THUMMAR', '9714821321', '23BCA385@charusat.edu.in', 'HOSTEL - 5', '205', '23BCA385', 0.00, 0.00, NULL),
('23BCA387', 'DRASHTI P TRIVEDI', '9909963212', '23BCA387@charusat.edu.in', 'HOSTEL - 5', '314', '23BCA387', 0.00, 0.00, NULL),
('23BCA391', 'KHUSHALI Y VACHHANI', '9023039302', '23BCA391@charusat.edu.in', 'HOSTEL - 5', '313', '23BCA391', 0.00, 0.00, NULL),
('23BCA393', 'AMIISHA K VADGAMA', '9328138103', '23BCA393@charusat.edu.in', 'HOSTEL - 5', '113', '23BCA393', 0.00, NULL, NULL),
('23BCA394', 'DHARMI J VAGHASIYA', '8849511685', '23BCA394@charusat.edu.in', 'HOSTEL - 5', '607', '23BCA394', 0.00, 0.00, NULL),
('23BCA410', 'KHUSHALI B VARSANI', '9016644968', '23BCA410@charusat.edu.in', 'HOSTEL - 5', '605', '23BCA410', 0.00, NULL, NULL),
('23BMIT001', 'ANJALI JAYAKUMAR', '9995638327', '23BMIT001@charusat.edu.in', 'HOSTEL - 1', '4', '23BMIT001', 0.00, NULL, NULL),
('23BN010', 'BHAKTI HIRANI', '7984934846', '23BN010@charusat.edu.in', 'HOSTEL - 1', '59', '23BN010', 0.00, NULL, NULL),
('23BN012', 'RUJAL A KUBAVAT', '9427017500', '23BN012@charusat.edu.in', 'HOSTEL - 1', '22', '23BN012', 0.00, NULL, NULL),
('23BN018', 'NITYA H MODI', '9726781978', '23BN018@charusat.edu.in', 'HOSTEL - 1', '52', '23BN018', 0.00, NULL, NULL),
('23BN019', 'KASHISH S PANDYA', '7265068305', '23BN019@charusat.edu.in', 'HOSTEL - 1', '55', '23BN019', 0.00, NULL, NULL),
('23BN026', 'DHWANI U PATEL', '9825039068', '23BN026@charusat.edu.in', 'HOSTEL - 1', '51', '23BN026', 0.00, NULL, NULL),
('23BN032', 'HETVI S PATEL', '8140122843', '23BN032@charusat.edu.in', 'HOSTEL - 1', '22', '23BN032', 0.00, NULL, NULL),
('23BN033', 'ISHA H PATEL', '7984136632', '23BN033@charusat.edu.in', 'HOSTEL - 1', '59', '23BN033', 0.00, NULL, NULL),
('23BN035', 'JIYA A PATEL', '9265121907', '23BN035@charusat.edu.in', 'HOSTEL - 1', '21', '23BN035', 0.00, NULL, NULL),
('23BN044', 'NIRALI R PATEL', '8200824040', '23BN044@charusat.edu.in', 'HOSTEL - 1', '56', '23BN044', 0.00, NULL, NULL),
('23BN051', 'RIDDHI M PATEL', '7359189140', '23BN051@charusat.edu.in', 'HOSTEL - 1', '51', '23BN051', 0.00, 0.00, NULL),
('23BN056', 'VIDHI J PATEL', '6351159630', '23BN056@charusat.edu.in', 'HOSTEL - 1', '47', '23BN056', 0.00, NULL, NULL),
('23BN059', 'PATEL YASHVI DINESHKUMAR', '7046735635', '23BN059@charusat.edu.in', 'HOSTEL - 1', '74', '23BN059', 0.00, NULL, NULL),
('23BN060', 'YESHABEN V PATEL', '9879648931', '23BN060@charusat.edu.in', 'HOSTEL - 1', '27', '23BN060', 0.00, NULL, NULL),
('23BN061', 'PAYALBEN G PATIL', '7043740639', '23BN061@charusat.edu.in', 'HOSTEL - 1', '31', '23BN061', 0.00, NULL, NULL),
('23BN064', 'NIDHI M SHARMA', '8401300388', '23BN064@charusat.edu.in', 'HOSTEL - 1', '43', '23BN064', 0.00, 0.00, NULL),
('23BN067', 'JANKIBEN S VANKAR', '9023128621', '23BN067@charusat.edu.in', 'HOSTEL - 1', '3', '23BN067', 0.00, 0.00, NULL),
('23BN068', 'ANJALI V VASAVA', '9426760484', '23BN068@charusat.edu.in', 'HOSTEL - 1', '69', '23BN068', 0.00, 0.00, NULL),
('23BN069', 'PRIYANSHIBEN K VASAVA', '8200695984', '23BN069@charusat.edu.in', 'HOSTEL - 1', '23', '23BN069', 0.00, NULL, NULL),
('23BOP012', 'DIYA PATIDAR', '6264929511', '23BOP012@charusat.edu.in', 'HOSTEL - 4', '30', '23BOP012', 0.00, NULL, NULL),
('23BOTAT005', 'NIDHI H DIXIT', '8160686980', '23BOTAT005@charusat.edu.in', 'HOSTEL - 2', '24', '23BOTAT005', 0.00, 0.00, NULL),
('23BOTAT013', 'YASHVI A PATEL', '6351376677', '23BOTAT013@charusat.edu.in', 'HOSTEL - 1', '4', '23BOTAT013', 0.00, NULL, NULL),
('23BOTAT017', 'SANA M VORA', '9173683759', '23BOTAT017@charusat.edu.in', 'HOSTEL - 2', '43', '23BOTAT017', 0.00, NULL, NULL),
('23BPH005', 'KHUSHI H CHANDAK', '9313645622', '23BPH005@charusat.edu.in', 'HOSTEL - 2', '12', '23BPH005', 0.00, NULL, NULL),
('23BPH010', 'ESHA M LADANI', '9998973575', '23BPH010@charusat.edu.in', 'HOSTEL - 2', '67', '23BPH010', 0.00, NULL, NULL),
('23BPH013', 'VISHWABEN M KHOKHANI', '9913140748', '23BPH013@charusat.edu.in', 'HOSTEL - 4', 'C-10', '23BPH013', 0.00, NULL, NULL),
('23BPH014', 'HARVIBEN P GOPANI', '8320799419', '23BPH014@charusat.edu.in', 'HOSTEL - 2', '57', '23BPH014', 0.00, NULL, NULL),
('23BPH019', 'MAHI S KARELIYA', '9510735845', '23BPH019@charusat.edu.in', 'HOSTEL - 4', 'C-04', '23BPH019', 0.00, NULL, NULL),
('23BPH020', 'AMEE  D KARIYA', '8469939118', '23BPH020@charusat.edu.in', 'HOSTEL - 4', '54', '23BPH020', 0.00, NULL, NULL),
('23BPH023', 'VANSHIKABEN H LADANI', '7990659151', '23BPH023@charusat.edu.in', 'HOSTEL - 2', '74', '23BPH023', 0.00, NULL, NULL),
('23BPH024', 'DHRUVI J LAKHANI', '9328382921', '23BPH024@charusat.edu.in', 'HOSTEL - 2', '45', '23BPH024', 0.00, NULL, NULL),
('23BPH031', 'NISHU KUMARI', '9835100776', '23BPH031@charusat.edu.in', 'HOSTEL - 4', '30', '23BPH031', 0.00, 0.00, NULL),
('23BPH032', 'SHRIJU M PADARIYA', '8200113465', '23BPH032@charusat.edu.in', 'HOSTEL - 2', '75', '23BPH032', 0.00, NULL, NULL),
('23BPH035', 'DEVANSHI K PANDIT', '7043305084', '23BPH035@charusat.edu.in', 'HOSTEL - 2', '41', '23BPH035', 0.00, NULL, NULL),
('23BPH047', 'HAPPYBEN K PATEL', '7567267421', '23BPH047@charusat.edu.in', 'HOSTEL - 2', '9', '23BPH047', 0.00, 0.00, NULL),
('23BPH048', 'HERRY P PATEL', '6352197921', '23BPH048@charusat.edu.in', 'HOSTEL - 2', '11', '23BPH048', 0.00, 0.00, NULL),
('23BPH059', 'MEERA S PATEL', '8320545753', '23BPH059@charusat.edu.in', 'HOSTEL - 2', '74', '23BPH059', 0.00, NULL, NULL),
('23BPH067', 'PRIYAL R PATEL', '9725236383', '23BPH067@charusat.edu.in', 'HOSTEL - 2', '34', '23BPH067', 0.00, 0.00, NULL),
('23BPH068', 'PRIYANSHI V PATEL', '9898880959', '23BPH068@charusat.edu.in', 'HOSTEL - 2', '53', '23BPH068', 0.00, 0.00, NULL),
('23BPH072', 'SHIVANGI A PATEL', '9727603457', '23BPH072@charusat.edu.in', 'HOSTEL - 2', '41', '23BPH072', 0.00, 0.00, NULL),
('23BPH078', 'VIDHI R PATEL', '6352922861', '23BPH078@charusat.edu.in', 'HOSTEL - 2', '25', '23BPH078', 0.00, 0.00, NULL),
('23BPH079', 'VIDHI R PATEL', '8758163629', '23BPH079@charusat.edu.in', 'HOSTEL - 2', '11', '23BPH079', 0.00, 0.00, NULL),
('23BPH081', 'VRUSHTI K PATEL', '9328724773', '23BPH081@charusat.edu.in', 'HOSTEL - 4', '44', '23BPH081', 0.00, NULL, NULL),
('23BPH085', 'PRANJAL N PATEL', '9023144259', '23BPH085@charusat.edu.in', 'HOSTEL - 2', '39', '23BPH085', 0.00, 0.00, NULL),
('23BPH095', 'DHVANI M SHIHORA', '9426348343', '23BPH095@charusat.edu.in', 'HOSTEL - 2', '75', '23BPH095', 0.00, NULL, NULL),
('23BPH096', 'JIYA H SONAWANE', '7405221028', '23BPH096@charusat.edu.in', 'HOSTEL - 4', '54', '23BPH096', 0.00, 0.00, NULL),
('23BPH104', 'VRUNDA B PETHANI', '7096028147', '23BPH104@charusat.edu.in', 'HOSTEL - 4', '54', '23BPH104', 0.00, 0.00, NULL),
('23BPT001', 'HIR AKBARI', '6900769008', '23BPT001@charusat.edu.in', 'HOSTEL - 1', '62', '23BPT001', 0.00, NULL, NULL),
('23BPT005', 'RIDDHI BHUVA', '9316205649', '23BPT005@charusat.edu.in', 'HOSTEL - 1', '62', '23BPT005', 0.00, 0.00, NULL),
('23BPT007', 'HIR N CHOUHAN', '8128982165', '23BPT007@charusat.edu.in', 'HOSTEL - 4', '75', '23BPT007', 0.00, NULL, NULL),
('23BPT008', 'NICKY P CHHEDA', '9892560338', '23BPT008@charusat.edu.in', 'HOSTEL - 4', 'C-14', '23BPT008', 0.00, 0.00, NULL),
('23BPT012', 'JENY GAJIPARA', '9824913311', '23BPT012@charusat.edu.in', 'HOSTEL - 4', '75', '23BPT012', 0.00, NULL, NULL),
('23BPT014', 'URVI D GHANDHI', '9904536660', '23BPT014@charusat.edu.in', 'HOSTEL - 1', '65', '23BPT014', 0.00, NULL, NULL),
('23BPT021', 'KHUSHI KAKKAD', '9773013836', '23BPT021@charusat.edu.in', 'HOSTEL - 2', '16', '23BPT021', 0.00, 0.00, NULL),
('23BPT025', 'MAHI MAKWANA', '9998987990', '23BPT025@charusat.edu.in', 'HOSTEL - 4', 'C-17', '23BPT025', 0.00, NULL, NULL),
('23BPT032', 'RIYA PANDYA', '9879852656', '23BPT032@charusat.edu.in', 'HOSTEL - 4', 'C-15', '23BPT032', 0.00, 0.00, NULL),
('23BPT033', 'DHRUVI V PARIKH', '9537577030', '23BPT033@charusat.edu.in', 'HOSTEL - 2', '63', '23BPT033', 0.00, 0.00, NULL),
('23BPT034', 'HEM H PARMAR', '7069686770', '23BPT034@charusat.edu.in', 'HOSTEL - 2', '19', '23BPT034', 0.00, NULL, NULL),
('23BPT043', 'DHRUVI PATEL', '9974067052', '23BPT043@charusat.edu.in', 'HOSTEL - 2', '63', '23BPT043', 0.00, 0.00, NULL),
('23BPT045', 'DIYA H PATEL', '9724655443', '23BPT045@charusat.edu.in', 'HOSTEL - 4', 'C-17', '23BPT045', 0.00, NULL, NULL),
('23BPT049', 'JHANVI M PATEL', '9904263330', '23BPT049@charusat.edu.in', 'HOSTEL - 4', 'C-14', '23BPT049', 0.00, NULL, NULL),
('23BPT051', 'KHUSHI H PATEL', '8469959040', '23BPT051@charusat.edu.in', 'HOSTEL - 2', '46', '23BPT051', 0.00, NULL, NULL),
('23BPT054', 'NEHA A PATEL', '8200205442', '23BPT054@charusat.edu.in', 'HOSTEL - 4', '55', '23BPT054', 0.00, 0.00, NULL),
('23BPT055', 'NETRA PATEL', '8280811285', '23BPT055@charusat.edu.in', 'HOSTEL - 2', '71', '23BPT055', 0.00, 0.00, NULL),
('23BPT056', 'NETRA A PATEL', '7984561997', '23BPT056@charusat.edu.in', 'HOSTEL - 4', '55', '23BPT056', 0.00, 0.00, NULL),
('23BPT061', 'SHREEYA PATEL', '9867449305', '23BPT061@charusat.edu.in', 'HOSTEL - 4', '75', '23BPT061', 0.00, NULL, NULL),
('23BPT067', 'KHYATI RADADIYA', '7096619990', '23BPT067@charusat.edu.in', 'HOSTEL - 1', '67', '23BPT067', 0.00, NULL, NULL),
('23BPT070', 'RUTVI SAGPARIYA', '7990225811', '23BPT070@charusat.edu.in', 'HOSTEL - 4', '75', '23BPT070', 0.00, NULL, NULL),
('23BPT071', 'KHUSHI A SATANI', '8200909109', '23BPT071@charusat.edu.in', 'HOSTEL - 1', '66', '23BPT071', 0.00, 0.00, NULL),
('23BPT072', 'SHAHEEN SATI', '8160153584', '23BPT072@charusat.edu.in', 'HOSTEL - 1', '69', '23BPT072', 0.00, NULL, NULL),
('23BPT073', 'ANERI V SHAH', '9426042458', '23BPT073@charusat.edu.in', 'HOSTEL - 1', '65', '23BPT073', 0.00, 0.00, NULL),
('23BPT074', 'AYUSHI SHAH', '7096291086', '23BPT074@charusat.edu.in', 'HOSTEL - 4', '57', '23BPT074', 0.00, 0.00, NULL),
('23BPT079', 'JIYA J SOJITRA', '9023848483', '23BPT079@charusat.edu.in', 'HOSTEL - 2', '46', '23BPT079', 0.00, NULL, NULL),
('23BPT085', 'KHUSHI H SORATHIYA', '9510235899', '23BPT085@charusat.edu.in', 'HOSTEL - 2', '46', '23BPT085', 0.00, NULL, NULL),
('23BPT088', 'PRIYANSHI M THAKKAR', '9561165809', '23BPT088@charusat.edu.in', 'HOSTEL - 1', '64', '23BPT088', 0.00, 0.00, NULL),
('23BPT089', 'MANSI THAKUR', '9898511602', '23BPT089@charusat.edu.in', 'HOSTEL - 4', 'C-17', '23BPT089', 0.00, NULL, NULL),
('23BPT092', 'HIMANI J VAMJA', '9328347822', '23BPT092@charusat.edu.in', 'HOSTEL - 4', '55', '23BPT092', 0.00, 0.00, NULL),
('23BPT094', 'MITTAL VEKARIA', '7043842911', '23BPT094@charusat.edu.in', 'HOSTEL - 4', 'C-15', '23BPT094', 0.00, 0.00, NULL),
('23BPT1052', 'KRINA A PATEL', '7069259086', '23BPT1052@charusat.edu.in', 'HOSTEL - 4', 'C-17', '23BPT1052', 0.00, NULL, NULL),
('23BRMTH001', 'JAIVEE GOHIL', '8866030790', '23BRMTH001@charusat.edu.in', 'HOSTEL - 4', '19', '23BRMTH001', 0.00, NULL, NULL),
('23BSC001', 'KRISHA D AKBARI', '7046359029', '23BSC001@charusat.edu.in', 'HOSTEL - 4', '58', '23BSC001', 0.00, 0.00, NULL),
('23BSC006', 'ZALAK BHALALA', '9909870023', '23BSC006@charusat.edu.in', 'HOSTEL - 4', '60', '23BSC006', 0.00, NULL, NULL),
('23BSC007', 'YASHVI A BHALODI', '7567670706', '23BSC007@charusat.edu.in', 'HOSTEL - 4', '71', '23BSC007', 0.00, 0.00, NULL),
('23BSC008', 'TEESA H BHANUSALI', '7043391451', '23BSC008@charusat.edu.in', 'HOSTEL - 4', '50', '23BSC008', 0.00, NULL, NULL),
('23BSC010', 'TANISHA BILIMORIA', '9662704270', '23BSC010@charusat.edu.in', 'HOSTEL - 4', '24', '23BSC010', 0.00, NULL, NULL),
('23BSC011', 'KOMAL P BUCH', '9408292321', '23BSC011@charusat.edu.in', 'HOSTEL - 4', '28', '23BSC011', 0.00, 0.00, NULL),
('23BSC0111', 'HETVEE J TALEKAR', '9313478456', '23BSC0111@charusat.edu.in', 'HOSTEL - 4', 'C-03', '23BSC0111', 0.00, 0.00, NULL),
('23BSC0117', 'RIDDHI D VASRANI', '8140030449', '23BSC0117@charusat.edu.in', 'HOSTEL - 4', '6', '23BSC0117', 0.00, NULL, NULL),
('23BSC014', 'PRIYA H DAVE', '7984710863', '23BSC014@charusat.edu.in', 'HOSTEL - 4', '58', '23BSC014', 0.00, 0.00, NULL),
('23BSC017', 'VYOMA DESAI', '7016785333', '23BSC017@charusat.edu.in', 'HOSTEL - 4', '64', '23BSC017', 0.00, NULL, NULL),
('23BSC018', 'MAYIAM H DHILWALA', '8758510860', '23BSC018@charusat.edu.in', 'HOSTEL - 4', '67', '23BSC018', 0.00, 0.00, NULL),
('23BSC021', 'PRATHAMA DWIVEDI', '7565992592', '23BSC021@charusat.edu.in', 'HOSTEL - 4', 'C-11', '23BSC021', 0.00, 0.00, NULL),
('23BSC022', 'GOHEL P NEHAL', '8758026126', '23BSC022@charusat.edu.in', 'HOSTEL - 4', '71', '23BSC022', 0.00, 0.00, NULL),
('23BSC026', 'PRISHAJANI J JANI', '9428818623', '23BSC026@charusat.edu.in', 'HOSTEL - 4', '64', '23BSC026', 0.00, NULL, NULL),
('23BSC028', 'JEMALI J CHAVADA', '9106430110', '23BSC028@charusat.edu.in', 'HOSTEL - 4', '69', '23BSC028', 0.00, 0.00, NULL),
('23BSC032', 'SHREYA J JOSHI', '9106639408', '23BSC032@charusat.edu.in', 'HOSTEL - 4', '46', '23BSC032', 0.00, 0.00, NULL),
('23BSC035', 'PAYAL N KAPADIYA', '9409162609', '23BSC035@charusat.edu.in', 'HOSTEL - 4', '45', '23BSC035', 0.00, NULL, NULL),
('23BSC036', 'RASHPREET KAUR', '9415441248', '23BSC036@charusat.edu.in', 'HOSTEL - 4', '68', '23BSC036', 0.00, 0.00, NULL),
('23BSC037', 'NENSIBEN M KHOKHANI', '9925421139', '23BSC037@charusat.edu.in', 'HOSTEL - 4', '2', '23BSC037', 0.00, 0.00, NULL),
('23BSC039', 'HARNISHA J KOTAK', '9725714448', '23BSC039@charusat.edu.in', 'HOSTEL - 4', '50', '23BSC039', 0.00, 0.00, NULL),
('23BSC044', 'KRUTI R MANDANKA', '9016939755', '23BSC044@charusat.edu.in', 'HOSTEL - 4', '47', '23BSC044', 0.00, 0.00, NULL),
('23BSC048', 'NISHTHA R MISTRY', '8238213252', '23BSC048@charusat.edu.in', 'HOSTEL - 4', '56', '23BSC048', 0.00, 0.00, NULL),
('23BSC049', 'PRIYA H MISTRY', '9054525622', '23BSC049@charusat.edu.in', 'HOSTEL - 4', '28', '23BSC049', 0.00, 0.00, NULL),
('23BSC052', 'MOKSHA B PANDYA', '9313700041', '23BSC052@charusat.edu.in', 'HOSTEL - 4', '46', '23BSC052', 0.00, 0.00, NULL),
('23BSC057', 'PALAK G PARMAR', '9265673606', '23BSC057@charusat.edu.in', 'HOSTEL - 4', '56', '23BSC057', 0.00, NULL, NULL),
('23BSC062', 'DRASHITBEN A PATEL', '8160573602', '23BSC062@charusat.edu.in', 'HOSTEL - 4', '20', '23BSC062', 0.00, NULL, NULL),
('23BSC067', 'KRIYANSHI R PATEL', '6355408315', '23BSC067@charusat.edu.in', 'HOSTEL - 4', '20', '23BSC067', 0.00, NULL, NULL),
('23BSC070', 'MISHABEN D PATEL', '7041171920', '23BSC070@charusat.edu.in', 'HOSTEL - 4', '70', '23BSC070', 0.00, 0.00, NULL),
('23BSC072', 'NIKITA R PATEL', '7984013966', '23BSC072@charusat.edu.in', 'HOSTEL - 4', '67', '23BSC072', 0.00, 0.00, NULL),
('23BSC073', 'PALAK D PATEL', '9023950155', '23BSC073@charusat.edu.in', 'HOSTEL - 4', '67', '23BSC073', 0.00, 0.00, NULL),
('23BSC078', 'RIDDHI J PATEL', '8799092517', '23BSC078@charusat.edu.in', 'HOSTEL - 4', '24', '23BSC078', 0.00, NULL, NULL),
('23BSC084', 'VIDHUTI M PATEL', '9313304033', '23BSC084@charusat.edu.in', 'HOSTEL - 4', 'C-08', '23BSC084', 0.00, NULL, NULL),
('23BSC087', 'YATRI P PATEL', '8490834380', '23BSC087@charusat.edu.in', 'HOSTEL - 4', '44', '23BSC087', 0.00, NULL, NULL),
('23BSC091', 'AAYUSHI S RAMANI', '7862080538', '23BSC091@charusat.edu.in', 'HOSTEL - 4', '5', '23BSC091', 0.00, NULL, NULL),
('23BSC092', 'RONAK U RANA', '7383434073', '23BSC092@charusat.edu.in', 'HOSTEL - 4', '3', '23BSC092', 0.00, 0.00, NULL),
('23BSC093', 'YASHVI P RAVAL', '9313004951', '23BSC093@charusat.edu.in', 'HOSTEL - 4', 'C-18', '23BSC093', 0.00, 0.00, NULL),
('23BSC095', 'JEEL D SAKHARELIYA', '7863815345', '23BSC095@charusat.edu.in', 'HOSTEL - 4', '70', '23BSC095', 0.00, 0.00, NULL),
('23BSC101', 'PARI SHARMA', '9672572272', '23BSC101@charusat.edu.in', 'HOSTEL - 4', 'C-16', '23BSC101', 0.00, 0.00, NULL),
('23BSC102', 'PRIYALBEN P SHIROYA', '8780571166', '23BSC102@charusat.edu.in', 'HOSTEL - 4', '57', '23BSC102', 0.00, NULL, NULL),
('23BSC103', 'SHUKLA KHUSHI RISHI', '6353038045', '23BSC103@charusat.edu.in', 'HOSTEL - 4', 'C-18', '23BSC103', 0.00, 0.00, NULL),
('23BSC107', 'JAHAVI N SOLANKI', '9925227278', '23BSC107@charusat.edu.in', 'HOSTEL - 4', '70', '23BSC107', 0.00, 0.00, NULL),
('23BSC108', 'KRISHA Y SONDAGAR', '7990051455', '23BSC108@charusat.edu.in', 'HOSTEL - 4', '56', '23BSC108', 0.00, NULL, NULL),
('23BSC109', 'CHARMI J SONI', '6353983582', '23BSC109@charusat.edu.in', 'HOSTEL - 4', '20', '23BSC109', 0.00, NULL, NULL),
('23BSC110', 'BHAKTI S SUGANDHI', '9998425666', '23BSC110@charusat.edu.in', 'HOSTEL - 4', '67', '23BSC110', 0.00, 0.00, NULL),
('23BSC113', 'AASTHA  H THUMAR', '9724508982', '23BSC113@charusat.edu.in', 'HOSTEL - 4', '71', '23BSC113', 0.00, 0.00, NULL),
('23BSC118', 'VAISHNAVI D VYAS', '6354446374', '23BSC118@charusat.edu.in', 'HOSTEL - 4', '3', '23BSC118', 0.00, 0.00, NULL),
('23BSC122', 'ISHIKA JIGAR SHAH', '7698719836', '23BSC122@charusat.edu.in', 'HOSTEL - 4', '47', '23BSC122', 0.00, NULL, NULL),
('23BSC127', 'MAHEKKUMARI N PATEL', '9558880277', '23BSC127@charusat.edu.in', 'HOSTEL - 4', '24', '23BSC127', 0.00, NULL, NULL),
('23BSIT008', 'JAHANVI M BORAD', '9664975471', '23BSIT008@charusat.edu.in', 'HOSTEL - 5', '608', '23BSIT008', 0.00, 0.00, NULL),
('23BSIT021', 'DHRUVI K GADHIYA', '8469385040', '23BSIT021@charusat.edu.in', 'HOSTEL - 5', '501', '23BSIT021', 0.00, NULL, NULL),
('23BSIT035', 'DIYA D KUKADIYA', '9924845352', '23BSIT035@charusat.edu.in', 'HOSTEL - 5', '502', '23BSIT035', 0.00, NULL, NULL),
('23BSIT042', 'DISHA M MAKWANA', '9106233594', '23BSIT042@charusat.edu.in', 'HOSTEL - 5', '111', '23BSIT042', 0.00, NULL, NULL),
('23BSIT044', 'KAMAKSHI V MARU', '8849994765', '23BSIT044@charusat.edu.in', 'HOSTEL - 5', '610', '23BSIT044', 0.00, 0.00, NULL),
('23BSIT050', 'AYUSHI P MOVALIYA', '9023275519', '23BSIT050@charusat.edu.in', 'HOSTEL - 5', '206', '23BSIT050', 0.00, NULL, NULL),
('23BSIT051', 'AYUSHI K NAKRANI', '8849065785', '23BSIT051@charusat.edu.in', 'HOSTEL - 5', '214', '23BSIT051', 0.00, 0.00, NULL),
('23BSIT055', 'ALIYA PATEL', '9173379657', '23BSIT055@charusat.edu.in', 'HOSTEL - 5', '104', '23BSIT055', 0.00, NULL, NULL),
('23BSIT061', 'KUSUM V PARMAR', '6355831669', '23BSIT061@charusat.edu.in', 'HOSTEL - 5', '111', '23BSIT061', 0.00, NULL, NULL),
('23BSIT069', 'DEVANSHI J PATEL', '9875297593', '23BSIT069@charusat.edu.in', 'HOSTEL - 5', '207', '23BSIT069', 0.00, NULL, NULL),
('23BSIT076', 'HIMANI H PATEL', '9870013943', '23BSIT076@charusat.edu.in', 'HOSTEL - 5', '502', '23BSIT076', 0.00, 0.00, NULL),
('23BSIT082', 'KRISHNA R PATEL', '9016164078', '23BSIT082@charusat.edu.in', 'HOSTEL - 5', '207', '23BSIT082', 0.00, NULL, NULL),
('23BSIT129', 'DIPASHA J RAKHASIYA', '9016098352', '23BSIT129@charusat.edu.in', 'HOSTEL - 5', '714', '23BSIT129', 0.00, 0.00, NULL),
('23BSIT136', 'DRASHTI S SABAVA', '9054575610', '23BSIT136@charusat.edu.in', 'HOSTEL - 5', '210', '23BSIT136', 0.00, 0.00, NULL),
('23BSIT163', 'HETVI J VANKAR', '9023314509', '23BSIT163@charusat.edu.in', 'HOSTEL - 5', '111', '23BSIT163', 0.00, NULL, NULL),
('23BSMIT004', 'MANSI M PATEL', '8780353830', '23BSMIT004@charusat.edu.in', 'HOSTEL - 2', '41', '23BSMIT004', 0.00, NULL, NULL),
('23BT003', 'HETA Y BAROT', '8849118345', '23BT003@charusat.edu.in', 'HOSTEL - 4', '65', '23BT003', 0.00, 0.00, NULL),
('23BT007', 'SNEHA M GHOSH', '9712860755', '23BT007@charusat.edu.in', 'HOSTEL - 4', '48', '23BT007', 0.00, 0.00, NULL),
('23BT009', 'ANANDI KACHA', '7984453151', '23BT009@charusat.edu.in', 'HOSTEL - 4', '32', '23BT009', 0.00, 0.00, NULL),
('23BT010', 'SRUSHTI A KACHHIYA', '6355488651', '23BT010@charusat.edu.in', 'HOSTEL - 4', '32', '23BT010', 0.00, NULL, NULL),
('23BT013', 'AVANI A MIRCHANDANI', '9574435398', '23BT013@charusat.edu.in', 'HOSTEL - 4', '40', '23BT013', 0.00, 0.00, NULL),
('23BT034', 'RACHNA K RAVAL', '8849060192', '23BT034@charusat.edu.in', 'HOSTEL - 4', '48', '23BT034', 0.00, 0.00, NULL),
('23BT035', 'HETVEE P RUPAPARA', '9313252757', '23BT035@charusat.edu.in', 'HOSTEL - 4', '44', '23BT035', 0.00, 0.00, NULL),
('23BT036', 'POORVABEN J SUTHAR', '9313132436', '23BT036@charusat.edu.in', 'HOSTEL - 4', '57', '23BT036', 0.00, NULL, NULL),
('23BT040', 'TUR DRASHTI JITENDRAKUMAR', '7698977824', '23BT040@charusat.edu.in', 'HOSTEL - 4', '48', '23BT040', 0.00, 0.00, NULL),
('23BT042', 'KHUSHI    S   KEVADIYA', '9016542772', '23BT042@charusat.edu.in', 'HOSTEL - 4', 'C-01', '23BT042', 0.00, 0.00, NULL),
('23CE001', 'JIYA V AHAJOLIYA', '6354777269', '23CE001@charusat.edu.in', 'HOSTEL - 5', '507', '23CE001', 0.00, 0.00, NULL),
('23CE008', 'DHRUVI A BHANDERI', '6355152228', '23CE008@charusat.edu.in', 'HOSTEL - 5', '613', '23CE008', 0.00, 0.00, NULL),
('23CE018', 'PALAKBEN H DAVE', '7069692906', '23CE018@charusat.edu.in', 'HOSTEL - 3', '64', '23CE018', 0.00, NULL, NULL),
('23CE026', 'KRISHNA RAMESH BHAI DODIYA', '9054080957', '23CE026@charusat.edu.in', 'HOSTEL - 5', '213', '23CE026', 0.00, 0.00, NULL),
('23CE027', 'DARSHIKA G DUDHAT', '7862099008', '23CE027@charusat.edu.in', 'HOSTEL - 3', '55', '23CE027', 0.00, 0.00, NULL),
('23CE038', 'PRISHA J HADVANI', '9726871001', '23CE038@charusat.edu.in', 'HOSTEL - 3', '64', '23CE038', 0.00, 0.00, NULL),
('23CE044', 'RIYA H JAGANI', '9328795530', '23CE044@charusat.edu.in', 'HOSTEL - 3', 'C-11', '23CE044', 0.00, 0.00, NULL),
('23CE045', 'AARTI A JAIN', '7874516510', '23CE045@charusat.edu.in', 'HOSTEL - 5', '201', '23CE045', 0.00, NULL, NULL),
('23CE060', 'JIYA S KOTHARI', '9016018363', '23CE060@charusat.edu.in', 'HOSTEL - 5', '613', '23CE060', 0.00, 0.00, NULL),
('23CE078', 'RIYA R NAVADIA', '9925011250', '23CE078@charusat.edu.in', 'HOSTEL - 3', '73', '23CE078', 0.00, 0.00, NULL),
('23CE097', 'MAHEK R PATEL', '9825540284', '23CE097@charusat.edu.in', 'HOSTEL - 3', '71', '23CE097', 0.00, 0.00, NULL),
('23CE114', 'PRANJAL P PATIL', '8799176547', '23CE114@charusat.edu.in', 'HOSTEL - 3', 'C-03', '23CE114', 0.00, 0.00, NULL),
('23CE118', 'ISHA PRAJAPATI', '9664976492', '23CE118@charusat.edu.in', 'HOSTEL - 3', 'C-03', '23CE118', 0.00, 0.00, NULL),
('23CE143', 'ARPITABEN R VEKARIYA', '9313381523', '23CE143@charusat.edu.in', 'HOSTEL - 3', '64', '23CE143', 0.00, 0.00, NULL),
('23CL014', 'AASTHA J SONI', '9825222965', '23CL014@charusat.edu.in', 'HOSTEL - 3', '62', '23CL014', 0.00, 0.00, NULL),
('23CS016', 'AYUSHI D CHOVATIYA', '8155034456', '23CS016@charusat.edu.in', 'HOSTEL - 5', '608', '23CS016', 0.00, 0.00, NULL),
('23CS021', 'CHARMI H DODIYA', '8320699419', '23CS021@charusat.edu.in', 'HOSTEL - 3', '57', '23CS021', 0.00, NULL, NULL),
('23CS023', 'ANANYA GUPTA', '9157682015', '23CS023@charusat.edu.in', 'HOSTEL - 5', '610', '23CS023', 0.00, 0.00, NULL),
('23CS030', 'NAITI KALATHIYA', '9727255011', '23CS030@charusat.edu.in', 'HOSTEL - 3', '35', '23CS030', 0.00, 0.00, NULL),
('23CS032', 'DHAIRYA KANABAR', '9429924443', '23CS032@charusat.edu.in', 'HOSTEL - 5', '614', '23CS032', 0.00, 0.00, NULL),
('23CS038', 'KRINA M LAKHANI', '9879705481', '23CS038@charusat.edu.in', 'HOSTEL - 5', '614', '23CS038', 0.00, 0.00, NULL),
('23CS044', 'TANVI R MEHTA', '7984989500', '23CS044@charusat.edu.in', 'HOSTEL - 3', '69', '23CS044', 0.00, 0.00, NULL),
('23CS052', 'PANDYA DHAIRYATI ABHISHEK', '9265398655', '23CS052@charusat.edu.in', 'HOSTEL - 3', '34', '23CS052', 0.00, 0.00, NULL),
('23CS059', 'DEVARSHI   J  PATEL', '6355496184', '23CS059@charusat.edu.in', 'HOSTEL - 5', '214', '23CS059', 0.00, 0.00, NULL),
('23CS062', 'EVA Y PATEL', '8849186917', '23CS062@charusat.edu.in', 'HOSTEL - 5', '714', '23CS062', 0.00, 0.00, NULL),
('23CS079', 'ISHTA P PRAJAPATI', '9313730346', '23CS079@charusat.edu.in', 'HOSTEL - 5', '706', '23CS079', 0.00, NULL, NULL),
('23CS081', 'HETVI H RADADIYA', '8401429731', '23CS081@charusat.edu.in', 'HOSTEL - 5', '113', '23CS081', 0.00, 0.00, NULL),
('23CS095', 'KESHVI J SIROYA', '9664896567', '23CS095@charusat.edu.in', 'HOSTEL - 3', '57', '23CS095', 0.00, 0.00, NULL),
('23CS096', 'JAINI J SOLANKI', '7228990654', '23CS096@charusat.edu.in', 'HOSTEL - 5', '703', '23CS096', 0.00, 0.00, NULL),
('23CS101', 'ADITI H VANARA', '8140427500', '23CS101@charusat.edu.in', 'HOSTEL - 5', '312', '23CS101', 0.00, NULL, NULL),
('23DCE007', 'MISHVA S BHADJA', '9825898909', '23DCE007@charusat.edu.in', 'HOSTEL - 3', 'C-18', '23DCE007', 0.00, NULL, NULL),
('23DCE009', 'DEVANSHI K BHALODIYA', '8758211750', '23DCE009@charusat.edu.in', 'HOSTEL - 5', '601', '23DCE009', 0.00, 0.00, NULL),
('23DCE013', 'FORAM K CHAUHAN', '6353982925', '23DCE013@charusat.edu.in', 'HOSTEL - 5', '611', '23DCE013', 0.00, NULL, NULL),
('23DCE025', 'PRIYANSHIBEN R DESAI', '6353580193', '23DCE025@charusat.edu.in', 'HOSTEL - 3', 'C-15', '23DCE025', 0.00, NULL, NULL),
('23DCE029', 'KRISHA K DONDA', '9727433777', '23DCE029@charusat.edu.in', 'HOSTEL - 3', '71', '23DCE029', 0.00, 0.00, NULL),
('23DCE034', 'CHESHTA S GINOYA', '9978090390', '23DCE034@charusat.edu.in', 'HOSTEL - 3', 'C-18', '23DCE034', 0.00, 0.00, NULL),
('23DCE042', 'KHUSHI S ITALIYA', '9327090688', '23DCE042@charusat.edu.in', 'HOSTEL - 3', '74', '23DCE042', 0.00, 0.00, NULL),
('23DCE044', 'ARPITA A JAN', '9773114231', '23DCE044@charusat.edu.in', 'HOSTEL - 5', '213', '23DCE044', 0.00, 0.00, NULL),
('23DCE053', 'PRIYAL D KALARIYA', '9313250958', '23DCE053@charusat.edu.in', 'HOSTEL - 3', '58', '23DCE053', 0.00, 0.00, NULL),
('23DCE061', 'HETVI N KOTADIYA', '9824757369', '23DCE061@charusat.edu.in', 'HOSTEL - 3', '71', '23DCE061', 0.00, 0.00, NULL),
('23DCE070', 'NISHI T NAIK', '6352778807', '23DCE070@charusat.edu.in', 'HOSTEL - 3', '59', '23DCE070', 0.00, NULL, NULL),
('23DCE075', 'AENI J PATEL', '9016215110', '23DCE075@charusat.edu.in', 'HOSTEL - 5', '209', '23DCE075', 0.00, 0.00, NULL),
('23DCE078', 'BHUMI A PATEL', '8200049925', '23DCE078@charusat.edu.in', 'HOSTEL - 3', 'C-15', '23DCE078', 0.00, 0.00, NULL),
('23DCE079', 'DIYABEN D PATEL', '6359567913', '23DCE079@charusat.edu.in', 'HOSTEL - 3', 'C-15', '23DCE079', 0.00, 0.00, NULL),
('23DCE088', 'NENCY M PATEL', '9328421405', '23DCE088@charusat.edu.in', 'HOSTEL - 3', '71', '23DCE088', 0.00, NULL, NULL),
('23DCE105', 'HETVI S SAKARIYA', '9879778733', '23DCE105@charusat.edu.in', 'HOSTEL - 5', '611', '23DCE105', 0.00, 0.00, NULL),
('23DCE126', 'DISVA K VASOYA', '9313110158', '23DCE126@charusat.edu.in', 'HOSTEL - 3', '55', '23DCE126', 0.00, 0.00, NULL),
('23DCS017', 'KHUSHI N DADHANIYA', '7861008397', '23DCS017@charusat.edu.in', 'HOSTEL - 3', '35', '23DCS017', 0.00, 0.00, NULL),
('23DCS029', 'DHRUVI K GARALA', '9023660949', '23DCS029@charusat.edu.in', 'HOSTEL - 3', 'C-03', '23DCS029', 0.00, NULL, NULL),
('23DCS032', 'PRINSA N GEVARIYA', '9510881138', '23DCS032@charusat.edu.in', 'HOSTEL - 3', 'C-11', '23DCS032', 0.00, 0.00, NULL),
('23DCS036', 'KRESHI S GOTI', '8320259008', '23DCS036@charusat.edu.in', 'HOSTEL - 5', '209', '23DCS036', 0.00, 0.00, NULL),
('23DCS039', 'SWARA N JARIWALA', '9979067896', '23DCS039@charusat.edu.in', 'HOSTEL - 3', 'C-18', '23DCS039', 0.00, NULL, NULL),
('23DCS043', 'AESHA H KALATHIYA', '6352337145', '23DCS043@charusat.edu.in', 'HOSTEL - 3', '35', '23DCS043', 0.00, 0.00, NULL),
('23DCS054', 'SAKINA A LENWALA', '9725466785', '23DCS054@charusat.edu.in', 'HOSTEL - 3', '64', '23DCS054', 0.00, 0.00, NULL),
('23DCS069', 'ANERI N PATEL', '8780462605', '23DCS069@charusat.edu.in', 'HOSTEL - 5', '610', '23DCS069', 0.00, 0.00, NULL),
('23DCS072', 'DISHA R PATEL', '9016550912', '23DCS072@charusat.edu.in', 'HOSTEL - 3', '59', '23DCS072', 0.00, NULL, NULL),
('23DCS075', 'ISHA U PATEL', '9512273699', '23DCS075@charusat.edu.in', 'HOSTEL - 5', '611', '23DCS075', 0.00, NULL, NULL),
('23DCS079', 'KRISHA S PATEL', '7990432223', '23DCS079@charusat.edu.in', 'HOSTEL - 5', '507', '23DCS079', 0.00, 0.00, NULL),
('23DCS126', 'HETVI N SHUKLA', '7567666851', '23DCS126@charusat.edu.in', 'HOSTEL - 5', '101', '23DCS126', 0.00, 0.00, NULL),
('23DCS127', 'ASTHA P SODVADIA', '9925173502', '23DCS127@charusat.edu.in', 'HOSTEL - 3', 'C-15', '23DCS127', 0.00, 0.00, NULL),
('23DCS128', 'KEYA J  SONAIYA', '8160035677', '23DCS128@charusat.edu.in', 'HOSTEL - 5', '411', '23DCS128', 0.00, 0.00, NULL),
('23DCS132', 'KHYATI D THAKKAR', '9978276782', '23DCS132@charusat.edu.in', 'HOSTEL - 5', '313', '23DCS132', 0.00, NULL, NULL),
('23DCS133', 'KRISHNA J THAKKAR', '7984945552', '23DCS133@charusat.edu.in', 'HOSTEL - 5', '608', '23DCS133', 0.00, NULL, NULL),
('23DCS143', 'MANSAVEE H VIROJA', '7435094975', '23DCS143@charusat.edu.in', 'HOSTEL - 3', '58', '23DCS143', 0.00, NULL, NULL),
('23DIT009', 'DHRUVI A DHULIA', '9727971967', '23DIT009@charusat.edu.in', 'HOSTEL - 5', '602', '23DIT009', 0.00, 0.00, NULL),
('23DIT022', 'BANSI DEEPAK  KANANI', '8830230755', '23DIT022@charusat.edu.in', 'HOSTEL - 3', 'C-13', '23DIT022', 0.00, NULL, NULL),
('23DIT026', 'AYUSHI K KOTADIYA', '9408652353', '23DIT026@charusat.edu.in', 'HOSTEL - 3', '6', '23DIT026', 0.00, NULL, NULL),
('23DIT031', 'VANI S MAKADIA', '9870019459', '23DIT031@charusat.edu.in', 'HOSTEL - 3', '59', '23DIT031', 0.00, NULL, NULL),
('23DIT043', 'ESHA M PATEL', '9023850902', '23DIT043@charusat.edu.in', 'HOSTEL - 5', '102', '23DIT043', 0.00, 0.00, NULL),
('23DIT044', 'HELI R PATEL', '7567092398', '23DIT044@charusat.edu.in', 'HOSTEL - 5', '508', '23DIT044', 0.00, 0.00, NULL),
('23DIT045', 'ISHA D PATEL', '9328375695', '23DIT045@charusat.edu.in', 'HOSTEL - 5', '402', '23DIT045', 0.00, NULL, NULL),
('23DIT065', 'PALAK P SANKHARVA', '9316920058', '23DIT065@charusat.edu.in', 'HOSTEL - 3', '6', '23DIT065', 0.00, NULL, NULL),
('23DRBIO001', 'DHIMAHI  M BHATT', '9998087699', '23DRBIO001@charusat.edu.in', 'HOSTEL - 4', '24', '23DRBIO001', 0.00, 0.00, NULL),
('23DRBIO004', 'MEGHA DAVE', '6355179206', '23DRBIO004@charusat.edu.in', 'HOSTEL - 4', '2', '23DRBIO004', 0.00, 0.00, NULL),
('23DRBIO005', 'ASHRUTI R FULMALI', '9106783106', '23DRBIO005@charusat.edu.in', 'HOSTEL - 4', '19', '23DRBIO005', 0.00, NULL, NULL),
('23DRCHE001', 'SHIVANI', '8816924467', '23DRCHE001@charusat.edu.in', 'HOSTEL - 4', '66', '23DRCHE001', 0.00, 0.00, NULL),
('23DRMLT001', 'SHIVANI   LAKHANI', '8369331631', '23DRMLT001@charusat.edu.in', 'HOSTEL - 4', 'C-09', '23DRMLT001', 0.00, NULL, NULL),
('23DRMLT003', 'MISHA PARMAR', '8849236523', '23DRMLT003@charusat.edu.in', 'HOSTEL - 4', 'C-09', '23DRMLT003', 0.00, NULL, NULL),
('23DRPHY001', 'SAMRUDDHI V CHAUHAN', '9265407102', '23DRPHY001@charusat.edu.in', 'HOSTEL - 4', '2', '23DRPHY001', 0.00, NULL, NULL),
('23DRPHY005', 'RUTVI VORA', '6353302789', '23DRPHY005@charusat.edu.in', 'HOSTEL - 4', '2', '23DRPHY005', 0.00, NULL, NULL),
('23EC001', 'KRISHI AJUDIA', '9727726660', '23EC001@charusat.edu.in', 'HOSTEL - 5', '107', '23EC001', 0.00, 0.00, NULL),
('23EC025', 'HARDINI S DHIMAR', '7698255932', '23EC025@charusat.edu.in', 'HOSTEL - 5', '508', '23EC025', 0.00, 0.00, NULL),
('23EC027', 'SUCHITASAI R GADDAM', '9016068311', '23EC027@charusat.edu.in', 'HOSTEL - 3', '62', '23EC027', 0.00, 0.00, NULL),
('23EC028', 'JANVI V GADHIYA', '9904267467', '23EC028@charusat.edu.in', 'HOSTEL - 5', '511', '23EC028', 0.00, 0.00, NULL),
('23EC031', 'DIYA R GANGURDE', '9033957018', '23EC031@charusat.edu.in', 'HOSTEL - 5', '106', '23EC031', 0.00, 0.00, NULL),
('23EC072', 'AAYUSHUKUMAR S PATEL', '8155048150', '23EC072@charusat.edu.in', 'HOSTEL - 5', '511', '23EC072', 0.00, 0.00, NULL),
('23EC137', 'DIYA M THAKKAR', '9408165782', '23EC137@charusat.edu.in', 'HOSTEL - 5', '511', '23EC137', 0.00, 0.00, NULL),
('23EE008', 'DHRUVI R KAKADIYA', '7041081914', '23EE008@charusat.edu.in', 'HOSTEL - 3', '74', '23EE008', 0.00, 0.00, NULL),
('23GNM006', 'MEGHABEN G KAMOL', '9712837665', '23GNM006@charusat.edu.in', 'HOSTEL - 1', '40', '23GNM006', 0.00, NULL, NULL),
('23GNM009', 'KRISHA P MAKAWANA', '9265552788', '23GNM009@charusat.edu.in', 'HOSTEL - 1', '31', '23GNM009', 0.00, NULL, NULL),
('23GNM010', 'NILDHARA A MAKWANA', '6355087803', '23GNM010@charusat.edu.in', 'HOSTEL - 1', '43', '23GNM010', 0.00, NULL, NULL),
('23GNM013', 'DISHABEN R NIMACHIYA', '9726135741', '23GNM013@charusat.edu.in', 'HOSTEL - 1', '40', '23GNM013', 0.00, NULL, NULL),
('23IT003', 'DHVANI S ANKOLA', '7486019294', '23IT003@charusat.edu.in', 'HOSTEL - 5', '310', '23IT003', 0.00, NULL, NULL),
('23IT009', 'SHREYABEN S BHAVANI', '8488990738', '23IT009@charusat.edu.in', 'HOSTEL - 3', '72', '23IT009', 0.00, 0.00, NULL),
('23IT010', 'NYUTI R BHESANIA', '9662512897', '23IT010@charusat.edu.in', 'HOSTEL - 3', '58', '23IT010', 0.00, 0.00, NULL),
('23IT036', 'NIDHI S JAIN', '9016114644', '23IT036@charusat.edu.in', 'HOSTEL - 3', '65', '23IT036', 0.00, 0.00, NULL),
('23IT038', 'JUIEE A JAVIYA', '9723933335', '23IT038@charusat.edu.in', 'HOSTEL - 5', '614', '23IT038', 0.00, 0.00, NULL),
('23IT046', 'ISHABEN M KHUNT', '8758072422', '23IT046@charusat.edu.in', 'HOSTEL - 5', '304', '23IT046', 0.00, 0.00, NULL),
('23IT056', 'ARCHI P  MANDANI', '9825564840', '23IT056@charusat.edu.in', 'HOSTEL - 3', '58', '23IT056', 0.00, 0.00, NULL),
('23IT074', 'ANJALI R PATEL', '9601056867', '23IT074@charusat.edu.in', 'HOSTEL - 5', '208', '23IT074', 0.00, 0.00, NULL),
('23IT075', 'ARYA H PATEL', '8320207371', '23IT075@charusat.edu.in', 'HOSTEL - 5', '106', '23IT075', 0.00, 0.00, NULL),
('23IT083', 'KRISHA A PATEL', '9664839898', '23IT083@charusat.edu.in', 'HOSTEL - 5', '106', '23IT083', 0.00, 0.00, NULL),
('23IT090', 'PRIYANSHI H PATEL', '7990263026', '23IT090@charusat.edu.in', 'HOSTEL - 3', '59', '23IT090', 0.00, NULL, NULL),
('23IT101', 'HEMANGI D POPAT', '6355849626', '23IT101@charusat.edu.in', 'HOSTEL - 5', '613', '23IT101', 0.00, 0.00, NULL),
('23IT112', 'GRENCY  SAVALIYA', '9426928876', '23IT112@charusat.edu.in', 'HOSTEL - 5', '110', '23IT112', 0.00, 0.00, NULL),
('23IT126', 'KHUSHI R SOLANKI', '9904497889', '23IT126@charusat.edu.in', 'HOSTEL - 3', 'C-11', '23IT126', 0.00, NULL, NULL),
('23IT127', 'KHUSHEE A SONAGRA', '9925680909', '23IT127@charusat.edu.in', 'HOSTEL - 5', '213', '23IT127', 0.00, 0.00, NULL),
('23IT132', 'KRISHA S THAKOR', '7600444889', '23IT132@charusat.edu.in', 'HOSTEL - 5', '209', '23IT132', 0.00, 0.00, NULL),
('23IT136', 'DISHA M VEKARIA', '9327341701', '23IT136@charusat.edu.in', 'HOSTEL - 3', '73', '23IT136', 0.00, 0.00, NULL),
('23MBA015', 'ISHA R BHUVA', '7990440425', '23MBA015@charusat.edu.in', 'HOSTEL - 5', '709', '23MBA015', 0.00, NULL, NULL),
('23MBA034', 'KHUSHI N DELWADIYA', '8320465977', '23MBA034@charusat.edu.in', 'HOSTEL - 5', '701', '23MBA034', 0.00, 0.00, NULL),
('23MBA036', 'DHYANI N DESAI', '9898718530', '23MBA036@charusat.edu.in', 'HOSTEL - 5', '708', '23MBA036', 0.00, 0.00, NULL),
('23MBA039', 'HENSI P DOBARIYA', '7984926921', '23MBA039@charusat.edu.in', 'HOSTEL - 5', '709', '23MBA039', 0.00, NULL, NULL),
('23MBA051', 'DIPABEN R HIRAPARA', '9510042977', '23MBA051@charusat.edu.in', 'HOSTEL - 4', '73', '23MBA051', 0.00, NULL, NULL),
('23MBA072', 'KRITI KUMARI', '7488493881', '23MBA072@charusat.edu.in', 'HOSTEL - 5', '514', '23MBA072', 0.00, 0.00, NULL),
('23MBA122', 'HASTI U PATEL', '8780477874', '23MBA122@charusat.edu.in', 'HOSTEL - 5', '708', '23MBA122', 0.00, NULL, NULL),
('23MBA142', 'SAIYAMI PATEL', '9265271854', '23MBA142@charusat.edu.in', 'HOSTEL - 4', 'C-02', '23MBA142', 0.00, NULL, NULL),
('23MBA146', 'TULSI M ATEL', '6353552192', '23MBA146@charusat.edu.in', 'HOSTEL - 4', '71', '23MBA146', 0.00, NULL, NULL),
('23MBA154', 'JEEL G PRANAMI', '8238817172', '23MBA154@charusat.edu.in', 'HOSTEL - 5', '711', '23MBA154', 0.00, NULL, NULL),
('23MBA168', 'KHYATI H  RATHOD', '7016065097', '23MBA168@charusat.edu.in', 'HOSTEL - 5', '503', '23MBA168', 0.00, NULL, NULL),
('23MBA223', 'KESAR K VANANI', '9327058714', '23MBA223@charusat.edu.in', 'HOSTEL - 5', '504', '23MBA223', 0.00, NULL, NULL),
('23MBA227', 'JENNY M VIRPARA', '9313748085', '23MBA227@charusat.edu.in', 'HOSTEL - 5', '603', '23MBA227', 0.00, NULL, NULL),
('23MI002', 'AKANXA U CHAUDHARI', '9328001098', '23MI002@charusat.edu.in', 'HOSTEL - 4', '62', '23MI002', 0.00, 0.00, NULL),
('23MI003', 'SHRADDHA  G CHAUHAN', '8866767826', '23MI003@charusat.edu.in', 'HOSTEL - 4', '15', '23MI003', 0.00, 0.00, NULL),
('23MI005', 'HETVI V DASADIYA', '6358815481', '23MI005@charusat.edu.in', 'HOSTEL - 4', '46', '23MI005', 0.00, 0.00, NULL),
('23MI006', 'HENI  DHARASANDIA', '9909494543', '23MI006@charusat.edu.in', 'HOSTEL - 4', '49', '23MI006', 0.00, 0.00, NULL),
('23MI009', 'DHANSHREE S HAPPE', '8511654344', '23MI009@charusat.edu.in', 'HOSTEL - 4', '43', '23MI009', 0.00, 0.00, NULL),
('23MI010', 'ANJALI M HIRPARA', '9016024346', '23MI010@charusat.edu.in', 'HOSTEL - 4', 'C-11', '23MI010', 0.00, 0.00, NULL),
('23MI011', 'MANSI M JADAV', '6355758508', '23MI011@charusat.edu.in', 'HOSTEL - 4', '23', '23MI011', 0.00, 0.00, NULL),
('23MI016', 'DRASHTI D KARANGIYA', '9328769933', '23MI016@charusat.edu.in', 'HOSTEL - 4', '43', '23MI016', 0.00, 0.00, NULL),
('23MI017', 'SHRUTI P KUKADIYA', '9265352737', '23MI017@charusat.edu.in', 'HOSTEL - 4', '45', '23MI017', 0.00, 0.00, NULL),
('23MI018', 'KYURI D MANAVADARIYA', '6354156825', '23MI018@charusat.edu.in', 'HOSTEL - 4', '51', '23MI018', 0.00, 0.00, NULL),
('23MI019', 'SHRUTI N MANDANKA', '9313115727', '23MI019@charusat.edu.in', 'HOSTEL - 4', '33', '23MI019', 0.00, 0.00, NULL),
('23MI020', 'HIRVA R MEHTA', '8734853789', '23MI020@charusat.edu.in', 'HOSTEL - 4', 'C-07', '23MI020', 0.00, 0.00, NULL),
('23MI021', 'RENSI D MURANI', '6356706113', '23MI021@charusat.edu.in', 'HOSTEL - 4', '30', '23MI021', 0.00, 0.00, NULL),
('23MI022', 'KRISHA A NANDANIYA', '9016819608', '23MI022@charusat.edu.in', 'HOSTEL - 4', '69', '23MI022', 0.00, 0.00, NULL),
('23MI023', 'SAUREEN SANJAY PADALIYA', '9687977183', '23MI023@charusat.edu.in', 'HOSTEL - 4', 'C-10', '23MI023', 0.00, 0.00, NULL),
('23MI025', 'VIDHI M PARMAR', '8866540402', '23MI025@charusat.edu.in', 'HOSTEL - 4', '72', '23MI025', 0.00, 0.00, NULL),
('23MI027', 'JHANVI L PATEL', '7600998820', '23MI027@charusat.edu.in', 'HOSTEL - 4', 'C-14', '23MI027', 0.00, 0.00, NULL),
('23MI029', 'MOKSHA K PATEL', '9023954590', '23MI029@charusat.edu.in', 'HOSTEL - 4', 'C-11', '23MI029', 0.00, 0.00, NULL),
('23MI036', 'HETVI  A  RAULJI', '9313543936', '23MI036@charusat.edu.in', 'HOSTEL - 4', '4', '23MI036', 0.00, 0.00, NULL),
('23MI037', 'MITSU A SAKARIA', '9313064648', '23MI037@charusat.edu.in', 'HOSTEL - 4', 'C-18', '23MI037', 0.00, 0.00, NULL),
('23MI039', 'ARPITA D SOLANKI', '9106657596', '23MI039@charusat.edu.in', 'HOSTEL - 4', '18', '23MI039', 0.00, 0.00, NULL),
('23MI041', 'SHRUTI G SUTARIYA', '9023953797', '23MI041@charusat.edu.in', 'HOSTEL - 4', '45', '23MI041', 0.00, 0.00, NULL),
('23MI042', 'KAJAL K SWAIN', '7016043406', '23MI042@charusat.edu.in', 'HOSTEL - 4', 'C-14', '23MI042', 0.00, NULL, NULL),
('23MI046', 'AMISHABEN H VAGHELA', '9664557069', '23MI046@charusat.edu.in', 'HOSTEL - 4', '51', '23MI046', 0.00, 0.00, NULL),
('23MI049', 'DURVA DEEPAK VAZE', '9426474974', '23MI049@charusat.edu.in', 'HOSTEL - 4', '50', '23MI049', 0.00, 0.00, NULL),
('23MI051', 'SHIVANGIKUMARI P CHAUDHARI', '9712721605', '23MI051@charusat.edu.in', 'HOSTEL - 4', 'C-08', '23MI051', 0.00, NULL, NULL),
('23MNMH002', 'DRASHTI  R  JOSHI', '7043191712', '23MNMH002@charusat.edu.in', 'HOSTEL - 1', '49', '23MNMH002', 0.00, 0.00, NULL),
('23MNMS002', 'AMRUTABEN H NALVAYA', '6359090600', '23MNMS002@charusat.edu.in', 'HOSTEL - 1', '46', '23MNMS002', 0.00, 0.00, NULL),
('23MNOG001', 'TRUPATI S NIRMAL', '6355715600', '23MNOG001@charusat.edu.in', 'HOSTEL - 1', '25', '23MNOG001', 0.00, NULL, NULL),
('23MPHPCL008', 'DEVANGI V BHUVA', '8425013033', '23MPHPCL008@charusat.edu.in', 'HOSTEL - 2', '32', '23MPHPCL008', 0.00, 0.00, NULL),
('23MPHPCL009', 'TANVIBEN N TEJANI', '9023802060', '23MPHPCL009@charusat.edu.in', 'HOSTEL - 2', '44', '23MPHPCL009', 0.00, 0.00, NULL),
('23MPHPCM004', 'MAHEK  R KUNJIRAMAN', '9209613155', '23MPHPCM004@charusat.edu.in', 'HOSTEL - 2', '36', '23MPHPCM004', 0.00, NULL, NULL),
('23MPHPQA004', 'MANSI    P   PATEL', '9316007998', '23MPHPQA004@charusat.edu.in', 'HOSTEL - 2', '41', '23MPHPQA004', 0.00, 0.00, NULL),
('23MPHTCH004', 'SHREYA SHAH', '9429736995', '23MPHTCH004@charusat.edu.in', 'HOSTEL - 2', '41', '23MPHTCH004', 0.00, 0.00, NULL),
('23MPTMS104', 'VIRTI  PUNAMIYA', '7984823283', '23MPTMS104@charusat.edu.in', 'HOSTEL - 2', '73', '23MPTMS104', 0.00, NULL, NULL),
('23MPTMS106', 'DHARMI M KORAT', '6353116948', '23MPTMS106@charusat.edu.in', 'HOSTEL - 2', '66', '23MPTMS106', 0.00, NULL, NULL),
('23MPTMS108', 'MANSI    PANWALA', '7984951981', '23MPTMS108@charusat.edu.in', 'HOSTEL - 2', '21', '23MPTMS108', 0.00, NULL, NULL),
('23MPTMS109', 'KRISHNA   N    PATEL', '9099434588', '23MPTMS109@charusat.edu.in', 'HOSTEL - 2', '39', '23MPTMS109', 0.00, NULL, NULL),
('23MPTNS101', 'JANVIBA N GOHIL', '9033969393', '23MPTNS101@charusat.edu.in', 'HOSTEL - 2', '67', '23MPTNS101', 0.00, NULL, NULL),
('23MPTNS102', 'DISHA B KAMANI', '6354689178', '23MPTNS102@charusat.edu.in', 'HOSTEL - 2', '47', '23MPTNS102', 0.00, NULL, NULL),
('23MPTPA101', 'SAMIYA SALIM MANIYAR', '9824045219', '23MPTPA101@charusat.edu.in', 'HOSTEL - 2', '75', '23MPTPA101', 0.00, NULL, NULL),
('23MPTRE101', 'SHWETA J BHATIA', '8735030658', '23MPTRE101@charusat.edu.in', 'HOSTEL - 2', '47', '23MPTRE101', 0.00, NULL, NULL),
('23MPTRE103', 'PARMAR MITTALKUMARI MAKANSINH', '7984787004', '23MPTRE103@charusat.edu.in', 'HOSTEL - 2', '40', '23MPTRE103', 0.00, NULL, NULL),
('23MPTRE104', 'ALNA T ANN', '8141497566', '23MPTRE104@charusat.edu.in', 'HOSTEL - 2', '47', '23MPTRE104', 0.00, NULL, NULL),
('23MSMIT002', 'KRITIKA SHARMA', '9105247052', '23MSMIT002@charusat.edu.in', 'HOSTEL - 1', '70', '23MSMIT002', 0.00, NULL, NULL),
('23MSMLT002', 'HIRAL N DHOLARIYA', '6354332271', '23MSMLT002@charusat.edu.in', 'HOSTEL - 1', '42', '23MSMLT002', 0.00, NULL, NULL),
('23MTH004', 'ISHIKA I PARBATANI', '9824599028', '23MTH004@charusat.edu.in', 'HOSTEL - 4', '17', '23MTH004', 0.00, 0.00, NULL),
('23MTH005', 'DEVANSHI P PATEL', '6355437386', '23MTH005@charusat.edu.in', 'HOSTEL - 4', '7', '23MTH005', 0.00, NULL, NULL),
('23MTH007', 'IRSHITA K PATEL', '6351140211', '23MTH007@charusat.edu.in', 'HOSTEL - 4', '7', '23MTH007', 0.00, NULL, NULL),
('23MTH008', 'FENALIBEN I TANDEL', '9016831957', '23MTH008@charusat.edu.in', 'HOSTEL - 4', '46', '23MTH008', 0.00, NULL, NULL),
('23PGCE006', 'PRACHI PATEL', '9512493474', '23PGCE006@charusat.edu.in', 'HOSTEL - 3', '54', '23PGCE006', 0.00, 0.00, NULL),
('23TAOC022', 'RUTVI J  FADADU', '9313712996', '23TAOC022@charusat.edu.in', 'HOSTEL - 4', 'C-01', '23TAOC022', 0.00, 0.00, NULL),
('23TAOC023', 'JANVI H BARAIYA', '8866628904', '23TAOC023@charusat.edu.in', 'HOSTEL - 4', 'C-01', '23TAOC023', 0.00, NULL, NULL),
('23TBBA002', 'KHUSHI D PATEL', '7984720904', '23TBBA002@charusat.edu.in', 'HOSTEL - 5', '604', '23TBBA002', 0.00, 0.00, NULL),
('23TBBA041', 'DIYA D MODI', '9737375006', '23TBBA041@charusat.edu.in', 'HOSTEL - 5', '412', '23TBBA041', 0.00, 0.00, NULL),
('23TBBA127', 'DHVITEE R PATEL', '8780831046', '23TBBA127@charusat.edu.in', 'HOSTEL - 5', '601', '23TBBA127', 0.00, NULL, NULL),
('23TBBA192', 'GRACY B SONALI', '9499609277', '23TBBA192@charusat.edu.in', 'HOSTEL - 5', '605', '23TBBA192', 0.00, NULL, NULL),
('23TBPT037', 'PAL R NAIK', '6353780060', '23TBPT037@charusat.edu.in', 'HOSTEL - 1', '64', '23TBPT037', 0.00, 0.00, NULL),
('23TBPTQ71', 'DHRITI T PATEL', '8591286767', '23TBPTQ71@charusat.edu.in', 'HOSTEL - 3', 'C-05', '23TBPTQ71', 0.00, NULL, NULL),
('23TBSC058', 'VAIDEHI J JOSHI', '9157327049', '23TBSC058@charusat.edu.in', 'HOSTEL - 4', '6', '23TBSC058', NULL, NULL, 0.00),
('23TBSC071', 'DEVANSHI R RAVLIYA', '7984008524', '23TBSC071@charusat.edu.in', 'HOSTEL - 4', '44', '23TBSC071', 0.00, NULL, NULL),
('23TBSIT133', 'BANSI P THAKKAR', '7600694742', '23TBSIT133@charusat.edu.in', 'HOSTEL - 5', '714', '23TBSIT133', 0.00, NULL, NULL),
('23TEC063', 'HEER N DESAI', '9925207180', '23TEC063@charusat.edu.in', 'HOSTEL - 3', '61', '23TEC063', 0.00, NULL, NULL),
('23TIT002', 'ASHVI M PADSHALA', '8866152454', '23TIT002@charusat.edu.in', 'HOSTEL - 5', '612', '23TIT002', 0.00, 0.00, NULL),
('23TMI011', 'KHUSHALI A THUMAR', '7203041130', '23TMI011@charusat.edu.in', 'HOSTEL - 4', 'C-07', '23TMI011', 0.00, NULL, NULL),
('23TMI015', 'KRISHNA A BHUVA', '8780929189', '23TMI015@charusat.edu.in', 'HOSTEL - 4', 'C-01', '23TMI015', 0.00, 0.00, NULL),
('23TMPHPCL010', 'DHRUVIBEN J VEJPARA', '6352287008', '23TMPHPCL010@charusat.edu.in', 'HOSTEL - 2', '32', '23TMPHPCL010', 0.00, 0.00, NULL),
('23TMSMLT003', 'NEELAM N BHEDA', '6353522998', '23TMSMLT003@charusat.edu.in', 'HOSTEL - 1', '42', '23TMSMLT003', 0.00, NULL, NULL),
('24AOC024', 'JANVI B SAVALIYA', '6351942070', '24AOC024@charusat.edu.in', 'HOSTEL - 4', 'C-06', '24AOC024', 0.00, 0.00, NULL),
('24BIMT021', 'TIYABEN P PATEL', '9327420031', '24BIMT021@charusat.edu.in', 'HOSTEL - 4', '38', '24BIMT021', 0.00, 0.00, NULL),
('24BMIT005', 'ISHITA S DESAI', '9904071819', '24BMIT005@charusat.edu.in', 'HOSTEL - 4', '5', '24BMIT005', 0.00, 0.00, NULL),
('24BMIT007', 'ANGEL H HIRAPARA', '8200592661', '24BMIT007@charusat.edu.in', 'HOSTEL - 4', '19', '24BMIT007', 0.00, 0.00, NULL),
('24BMIT009', 'ISHITA N PAREKH', '8511423780', '24BMIT009@charusat.edu.in', 'HOSTEL - 4', 'C-07', '24BMIT009', 0.00, 0.00, NULL),
('24BMIT032', 'PRACHI H PATEL', '9313846162', '24BMIT032@charusat.edu.in', 'HOSTEL - 4', '22', '24BMIT032', 0.00, NULL, NULL),
('24BN001', 'PREYANSHI R AMIN', '6353974930', '24BN001@charusat.edu.in', 'HOSTEL - 1', '46', '24BN001', 0.00, 0.00, NULL),
('24BN002', 'KHUSHI B APARNATHI', '8200299136', '24BN002@charusat.edu.in', 'HOSTEL - 1', '67', '24BN002', 0.00, 0.00, NULL),
('24BN008', 'JIYAKUMARI B CHAUDHARI', '7874158534', '24BN008@charusat.edu.in', 'HOSTEL - 1', '36', '24BN008', 0.00, 0.00, NULL),
('24BN028', 'DAMINIBEN G PARMAR', '9327711624', '24BN028@charusat.edu.in', 'HOSTEL - 1', '32', '24BN028', 0.00, 0.00, NULL),
('24BN034', 'BINAL R PATEL', '7567091481', '24BN034@charusat.edu.in', 'HOSTEL - 1', '55', '24BN034', 0.00, 0.00, NULL),
('24BOP004', 'HARDI S GANATRA', '7096187627', '24BOP004@charusat.edu.in', 'HOSTEL - 4', 'C-05', '24BOP004', 0.00, NULL, NULL),
('24BOP009', 'MEHWISHBANU A SHAIKH', '8485950433', '24BOP009@charusat.edu.in', 'HOSTEL - 2', '47', '24BOP009', 0.00, 0.00, NULL),
('24BOP011', 'RABIYA SUTHAR', '9328903379', '24BOP011@charusat.edu.in', 'HOSTEL - 4', 'C-03', '24BOP011', NULL, NULL, NULL),
('24BOTA020', 'KHUSHBU R PATEL', '9978024144', '24BOTA020@charusat.edu.in', 'HOSTEL - 4', '31', '24BOTA020', 0.00, 0.00, NULL),
('24BPH022', 'AMI N KALARIYA', '8490800599', '24BPH022@charusat.edu.in', 'HOSTEL - 1', '19', '24BPH022', 0.00, 0.00, NULL),
('24BPH043', 'DHANVI M PATEL', '9558507455', '24BPH043@charusat.edu.in', 'HOSTEL - 2', '37', '24BPH043', 0.00, 0.00, NULL);
INSERT INTO `hostel_student` (`student_id`, `fullname`, `phone_no`, `email`, `hostel`, `room_no`, `password`, `first`, `second`, `full`) VALUES
('24BPH075', 'TANISHA K PATEL', '7984167894', '24BPH075@charusat.edu.in', 'HOSTEL - 1', '17', '24BPH075', 0.00, 0.00, NULL),
('24BPH085', 'DHRUVIIBEN M PRAJAPATI', '9624250395', '24BPH085@charusat.edu.in', 'HOSTEL - 1', '15', '24BPH085', 0.00, 0.00, NULL),
('24BPH093', 'PRIYA K SAVALIYA', '9773264412', '24BPH093@charusat.edu.in', 'HOSTEL - 1', '16', '24BPH093', 0.00, 0.00, NULL),
('24BPH105', 'DHRUVI J TAILOR', '9313699073', '24BPH105@charusat.edu.in', 'HOSTEL - 2', '37', '24BPH105', 0.00, 0.00, NULL),
('24BPT001', 'KRUPALI M AMBALIYA', '9429680281', '24BPT001@charusat.edu.in', 'HOSTEL - 3', '66', '24BPT001', 0.00, 0.00, NULL),
('24BPT002', 'VISHVA N ANAJWALA', '6354662658', '24BPT002@charusat.edu.in', 'HOSTEL - 3', '70', '24BPT002', 0.00, 0.00, NULL),
('24BPT004', 'RADHIKA BARAIYA', '8758685880', '24BPT004@charusat.edu.in', 'HOSTEL - 3', 'C-12', '24BPT004', 0.00, 0.00, NULL),
('24BPT006', 'HETVI C BHATT', '9998881851', '24BPT006@charusat.edu.in', 'HOSTEL - 3', '48', '24BPT006', 0.00, 0.00, NULL),
('24BPT01', 'PRIYANSHI D CHAVDA', '9727722315', '24BPT01@charusat.edu.in', 'HOSTEL - 3', '70', '24BPT01', 0.00, 0.00, NULL),
('24BPT019', 'HASTI H KORAT', '6355781148', '24BPT019@charusat.edu.in', 'HOSTEL - 3', 'C-04', '24BPT019', 0.00, 0.00, NULL),
('24BPT022', 'RIYA D MAHESHWARY', '6353224418', '24BPT022@charusat.edu.in', 'HOSTEL - 3', 'C-12', '24BPT022', 0.00, 0.00, NULL),
('24BPT026', 'SANCH B MEHTA', '8320023533', '24BPT026@charusat.edu.in', 'HOSTEL - 3', '53', '24BPT026', 0.00, 0.00, NULL),
('24BPT029', 'RENA P NAIK', '9510226997', '24BPT029@charusat.edu.in', 'HOSTEL - 3', '23', '24BPT029', 0.00, 0.00, NULL),
('24BPT037', 'CHARMI M PATEL', '9313197411', '24BPT037@charusat.edu.in', 'HOSTEL - 3', '53', '24BPT037', 0.00, 0.00, NULL),
('24BPT043', 'GAUTAMI J PATEL', '6353891287', '24BPT043@charusat.edu.in', 'HOSTEL - 3', '48', '24BPT043', 0.00, 0.00, NULL),
('24BPT046', 'JHANVI R PATEL', '7016022261', '24BPT046@charusat.edu.in', 'HOSTEL - 3', '70', '24BPT046', 0.00, 0.00, NULL),
('24BPT074', 'VAISHVIBEN N PATEL', '9227007658', '24BPT074@charusat.edu.in', 'HOSTEL - 3', 'C-12', '24BPT074', 0.00, 0.00, NULL),
('24BPT076', 'VRUKSHA J PATEL', '7862840949', '24BPT076@charusat.edu.in', 'HOSTEL - 3', '48', '24BPT076', 0.00, NULL, NULL),
('24BPT088', 'BHARVI SHAH', '9909035949', '24BPT088@charusat.edu.in', 'HOSTEL - 3', '22', '24BPT088', NULL, 0.00, NULL),
('24BPT094', 'HARVI H SHINGALA', '9979881183', '24BPT094@charusat.edu.in', 'HOSTEL - 3', '70', '24BPT094', 0.00, 0.00, NULL),
('24BPT100', 'NANDINI  V VADALIYA', '9662510277', '24BPT100@charusat.edu.in', 'HOSTEL - 3', 'C-12', '24BPT100', 0.00, 0.00, NULL),
('24BPT103', 'AANCY S MUNGRA', '9316761726', '24BPT103@charusat.edu.in', 'HOSTEL - 3', '20', '24BPT103', 0.00, 0.00, NULL),
('24BSC003', 'VISHWA R BAMBHROLIYA', '8511374200', '24BSC003@charusat.edu.in', 'HOSTEL - 4', 'C-07', '24BSC003', 0.00, 0.00, NULL),
('24BSC009', 'SONU BHARVAD', '9727176187', '24BSC009@charusat.edu.in', 'HOSTEL - 4', '7', '24BSC009', 0.00, 0.00, NULL),
('24BSC010', 'SHUBHANGI P BHATT', '8890014101', '24BSC010@charusat.edu.in', 'HOSTEL - 4', '47', '24BSC010', 0.00, 0.00, NULL),
('24BSC015', 'PRIYANSHI D CHAUHAN', '8849611910', '24BSC015@charusat.edu.in', 'HOSTEL - 4', '72', '24BSC015', 0.00, 0.00, NULL),
('24BSC020', 'VRINDA DADHANIA', '9724396948', '24BSC020@charusat.edu.in', 'HOSTEL - 4', '35', '24BSC020', 0.00, 0.00, NULL),
('24BSC027', 'DOBARIYA ZEEL MEHULBHAI', '7016232016', '24BSC027@charusat.edu.in', 'HOSTEL - 4', '12', '24BSC027', 0.00, 0.00, NULL),
('24BSC030', 'VISHA P GAJERA', '7016458617', '24BSC030@charusat.edu.in', 'HOSTEL - 4', '55', '24BSC030', 0.00, 0.00, NULL),
('24BSC044', 'KRIPA R LODHIA', '9313361249', '24BSC044@charusat.edu.in', 'HOSTEL - 4', '38', '24BSC044', 0.00, 0.00, NULL),
('24BSC051', 'VAISHNAVI P METHA', '7779037952', '24BSC051@charusat.edu.in', 'HOSTEL - 4', '3', '24BSC051', 0.00, 0.00, NULL),
('24BSC073', 'DHRUVI P PATEL', '7096051247', '24BSC073@charusat.edu.in', 'HOSTEL - 4', 'C-10', '24BSC073', 0.00, 0.00, NULL),
('24BSC084', 'PATEL KRISHA AJAYBHAI', '9586128980', '24BSC084@charusat.edu.in', 'HOSTEL - 4', '72', '24BSC084', 0.00, 0.00, NULL),
('24BSC085', 'KRIYA PATEL', '9898252626', '24BSC085@charusat.edu.in', 'HOSTEL - 4', '64', '24BSC085', 0.00, 0.00, NULL),
('24BSC087', 'MANASVI D PATEL', '8849006724', '24BSC087@charusat.edu.in', 'HOSTEL - 4', '12', '24BSC087', 0.00, 0.00, NULL),
('24BSC095', 'PRARTHANABEN H PATEL', '9429188194', '24BSC095@charusat.edu.in', 'HOSTEL - 4', '26', '24BSC095', 0.00, 0.00, NULL),
('24BSC108', 'ZEEL S PATEL', '7874272281', '24BSC108@charusat.edu.in', 'HOSTEL - 4', '50', '24BSC108', 0.00, 0.00, NULL),
('24BSC111', 'PRACHI RANA', '7574974847', '24BSC111@charusat.edu.in', 'HOSTEL - 4', '66', '24BSC111', 0.00, 0.00, NULL),
('24BSC114', 'MISHWA PRAJAPATI', '9023416167', '24BSC114@charusat.edu.in', 'HOSTEL - 4', 'C-10', '24BSC114', 0.00, 0.00, NULL),
('24BSC115', 'SHEHA A PRAJAPATI', '7435824839', '24BSC115@charusat.edu.in', 'HOSTEL - 4', 'C-08', '24BSC115', 0.00, 0.00, NULL),
('24BSC125', 'VISHVA B VADALIYA', '9909059995', '24BSC125@charusat.edu.in', 'HOSTEL - 4', 'C-09', '24BSC125', 0.00, 0.00, NULL),
('24BSC132', 'KAVYA D SHAH', '7016872726', '24BSC132@charusat.edu.in', 'HOSTEL - 4', 'C-15', '24BSC132', 0.00, 0.00, NULL),
('24BSC136', 'SHAH YASHI SURESH', '9427467966', '24BSC136@charusat.edu.in', 'HOSTEL - 4', '61', '24BSC136', 0.00, 0.00, NULL),
('24BSC156', 'AVANI K VAGHAMSHI', '9913420892', '24BSC156@charusat.edu.in', 'HOSTEL - 4', '15', '24BSC156', 0.00, 0.00, NULL),
('24BSM033', 'MAHI H TANDEL', '9978336098', '24BSM033@charusat.edu.in', 'HOSTEL - 4', '31', '24BSM033', 0.00, 0.00, NULL),
('24BSMT001', 'ISHIKA K ATHIA', '9825922109', '24BSMT001@charusat.edu.in', 'HOSTEL - 4', '31', '24BSMT001', 0.00, 0.00, NULL),
('24BSMT005', 'KOMAL  H CHANDE', '7990640577', '24BSMT005@charusat.edu.in', 'HOSTEL - 4', '48', '24BSMT005', 0.00, 0.00, NULL),
('24BT001', 'SAKSHI', '9023004020', '24BT001@charusat.edu.in', 'HOSTEL - 4', 'C-02', '24BT001', 0.00, 0.00, NULL),
('24BT016', 'YASHVI   KOTADIYA', '8320486873', '24BT016@charusat.edu.in', 'HOSTEL - 4', '34', '24BT016', 0.00, NULL, NULL),
('24BT017', 'PRUTHA M LIMBASIYA', '7990400735', '24BT017@charusat.edu.in', 'HOSTEL - 4', '16', '24BT017', 0.00, 0.00, NULL),
('24BT027', 'BHAVYA PATEL', '9313077034', '24BT027@charusat.edu.in', 'HOSTEL - 4', '10', '24BT027', 0.00, NULL, NULL),
('24BT034', 'MAITRI J PATEL', '7383863267', '24BT034@charusat.edu.in', 'HOSTEL - 4', '34', '24BT034', 0.00, NULL, NULL),
('24BT039', 'NEHA SAVALIYA', '7016526140', '24BT039@charusat.edu.in', 'HOSTEL - 4', 'C-06', '24BT039', 0.00, 0.00, NULL),
('24BT058', 'AMI ZALAVADIYA', '9586203738', '24BT058@charusat.edu.in', 'HOSTEL - 4', '20', '24BT058', 0.00, 0.00, NULL),
('24CE053', 'VAIBHAVI S KARIYA', '9559572672', '24CE053@charusat.edu.in', 'HOSTEL - 3', '51', '24CE053', 0.00, 0.00, NULL),
('24DCE005', 'KHUSHEE H AMIN', '7016768840', '24DCE005@charusat.edu.in', 'HOSTEL - 3', '72', '24DCE005', 0.00, 0.00, NULL),
('24DCE101', 'TUSHYA K PATEL', '6358730073', '24DCE101@charusat.edu.in', 'HOSTEL - 3', '68', '24DCE101', 0.00, 0.00, NULL),
('24DCE141', 'MAHI A SURANI', '9979066922', '24DCE141@charusat.edu.in', 'HOSTEL - 3', '18', '24DCE141', 0.00, 0.00, NULL),
('24DCS094', 'VYOMA M PATEL', '8320150054', '24DCS094@charusat.edu.in', 'HOSTEL - 3', '34', '24DCS094', NULL, 0.00, NULL),
('24DCS119', 'MAHEK S SHAH', '8128674647', '24DCS119@charusat.edu.in', 'HOSTEL - 3', '73', '24DCS119', 0.00, 0.00, NULL),
('24DCS146', 'NITYA VAIDYA', '9601715978', '24DCS146@charusat.edu.in', 'HOSTEL - 3', 'C-11', '24DCS146', 0.00, 0.00, NULL),
('24DE032', 'HELI M PATEL', '7575899739', '24DE032@charusat.edu.in', 'HOSTEL - 3', '37', '24DE032', NULL, 0.00, NULL),
('24DIT004', 'YASHVIBEN K BHADANI', '9879818595', '24DIT004@charusat.edu.in', 'HOSTEL - 3', '18', '24DIT004', 0.00, 0.00, NULL),
('24DIT030', 'ASTHA A MAKAWANA', '9558435197', '24DIT030@charusat.edu.in', 'HOSTEL - 3', '17', '24DIT030', 0.00, 0.00, NULL),
('24DIT055', 'YASHVI PRAJAPATI', '9426693737', '24DIT055@charusat.edu.in', 'HOSTEL - 3', '47', '24DIT055', 0.00, NULL, NULL),
('24DRFOSPHY001', 'VISHWA J PADIA', '9327999977', '24DRFOSPHY001@charusat.edu.in', 'HOSTEL - 4', '4', '24DRFOSPHY001', 0.00, 0.00, NULL),
('24EC030', 'RUTVI V GABANI', '8780641791', '24EC030@charusat.edu.in', 'HOSTEL - 3', '12', '24EC030', 0.00, 0.00, NULL),
('24EC127', 'VRITIKA R PATEL', '8160881689', '24EC127@charusat.edu.in', 'HOSTEL - 3', 'C-07', '24EC127', NULL, 0.00, NULL),
('24EC132', 'NENCY N PRAJAPTI', '8238094878', '24EC132@charusat.edu.in', 'HOSTEL - 3', '49', '24EC132', 0.00, 0.00, NULL),
('24EE002', 'DHARVI M BHATT', '9106456247', '24EE002@charusat.edu.in', 'HOSTEL - 3', 'C-07', '24EE002', NULL, 0.00, NULL),
('24EE012', 'LAVNYA D GHATAGE', '7862870692', '24EE012@charusat.edu.in', 'HOSTEL - 3', '37', '24EE012', NULL, 0.00, NULL),
('24EE016', 'JAINI NAGDEV', '9023385258', '24EE016@charusat.edu.in', 'HOSTEL - 3', 'C-07', '24EE016', NULL, 0.00, NULL),
('24EE027', 'BHAKTI CHIRAG PATEL', '6352804573', '24EE027@charusat.edu.in', 'HOSTEL - 3', '37', '24EE027', 0.00, 0.00, NULL),
('24GNM027', 'AASHI N VIRANI', '9978826279', '24GNM027@charusat.edu.in', 'HOSTEL - 1', '68', '24GNM027', 0.00, 0.00, NULL),
('24IT017', 'KHUSHI J DONDA', '7285057211', '24IT017@charusat.edu.in', 'HOSTEL - 3', '18', '24IT017', 0.00, 0.00, NULL),
('24IT073', 'PRINCY B PATEL', '8320725376', '24IT073@charusat.edu.in', 'HOSTEL - 3', '51', '24IT073', 0.00, 0.00, NULL),
('24IT109', 'JIYA P VINCHHI', '9426927907', '24IT109@charusat.edu.in', 'HOSTEL - 3', '51', '24IT109', 0.00, 0.00, NULL),
('24ITBSCZIC', 'JIYA PATEL', '6354481079', '24ITBSCZIC@charusat.edu.in', 'HOSTEL - 4', '63', '24ITBSCZIC', 0.00, NULL, NULL),
('24MBA005', 'PRIYA K BABARIYA', '7990520567', '24MBA005@charusat.edu.in', 'HOSTEL - 4', 'C-12', '24MBA005', 0.00, 0.00, NULL),
('24MBA024', 'JAYSHREE DEORE', '9586482554', '24MBA024@charusat.edu.in', 'HOSTEL - 4', '68', '24MBA024', 0.00, 0.00, NULL),
('24MBA049', 'MAUSMI  J KANSAGRA', '6356659650', '24MBA049@charusat.edu.in', 'HOSTEL - 4', 'C-05', '24MBA049', 0.00, 0.00, NULL),
('24MBA050', 'AYUSHI S KAVAR', '9429440670', '24MBA050@charusat.edu.in', 'HOSTEL - 4', 'C-12', '24MBA050', 0.00, 0.00, NULL),
('24MBA054', 'KHUSHALI V LAKHANI', '8490849319', '24MBA054@charusat.edu.in', 'HOSTEL - 4', 'C-12', '24MBA054', 0.00, 0.00, NULL),
('24MBA066', 'JAYMIKA MISTRY', '9714246729', '24MBA066@charusat.edu.in', 'HOSTEL - 4', '74', '24MBA066', 0.00, 0.00, NULL),
('24MBA120', 'NANDINI V PATEL', '7014890016', '24MBA120@charusat.edu.in', 'HOSTEL - 4', '74', '24MBA120', 0.00, 0.00, NULL),
('24MBA142', 'VAIDEHI N PATEL', '8758909703', '24MBA142@charusat.edu.in', 'HOSTEL - 4', 'C-13', '24MBA142', 0.00, 0.00, NULL),
('24MBA190', 'PREXA M TRAMBADIYA', '9510207139', '24MBA190@charusat.edu.in', 'HOSTEL - 4', 'C-05', '24MBA190', 0.00, 0.00, NULL),
('24MBABPT', 'VIDHISHA VAGADIYA', '8799220959', '24MBABPT@charusat.edu.in', 'HOSTEL - 4', 'C-05', '24MBABPT', 0.00, NULL, NULL),
('24MCA042', 'DHRUVI G MATHUKIYA', '9898196102', '24MCA042@charusat.edu.in', 'HOSTEL - 3', '27', '24MCA042', 0.00, 0.00, NULL),
('24MI007', 'PRACHI P DHOLAKIYA', '7861081861', '24MI007@charusat.edu.in', 'HOSTEL - 4', 'C-06', '24MI007', 0.00, NULL, NULL),
('24MI014', 'JUHI R KEVADIYA', '9313532344', '24MI014@charusat.edu.in', 'HOSTEL - 4', '40', '24MI014', 0.00, 0.00, NULL),
('24MI015', 'KHUSHI H LAD', '9723313388', '24MI015@charusat.edu.in', 'HOSTEL - 4', '15', '24MI015', 0.00, NULL, NULL),
('24MI025', 'DEVANSHI R PATEL', '7433044423', '24MI025@charusat.edu.in', 'HOSTEL - 4', '9', '24MI025', 0.00, NULL, NULL),
('24MI026', 'JAINSI H PATEL', '8799180254', '24MI026@charusat.edu.in', 'HOSTEL - 4', '45', '24MI026', 0.00, NULL, NULL),
('24MI030', 'NISTHA PATEL', '7861868989', '24MI030@charusat.edu.in', 'HOSTEL - 4', '34', '24MI030', 0.00, NULL, NULL),
('24MI032', 'PRAYOSHABAHEN S PATEL', '9484646874', '24MI032@charusat.edu.in', 'HOSTEL - 4', '13', '24MI032', 0.00, 0.00, NULL),
('24MI037', 'JAHNAVI ROHIT', '7359256493', '24MI037@charusat.edu.in', 'HOSTEL - 4', '9', '24MI037', 0.00, 0.00, NULL),
('24MI038', 'AASTHA D SEVAK', '9998037912', '24MI038@charusat.edu.in', 'HOSTEL - 4', '4', '24MI038', 0.00, 0.00, NULL),
('24MI046', 'MONIKA R MANGORALIYA', '6351370197', '24MI046@charusat.edu.in', 'HOSTEL - 4', '22', '24MI046', 0.00, 0.00, NULL),
('24MI047', 'KARANGIYA  MAHEK MAHESHBHAI', '6354466105', '24MI047@charusat.edu.in', 'HOSTEL - 4', '42', '24MI047', 0.00, 0.00, NULL),
('24MPHPCM011', 'KARINA L PATEL', '9586951591', '24MPHPCM011@charusat.edu.in', 'HOSTEL - 2', '23', '24MPHPCM011', 0.00, 0.00, NULL),
('24MPHPQA004', 'MANSI D RANA', '9586338891', '24MPHPQA004@charusat.edu.in', 'HOSTEL - 2', '23', '24MPHPQA004', 0.00, 0.00, NULL),
('24MPHPQA013', 'BHAKTI B PATEL', '9727445988', '24MPHPQA013@charusat.edu.in', 'HOSTEL - 2', '49', '24MPHPQA013', 0.00, 0.00, NULL),
('24MPHRGA004', 'RISHVA R PATEL', '9104538137', '24MPHRGA004@charusat.edu.in', 'HOSTEL - 2', '49', '24MPHRGA004', 0.00, 0.00, NULL),
('24MPTCS101', 'BANSI  C LAKHANI', '9106911105', '24MPTCS101@charusat.edu.in', 'HOSTEL - 1', '63', '24MPTCS101', 0.00, 0.00, NULL),
('24MPTMS107', 'BHAVANA B SWAMI', '8401039160', '24MPTMS107@charusat.edu.in', 'HOSTEL - 1', '44', '24MPTMS107', 0.00, 0.00, NULL),
('24MPTN106', 'RICHA M SAMPAT', '7359695007', '24MPTN106@charusat.edu.in', 'HOSTEL - 1', '37', '24MPTN106', 0.00, 0.00, NULL),
('24MPTNS103', 'JEEL  S DHORI', '9327714672', '24MPTNS103@charusat.edu.in', 'HOSTEL - 1', '37', '24MPTNS103', 0.00, 0.00, NULL),
('24MPTNS107', 'MANSI J TANK', '9427658148', '24MPTNS107@charusat.edu.in', 'HOSTEL - 1', '63', '24MPTNS107', 0.00, 0.00, NULL),
('24MPTPA101', 'ARCHANA V CHITALIYA', '9726193598', '24MPTPA101@charusat.edu.in', 'HOSTEL - 1', '73', '24MPTPA101', 0.00, 0.00, NULL),
('24MPTRE102', 'NISHITA H MATNG', '9624563640', '24MPTRE102@charusat.edu.in', 'HOSTEL - 1', '63', '24MPTRE102', 0.00, 0.00, NULL),
('24MSIT066', 'HARDI D NAIK', '9726780996', '24MSIT066@charusat.edu.in', 'HOSTEL - 3', '27', '24MSIT066', 0.00, NULL, NULL),
('24MSIT087', 'HETVI S PATEL', '6356756906', '24MSIT087@charusat.edu.in', 'HOSTEL - 3', 'C-09', '24MSIT087', 0.00, NULL, NULL),
('24MSMLT002', 'MANALI V KHUNT', '6356069011', '24MSMLT002@charusat.edu.in', 'HOSTEL - 4', '53', '24MSMLT002', 0.00, 0.00, NULL),
('24MSMLT003', 'AESHA D PATEL', '9773213756', '24MSMLT003@charusat.edu.in', 'HOSTEL - 4', '32', '24MSMLT003', 0.00, 0.00, NULL),
('24MSMLT006', 'HEMANGINI A PATEL', '8780390765', '24MSMLT006@charusat.edu.in', 'HOSTEL - 4', '19', '24MSMLT006', 0.00, 0.00, NULL),
('24MSMLT021', 'JUHI R CHAUDHARI', '8401963343', '24MSMLT021@charusat.edu.in', 'HOSTEL - 4', '33', '24MSMLT021', 0.00, 0.00, NULL),
('24MTH002', 'DHVANI P PATEL', '9313289769', '24MTH002@charusat.edu.in', 'HOSTEL - 4', '18', '24MTH002', 0.00, 0.00, NULL),
('24MTH003', 'HETVI  S PATEL', '7043593985', '24MTH003@charusat.edu.in', 'HOSTEL - 4', '18', '24MTH003', 0.00, 0.00, NULL),
('24MTH005', 'NIDHI J PATEL', '9558019889', '24MTH005@charusat.edu.in', 'HOSTEL - 4', '18', '24MTH005', 0.00, 0.00, NULL),
('24PGCE008', 'DIYA D PATEL', '9099612377', '24PGCE008@charusat.edu.in', 'HOSTEL - 3', '41', '24PGCE008', 0.00, 0.00, NULL),
('24PGCE017', 'AARCHI PRAJAPATI', '8128792737', '24PGCE017@charusat.edu.in', 'HOSTEL - 3', '41', '24PGCE017', 0.00, NULL, NULL),
('24PGCE021', 'DEVANSHI B MEHTA', '9313174831', '24PGCE021@charusat.edu.in', 'HOSTEL - 3', '27', '24PGCE021', 0.00, NULL, NULL),
('24PGCL001', 'YAMINIKUMARI R DHODIYA', '6354108366', '24PGCL001@charusat.edu.in', 'HOSTEL - 3', '41', '24PGCL001', 0.00, 0.00, NULL),
('24TACOMW', 'BHOOMI P BHOJWANI', '8799486533', '24TACOMW@charusat.edu.in', 'HOSTEL - 4', '13', '24TACOMW', 0.00, 0.00, NULL),
('24TAIML059', 'MAHIBEN U SAVANI', '9773468104', '24TAIML059@charusat.edu.in', 'HOSTEL - 3', '12', '24TAIML059', 0.00, 0.00, NULL),
('24TAIMLFOI', 'HEMANGI G PARMAR', '9558591102', '24TAIMLFOI@charusat.edu.in', 'HOSTEL - 3', '20', '24TAIMLFOI', 0.00, 0.00, NULL),
('24TAIMLTC8', 'KRESHVI R DONGA', '8200719362', '24TAIMLTC8@charusat.edu.in', 'HOSTEL - 3', '18', '24TAIMLTC8', 0.00, 0.00, NULL),
('24TBCRAG', 'DHRASHTI MANSURIYA', '9316896982', '24TBCRAG@charusat.edu.in', 'HOSTEL - 4', '8', '24TBCRAG', 0.00, NULL, NULL),
('24TBN0 A1', 'PARMAR HETVI', '9316745677', '24TBN0 A1@charusat.edu.in', 'HOSTEL - 1', '26', '24TBN0 A1', 0.00, NULL, NULL),
('24TBN459', 'DHRUVI M PATEL', '8799571805', '24TBN459@charusat.edu.in', 'HOSTEL - 1', '24', '24TBN459', 0.00, 0.00, NULL),
('24TBN6HV', 'ZEEL M TANDEL', '8849883015', '24TBN6HV@charusat.edu.in', 'HOSTEL - 1', '36', '24TBN6HV', 0.00, 0.00, NULL),
('24TBN8LM', 'TANVI B DARJI', '7862933641', '24TBN8LM@charusat.edu.in', 'HOSTEL - 1', '34', '24TBN8LM', 0.00, NULL, NULL),
('24TBNDEK', 'PARI J PATEL', '9081805917', '24TBNDEK@charusat.edu.in', 'HOSTEL - 1', '75', '24TBNDEK', 0.00, NULL, NULL),
('24TBNFY9', 'TULSIBEN K CHAUHAN', '9586650132', '24TBNFY9@charusat.edu.in', 'HOSTEL - 1', '75', '24TBNFY9', 0.00, NULL, NULL),
('24TBNMITE', 'PRINCEY RAHULKUMAR PATEL', '6354240640', '24TBNMITE@charusat.edu.in', 'HOSTEL - 1', '60', '24TBNMITE', 0.00, NULL, NULL),
('24TBNN5E', 'DIVYABEN G RATHVA', '7016687277', '24TBNN5E@charusat.edu.in', 'HOSTEL - 1', '11', '24TBNN5E', 0.00, 0.00, NULL),
('24TBNROV', 'DISHA M KANSARA', '6359631151', '24TBNROV@charusat.edu.in', 'HOSTEL - 1', '2', '24TBNROV', 0.00, NULL, NULL),
('24TBNUHA', 'PANKTI R PATEL', '7359412205', '24TBNUHA@charusat.edu.in', 'HOSTEL - 1', '72', '24TBNUHA', 0.00, NULL, NULL),
('24TBNZDO', 'YASHVI S PATEL', '6352481955', '24TBNZDO@charusat.edu.in', 'HOSTEL - 1', '2', '24TBNZDO', 0.00, NULL, NULL),
('24TBOPIXQ', 'DIYA D HALPATI', '7048319906', '24TBOPIXQ@charusat.edu.in', 'HOSTEL - 2', '1', '24TBOPIXQ', 0.00, 0.00, NULL),
('24TBOPSDK', 'MEGHA P KHACHARIYA', '9601276644', '24TBOPSDK@charusat.edu.in', 'HOSTEL - 4', '52', '24TBOPSDK', 0.00, NULL, NULL),
('24TBOPTUA', 'RUCHI M VEKARIYA', '9998512313', '24TBOPTUA@charusat.edu.in', 'HOSTEL - 4', '52', '24TBOPTUA', 0.00, NULL, NULL),
('24TBOTAT40P', 'AMISHA S THAKUR', '9313606864', '24TBOTAT40P@charusat.edu.in', 'HOSTEL - 4', '13', '24TBOTAT40P', 0.00, 0.00, NULL),
('24TBOTATBB4', 'PAYALBEN N BARICHA', '9978751931', '24TBOTATBB4@charusat.edu.in', 'HOSTEL - 4', '31', '24TBOTATBB4', 0.00, 0.00, NULL),
('24TBOTATMIA', 'HAYA D PATEL', '7984541275', '24TBOTATMIA@charusat.edu.in', 'HOSTEL - 4', '69', '24TBOTATMIA', 0.00, NULL, NULL),
('24TBOTXYD', 'DILVI D PATEL', '9904576333', '24TBOTXYD@charusat.edu.in', 'HOSTEL - 4', '69', '24TBOTXYD', 0.00, 0.00, NULL),
('24TBPH3HF', 'GAURI K PATEL', '8261051866', '24TBPH3HF@charusat.edu.in', 'HOSTEL - 1', '17', '24TBPH3HF', 0.00, NULL, NULL),
('24TBPH6PW', 'DISHVABEN HIRENKUMAR PATEL', '9023793863', '24TBPH6PW@charusat.edu.in', 'HOSTEL - 1', '14', '24TBPH6PW', 0.00, NULL, NULL),
('24TBPHACX', 'JIYA M BHANUSHALI', '7574934086', '24TBPHACX@charusat.edu.in', 'HOSTEL - 2', '14', '24TBPHACX', 0.00, NULL, NULL),
('24TBPHATO', 'VRUSHA B PATEL', '9313872891', '24TBPHATO@charusat.edu.in', 'HOSTEL - 1', '12', '24TBPHATO', 0.00, NULL, NULL),
('24TBPHC8O', 'TANVI P PATEL', '9201663095', '24TBPHC8O@charusat.edu.in', 'HOSTEL - 1', '11', '24TBPHC8O', 0.00, NULL, NULL),
('24TBPHCOE', 'DRASHTI V CHAUDHARI', '9725799885', '24TBPHCOE@charusat.edu.in', 'HOSTEL - 1', '29', '24TBPHCOE', 0.00, NULL, NULL),
('24TBPHKYU', 'RISHITA A UPADHYAY', '8980532049', '24TBPHKYU@charusat.edu.in', 'HOSTEL - 1', '12', '24TBPHKYU', 0.00, NULL, NULL),
('24TBPHODY', 'FENI R HADVANI', '9023874149', '24TBPHODY@charusat.edu.in', 'HOSTEL - 2', '15', '24TBPHODY', 0.00, NULL, NULL),
('24TBPHPRO', 'PRACHI K PATEL', '9023309846', '24TBPHPRO@charusat.edu.in', 'HOSTEL - 1', '18', '24TBPHPRO', 0.00, NULL, NULL),
('24TBPHQA4', 'UNNATI N KALOLA', '7567718412', '24TBPHQA4@charusat.edu.in', 'HOSTEL - 1', '19', '24TBPHQA4', 0.00, NULL, NULL),
('24TBPHQJ5', 'ARMY R LAKKAD', '9664504874', '24TBPHQJ5@charusat.edu.in', 'HOSTEL - 1', '14', '24TBPHQJ5', 0.00, NULL, NULL),
('24TBPHUVU', 'MANSI H MANDAVIYA', '9484455022', '24TBPHUVU@charusat.edu.in', 'HOSTEL - 1', '16', '24TBPHUVU', 0.00, NULL, NULL),
('24TBPHV2C', 'JANAKBEN G ADALAJA', '7069900444', '24TBPHV2C@charusat.edu.in', 'HOSTEL - 1', '24', '24TBPHV2C', 0.00, NULL, NULL),
('24TBPHWBG', 'HIMANIBEN S RAJ', '7863881190', '24TBPHWBG@charusat.edu.in', 'HOSTEL - 1', '15', '24TBPHWBG', 0.00, 0.00, NULL),
('24TBPHXVE', 'AASTHA A PATEL `', '9106861088', '24TBPHXVE@charusat.edu.in', 'HOSTEL - 2', '35', '24TBPHXVE', 0.00, NULL, NULL),
('24TBPHXX2', 'ISHA G GAVIT', '8320973051', '24TBPHXX2@charusat.edu.in', 'HOSTEL - 1', '29', '24TBPHXX2', 0.00, NULL, NULL),
('24TBPHY00', 'SHAKSHI R PATEL', '7984855591', '24TBPHY00@charusat.edu.in', 'HOSTEL - 2', '15', '24TBPHY00', 0.00, NULL, NULL),
('24TBPHZF8', 'YANSI S PATEL', '6352314230', '24TBPHZF8@charusat.edu.in', 'HOSTEL - 2', '35', '24TBPHZF8', 0.00, 0.00, NULL),
('24TBPHZTI', 'ARCHI N AMRUTIYA', '9428756914', '24TBPHZTI@charusat.edu.in', 'HOSTEL - 1', '18', '24TBPHZTI', 0.00, NULL, NULL),
('24TBPTDKO', 'SAKSHI PATEL', '9313778851', '24TBPTDKO@charusat.edu.in', 'HOSTEL - 1', '61', '24TBPTDKO', 0.00, NULL, NULL),
('24TBPTFAN', 'PALAK D MEHTA', '9687656190', '24TBPTFAN@charusat.edu.in', 'HOSTEL - 3', '53', '24TBPTFAN', 0.00, 0.00, NULL),
('24TBPTHIP', 'DHANVI D PATEL', '8849386860', '24TBPTHIP@charusat.edu.in', 'HOSTEL - 1', '68', '24TBPTHIP', 0.00, NULL, NULL),
('24TBPTKMJ', 'VIMI P JAVIYA', '9227177097', '24TBPTKMJ@charusat.edu.in', 'HOSTEL - 3', '75', '24TBPTKMJ', 0.00, 0.00, NULL),
('24TBPTLFJ', 'AARCHI J PATEL', '6355684347', '24TBPTLFJ@charusat.edu.in', 'HOSTEL - 3', 'C-10', '24TBPTLFJ', 0.00, NULL, NULL),
('24TBPTLZL', 'VAISHALI R KANTARIYA', '6352071694', '24TBPTLZL@charusat.edu.in', 'HOSTEL - 3', '23', '24TBPTLZL', 0.00, 0.00, NULL),
('24TBPTMNS', 'MAITRY SONAIYA', '9724703510', '24TBPTMNS@charusat.edu.in', 'HOSTEL - 1', '61', '24TBPTMNS', 0.00, NULL, NULL),
('24TBPTRU7', 'MAHI A PATEL', '9558887922', '24TBPTRU7@charusat.edu.in', 'HOSTEL - 3', '5', '24TBPTRU7', 0.00, NULL, NULL),
('24TBPTT2B', 'YASHVI D MEHTA', '7624025274', '24TBPTT2B@charusat.edu.in', 'HOSTEL - 3', '54', '24TBPTT2B', 0.00, 0.00, NULL),
('24TBPTW8X', 'NYUTI K JAGANI', '9924109596', '24TBPTW8X@charusat.edu.in', 'HOSTEL - 3', 'C-08', '24TBPTW8X', 0.00, 0.00, NULL),
('24TBPTYUW', 'AISHVI K PATEL', '9408058320', '24TBPTYUW@charusat.edu.in', 'HOSTEL - 3', 'C-05', '24TBPTYUW', 0.00, NULL, NULL),
('24TBPTZ3S', 'SAKSHI M PATEL', '9510670885', '24TBPTZ3S@charusat.edu.in', 'HOSTEL - 3', '22', '24TBPTZ3S', 0.00, NULL, NULL),
('24TBSC4WD', 'CHARMI S PATEL', '8799613168', '24TBSC4WD@charusat.edu.in', 'HOSTEL - 4', '63', '24TBSC4WD', 0.00, NULL, NULL),
('24TBSC5Z2', 'HEER V SUREJA', '9265509081', '24TBSC5Z2@charusat.edu.in', 'HOSTEL - 4', '35', '24TBSC5Z2', 0.00, NULL, NULL),
('24TBSC601', 'HELI K JOSHI', '9773224689', '24TBSC601@charusat.edu.in', 'HOSTEL - 4', '21', '24TBSC601', 0.00, 0.00, NULL),
('24TBSC72U', 'SALONI J PATRICK', '7623963198', '24TBSC72U@charusat.edu.in', 'HOSTEL - 4', '8', '24TBSC72U', 0.00, 0.00, NULL),
('24TBSC8WK', 'HAYAA H CHAVDA', '8511012006', '24TBSC8WK@charusat.edu.in', 'HOSTEL - 4', '21', '24TBSC8WK', 0.00, 0.00, NULL),
('24TBSC9GM', 'DHRUVI R PATEL', '9909748465', '24TBSC9GM@charusat.edu.in', 'HOSTEL - 4', '27', '24TBSC9GM', 0.00, NULL, NULL),
('24TBSCAIX', 'BHEDA RASHI HIREN', '9825246240', '24TBSCAIX@charusat.edu.in', 'HOSTEL - 4', '60', '24TBSCAIX', 0.00, 0.00, NULL),
('24TBSCBPR', 'DHRUVIBEN M BHUT', '8799184362', '24TBSCBPR@charusat.edu.in', 'HOSTEL - 4', 'C-04', '24TBSCBPR', 0.00, NULL, NULL),
('24TBSCDJZ', 'MESHWA R PATEL', '9879689722', '24TBSCDJZ@charusat.edu.in', 'HOSTEL - 4', '54', '24TBSCDJZ', 0.00, 0.00, NULL),
('24TBSCDZ1', 'RANIPA DHRUVI MUKESH', '9328988915', '24TBSCDZ1@charusat.edu.in', 'HOSTEL - 4', '65', '24TBSCDZ1', 0.00, NULL, NULL),
('24TBSCE1L', 'YASHVI J LUNAGARIYA', '6355238290', '24TBSCE1L@charusat.edu.in', 'HOSTEL - 4', '65', '24TBSCE1L', 0.00, NULL, NULL),
('24TBSCF9K', 'KHAMBHATI CHINTAL SATISHBHAI', '7359119607', '24TBSCF9K@charusat.edu.in', 'HOSTEL - 4', 'C-04', '24TBSCF9K', 0.00, 0.00, NULL),
('24TBSCGW1', 'DHYANI V CHAUHAN', '8758334283', '24TBSCGW1@charusat.edu.in', 'HOSTEL - 4', '56', '24TBSCGW1', 0.00, NULL, NULL),
('24TBSCHNS', 'ZEEL A TANDEL', '9426898037', '24TBSCHNS@charusat.edu.in', 'HOSTEL - 4', 'C-08', '24TBSCHNS', 0.00, 0.00, NULL),
('24TBSCJKL', 'NAMYA DESAI', '9773076609', '24TBSCJKL@charusat.edu.in', 'HOSTEL - 4', 'C-18', '24TBSCJKL', 0.00, NULL, NULL),
('24TBSCLAH', 'RUHA I RAWAT', '9725110215', '24TBSCLAH@charusat.edu.in', 'HOSTEL - 4', '12', '24TBSCLAH', 0.00, 0.00, NULL),
('24TBSCLYZ', 'DRAVYAA SONI', '9016315372', '24TBSCLYZ@charusat.edu.in', 'HOSTEL - 4', '70', '24TBSCLYZ', 0.00, 0.00, NULL),
('24TBSCMHO', 'MAHI GOPALBHAI PATEL', '6353903412', '24TBSCMHO@charusat.edu.in', 'HOSTEL - 4', '62', '24TBSCMHO', 0.00, 0.00, NULL),
('24TBSCNKX', 'AASTHA C SHAH', '6352173457', '24TBSCNKX@charusat.edu.in', 'HOSTEL - 4', '72', '24TBSCNKX', 0.00, 0.00, NULL),
('24TBSCOEF', 'JANVI B SHAH', '9016833129', '24TBSCOEF@charusat.edu.in', 'HOSTEL - 4', '27', '24TBSCOEF', 0.00, 0.00, NULL),
('24TBSCOY1', 'FANNIE TONY K KOTTEKATTUKARAN', '9879606710', '24TBSCOY1@charusat.edu.in', 'HOSTEL - 4', '61', '24TBSCOY1', 0.00, 0.00, NULL),
('24TBSCQBU', 'DEVANSHI A DESAI', '9825231889', '24TBSCQBU@charusat.edu.in', 'HOSTEL - 4', '12', '24TBSCQBU', 0.00, NULL, NULL),
('24TBSCT5N', 'SHRUSHTI R PARMAR', '9664515483', '24TBSCT5N@charusat.edu.in', 'HOSTEL - 4', '8', '24TBSCT5N', 0.00, NULL, NULL),
('24TBSCTV', 'VIDHI J PATEL', '7046192394', '24TBSCTV@charusat.edu.in', 'HOSTEL - 4', '63', '24TBSCTV', 0.00, NULL, NULL),
('24TBSCUIN', 'HIMANI S PATEL', '9173586392', '24TBSCUIN@charusat.edu.in', 'HOSTEL - 4', '8', '24TBSCUIN', 0.00, 0.00, NULL),
('24TBSCUUN', 'FREYA P LOH', '8799306626', '24TBSCUUN@charusat.edu.in', 'HOSTEL - 4', 'C-04', '24TBSCUUN', 0.00, NULL, NULL),
('24TBSCV6X', 'KRISHA DUDHAT', '9638924600', '24TBSCV6X@charusat.edu.in', 'HOSTEL - 4', '66', '24TBSCV6X', 0.00, NULL, NULL),
('24TBSCWEW', 'AAYUSHI A KAPOOR', '7096361932', '24TBSCWEW@charusat.edu.in', 'HOSTEL - 4', '21', '24TBSCWEW', 0.00, 0.00, NULL),
('24TBSCYSS', 'DHRUVI Y TAPIAWALA', '9925041716', '24TBSCYSS@charusat.edu.in', 'HOSTEL - 4', '21', '24TBSCYSS', 0.00, 0.00, NULL),
('24TBSCZ4R', 'DATTNI H PATEL', '9016369908', '24TBSCZ4R@charusat.edu.in', 'HOSTEL - 4', '60', '24TBSCZ4R', 0.00, NULL, NULL),
('24TBSCZDD', 'FORAM  H PETHANI', '8849962072', '24TBSCZDD@charusat.edu.in', 'HOSTEL - 4', '38', '24TBSCZDD', 0.00, 0.00, NULL),
('24TBSCZGM', 'VENU JASANI', '909958510', '24TBSCZGM@charusat.edu.in', 'HOSTEL - 4', 'C-09', '24TBSCZGM', 0.00, NULL, NULL),
('24TBSCZMU', 'VAIDEHIKAKUMARI K RANA', '9106432950', '24TBSCZMU@charusat.edu.in', 'HOSTEL - 4', '42', '24TBSCZMU', 0.00, 0.00, NULL),
('24TBT9B', 'KOMALKUMARI  A VAGHELA', '9427125004', '24TBT9B@charusat.edu.in', 'HOSTEL - 4', 'C-05', '24TBT9B', 0.00, NULL, NULL),
('24TBTAPX', 'ISHWA S GANDHI', '9106063850', '24TBTAPX@charusat.edu.in', 'HOSTEL - 4', '23', '24TBTAPX', 0.00, NULL, NULL),
('24TBTGVA', 'AMIBEN B SOJITRA', '9664546545', '24TBTGVA@charusat.edu.in', 'HOSTEL - 4', '17', '24TBTGVA', 0.00, NULL, NULL),
('24TBTINU', 'DIXITA SOLANKI', '8799148431', '24TBTINU@charusat.edu.in', 'HOSTEL - 4', '3', '24TBTINU', 0.00, NULL, NULL),
('24TBTT80', 'SHIVANI J BHALODIYA', '8160960226', '24TBTT80@charusat.edu.in', 'HOSTEL - 4', '52', '24TBTT80', 0.00, 0.00, NULL),
('24TCEITO', 'SAKSHI B KADEGIYA', '8200807871', '24TCEITO@charusat.edu.in', 'HOSTEL - 3', '6', '24TCEITO', 0.00, NULL, NULL),
('24TCEWOX', 'PRTACHIBEN N PARMAR', '9106669837', '24TCEWOX@charusat.edu.in', 'HOSTEL - 3', '32', '24TCEWOX', 0.00, NULL, NULL),
('24TCLEKK', 'HETVI  M SAKHIYA', '9016208023', '24TCLEKK@charusat.edu.in', 'HOSTEL - 3', '49', '24TCLEKK', 0.00, NULL, NULL),
('24TDCEROQ', 'KRINA K PIPALIYA', '9974646084', '24TDCEROQ@charusat.edu.in', 'HOSTEL - 3', '11', '24TDCEROQ', 0.00, NULL, NULL),
('24TDCEVIA', 'NENSI P SHINGALA', '8849457245', '24TDCEVIA@charusat.edu.in', 'HOSTEL - 3', '9', '24TDCEVIA', 0.00, NULL, NULL),
('24TDCEVLA', 'HEER P  TAILOR', '9316966402', '24TDCEVLA@charusat.edu.in', 'HOSTEL - 3', '7', '24TDCEVLA', 0.00, NULL, NULL),
('24TDCSE60', 'HIMA D MEHTA', '9157728798', '24TDCSE60@charusat.edu.in', 'HOSTEL - 3', '60', '24TDCSE60', 0.00, 0.00, NULL),
('24TDCSIBT', 'PALAK DEKIWADI', '9408981440', '24TDCSIBT@charusat.edu.in', 'HOSTEL - 3', '60', '24TDCSIBT', 0.00, NULL, NULL),
('24TDCSMPD', 'PRAGATI I SOLANKI', '9824050766', '24TDCSMPD@charusat.edu.in', 'HOSTEL - 3', 'C-13', '24TDCSMPD', 0.00, NULL, NULL),
('24TDCSXUR', 'KRISHNABEN C VADHER', '9974792522', '24TDCSXUR@charusat.edu.in', 'HOSTEL - 3', '23', '24TDCSXUR', 0.00, NULL, NULL),
('24TDIT301', 'PRACHI P RANA', '8320064548', '24TDIT301@charusat.edu.in', 'HOSTEL - 3', '29', '24TDIT301', 0.00, NULL, NULL),
('24TDRFOSCHE7XT', 'ANJALI  THANKI', '9408398873', '24TDRFOSCHE7XT@charusat.edu.in', 'HOSTEL - 5', '104', '24TDRFOSCHE7XT', 0.00, NULL, NULL),
('24TEC6C6', 'JENI  N BHIKADIYA', '6355707916', '24TEC6C6@charusat.edu.in', 'HOSTEL - 3', '12', '24TEC6C6', 0.00, NULL, NULL),
('24TECACD', 'YESHA V PARSANA', '9313389417', '24TECACD@charusat.edu.in', 'HOSTEL - 3', '11', '24TECACD', 0.00, NULL, NULL),
('24TECNI9', 'MAITRI S NAYANI', '9316091747', '24TECNI9@charusat.edu.in', 'HOSTEL - 3', '12', '24TECNI9', 0.00, NULL, NULL),
('24TECRWL', 'KRISHA N PATEL', '8734864953', '24TECRWL@charusat.edu.in', 'HOSTEL - 3', '10', '24TECRWL', 0.00, 0.00, NULL),
('24TECSXE', 'SHRUTI K BORAD', '7383891250', '24TECSXE@charusat.edu.in', 'HOSTEL - 3', '72', '24TECSXE', 0.00, NULL, NULL),
('24TEE36E', 'VIVAA RATHOD', '8780855505', '24TEE36E@charusat.edu.in', 'HOSTEL - 3', '35', '24TEE36E', 0.00, NULL, NULL),
('24TEEIIO', 'KEYA R DAVE', '7226993824', '24TEEIIO@charusat.edu.in', 'HOSTEL - 3', '37', '24TEEIIO', 0.00, 0.00, NULL),
('24TGNMGO', 'JIGNA A BAMANYA', '7572829893', '24TGNMGO@charusat.edu.in', 'HOSTEL - 1', '40', '24TGNMGO', 0.00, NULL, NULL),
('24TGNMR0S', 'TERIN D PARMAR', '7285097546', '24TGNMR0S@charusat.edu.in', 'HOSTEL - 1', '8', '24TGNMR0S', 0.00, NULL, NULL),
('24TITRIN', 'SUHANIBEN G PATEL', '9106602210', '24TITRIN@charusat.edu.in', 'HOSTEL - 3', '17', '24TITRIN', 0.00, NULL, NULL),
('24TMBAAQQ', 'NIYATI N VADNAGARA', '9737444500', '24TMBAAQQ@charusat.edu.in', 'HOSTEL - 4', 'C-13', '24TMBAAQQ', 0.00, NULL, NULL),
('24TMBABVO', 'NANCY PATEL', '9664199589', '24TMBABVO@charusat.edu.in', 'HOSTEL - 4', '37', '24TMBABVO', 0.00, NULL, NULL),
('24TMBAGD8', 'MAULI J PATEL', '7572898236', '24TMBAGD8@charusat.edu.in', 'HOSTEL - 4', 'C-13', '24TMBAGD8', 0.00, 0.00, NULL),
('24TMBAIJA', 'KALASH N PATEL', '9265048712', '24TMBAIJA@charusat.edu.in', 'HOSTEL - 3', '5', '24TMBAIJA', 0.00, NULL, NULL),
('24TMBAKUW', 'AYUSHIBEN P PATEL', '8758361391', '24TMBAKUW@charusat.edu.in', 'HOSTEL - 3', '5', '24TMBAKUW', 0.00, NULL, NULL),
('24TMBANHN', 'MEGHA P PRAJAPTI', '9173203918', '24TMBANHN@charusat.edu.in', 'HOSTEL - 4', 'C-13', '24TMBANHN', 0.00, 0.00, NULL),
('24TMBARYS', 'PRIYANSHI M GODHASARA', '9328339347', '24TMBARYS@charusat.edu.in', 'HOSTEL - 4', '74', '24TMBARYS', 0.00, NULL, NULL),
('24TMBASXF', 'HARSHIKA G CHAVADA', '7043347801', '24TMBASXF@charusat.edu.in', 'HOSTEL - 3', '5', '24TMBASXF', 0.00, NULL, NULL),
('24TMBAVQT', 'PRIYANKABEN R PARMAR', '7984893528', '24TMBAVQT@charusat.edu.in', 'HOSTEL - 3', '15', '24TMBAVQT', 0.00, NULL, NULL),
('24TMBAXAA', 'DHRUVI B PATEL', '9016393031', '24TMBAXAA@charusat.edu.in', 'HOSTEL - 4', 'C-12', '24TMBAXAA', 0.00, NULL, NULL),
('24TMBAYN5', 'VAIDEHI M PATEL', '9898076271', '24TMBAYN5@charusat.edu.in', 'HOSTEL - 3', '15', '24TMBAYN5', 0.00, NULL, NULL),
('24TMI2WJ', 'BANSI L CHATRABHUJ', '9664755874', '24TMI2WJ@charusat.edu.in', 'HOSTEL - 4', 'C-06', '24TMI2WJ', 0.00, 0.00, NULL),
('24TMI3M1', 'KINNARI Y HIRPARA', '9265503132', '24TMI3M1@charusat.edu.in', 'HOSTEL - 4', '13', '24TMI3M1', 0.00, 0.00, NULL),
('24TMIACA', 'KAJAL A MAKWANA', '8320431141', '24TMIACA@charusat.edu.in', 'HOSTEL - 4', 'C-06', '24TMIACA', 0.00, 0.00, NULL),
('24TMIAYL', 'MANSI     R    PATEL', '9328809808', '24TMIAYL@charusat.edu.in', 'HOSTEL - 4', '28', '24TMIAYL', 0.00, NULL, NULL),
('24TMII8E', 'HARVI A BHALANI', '9978018156', '24TMII8E@charusat.edu.in', 'HOSTEL - 4', '52', '24TMII8E', 0.00, 0.00, NULL),
('24TMIIRR', 'MIPSA S PATEL', '6358859343', '24TMIIRR@charusat.edu.in', 'HOSTEL - 4', '13', '24TMIIRR', 0.00, 0.00, NULL),
('24TMIRDK', 'PRACHI S PATEL', '9316574816', '24TMIRDK@charusat.edu.in', 'HOSTEL - 4', '59', '24TMIRDK', 0.00, 0.00, NULL),
('24TMIUTP', 'ISHA DER', '9106534453', '24TMIUTP@charusat.edu.in', 'HOSTEL - 4', '10', '24TMIUTP', 0.00, NULL, NULL),
('24TMIYJH', 'JANVI P SUTARIYA', '9313041481', '24TMIYJH@charusat.edu.in', 'HOSTEL - 4', '17', '24TMIYJH', 0.00, 0.00, NULL),
('24TMNCH4Z7', 'SONAL   M    ROHIT', '9974532141', '24TMNCH4Z7@charusat.edu.in', 'HOSTEL - 1', '11', '24TMNCH4Z7', 0.00, NULL, NULL),
('24TMNMH0AD', 'RACHEL R VASAVA', '9265457409', '24TMNMH0AD@charusat.edu.in', 'HOSTEL - 1', '3', '24TMNMH0AD', 0.00, NULL, NULL),
('24TMOTAT7LB', 'SUPRIYA PADAMATI', '8522940896', '24TMOTAT7LB@charusat.edu.in', 'HOSTEL - 4', '16', '24TMOTAT7LB', 0.00, NULL, NULL),
('24TMPHPCLCEX', 'KRUPA H PANCHAL', '9173245910', '24TMPHPCLCEX@charusat.edu.in', 'HOSTEL - 2', '36', '24TMPHPCLCEX', 0.00, NULL, NULL),
('24TMPHPQAGZK', 'HETVI B PANDYA', '8734006497', '24TMPHPQAGZK@charusat.edu.in', 'HOSTEL - 2', '14', '24TMPHPQAGZK', 0.00, NULL, NULL),
('24TMPHQAWL7', 'KRUPA R PATOLIYA', '9016477429', '24TMPHQAWL7@charusat.edu.in', 'HOSTEL - 2', '50', '24TMPHQAWL7', 0.00, NULL, NULL),
('24TMPHTCH42J', 'KEYA K SHAH', '9023341400', '24TMPHTCH42J@charusat.edu.in', 'HOSTEL - 2', '18', '24TMPHTCH42J', 0.00, NULL, NULL),
('24TMPHTCHGXV', 'HIMANI D PATEL', '9016324104', '24TMPHTCHGXV@charusat.edu.in', 'HOSTEL - 2', '8', '24TMPHTCHGXV', 0.00, NULL, NULL),
('24TMPTHTCHN7P', 'DEVANSHI A MEHTA', '7802867169', '24TMPTHTCHN7P@charusat.edu.in', 'HOSTEL - 2', '18', '24TMPTHTCHN7P', 0.00, 0.00, NULL),
('24TMPTNSY4E', 'KRUPALI B JADHAV', '7698097147', '24TMPTNSY4E@charusat.edu.in', 'HOSTEL - 1', '36', '24TMPTNSY4E', 0.00, 0.00, NULL),
('24TMPTREJUP', 'NISHTHA A LAKDAWALA', '7016267153', '24TMPTREJUP@charusat.edu.in', 'HOSTEL - 1', '44', '24TMPTREJUP', 0.00, 0.00, NULL),
('24TMSMLT6YS', 'VISHWA   R  PATEL', '9409728422', '24TMSMLT6YS@charusat.edu.in', 'HOSTEL - 4', '33', '24TMSMLT6YS', 0.00, 0.00, NULL),
('5658', 'BHOOMI M BAVDA', '8160097674', '5658@charusat.edu.in', 'HOSTEL - 1', '57', '5658', 0.00, NULL, NULL),
('6071', 'NAINA PARMAR', '7567782979', '6071@charusat.edu.in', 'HOSTEL - 1', '72', '6071', 0.00, NULL, NULL),
('D23CE151', 'DHRUVI PATEL', '8160237772', 'D23CE151@charusat.edu.in', 'HOSTEL - 5', '509', 'D23CE151', 0.00, NULL, NULL),
('D23CE168', 'LIJA D THESIYA', '6354821163', 'D23CE168@charusat.edu.in', 'HOSTEL - 5', '112', 'D23CE168', 0.00, NULL, NULL),
('D23CE169', 'CHARMY A RUDANI', '9727584942', 'D23CE169@charusat.edu.in', 'HOSTEL - 5', '112', 'D23CE169', 0.00, NULL, NULL),
('D23CE189', 'APEXA J GOTECHA', '8780470754', 'D23CE189@charusat.edu.in', 'HOSTEL - 5', '308', 'D23CE189', 0.00, NULL, NULL),
('D23CL022', 'ISHA ASHOKBHAI KANSARA', '9601257257', 'D23CL022@charusat.edu.in', 'HOSTEL - 5', '710', 'D23CL022', 0.00, NULL, NULL),
('D23CL023', 'JINAL R PATEL', '7201081894', 'D23CL023@charusat.edu.in', 'HOSTEL - 5', '402', 'D23CL023', 0.00, NULL, NULL),
('D23CS098', 'ANJANA BA ZALA', '9328000231', 'D23CS098@charusat.edu.in', 'HOSTEL - 5', '710', 'D23CS098', 0.00, 0.00, NULL),
('D23CS099', 'DHARMI SHIYANI', '8487017573', 'D23CS099@charusat.edu.in', 'HOSTEL - 5', '406', 'D23CS099', 0.00, 0.00, NULL),
('D23CS101', 'KHUSHI POSHIYA', '9265059127', 'D23CS101@charusat.edu.in', 'HOSTEL - 5', '409', 'D23CS101', 0.00, 0.00, NULL),
('D23DCE140', 'KRISHA R PATEL', '9726262456', 'D23DCE140@charusat.edu.in', 'HOSTEL - 5', '709', 'D23DCE140', 0.00, NULL, NULL),
('D23DCE157', 'HEMAKSHI BABARIYA', '9023579422', 'D23DCE157@charusat.edu.in', 'HOSTEL - 5', '407', 'D23DCE157', 0.00, 0.00, NULL),
('D23DCE161', 'JANVI Y GORAJIYA', '8735877309', 'D23DCE161@charusat.edu.in', 'HOSTEL - 5', '403', 'D23DCE161', 0.00, 0.00, NULL),
('D23DCS150', 'KASHISH D GOLWALA', '6351637765', 'D23DCS150@charusat.edu.in', 'HOSTEL - 5', '308', 'D23DCS150', 0.00, 0.00, NULL),
('D23DCS175', 'GRASY P SAVALIYA', '7990940527', 'D23DCS175@charusat.edu.in', 'HOSTEL - 5', '307', 'D23DCS175', 0.00, NULL, NULL),
('D23DIT106', 'KRUSHI H SONI', '6354222349', 'D23DIT106@charusat.edu.in', 'HOSTEL - 5', '202', 'D23DIT106', 0.00, 0.00, NULL),
('D23IT163', 'JIYA M BERA', '9313410326', 'D23IT163@charusat.edu.in', 'HOSTEL - 5', '510', 'D23IT163', 0.00, 0.00, NULL),
('D24AIML087', 'HASTI  J  BHALODIA', '6359023323', 'D24AIML087@charusat.edu.in', 'HOSTEL - 3', 'C-13', 'D24AIML087', 1.00, 1.00, 2.00),
('D24AIML089', 'MAHI PATEL', '8511895498', 'D24AIML089@charusat.edu.in', 'HOSTEL - 3', '45', 'D24AIML089', 0.00, 0.00, 1.00),
('D24CE157', 'HASTI A KALARIYA', '7359799476', 'D24CE157@charusat.edu.in', 'HOSTEL - 3', '22', 'D24CE157', 0.00, 0.00, NULL),
('D24CE165', 'BHAKTI', '9429549465', 'D24CE165@charusat.edu.in', 'HOSTEL - 3', '50', 'D24CE165', 0.00, 0.00, NULL),
('D24CE171', 'GRISHMA M JETHVA', '9427446966', 'D24CE171@charusat.edu.in', 'HOSTEL - 3', '45', 'D24CE171', 0.00, 0.00, NULL),
('D24CE176', 'NANCY VAGHELA', '7984584354', 'D24CE176@charusat.edu.in', 'HOSTEL - 3', '10', 'D24CE176', 0.00, 0.00, NULL),
('D24DCE140', 'JIYA V CHANGELA', '7600984884', 'D24DCE140@charusat.edu.in', 'HOSTEL - 3', '50', 'D24DCE140', 0.00, 0.00, NULL),
('D24DCE158', 'SNEHAL S MISHRA', '9054799700', 'D24DCE158@charusat.edu.in', 'HOSTEL - 3', '10', 'D24DCE158', 0.00, 0.00, NULL),
('D24DCS154', 'HETAVI SHAH', '9875170066', 'D24DCS154@charusat.edu.in', 'HOSTEL - 3', 'C-10', 'D24DCS154', NULL, NULL, 0.00),
('D24DCS161', 'MARGI S MARADIA', '9429911922', 'D24DCS161@charusat.edu.in', 'HOSTEL - 3', '50', 'D24DCS161', 0.00, 0.00, NULL),
('D24DCS162', 'DEEKSHA V MAVADIYA', '8735849351', 'D24DCS162@charusat.edu.in', 'HOSTEL - 3', '50', 'D24DCS162', 0.00, 0.00, NULL),
('D24DCS167', 'YASHVI  A GADHIYA', '8200221609', 'D24DCS167@charusat.edu.in', 'HOSTEL - 3', '10', 'D24DCS167', 0.00, 0.00, NULL),
('D24DIT087', 'DHADUK HARDI HARESHBHAI', '8799488323', 'D24DIT087@charusat.edu.in', 'HOSTEL - 3', '17', 'D24DIT087', 0.00, NULL, NULL),
('D24IT153', 'KAVYA K PATEL', '9725077780', 'D24IT153@charusat.edu.in', 'HOSTEL - 3', '26', 'D24IT153', 0.00, 0.00, NULL),
('D24IT154', 'URJA K MEHTA', '7043354182', 'D24IT154@charusat.edu.in', 'HOSTEL - 3', 'C-08', 'D24IT154', 0.00, 0.00, NULL),
('D24IT156', 'RUCHA B PARMAR', '9979086886', 'D24IT156@charusat.edu.in', 'HOSTEL - 3', 'C-08', 'D24IT156', 0.00, NULL, NULL),
('D24IT158', 'MIRALI P VAGHASIYA', '9974862796', 'D24IT158@charusat.edu.in', 'HOSTEL - 3', '72', 'D24IT158', 0.00, 0.00, NULL),
('D24IT171', 'DHRUVI B PATEL', '7227949431', 'D24IT171@charusat.edu.in', 'HOSTEL - 3', '45', 'D24IT171', 0.00, 0.00, NULL),
('D24IT182', 'HEER N RAVAL', '9313214313', 'D24IT182@charusat.edu.in', 'HOSTEL - 3', '45', 'D24IT182', 0.00, 0.00, NULL),
('D24IT72', 'MEJBIN S MALLA', '9023556051', 'D24IT72@charusat.edu.in', 'HOSTEL - 3', '17', 'D24IT72', 0.00, 0.00, NULL),
('S24CE161', 'EKTA DODIYA', '8866040144', 'S24CE161@charusat.edu.in', 'HOSTEL - 3', 'C-10', 'S24CE161', NULL, NULL, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `lunch`
--

CREATE TABLE `lunch` (
  `id` int(11) NOT NULL,
  `Monday` varchar(255) DEFAULT NULL,
  `Tuesday` varchar(255) DEFAULT NULL,
  `Wednesday` varchar(255) DEFAULT NULL,
  `Thursday` varchar(255) DEFAULT NULL,
  `Friday` varchar(255) DEFAULT NULL,
  `Saturday` varchar(255) DEFAULT NULL,
  `Sunday` varchar(255) DEFAULT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lunch`
--

INSERT INTO `lunch` (`id`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`, `from_date`, `to_date`, `created_at`) VALUES
(1, 'SHAK\r\nROTLI\r\nDAL\r\nBHAT', 'SHAK\r\nROTLI\r\nDAL\r\nBHAT', 'SHAK\r\nROTLI\r\nDAL\r\nBHAT', 'SHAK\r\nROTLI\r\nDAL\r\nBHAT', 'SHAK\r\nROTLI\r\nDAL\r\nBHAT', 'SHAK\r\nROTLI\r\nDAL\r\nBHAT', 'SHAK\r\nROTLI\r\nDAL\r\nBHAT', '2025-03-03', '2025-03-09', '2025-03-05 08:15:39'),
(2, 'DAL FRY\r\nJIRA RICE', 'DAL FRY\r\nJIRA RICE', 'DAL FRY\r\nJIRA RICE', 'DAL FRY\r\nJIRA RICE', 'DAL FRY\r\nJIRA RICE', 'DAL FRY\r\nJIRA RICE', 'DAL FRY\r\nJIRA RICE', '2025-03-10', '2025-03-16', '2025-03-05 08:26:06'),
(3, 'Shak\r\nRotli', 'Shak\r\nRotli', 'Shak\r\nRotli', 'Shak\r\nRotli', 'Shak\r\nRotli', 'Shak\r\nRotli', 'Shak\r\nRotli', '2025-03-17', '2025-03-24', '2025-03-20 16:37:20'),
(5, 'MUG SHAK\r\nROTLI\r\nPAPAD\r\nCHAS\r\n', 'BATEKA SHAK\r\nROTLI\r\nPAPAD\r\nCHAS\r\n', 'CHANA SHAK\r\nROTLI\r\nPAPAD\r\nCHAS\r\n', 'MIX SHAK\r\nROTLI\r\nPAPAD\r\nCHAS\r\n', 'SEV TAMETA SHAK\r\nROTLI\r\nPAPAD\r\nCHAS\r\n', 'MUG SHAK\r\nROTLI\r\nPAPAD\r\nCHAS\r\n', 'BATEKA SHAK\r\nROTLI\r\nPAPAD\r\nCHAS\r\n', '2025-06-09', '2025-06-16', '2025-06-12 14:54:18');

-- --------------------------------------------------------

--
-- Table structure for table `meal_log`
--

CREATE TABLE `meal_log` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) DEFAULT NULL,
  `user_type` varchar(30) DEFAULT NULL,
  `meal_type` varchar(30) DEFAULT NULL,
  `meal_date` date DEFAULT NULL,
  `meal_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meal_log`
--

INSERT INTO `meal_log` (`id`, `student_id`, `user_type`, `meal_type`, `meal_date`, `meal_time`) VALUES
(1, 'D24AIML079', 'hostel_student', 'lunch', '2025-05-16', '2025-05-16 05:46:33'),
(2, 'D24AIML087', 'hostel_student', 'lunch', '2025-05-16', '2025-05-16 05:46:43'),
(3, 'D24AIML089', 'hostel_student', 'lunch', '2025-05-16', '2025-05-16 05:46:51');

-- --------------------------------------------------------

--
-- Table structure for table `non_hostel_student`
--

CREATE TABLE `non_hostel_student` (
  `student_id` varchar(20) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `balance` double(100,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `non_hostel_student`
--

INSERT INTO `non_hostel_student` (`student_id`, `fullname`, `phone_no`, `email`, `password`, `balance`) VALUES
('D24AIML080', 'Het', '7862017545', 'd24aiml080@charusat.edu.in', '1234', 240.00);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `student_id` varchar(20) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `fee_type` varchar(20) DEFAULT NULL,
  `receipt_no` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `student_id`, `amount`, `fee_type`, `receipt_no`, `year`, `timestamp`) VALUES
(1, 'D24AIML089', 19200, 'full', 'PDR/2025/00001', '2025', '2025-06-29 16:44:05'),
(2, 'D24AIML087', 9600, 'First Term', 'PDR/2025/00002', '2025', '2025-06-29 17:26:18'),
(3, 'D24AIML087', 9600, 'second', 'PDR/2025/00003', '2025', '2025-06-30 04:13:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `05_03_2025_faculty_dinner`
--
ALTER TABLE `05_03_2025_faculty_dinner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `05_03_2025_faculty_lunch`
--
ALTER TABLE `05_03_2025_faculty_lunch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `05_03_2025_hostel_student_dinner`
--
ALTER TABLE `05_03_2025_hostel_student_dinner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `05_03_2025_non_hostel_student_dinner`
--
ALTER TABLE `05_03_2025_non_hostel_student_dinner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `05_03_2025_non_hostel_student_lunch`
--
ALTER TABLE `05_03_2025_non_hostel_student_lunch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `05_05_2025_hostel_student_breakfast`
--
ALTER TABLE `05_05_2025_hostel_student_breakfast`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `05_05_2025_hostel_student_lunch`
--
ALTER TABLE `05_05_2025_hostel_student_lunch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `06_03_2025_faculty_breakfast`
--
ALTER TABLE `06_03_2025_faculty_breakfast`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `06_03_2025_hostel_student_breakfast`
--
ALTER TABLE `06_03_2025_hostel_student_breakfast`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `06_03_2025_hostel_student_lunch`
--
ALTER TABLE `06_03_2025_hostel_student_lunch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `06_03_2025_non_hostel_student_breakfast`
--
ALTER TABLE `06_03_2025_non_hostel_student_breakfast`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `08_06_2025_faculty_breakfast`
--
ALTER TABLE `08_06_2025_faculty_breakfast`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `08_06_2025_faculty_dinner`
--
ALTER TABLE `08_06_2025_faculty_dinner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `08_06_2025_faculty_lunch`
--
ALTER TABLE `08_06_2025_faculty_lunch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `08_06_2025_hostel_student_breakfast`
--
ALTER TABLE `08_06_2025_hostel_student_breakfast`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `08_06_2025_hostel_student_dinner`
--
ALTER TABLE `08_06_2025_hostel_student_dinner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `08_06_2025_hostel_student_lunch`
--
ALTER TABLE `08_06_2025_hostel_student_lunch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `08_06_2025_non_hostel_student_breakfast`
--
ALTER TABLE `08_06_2025_non_hostel_student_breakfast`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `08_06_2025_non_hostel_student_dinner`
--
ALTER TABLE `08_06_2025_non_hostel_student_dinner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `08_06_2025_non_hostel_student_lunch`
--
ALTER TABLE `08_06_2025_non_hostel_student_lunch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `13_06_2025_faculty_dinner`
--
ALTER TABLE `13_06_2025_faculty_dinner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `13_06_2025_hostel_student_dinner`
--
ALTER TABLE `13_06_2025_hostel_student_dinner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `16_05_2025_faculty_lunch`
--
ALTER TABLE `16_05_2025_faculty_lunch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `16_05_2025_hostel_student_lunch`
--
ALTER TABLE `16_05_2025_hostel_student_lunch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `16_05_2025_lunch_faculty`
--
ALTER TABLE `16_05_2025_lunch_faculty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `16_05_2025_lunch_hostel_student`
--
ALTER TABLE `16_05_2025_lunch_hostel_student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `16_05_2025_lunch_non_hostel_student`
--
ALTER TABLE `16_05_2025_lunch_non_hostel_student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `16_05_2025_non_hostel_student_lunch`
--
ALTER TABLE `16_05_2025_non_hostel_student_lunch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `18_03_2025_faculty_dinner`
--
ALTER TABLE `18_03_2025_faculty_dinner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `18_03_2025_faculty_lunch`
--
ALTER TABLE `18_03_2025_faculty_lunch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `18_03_2025_hostel_student_dinner`
--
ALTER TABLE `18_03_2025_hostel_student_dinner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `18_03_2025_hostel_student_lunch`
--
ALTER TABLE `18_03_2025_hostel_student_lunch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `18_03_2025_non_hostel_student_dinner`
--
ALTER TABLE `18_03_2025_non_hostel_student_dinner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `18_03_2025_non_hostel_student_lunch`
--
ALTER TABLE `18_03_2025_non_hostel_student_lunch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `29_03_2025_faculty_lunch`
--
ALTER TABLE `29_03_2025_faculty_lunch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `29_03_2025_hostel_student_lunch`
--
ALTER TABLE `29_03_2025_hostel_student_lunch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `29_03_2025_non_hostel_student_lunch`
--
ALTER TABLE `29_03_2025_non_hostel_student_lunch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `29_04_2025_faculty_breakfast`
--
ALTER TABLE `29_04_2025_faculty_breakfast`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `29_04_2025_faculty_lunch`
--
ALTER TABLE `29_04_2025_faculty_lunch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `29_04_2025_hostel_student_breakfast`
--
ALTER TABLE `29_04_2025_hostel_student_breakfast`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `29_04_2025_hostel_student_lunch`
--
ALTER TABLE `29_04_2025_hostel_student_lunch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `29_04_2025_non_hostel_student_breakfast`
--
ALTER TABLE `29_04_2025_non_hostel_student_breakfast`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `29_04_2025_non_hostel_student_lunch`
--
ALTER TABLE `29_04_2025_non_hostel_student_lunch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `breakfast`
--
ALTER TABLE `breakfast`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dinner`
--
ALTER TABLE `dinner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `grocery_vegetable_management`
--
ALTER TABLE `grocery_vegetable_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostel_student`
--
ALTER TABLE `hostel_student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lunch`
--
ALTER TABLE `lunch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meal_log`
--
ALTER TABLE `meal_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `non_hostel_student`
--
ALTER TABLE `non_hostel_student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `05_03_2025_faculty_dinner`
--
ALTER TABLE `05_03_2025_faculty_dinner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `05_03_2025_faculty_lunch`
--
ALTER TABLE `05_03_2025_faculty_lunch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `05_03_2025_hostel_student_dinner`
--
ALTER TABLE `05_03_2025_hostel_student_dinner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `05_03_2025_non_hostel_student_dinner`
--
ALTER TABLE `05_03_2025_non_hostel_student_dinner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `05_03_2025_non_hostel_student_lunch`
--
ALTER TABLE `05_03_2025_non_hostel_student_lunch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `05_05_2025_hostel_student_breakfast`
--
ALTER TABLE `05_05_2025_hostel_student_breakfast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `05_05_2025_hostel_student_lunch`
--
ALTER TABLE `05_05_2025_hostel_student_lunch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `06_03_2025_faculty_breakfast`
--
ALTER TABLE `06_03_2025_faculty_breakfast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `06_03_2025_hostel_student_breakfast`
--
ALTER TABLE `06_03_2025_hostel_student_breakfast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `06_03_2025_hostel_student_lunch`
--
ALTER TABLE `06_03_2025_hostel_student_lunch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `06_03_2025_non_hostel_student_breakfast`
--
ALTER TABLE `06_03_2025_non_hostel_student_breakfast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `08_06_2025_faculty_breakfast`
--
ALTER TABLE `08_06_2025_faculty_breakfast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `08_06_2025_faculty_dinner`
--
ALTER TABLE `08_06_2025_faculty_dinner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `08_06_2025_faculty_lunch`
--
ALTER TABLE `08_06_2025_faculty_lunch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `08_06_2025_hostel_student_breakfast`
--
ALTER TABLE `08_06_2025_hostel_student_breakfast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `08_06_2025_hostel_student_dinner`
--
ALTER TABLE `08_06_2025_hostel_student_dinner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `08_06_2025_hostel_student_lunch`
--
ALTER TABLE `08_06_2025_hostel_student_lunch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `08_06_2025_non_hostel_student_breakfast`
--
ALTER TABLE `08_06_2025_non_hostel_student_breakfast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `08_06_2025_non_hostel_student_dinner`
--
ALTER TABLE `08_06_2025_non_hostel_student_dinner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `08_06_2025_non_hostel_student_lunch`
--
ALTER TABLE `08_06_2025_non_hostel_student_lunch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `13_06_2025_faculty_dinner`
--
ALTER TABLE `13_06_2025_faculty_dinner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `13_06_2025_hostel_student_dinner`
--
ALTER TABLE `13_06_2025_hostel_student_dinner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `16_05_2025_faculty_lunch`
--
ALTER TABLE `16_05_2025_faculty_lunch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `16_05_2025_hostel_student_lunch`
--
ALTER TABLE `16_05_2025_hostel_student_lunch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `16_05_2025_lunch_faculty`
--
ALTER TABLE `16_05_2025_lunch_faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `16_05_2025_lunch_hostel_student`
--
ALTER TABLE `16_05_2025_lunch_hostel_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `16_05_2025_lunch_non_hostel_student`
--
ALTER TABLE `16_05_2025_lunch_non_hostel_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `16_05_2025_non_hostel_student_lunch`
--
ALTER TABLE `16_05_2025_non_hostel_student_lunch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `18_03_2025_faculty_dinner`
--
ALTER TABLE `18_03_2025_faculty_dinner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `18_03_2025_faculty_lunch`
--
ALTER TABLE `18_03_2025_faculty_lunch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `18_03_2025_hostel_student_dinner`
--
ALTER TABLE `18_03_2025_hostel_student_dinner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `18_03_2025_hostel_student_lunch`
--
ALTER TABLE `18_03_2025_hostel_student_lunch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `18_03_2025_non_hostel_student_dinner`
--
ALTER TABLE `18_03_2025_non_hostel_student_dinner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `18_03_2025_non_hostel_student_lunch`
--
ALTER TABLE `18_03_2025_non_hostel_student_lunch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `29_03_2025_faculty_lunch`
--
ALTER TABLE `29_03_2025_faculty_lunch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `29_03_2025_hostel_student_lunch`
--
ALTER TABLE `29_03_2025_hostel_student_lunch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `29_03_2025_non_hostel_student_lunch`
--
ALTER TABLE `29_03_2025_non_hostel_student_lunch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `29_04_2025_faculty_breakfast`
--
ALTER TABLE `29_04_2025_faculty_breakfast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `29_04_2025_faculty_lunch`
--
ALTER TABLE `29_04_2025_faculty_lunch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `29_04_2025_hostel_student_breakfast`
--
ALTER TABLE `29_04_2025_hostel_student_breakfast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `29_04_2025_hostel_student_lunch`
--
ALTER TABLE `29_04_2025_hostel_student_lunch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `29_04_2025_non_hostel_student_breakfast`
--
ALTER TABLE `29_04_2025_non_hostel_student_breakfast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `29_04_2025_non_hostel_student_lunch`
--
ALTER TABLE `29_04_2025_non_hostel_student_lunch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `breakfast`
--
ALTER TABLE `breakfast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dinner`
--
ALTER TABLE `dinner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `grocery_vegetable_management`
--
ALTER TABLE `grocery_vegetable_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lunch`
--
ALTER TABLE `lunch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `meal_log`
--
ALTER TABLE `meal_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
