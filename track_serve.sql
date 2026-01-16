-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2025 at 04:02 PM
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
('D24AIML001', 'ANITA SHAH', '9876543210', 'D24AIML001@charusat.edu.in', 'HOSTEL - 3', 'C-13', 'D24AIML001', NULL, NULL, NULL),
('D24AIML002', 'PRIYA PATEL', '9123456789', 'D24AIML002@charusat.edu.in', 'HOSTEL - 2', 'B-6', 'D24AIML002', NULL, NULL, NULL),
('D24AIML003', 'NEHA MEHTA', '9988776655', 'D24AIML003@charusat.edu.in', 'HOSTEL - 1', 'A-8', 'D24AIML003', NULL, NULL, NULL),
('D24AIML004', 'KAVITA RATHOD', '9898989898', 'D24AIML004@charusat.edu.in', 'HOSTEL - 2', 'D-10', 'D24AIML004', NULL, NULL, NULL),
('D24AIML005', 'HEMA SOLANKI', '9001122334', 'D24AIML005@charusat.edu.in', 'HOSTEL - 3', 'E-5', 'D24AIML005', NULL, NULL, NULL),
('D24AIML006', 'RINA DESAI', '9988223344', 'D24AIML006@charusat.edu.in', 'HOSTEL - 1', 'C-1', 'D24AIML006', NULL, NULL, NULL),
('D24AIML007', 'HEMA VASAVA', '9877700011', 'D24AIML007@charusat.edu.in', 'HOSTEL - 3', 'B-9', 'D24AIML007', NULL, NULL, NULL),
('D24AIML008', 'HEMA GOHIL', '8765432100', 'D24AIML008@charusat.edu.in', 'HOSTEL - 2', 'A-2', 'D24AIML008', NULL, NULL, NULL),
('D24AIML009', 'KIRTI BHATT', '9090909090', 'D24AIML009@charusat.edu.in', 'HOSTEL - 1', 'D-3', 'D24AIML009', NULL, NULL, NULL),
('D24AIML010', 'BHAVNA JOSHI', '9012345678', 'D24AIML010@charusat.edu.in', 'HOSTEL - 3', 'C-7', 'D24AIML010', NULL, NULL, NULL);

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
